/**
 * HttpClient.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.p
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * OkHttp-based HTTP client for API communication with paplink.cn.
 * Supports form-encoded POST requests, JSON POST, file uploads (multipart),
 * and file downloads with progress tracking. Manages authentication tokens
 * via request interceptors. Uses a Handler to dispatch callbacks on the main thread.
 */
package cn.manstep.autokit.util;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

public class HttpClient /* was: 'util.p' */ {

    /** Auth token shared across instances. /* was: 'f' (static) */ */
    public static String token /* was: 'f' */ = "";

    /** OkHttp client instance. /* was: 'a' */ */
    private OkHttpClient client /* was: 'a' */;

    /** Request interceptor. /* was: 'f1906b' */ */
    private Interceptor interceptor /* was: 'f1906b' */;

    /** Response handler for main thread dispatch. /* was: 'f1907c' */ */
    private ResponseHandler responseHandler /* was: 'f1907c' */;

    /** Ordered list of response callbacks. /* was: 'f1908d' */ */
    private LinkedList<ResponseCallback> callbacks /* was: 'f1908d' */;

    /** Download cancellation flag. /* was: 'e' */ */
    private boolean cancelled /* was: 'e' */;

    /** Simple response callback. /* was: inner interface 'e' */ */
    public interface ResponseCallback /* was: 'e' */ {
        void onFailure(/* was: 'b' */ String error);
        void onSuccess(/* was: 'c' */ String response);
    }

    /** Download callback with progress. /* was: inner interface 'f' */ */
    public interface DownloadCallback /* was: 'f' */ extends ResponseCallback {
        void onCancelled(/* was: 'a' */);
        void onTotalSize(/* was: 'd' */ long totalBytes);
        void onProgress(/* was: 'e' */ long downloadedBytes);
        default void onComplete(String md5) { onSuccess(md5); }
    }

