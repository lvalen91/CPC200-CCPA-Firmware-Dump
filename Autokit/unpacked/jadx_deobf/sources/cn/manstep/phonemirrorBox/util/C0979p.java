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

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0979p {

    /* JADX INFO: renamed from: f */
    public static String f6104f = "";

    /* JADX INFO: renamed from: a */
    private OkHttpClient f6105a;

    /* JADX INFO: renamed from: b */
    private Interceptor f6106b;

    /* JADX INFO: renamed from: c */
    private g f6107c;

    /* JADX INFO: renamed from: d */
    private LinkedList<e> f6108d;

    /* JADX INFO: renamed from: e */
    private boolean f6109e;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.p$a */
    class a implements Interceptor {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Map f6110a;

        a(C0979p c0979p, Map map) {
            this.f6110a = map;
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) {
            Request.Builder builderNewBuilder = chain.request().newBuilder();
            Map map = this.f6110a;
            if (map != null) {
                for (String str : map.keySet()) {
                    builderNewBuilder.addHeader(str, (String) this.f6110a.get(str));
                }
            }
            return chain.proceed(builderNewBuilder.build());
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.p$b */
    class b implements Interceptor {
        b(C0979p c0979p) {
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) {
            Request requestBuild;
            String str = "Android/" + Build.VERSION.SDK_INT + "/" + Build.VERSION.RELEASE + " " + Build.MANUFACTURER;
            Request request = chain.request();
            try {
                requestBuild = request.newBuilder().addHeader("OS", "Android").addHeader("User-Agent", str).addHeader("Authorization", C0979p.f6104f).build();
            } catch (Exception unused) {
                requestBuild = request.newBuilder().addHeader("OS", "Android").addHeader("Authorization", C0979p.f6104f).build();
            }
            return chain.proceed(requestBuild);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.p$c */
    class c implements Callback {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f6111a;

        c(int i) {
            this.f6111a = i;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            C0979p.this.m7337m(this.f6111a, 1, iOException.getMessage());
            C0982s.m7375e("HTTP,requestCallback:onFailure: \n" + Log.getStackTraceString(iOException));
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            if (!response.isSuccessful()) {
                C0979p.this.m7337m(this.f6111a, 1, "code=" + response.code());
                return;
            }
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody == null) {
                C0979p.this.m7337m(this.f6111a, 1, "responseBody=null");
                return;
            }
            String strString = responseBodyBody.string();
            String[] strArrSplit = strString.split("\\$");
            if (strArrSplit.length == 2) {
                strString = strArrSplit[1];
            }
            C0979p.this.m7337m(this.f6111a, 0, strString);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.p$d */
    class d implements Callback {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f6113a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f6114b;

        d(int i, String str) {
            this.f6113a = i;
            this.f6114b = str;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            C0979p.this.m7337m(this.f6113a, 1, iOException.getMessage());
            C0982s.m7375e("HTTP,downFile: \n" + Log.getStackTraceString(iOException));
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws Throwable {
            if (!response.isSuccessful()) {
                C0979p.this.m7337m(this.f6113a, 1, BuildConfig.FLAVOR);
                return;
            }
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody != null) {
                C0979p.this.m7339p(this.f6114b, responseBodyBody, this.f6113a);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.p$e */
    public interface e {
        /* JADX INFO: renamed from: b */
        void mo5972b(String str);

        /* JADX INFO: renamed from: c */
        void mo5973c(String str);
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.p$f */
    public interface f extends e {
        /* JADX INFO: renamed from: a */
        void mo5971a();

        /* JADX INFO: renamed from: d */
        void mo5974d(long j);

        /* JADX INFO: renamed from: e */
        void mo5975e(long j);
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.p$g */
    @SuppressLint({"HandlerLeak"})
    final class g extends Handler {
        g() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            e eVar = (e) C0979p.this.f6108d.get(message.arg1);
            if (eVar != null) {
                int i = message.what;
                if (i == 0) {
                    eVar.mo5973c((String) message.obj);
                    return;
                }
                if (i == 1) {
                    eVar.mo5972b((String) message.obj);
                    return;
                }
                if (i == 2) {
                    ((f) eVar).mo5971a();
                } else if (i == 3) {
                    ((f) eVar).mo5975e(((Long) message.obj).longValue());
                } else {
                    if (i != 4) {
                        return;
                    }
                    ((f) eVar).mo5974d(((Long) message.obj).longValue());
                }
            }
        }
    }

    public C0979p() {
        this(20);
    }

    /* JADX INFO: renamed from: e */
    private Request m7331e(String str, String str2) {
        return new Request.Builder().url(str).post(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str2)).build();
    }

    /* JADX INFO: renamed from: f */
    private Request m7332f(String str, Map<String, String> map) {
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
        C0982s.m7379i("HTTP", "getRequest: " + str);
        C0982s.m7379i("HTTP", "getRequest: " + ((Object) sb));
        return new Request.Builder().url(str).post(builder.build()).build();
    }

    /* JADX INFO: renamed from: g */
    private void m7333g() {
        this.f6107c = new g();
        this.f6108d = new LinkedList<>();
        this.f6106b = new b(this);
    }

    /* JADX INFO: renamed from: h */
    private void m7334h(Map<String, String> map) {
        this.f6107c = new g();
        this.f6108d = new LinkedList<>();
        this.f6106b = new a(this, map);
    }

    /* JADX INFO: renamed from: k */
    private Callback m7335k(int i) {
        return new c(i);
    }

    /* JADX INFO: renamed from: l */
    private void m7336l(int i, int i2, long j) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i;
        messageObtain.obj = Long.valueOf(j);
        this.f6107c.sendMessage(messageObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m */
    public void m7337m(int i, int i2, String str) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i;
        messageObtain.obj = str;
        this.f6107c.sendMessage(messageObtain);
    }

    /* JADX INFO: renamed from: n */
    private void m7338n(String str, Map<String, String> map, String str2, String str3, String str4, e eVar) {
        this.f6108d.add(eVar);
        int size = this.f6108d.size() - 1;
        File file = new File(str4);
        if (!file.exists()) {
            m7337m(size, 1, "no file");
            return;
        }
        MultipartBody.Builder builder = new MultipartBody.Builder();
        builder.setType(MultipartBody.FORM);
        builder.addFormDataPart(str2, str3, RequestBody.create(MediaType.parse("multipart/form-data"), file));
        for (String str5 : map.keySet()) {
            builder.addFormDataPart(str5, map.get(str5));
        }
        MultipartBody multipartBodyBuild = builder.build();
        this.f6105a.newCall(str.startsWith("http") ? new Request.Builder().url(str).post(multipartBodyBuild).build() : new Request.Builder().url("http://api.paplink.cn" + str).post(multipartBodyBuild).build()).enqueue(m7335k(size));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0083 -> B:72:0x00a4). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: p */
    public void m7339p(String str, ResponseBody responseBody, int i) throws Throwable {
        FileOutputStream fileOutputStream;
        long jContentLength;
        long j;
        C0982s.m7373c("HTTP,writeFile: " + str);
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
                m7336l(i, 3, jContentLength);
                j = 0;
                while (true) {
                    int i2 = inputStreamByteStream.read(bArr);
                    if (i2 == -1 || this.f6109e) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, i2);
                    j += (long) i2;
                    m7336l(i, 4, j);
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                m7337m(i, 1, e.getMessage());
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
        if (!this.f6109e) {
            if (j == jContentLength) {
                m7337m(i, 0, C0964c0.m7186j(file));
            } else {
                m7337m(i, 1, "sum != totalSize");
            }
            try {
                inputStreamByteStream.close();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            fileOutputStream.close();
            return;
        }
        this.f6109e = false;
        m7337m(i, 2, BuildConfig.FLAVOR);
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

    /* JADX INFO: renamed from: d */
    public void m7340d(String str, Map<String, String> map, String str2, f fVar) {
        this.f6108d.add(fVar);
        this.f6105a.newCall(m7332f("http://api.paplink.cn" + str, map)).enqueue(new d(this.f6108d.size() - 1, str2));
    }

    /* JADX INFO: renamed from: i */
    public void m7341i(String str, String str2, e eVar) {
        this.f6108d.add(eVar);
        if (!str.startsWith("http")) {
            str = "http://api.paplink.cn" + str;
        }
        this.f6105a.newCall(m7331e(str, str2)).enqueue(m7335k(this.f6108d.size() - 1));
    }

    /* JADX INFO: renamed from: j */
    public void m7342j(String str, Map<String, String> map, e eVar) {
        this.f6108d.add(eVar);
        this.f6105a.newCall(m7332f("http://api.paplink.cn" + str, map)).enqueue(m7335k(this.f6108d.size() - 1));
    }

    /* JADX INFO: renamed from: o */
    public void m7343o(String str, Map<String, String> map, String str2, String str3, e eVar) {
        m7338n(str, map, "log", str2, str3, eVar);
    }

    public C0979p(int i) {
        this.f6109e = false;
        m7333g();
        long j = i;
        this.f6105a = new OkHttpClient.Builder().addInterceptor(this.f6106b).connectTimeout(j, TimeUnit.SECONDS).readTimeout(j, TimeUnit.SECONDS).writeTimeout(j, TimeUnit.SECONDS).build();
    }

    public C0979p(Map<String, String> map) {
        this.f6109e = false;
        m7334h(map);
        long j = 20;
        this.f6105a = new OkHttpClient.Builder().addInterceptor(this.f6106b).connectTimeout(j, TimeUnit.SECONDS).readTimeout(j, TimeUnit.SECONDS).writeTimeout(j, TimeUnit.SECONDS).build();
    }
}
