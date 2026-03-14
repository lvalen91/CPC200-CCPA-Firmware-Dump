package cn.manstep.phonemirrorBox.util;

import android.os.Build;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.C1002x;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.p086s0.C0945a;
import cn.manstep.phonemirrorBox.util.C0979p;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.b0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0962b0 {

    /* JADX INFO: renamed from: a */
    private final Map<String, String> f5995a;

    /* JADX INFO: renamed from: b */
    private final C0960a0 f5996b;

    /* JADX INFO: renamed from: c */
    private String f5997c;

    /* JADX INFO: renamed from: d */
    private String f5998d;

    /* JADX INFO: renamed from: e */
    private String f5999e;

    /* JADX INFO: renamed from: f */
    private String f6000f;

    /* JADX INFO: renamed from: g */
    private String f6001g;

    /* JADX INFO: renamed from: h */
    private String f6002h;

    /* JADX INFO: renamed from: i */
    private String f6003i;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.b0$a */
    class a implements C0979p.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ d f6004a;

        a(d dVar) {
            this.f6004a = dVar;
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            C0982s.m7373c("checkApp->failure");
            d dVar = this.f6004a;
            if (dVar != null) {
                dVar.mo5968a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -400L, BuildConfig.FLAVOR, false);
            }
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7373c("checkApp->success: " + str);
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("err") == 0) {
                    C0962b0.this.f5997c = jSONObject.getString("token");
                    String string = jSONObject.getString("ver");
                    String string2 = jSONObject.getString("notes");
                    String string3 = jSONObject.getString("id");
                    long j = Long.parseLong(jSONObject.getString("size"));
                    int i = jSONObject.getInt("forced");
                    C0962b0.this.f5999e = string3;
                    C0962b0.this.f5998d = string;
                    if (this.f6004a != null) {
                        if ("2025.03.19.1126".compareTo(string) < 0) {
                            this.f6004a.mo5968a(string, string3, j, string2, i == 1);
                        } else {
                            this.f6004a.mo5968a(string, BuildConfig.FLAVOR, -200L, string2, false);
                        }
                    }
                } else if (this.f6004a != null) {
                    this.f6004a.mo5968a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, r13 * (-1), BuildConfig.FLAVOR, false);
                }
                if (jSONObject.has("cku")) {
                    C0925p.f5855B = jSONObject.getInt("cku") == 0;
                }
            } catch (Exception e) {
                C0982s.m7375e("checkApp->success: \n" + C0982s.m7377g(e));
                d dVar = this.f6004a;
                if (dVar != null) {
                    dVar.mo5968a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -500L, e.getMessage(), false);
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.b0$b */
    class b implements C0979p.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ d f6006a;

        b(d dVar) {
            this.f6006a = dVar;
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            d dVar = this.f6006a;
            if (dVar != null) {
                dVar.mo5968a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -400L, BuildConfig.FLAVOR, false);
            }
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7373c("checkBox->success: " + str);
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("err") == 0) {
                    C0962b0.this.f5997c = jSONObject.getString("token");
                    String string = jSONObject.getString("ver");
                    String string2 = jSONObject.getString("notes");
                    String string3 = jSONObject.getString("id");
                    long j = Long.parseLong(jSONObject.getString("size"));
                    int i = jSONObject.getInt("forced");
                    C0962b0.this.f6001g = string3;
                    C0962b0.this.f6000f = string;
                    if (this.f6006a != null) {
                        if (C0732c.m5542e().m5558p().compareTo(string) < 0) {
                            this.f6006a.mo5968a(string, string3, j, string2, i == 1);
                        } else {
                            this.f6006a.mo5968a(string, BuildConfig.FLAVOR, -200L, string2, false);
                        }
                    }
                } else if (this.f6006a != null) {
                    this.f6006a.mo5968a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, r9 * (-1), BuildConfig.FLAVOR, false);
                }
            } catch (Exception e) {
                C0982s.m7375e("checkApp->success: \n" + C0982s.m7377g(e));
                d dVar = this.f6006a;
                if (dVar != null) {
                    dVar.mo5968a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -500L, e.getMessage(), false);
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.b0$c */
    class c implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ d f6008b;

        c(d dVar) {
            this.f6008b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0962b0.this.m7167i(this.f6008b);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.b0$d */
    public interface d {
        /* JADX INFO: renamed from: a */
        void mo5968a(String str, String str2, long j, String str3, boolean z);
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.b0$e */
    private static class e {

        /* JADX INFO: renamed from: a */
        private static final C0962b0 f6010a = new C0962b0(null);
    }

    /* synthetic */ C0962b0(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i */
    public void m7167i(d dVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.put("lang", BuildConfig.FLAVOR + C1002x.m7495c());
        concurrentHashMap.put("appVer", "2025.03.19.1126");
        concurrentHashMap.put("ver", C0732c.m5542e().m5558p());
        concurrentHashMap.put("uuid", C0732c.m5542e().m5557o());
        concurrentHashMap.put("mfd", C0732c.m5542e().m5550h());
        concurrentHashMap.put("fwn", C0732c.m5542e().m5546c());
        concurrentHashMap.put("model", C0732c.m5542e().m5551i());
        concurrentHashMap.putAll(this.f5995a);
        new C0979p().m7342j("/a/upgrade/checkBox", concurrentHashMap, new b(dVar));
    }

    /* JADX INFO: renamed from: m */
    public static C0962b0 m7168m() {
        return e.f6010a;
    }

    /* JADX INFO: renamed from: g */
    public void m7169g(d dVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.put("lang", BuildConfig.FLAVOR + C1002x.m7495c());
        concurrentHashMap.put("ver", "2025.03.19.1126");
        concurrentHashMap.put("uuid", C0953u.m7001z().m7010I());
        concurrentHashMap.put("r", BuildConfig.FLAVOR + C0925p.f5874k + "x" + C0925p.f5875l);
        concurrentHashMap.put("pkg", MyApplication.m5997b().getPackageName());
        concurrentHashMap.putAll(this.f5995a);
        new C0979p().m7342j("/a/upgrade/checkApp", concurrentHashMap, new a(dVar));
    }

    /* JADX INFO: renamed from: h */
    public void m7170h(d dVar) {
        this.f5996b.m7158c(0, new c(dVar));
    }

    /* JADX INFO: renamed from: j */
    public void m7171j(boolean z, C0979p.f fVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(2);
        C0979p c0979p = new C0979p(20);
        if (z) {
            concurrentHashMap.put("ver", this.f5998d);
            concurrentHashMap.put("id", this.f5999e);
            this.f6002h = C0977n.m7315r(MyApplication.m5997b()) + "/app.apk";
            File file = new File(this.f6002h);
            if (file.exists() && file.isFile() && C0964c0.m7186j(file).equals(this.f5999e) && fVar != null) {
                fVar.mo5973c(this.f5999e);
                return;
            } else {
                c0979p.m7340d("/a/upgrade/down", concurrentHashMap, this.f6002h, fVar);
                return;
            }
        }
        concurrentHashMap.put("ver", this.f6000f);
        concurrentHashMap.put("id", this.f6001g);
        this.f6003i = C0977n.m7315r(MyApplication.m5997b()) + "/Auto_Box_Update.img";
        File file2 = new File(this.f6003i);
        if (file2.exists() && file2.isFile() && C0964c0.m7186j(file2).equals(this.f6001g) && fVar != null) {
            fVar.mo5973c(this.f6001g);
        } else {
            c0979p.m7340d("/a/upgrade/down", concurrentHashMap, this.f6003i, fVar);
        }
    }

    /* JADX INFO: renamed from: k */
    public String m7172k() {
        return this.f6002h;
    }

    /* JADX INFO: renamed from: l */
    public String m7173l() {
        return this.f6003i;
    }

    private C0962b0() {
        this.f5998d = BuildConfig.FLAVOR;
        this.f5999e = BuildConfig.FLAVOR;
        this.f6000f = BuildConfig.FLAVOR;
        this.f6001g = BuildConfig.FLAVOR;
        this.f5996b = new C0960a0(1000L);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f5995a = concurrentHashMap;
        concurrentHashMap.put("code", "37");
        this.f5995a.put("m", Build.MODEL);
        this.f5995a.put("manufc", Build.MANUFACTURER);
        this.f5995a.put("prod", Build.PRODUCT);
        this.f5995a.put("brand", Build.BRAND);
        this.f5995a.put("id", Build.ID);
        this.f5995a.put("huid", C0953u.m7001z().m7062w());
        this.f5995a.put("csn", C0945a.m6971b(MyApplication.m5997b()));
    }
}
