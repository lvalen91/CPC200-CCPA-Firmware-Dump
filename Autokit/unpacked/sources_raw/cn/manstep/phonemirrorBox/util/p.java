package cn.manstep.phonemirrorBox.util;

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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class p {
    public static String f = "";
    private OkHttpClient a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Interceptor f1906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f1907c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedList<e> f1908d;
    private boolean e;

    class a implements Interceptor {
        final /* synthetic */ Map a;

        a(p pVar, Map map) {
            this.a = map;
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) {
            Request.Builder builderNewBuilder = chain.request().newBuilder();
            Map map = this.a;
            if (map != null) {
                for (String str : map.keySet()) {
                    builderNewBuilder.addHeader(str, (String) this.a.get(str));
                }
            }
            return chain.proceed(builderNewBuilder.build());
        }
    }

    class b implements Interceptor {
        b(p pVar) {
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) {
            Request requestBuild;
            String str = "Android/" + Build.VERSION.SDK_INT + "/" + Build.VERSION.RELEASE + " " + Build.MANUFACTURER;
            Request request = chain.request();
            try {
                requestBuild = request.newBuilder().addHeader("OS", "Android").addHeader("User-Agent", str).addHeader("Authorization", p.f).build();
            } catch (Exception unused) {
                requestBuild = request.newBuilder().addHeader("OS", "Android").addHeader("Authorization", p.f).build();
            }
            return chain.proceed(requestBuild);
        }
    }

    class c implements Callback {
        final /* synthetic */ int a;

        c(int i) {
            this.a = i;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            p.this.m(this.a, 1, iOException.getMessage());
            s.e("HTTP,requestCallback:onFailure: \n" + Log.getStackTraceString(iOException));
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            if (!response.isSuccessful()) {
                p.this.m(this.a, 1, "code=" + response.code());
                return;
            }
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody == null) {
                p.this.m(this.a, 1, "responseBody=null");
                return;
            }
            String strString = responseBodyBody.string();
            String[] strArrSplit = strString.split("\\$");
            if (strArrSplit.length == 2) {
                strString = strArrSplit[1];
            }
            p.this.m(this.a, 0, strString);
        }
    }

    class d implements Callback {
        final /* synthetic */ int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1910b;

        d(int i, String str) {
            this.a = i;
            this.f1910b = str;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            p.this.m(this.a, 1, iOException.getMessage());
            s.e("HTTP,downFile: \n" + Log.getStackTraceString(iOException));
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws Throwable {
            if (!response.isSuccessful()) {
                p.this.m(this.a, 1, BuildConfig.FLAVOR);
                return;
            }
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody != null) {
                p.this.p(this.f1910b, responseBodyBody, this.a);
            }
        }
    }

    public interface e {
        void b(String str);

        void c(String str);
    }

    public interface f extends e {
        void a();

        void d(long j);

        void e(long j);
    }

    @SuppressLint({"HandlerLeak"})
    final class g extends Handler {
        g() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            e eVar = (e) p.this.f1908d.get(message.arg1);
            if (eVar != null) {
                int i = message.what;
                if (i == 0) {
                    eVar.c((String) message.obj);
                    return;
                }
                if (i == 1) {
                    eVar.b((String) message.obj);
                    return;
                }
                if (i == 2) {
                    ((f) eVar).a();
                } else if (i == 3) {
                    ((f) eVar).e(((Long) message.obj).longValue());
                } else {
                    if (i != 4) {
                        return;
                    }
                    ((f) eVar).d(((Long) message.obj).longValue());
                }
            }
        }
    }

    public p() {
        this(20);
    }

    private Request e(String str, String str2) {
        return new Request.Builder().url(str).post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str2)).build();
    }

    private Request f(String str, Map<String, String> map) {
        FormBody.Builder builder = new FormBody.Builder();
        StringBuilder sb = new StringBuilder();
        for (String str2 : map.keySet()) {
            String str3 = map.get(str2);
            builder.add(str2, str3);
            if (sb.length() > 1) {
                sb.append("&");
                sb.append(str2);
                sb.append("=");
                sb.append(str3);
            } else {
                sb.append(str2);
                sb.append("=");
                sb.append(str3);
            }
        }
        s.i("HTTP", "getRequest: " + str);
        s.i("HTTP", "getRequest: " + ((Object) sb));
        return new Request.Builder().url(str).post(builder.build()).build();
    }

    private void g() {
        this.f1907c = new g();
        this.f1908d = new LinkedList<>();
        this.f1906b = new b(this);
    }

    private void h(Map<String, String> map) {
        this.f1907c = new g();
        this.f1908d = new LinkedList<>();
        this.f1906b = new a(this, map);
    }

    private Callback k(int i) {
        return new c(i);
    }

    private void l(int i, int i2, long j) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i;
        messageObtain.obj = Long.valueOf(j);
        this.f1907c.sendMessage(messageObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(int i, int i2, String str) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i;
        messageObtain.obj = str;
        this.f1907c.sendMessage(messageObtain);
    }

    private void n(String str, Map<String, String> map, String str2, String str3, String str4, e eVar) {
        this.f1908d.add(eVar);
        int size = this.f1908d.size() - 1;
        File file = new File(str4);
        if (!file.exists()) {
            m(size, 1, "no file");
            return;
        }
        MultipartBody.Builder builder = new MultipartBody.Builder();
        builder.setType(MultipartBody.FORM);
        builder.addFormDataPart(str2, str3, RequestBody.create(MediaType.parse("multipart/form-data"), file));
        for (String str5 : map.keySet()) {
            builder.addFormDataPart(str5, map.get(str5));
        }
        MultipartBody multipartBodyBuild = builder.build();
        this.a.newCall(str.startsWith("http") ? new Request.Builder().url(str).post(multipartBodyBuild).build() : new Request.Builder().url("http://api.paplink.cn" + str).post(multipartBodyBuild).build()).enqueue(k(size));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0083 -> B:72:0x00a4). Please report as a decompilation issue!!! */
    public void p(String str, ResponseBody responseBody, int i) throws Throwable {
        FileOutputStream fileOutputStream;
        long jContentLength;
        long j;
        s.c("HTTP,writeFile: " + str);
        InputStream inputStreamByteStream = responseBody.byteStream();
        File file = new File(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[1024];
                jContentLength = responseBody.contentLength();
                l(i, 3, jContentLength);
                j = 0;
                while (true) {
                    int i2 = inputStreamByteStream.read(bArr);
                    if (i2 == -1 || this.e) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i2);
                    j += (long) i2;
                    l(i, 4, j);
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                m(i, 1, e.getMessage());
                try {
                    inputStreamByteStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                if (fileOutputStream2 == null) {
                    return;
                } else {
                    fileOutputStream2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                try {
                    inputStreamByteStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
                if (fileOutputStream2 == null) {
                    throw th;
                }
                try {
                    fileOutputStream2.close();
                    throw th;
                } catch (IOException e6) {
                    e6.printStackTrace();
                    throw th;
                }
            }
        } catch (IOException e7) {
            e7.printStackTrace();
        }
        if (!this.e) {
            if (j == jContentLength) {
                m(i, 0, c0.j(file));
            } else {
                m(i, 1, "sum != totalSize");
            }
            try {
                inputStreamByteStream.close();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            fileOutputStream.close();
            return;
        }
        this.e = false;
        m(i, 2, BuildConfig.FLAVOR);
        try {
            inputStreamByteStream.close();
        } catch (IOException e9) {
            e9.printStackTrace();
        }
        try {
            fileOutputStream.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public void d(String str, Map<String, String> map, String str2, f fVar) {
        this.f1908d.add(fVar);
        this.a.newCall(f("http://api.paplink.cn" + str, map)).enqueue(new d(this.f1908d.size() - 1, str2));
    }

    public void i(String str, String str2, e eVar) {
        this.f1908d.add(eVar);
        if (!str.startsWith("http")) {
            str = "http://api.paplink.cn" + str;
        }
        this.a.newCall(e(str, str2)).enqueue(k(this.f1908d.size() - 1));
    }

    public void j(String str, Map<String, String> map, e eVar) {
        this.f1908d.add(eVar);
        this.a.newCall(f("http://api.paplink.cn" + str, map)).enqueue(k(this.f1908d.size() - 1));
    }

    public void o(String str, Map<String, String> map, String str2, String str3, e eVar) {
        n(str, map, "log", str2, str3, eVar);
    }

    public p(int i) {
        this.e = false;
        g();
        long j = i;
        this.a = new OkHttpClient.Builder().addInterceptor(this.f1906b).connectTimeout(j, TimeUnit.SECONDS).readTimeout(j, TimeUnit.SECONDS).writeTimeout(j, TimeUnit.SECONDS).build();
    }

    public p(Map<String, String> map) {
        this.e = false;
        h(map);
        long j = 20;
        this.a = new OkHttpClient.Builder().addInterceptor(this.f1906b).connectTimeout(j, TimeUnit.SECONDS).readTimeout(j, TimeUnit.SECONDS).writeTimeout(j, TimeUnit.SECONDS).build();
    }
}
