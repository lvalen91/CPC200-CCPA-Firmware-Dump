package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import cn.manstep.phonemirrorBox.k0.d;
import cn.manstep.phonemirrorBox.k0.f;
import cn.manstep.phonemirrorBox.util.p;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Properties;
import org.json.JSONObject;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class d0 {
    private Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1859b = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.fragment.app.n f1860c;

    class a implements p.e {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            d0.this.h();
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            s.c("utilUpdateVersion,success,checkAppUpdate: " + str);
            if (cn.manstep.phonemirrorBox.p.z) {
                return;
            }
            d0.this.f(str);
        }
    }

    class b implements p.e {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            d0.this.h();
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            s.c("utilUpdateVersion,checkBoxUpdate->success: " + str);
            d0.this.g(str);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ cn.manstep.phonemirrorBox.k0.d f1861b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f1862c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f1863d;
        final /* synthetic */ String e;
        final /* synthetic */ int f;

        class a implements p.f {
            final /* synthetic */ cn.manstep.phonemirrorBox.k0.f a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f1864b;

            /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d0$c$a$a, reason: collision with other inner class name */
            class ViewOnClickListenerC0100a implements View.OnClickListener {
                ViewOnClickListenerC0100a() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    c0.o(d0.this.a, a.this.f1864b);
                }
            }

            a(cn.manstep.phonemirrorBox.k0.f fVar, String str) {
                this.a = fVar;
                this.f1864b = str;
            }

            @Override // cn.manstep.phonemirrorBox.util.p.f
            public void a() {
            }

            @Override // cn.manstep.phonemirrorBox.util.p.e
            public void b(String str) {
                if (c.this.f == 0) {
                    this.a.m();
                }
                this.a.k(2131689706);
            }

            @Override // cn.manstep.phonemirrorBox.util.p.e
            public void c(String str) {
                if (c.this.e.equalsIgnoreCase(str)) {
                    cn.manstep.phonemirrorBox.k0.a.D2(d0.this.f1860c, new ViewOnClickListenerC0100a(), false);
                } else {
                    b(c.this.e);
                }
            }

            @Override // cn.manstep.phonemirrorBox.util.p.f
            public void d(long j) {
                this.a.l((int) j);
            }

            @Override // cn.manstep.phonemirrorBox.util.p.f
            public void e(long j) {
                this.a.j((int) j);
            }
        }

        c(cn.manstep.phonemirrorBox.k0.d dVar, String str, String str2, String str3, int i) {
            this.f1861b = dVar;
            this.f1862c = str;
            this.f1863d = str2;
            this.e = str3;
            this.f = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1861b.dismiss();
            cn.manstep.phonemirrorBox.k0.f fVarB = new f.b(d0.this.a).b();
            fVarB.show();
            fVarB.j(Integer.parseInt(this.f1862c));
            p pVar = new p(20);
            HashMap map = new HashMap();
            map.put("ver", this.f1863d);
            map.put("id", this.e);
            String strF = c0.f(d0.this.a);
            pVar.d("/a/upgrade/down", map, strF, new a(fVarB, strF));
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1867b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ cn.manstep.phonemirrorBox.k0.d f1868c;

        d(d0 d0Var, String str, cn.manstep.phonemirrorBox.k0.d dVar) {
            this.f1867b = str;
            this.f1868c = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.manstep.phonemirrorBox.b0.i().F("AppLatestVer", this.f1867b);
            this.f1868c.dismiss();
        }
    }

    public d0(Context context, androidx.fragment.app.n nVar) {
        new LinkedList();
        this.f1860c = nVar;
        this.a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            p.f = jSONObject.getString("token");
            String string = jSONObject.getString("ver");
            if (string.compareTo("2025.03.19.1126") <= 0 || string.compareTo(cn.manstep.phonemirrorBox.b0.i().n("AppLatestVer", BuildConfig.FLAVOR)) == 0) {
                return;
            }
            int i = jSONObject.has("forced") ? jSONObject.getInt("forced") : 0;
            if (jSONObject.has("cku") && jSONObject.getInt("cku") == 0) {
                cn.manstep.phonemirrorBox.p.B = false;
            }
            String string2 = jSONObject.getString("notes");
            String string3 = jSONObject.getString("id");
            String string4 = jSONObject.getString("size");
            if (i != 0) {
                File file = new File("/sdcard", "bluetooth");
                if ((file.exists() && file.isDirectory()) ? true : file.mkdir()) {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(file, ".car"));
                        Properties properties = new Properties();
                        properties.setProperty("av", string);
                        properties.setProperty("afs", string4);
                        properties.setProperty("arn", string2);
                        properties.setProperty("am5", string3);
                        properties.setProperty("aui", String.valueOf(37));
                        properties.store(fileOutputStream, BuildConfig.FLAVOR);
                        properties.clear();
                        fileOutputStream.close();
                    } catch (Error e) {
                        e.printStackTrace();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            k(i, string, string2, string4, string3);
        } catch (Exception e3) {
            s.e("utilUpdateVersion,getUpdateInfo: \n" + Log.getStackTraceString(e3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            p.f = jSONObject.getString("token");
            String string = jSONObject.getString("ver");
            s.c("utilUpdateVersion,checkBoxVer: new:" + string + ", old:" + cn.manstep.phonemirrorBox.BoxInterface.c.e().p() + ",ver.compareTo " + string.compareTo(cn.manstep.phonemirrorBox.BoxInterface.c.e().p()));
            if (string.compareTo(cn.manstep.phonemirrorBox.BoxInterface.c.e().p()) > 0) {
                jSONObject.getString("id");
                if (!TextUtils.isEmpty(string)) {
                    s.e("utilUpdateVersion,mBoxNewVer: ");
                    this.f1859b = string;
                }
            }
        } catch (Exception e) {
            s.e("utilUpdateVersion,checkBoxVerError: \n" + Log.getStackTraceString(e));
        }
        if (!cn.manstep.phonemirrorBox.b0.i().n("BoxLatestVer", BuildConfig.FLAVOR).equals(this.f1859b) && cn.manstep.phonemirrorBox.BoxInterface.d.i() && TextUtils.isEmpty(this.f1859b)) {
            cn.manstep.phonemirrorBox.b0.i().F("BoxLatestVer", this.f1859b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        cn.manstep.phonemirrorBox.widget.a.a(this.a, 2131689876);
    }

    private void k(int i, String str, String str2, String str3, String str4) {
        if (cn.manstep.phonemirrorBox.BoxInterface.b.h) {
            return;
        }
        d.a aVar = new d.a(this.a);
        aVar.b(str, str2);
        cn.manstep.phonemirrorBox.k0.d dVarA = aVar.a();
        dVarA.show();
        dVarA.h().setOnClickListener(new c(dVarA, str3, str, str4, i));
        dVarA.g().setOnClickListener(new d(this, str, dVarA));
        if (i != 0) {
            dVarA.f();
        }
    }

    public void i() {
        HashMap map = new HashMap(7);
        map.put("lang", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.x.c());
        map.put("code", "37");
        map.put("ver", "2025.03.19.1126");
        map.put("uuid", cn.manstep.phonemirrorBox.u.z().I());
        map.put("r", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l);
        map.put("m", Build.MODEL);
        map.put("pkg", this.a.getPackageName());
        new p().j("/a/upgrade/checkApp", map, new a());
    }

    public void j() {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            new HashMap(7);
            HashMap map = new HashMap(8);
            map.put("lang", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.x.c());
            map.put("code", "37");
            map.put("appVer", "2025.03.19.1126");
            map.put("ver", cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
            map.put("uuid", cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
            map.put("mfd", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
            map.put("fwn", cn.manstep.phonemirrorBox.BoxInterface.c.e().c());
            map.put("model", cn.manstep.phonemirrorBox.BoxInterface.c.e().i());
            new p().j("/a/upgrade/checkBox", map, new b());
        }
    }
}
