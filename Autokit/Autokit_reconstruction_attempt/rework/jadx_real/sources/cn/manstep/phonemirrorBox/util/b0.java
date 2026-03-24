package cn.manstep.phonemirrorBox.util;

import android.os.Build;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.util.p;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b0 {
    private final Map<String, String> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a0 f1848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f1849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1850d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;

    class a implements p.e {
        final /* synthetic */ d a;

        a(d dVar) {
            this.a = dVar;
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            s.c("checkApp->failure");
            d dVar = this.a;
            if (dVar != null) {
                dVar.a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -400L, BuildConfig.FLAVOR, false);
            }
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            s.c("checkApp->success: " + str);
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("err") == 0) {
                    b0.this.f1849c = jSONObject.getString("token");
                    String string = jSONObject.getString("ver");
                    String string2 = jSONObject.getString("notes");
                    String string3 = jSONObject.getString("id");
                    long j = Long.parseLong(jSONObject.getString("size"));
                    int i = jSONObject.getInt("forced");
                    b0.this.e = string3;
                    b0.this.f1850d = string;
                    if (this.a != null) {
                        if ("2025.03.19.1126".compareTo(string) < 0) {
                            this.a.a(string, string3, j, string2, i == 1);
                        } else {
                            this.a.a(string, BuildConfig.FLAVOR, -200L, string2, false);
                        }
                    }
                } else if (this.a != null) {
                    this.a.a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, r13 * (-1), BuildConfig.FLAVOR, false);
                }
                if (jSONObject.has("cku")) {
                    cn.manstep.phonemirrorBox.p.B = jSONObject.getInt("cku") == 0;
                }
            } catch (Exception e) {
                s.e("checkApp->success: \n" + s.g(e));
                d dVar = this.a;
                if (dVar != null) {
                    dVar.a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -500L, e.getMessage(), false);
                }
            }
        }
    }

    class b implements p.e {
        final /* synthetic */ d a;

        b(d dVar) {
            this.a = dVar;
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            d dVar = this.a;
            if (dVar != null) {
                dVar.a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -400L, BuildConfig.FLAVOR, false);
            }
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            s.c("checkBox->success: " + str);
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getInt("err") == 0) {
                    b0.this.f1849c = jSONObject.getString("token");
                    String string = jSONObject.getString("ver");
                    String string2 = jSONObject.getString("notes");
                    String string3 = jSONObject.getString("id");
                    long j = Long.parseLong(jSONObject.getString("size"));
                    int i = jSONObject.getInt("forced");
                    b0.this.g = string3;
                    b0.this.f = string;
                    if (this.a != null) {
                        if (cn.manstep.phonemirrorBox.BoxInterface.c.e().p().compareTo(string) < 0) {
                            this.a.a(string, string3, j, string2, i == 1);
                        } else {
                            this.a.a(string, BuildConfig.FLAVOR, -200L, string2, false);
                        }
                    }
                } else if (this.a != null) {
                    this.a.a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, r9 * (-1), BuildConfig.FLAVOR, false);
                }
            } catch (Exception e) {
                s.e("checkApp->success: \n" + s.g(e));
                d dVar = this.a;
                if (dVar != null) {
                    dVar.a(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -500L, e.getMessage(), false);
                }
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f1853b;

        c(d dVar) {
            this.f1853b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.i(this.f1853b);
        }
    }

    public interface d {
        void a(String str, String str2, long j, String str3, boolean z);
    }

    private static class e {
        private static final b0 a = new b0(null);
    }

    /* synthetic */ b0(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(d dVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.put("lang", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.x.c());
        concurrentHashMap.put("appVer", "2025.03.19.1126");
        concurrentHashMap.put("ver", cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
        concurrentHashMap.put("uuid", cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
        concurrentHashMap.put("mfd", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
        concurrentHashMap.put("fwn", cn.manstep.phonemirrorBox.BoxInterface.c.e().c());
        concurrentHashMap.put("model", cn.manstep.phonemirrorBox.BoxInterface.c.e().i());
        concurrentHashMap.putAll(this.a);
        new p().j("/a/upgrade/checkBox", concurrentHashMap, new b(dVar));
    }

    public static b0 m() {
        return e.a;
    }

    public void g(d dVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.put("lang", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.x.c());
        concurrentHashMap.put("ver", "2025.03.19.1126");
        concurrentHashMap.put("uuid", cn.manstep.phonemirrorBox.u.z().I());
        concurrentHashMap.put("r", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l);
        concurrentHashMap.put("pkg", MyApplication.b().getPackageName());
        concurrentHashMap.putAll(this.a);
        new p().j("/a/upgrade/checkApp", concurrentHashMap, new a(dVar));
    }

    public void h(d dVar) {
        this.f1848b.c(0, new c(dVar));
    }

    public void j(boolean z, p.f fVar) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(2);
        p pVar = new p(20);
        if (z) {
            concurrentHashMap.put("ver", this.f1850d);
            concurrentHashMap.put("id", this.e);
            this.h = n.r(MyApplication.b()) + "/app.apk";
            File file = new File(this.h);
            if (file.exists() && file.isFile() && c0.j(file).equals(this.e) && fVar != null) {
                fVar.c(this.e);
                return;
            } else {
                pVar.d("/a/upgrade/down", concurrentHashMap, this.h, fVar);
                return;
            }
        }
        concurrentHashMap.put("ver", this.f);
        concurrentHashMap.put("id", this.g);
        this.i = n.r(MyApplication.b()) + "/Auto_Box_Update.img";
        File file2 = new File(this.i);
        if (file2.exists() && file2.isFile() && c0.j(file2).equals(this.g) && fVar != null) {
            fVar.c(this.g);
        } else {
            pVar.d("/a/upgrade/down", concurrentHashMap, this.i, fVar);
        }
    }

    public String k() {
        return this.h;
    }

    public String l() {
        return this.i;
    }

    private b0() {
        this.f1850d = BuildConfig.FLAVOR;
        this.e = BuildConfig.FLAVOR;
        this.f = BuildConfig.FLAVOR;
        this.g = BuildConfig.FLAVOR;
        this.f1848b = new a0(1000L);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.a = concurrentHashMap;
        concurrentHashMap.put("code", "37");
        this.a.put("m", Build.MODEL);
        this.a.put("manufc", Build.MANUFACTURER);
        this.a.put("prod", Build.PRODUCT);
        this.a.put("brand", Build.BRAND);
        this.a.put("id", Build.ID);
        this.a.put("huid", cn.manstep.phonemirrorBox.u.z().w());
        this.a.put("csn", cn.manstep.phonemirrorBox.s0.a.b(MyApplication.b()));
    }
}