    /**
     * Main thread handler for dispatching callbacks.
     * /* was: inner class 'g' */
     */
    @SuppressLint("HandlerLeak")
    final class ResponseHandler /* was: 'g' */ extends Handler {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            ResponseCallback cb = HttpClient.this.callbacks.get(msg.arg1);
            if (cb != null) {
                switch (msg.what) {
                    case 0: cb.onSuccess((String) msg.obj); break;
                    case 1: cb.onFailure((String) msg.obj); break;
                    case 2: ((DownloadCallback) cb).onCancelled(); break;
                    case 3: ((DownloadCallback) cb).onProgress(((Long) msg.obj).longValue()); break;
                    case 4: ((DownloadCallback) cb).onTotalSize(((Long) msg.obj).longValue()); break;
                }
            }
        }
    }

    public HttpClient() {
        this(20);
    }

    public HttpClient(int timeoutSeconds) {
        this.cancelled = false;
        initDefault();
        long timeout = timeoutSeconds;
        this.client = new OkHttpClient.Builder()
                .addInterceptor(this.interceptor)
                .connectTimeout(timeout, TimeUnit.SECONDS)
                .readTimeout(timeout, TimeUnit.SECONDS)
                .writeTimeout(timeout, TimeUnit.SECONDS)
                .build();
    }

    public HttpClient(Map<String, String> headers) {
        this.cancelled = false;
        initWithHeaders(headers);
        long timeout = 20;
        this.client = new OkHttpClient.Builder()
                .addInterceptor(this.interceptor)
                .connectTimeout(timeout, TimeUnit.SECONDS)
                .readTimeout(timeout, TimeUnit.SECONDS)
                .writeTimeout(timeout, TimeUnit.SECONDS)
                .build();
    }

    private void initDefault(/* was: 'g' */) {
        this.responseHandler = new ResponseHandler();
        this.callbacks = new LinkedList<>();
        this.interceptor = new DefaultInterceptor();
    }

    private void initWithHeaders(/* was: 'h' */ Map<String, String> headers) {
        this.responseHandler = new ResponseHandler();
        this.callbacks = new LinkedList<>();
        this.interceptor = new HeaderInterceptor(headers);
    }

    /**
     * POST form data to an API endpoint.
     * /* was: 'j' */
     */
    public void postForm(/* was: 'j' */ String path, Map<String, String> params, ResponseCallback callback) {
        this.callbacks.add(callback);
        this.client.newCall(buildFormRequest("http://api.paplink.cn" + path, params))
                .enqueue(new SimpleCallback(this.callbacks.size() - 1));
    }

    /**
     * POST JSON to an endpoint.
     * /* was: 'i' */
     */
    public void postJson(/* was: 'i' */ String url, String json, ResponseCallback callback) {
        this.callbacks.add(callback);
        if (!url.startsWith("http")) {
            url = "http://api.paplink.cn" + url;
        }
        this.client.newCall(buildJsonRequest(url, json))
                .enqueue(new SimpleCallback(this.callbacks.size() - 1));
    }

    /**
     * Download a file from an API endpoint.
     * /* was: 'd' */
     */
    public void download(/* was: 'd' */ String path, Map<String, String> params,
                          String destPath, DownloadCallback callback) {
        this.callbacks.add(callback);
        this.client.newCall(buildFormRequest("http://api.paplink.cn" + path, params))
                .enqueue(new DownloadFileCallback(this.callbacks.size() - 1, destPath));
    }

    /**
     * Upload a file via multipart form.
     * /* was: 'o' */
     */
    public void uploadFile(/* was: 'o' */ String path, Map<String, String> params,
                            String remoteName, String localPath, ResponseCallback callback) {
        uploadMultipart(path, params, "log", remoteName, localPath, callback);
    }

    private void uploadMultipart(/* was: 'n' */ String url, Map<String, String> params,
                                  String fieldName, String remoteName, String localPath,
                                  ResponseCallback callback) {
        this.callbacks.add(callback);
        int index = this.callbacks.size() - 1;
        File file = new File(localPath);
        if (!file.exists()) {
            sendResult(index, 1, "no file");
            return;
        }
        MultipartBody.Builder builder = new MultipartBody.Builder();
        builder.setType(MultipartBody.FORM);
        builder.addFormDataPart(fieldName, remoteName,
                RequestBody.create(MediaType.parse("multipart/form-data"), file));
        for (String key : params.keySet()) {
            builder.addFormDataPart(key, params.get(key));
        }
        String fullUrl = url.startsWith("http") ? url : "http://api.paplink.cn" + url;
        this.client.newCall(new Request.Builder().url(fullUrl).post(builder.build()).build())
                .enqueue(new SimpleCallback(index));
    }

    /* Package-private helpers */
    void sendResult(int index, int what, String data) {
        Message msg = Message.obtain();
        msg.what = what;
        msg.arg1 = index;
        msg.obj = data;
        this.responseHandler.sendMessage(msg);
    }

    void sendProgress(int index, int what, long value) {
        Message msg = Message.obtain();
        msg.what = what;
        msg.arg1 = index;
        msg.obj = Long.valueOf(value);
        this.responseHandler.sendMessage(msg);
    }

    private Request buildJsonRequest(String url, String json) {
        return new Request.Builder().url(url)
                .post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), json))
                .build();
    }

    private Request buildFormRequest(String url, Map<String, String> params) {
        FormBody.Builder fb = new FormBody.Builder();
        StringBuilder sb = new StringBuilder();
        for (String key : params.keySet()) {
            String val = params.get(key);
            fb.add(key, val);
            if (sb.length() > 1) { sb.append("&"); }
            sb.append(key).append("=").append(val);
        }
        Logger.logInfo("HTTP", "getRequest: " + url);
        Logger.logInfo("HTTP", "getRequest: " + sb);
        return new Request.Builder().url(url).post(fb.build()).build();
    }

    /* Interceptors */
    class DefaultInterceptor implements Interceptor {
        @Override
        public Response intercept(Chain chain) throws IOException {
            String ua = "Android/" + Build.VERSION.SDK_INT + "/" + Build.VERSION.RELEASE + " " + Build.MANUFACTURER;
            Request req;
            try {
                req = chain.request().newBuilder()
                        .addHeader("OS", "Android")
                        .addHeader("User-Agent", ua)
                        .addHeader("Authorization", HttpClient.token)
                        .build();
            } catch (Exception unused) {
                req = chain.request().newBuilder()
                        .addHeader("OS", "Android")
                        .addHeader("Authorization", HttpClient.token)
                        .build();
            }
            return chain.proceed(req);
        }
    }

    class HeaderInterceptor implements Interceptor {
        final Map<String, String> headers;
        HeaderInterceptor(Map<String, String> h) { this.headers = h; }
        @Override
        public Response intercept(Chain chain) throws IOException {
            Request.Builder builder = chain.request().newBuilder();
            if (this.headers != null) {
                for (String key : this.headers.keySet()) {
                    builder.addHeader(key, this.headers.get(key));
                }
            }
            return chain.proceed(builder.build());
        }
    }

    class SimpleCallback implements Callback {
        final int index;
        SimpleCallback(int i) { this.index = i; }
        @Override
        public void onFailure(Call call, IOException e) {
            sendResult(this.index, 1, e.getMessage());
            Logger.logError("HTTP,requestCallback:onFailure: \n" + Log.getStackTraceString(e));
        }
        @Override
        public void onResponse(Call call, Response response) throws IOException {
            if (!response.isSuccessful()) {
                sendResult(this.index, 1, "code=" + response.code());
                return;
            }
            ResponseBody body = response.body();
            if (body == null) {
                sendResult(this.index, 1, "responseBody=null");
                return;
            }
            String str = body.string();
            String[] parts = str.split("\\$");
            if (parts.length == 2) { str = parts[1]; }
            sendResult(this.index, 0, str);
        }
    }

    class DownloadFileCallback implements Callback {
        final int index;
        final String destPath;
        DownloadFileCallback(int i, String p) { this.index = i; this.destPath = p; }
        @Override
        public void onFailure(Call call, IOException e) {
            sendResult(this.index, 1, e.getMessage());
            Logger.logError("HTTP,downFile: \n" + Log.getStackTraceString(e));
        }
        @Override
        public void onResponse(Call call, Response response) throws IOException {
            if (!response.isSuccessful()) {
                sendResult(this.index, 1, BuildConfig.FLAVOR);
                return;
            }
            ResponseBody body = response.body();
            if (body != null) {
                writeFile(this.destPath, body, this.index);
            }
        }
    }

    private void writeFile(String path, ResponseBody body, int index) throws IOException {
        Logger.log("HTTP,writeFile: " + path);
        InputStream is = body.byteStream();
        File file = new File(path);
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(file);
            byte[] buf = new byte[1024];
            long total = body.contentLength();
            sendProgress(index, 3, total);
            long downloaded = 0;
            while (true) {
                int read = is.read(buf);
                if (read == -1 || this.cancelled) break;
                fos.write(buf, 0, read);
                downloaded += read;
                sendProgress(index, 4, downloaded);
            }
            if (!this.cancelled) {
                if (downloaded == total) {
                    sendResult(index, 0, CryptoUtil.md5File(file));
                } else {
                    sendResult(index, 1, "sum != totalSize");
                }
            } else {
                this.cancelled = false;
                sendResult(index, 2, BuildConfig.FLAVOR);
            }
        } catch (Exception e) {
            sendResult(index, 1, e.getMessage());
        } finally {
            try { is.close(); } catch (IOException e) { e.printStackTrace(); }
            try { if (fos != null) fos.close(); } catch (IOException e) { e.printStackTrace(); }
        }
    }
}
