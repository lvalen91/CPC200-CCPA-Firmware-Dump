package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.AbstractC0366n;
import cn.manstep.phonemirrorBox.BoxInterface.C0731b;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.C1002x;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.p077k0.DialogC0885d;
import cn.manstep.phonemirrorBox.p077k0.DialogC0887f;
import cn.manstep.phonemirrorBox.util.C0979p;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Properties;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0966d0 {

    /* JADX INFO: renamed from: a */
    private Context f6017a;

    /* JADX INFO: renamed from: b */
    private String f6018b = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: c */
    private AbstractC0366n f6019c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d0$a */
    class a implements C0979p.e {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            C0966d0.this.m7207h();
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7373c("utilUpdateVersion,success,checkAppUpdate: " + str);
            if (C0925p.f5889z) {
                return;
            }
            C0966d0.this.m7205f(str);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d0$b */
    class b implements C0979p.e {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            C0966d0.this.m7207h();
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7373c("utilUpdateVersion,checkBoxUpdate->success: " + str);
            C0966d0.this.m7206g(str);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d0$c */
    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ DialogC0885d f6022b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ String f6023c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ String f6024d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ String f6025e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ int f6026f;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d0$c$a */
        class a implements C0979p.f {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ DialogC0887f f6028a;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ String f6029b;

            /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d0$c$a$a, reason: collision with other inner class name */
            class ViewOnClickListenerC1360a implements View.OnClickListener {
                ViewOnClickListenerC1360a() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    C0964c0.m7191o(C0966d0.this.f6017a, a.this.f6029b);
                }
            }

            a(DialogC0887f dialogC0887f, String str) {
                this.f6028a = dialogC0887f;
                this.f6029b = str;
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.f
            /* JADX INFO: renamed from: a */
            public void mo5971a() {
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.e
            /* JADX INFO: renamed from: b */
            public void mo5972b(String str) {
                if (c.this.f6026f == 0) {
                    this.f6028a.m6588m();
                }
                this.f6028a.m6586k(2131689706);
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.e
            /* JADX INFO: renamed from: c */
            public void mo5973c(String str) {
                if (c.this.f6025e.equalsIgnoreCase(str)) {
                    C0882a.m6522D2(C0966d0.this.f6019c, new ViewOnClickListenerC1360a(), false);
                } else {
                    mo5972b(c.this.f6025e);
                }
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.f
            /* JADX INFO: renamed from: d */
            public void mo5974d(long j) {
                this.f6028a.m6587l((int) j);
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.f
            /* JADX INFO: renamed from: e */
            public void mo5975e(long j) {
                this.f6028a.m6585j((int) j);
            }
        }

        c(DialogC0885d dialogC0885d, String str, String str2, String str3, int i) {
            this.f6022b = dialogC0885d;
            this.f6023c = str;
            this.f6024d = str2;
            this.f6025e = str3;
            this.f6026f = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f6022b.dismiss();
            DialogC0887f dialogC0887fM6590b = new DialogC0887f.b(C0966d0.this.f6017a).m6590b();
            dialogC0887fM6590b.show();
            dialogC0887fM6590b.m6585j(Integer.parseInt(this.f6023c));
            C0979p c0979p = new C0979p(20);
            HashMap map = new HashMap();
            map.put("ver", this.f6024d);
            map.put("id", this.f6025e);
            String strM7182f = C0964c0.m7182f(C0966d0.this.f6017a);
            c0979p.m7340d("/a/upgrade/down", map, strM7182f, new a(dialogC0887fM6590b, strM7182f));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d0$d */
    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f6032b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ DialogC0885d f6033c;

        d(C0966d0 c0966d0, String str, DialogC0885d dialogC0885d) {
            this.f6032b = str;
            this.f6033c = dialogC0885d;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0795b0.m6071i().m6085F("AppLatestVer", this.f6032b);
            this.f6033c.dismiss();
        }
    }

    public C0966d0(Context context, AbstractC0366n abstractC0366n) {
        new LinkedList();
        this.f6019c = abstractC0366n;
        this.f6017a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f */
    public void m7205f(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            C0979p.f6104f = jSONObject.getString("token");
            String string = jSONObject.getString("ver");
            if (string.compareTo("2025.03.19.1126") <= 0 || string.compareTo(C0795b0.m6071i().m6092n("AppLatestVer", BuildConfig.FLAVOR)) == 0) {
                return;
            }
            int i = jSONObject.has("forced") ? jSONObject.getInt("forced") : 0;
            if (jSONObject.has("cku") && jSONObject.getInt("cku") == 0) {
                C0925p.f5855B = false;
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
            m7208k(i, string, string2, string4, string3);
        } catch (Exception e3) {
            C0982s.m7375e("utilUpdateVersion,getUpdateInfo: \n" + Log.getStackTraceString(e3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g */
    public void m7206g(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            C0979p.f6104f = jSONObject.getString("token");
            String string = jSONObject.getString("ver");
            C0982s.m7373c("utilUpdateVersion,checkBoxVer: new:" + string + ", old:" + C0732c.m5542e().m5558p() + ",ver.compareTo " + string.compareTo(C0732c.m5542e().m5558p()));
            if (string.compareTo(C0732c.m5542e().m5558p()) > 0) {
                jSONObject.getString("id");
                if (!TextUtils.isEmpty(string)) {
                    C0982s.m7375e("utilUpdateVersion,mBoxNewVer: ");
                    this.f6018b = string;
                }
            }
        } catch (Exception e) {
            C0982s.m7375e("utilUpdateVersion,checkBoxVerError: \n" + Log.getStackTraceString(e));
        }
        if (!C0795b0.m6071i().m6092n("BoxLatestVer", BuildConfig.FLAVOR).equals(this.f6018b) && C0733d.m5591i() && TextUtils.isEmpty(this.f6018b)) {
            C0795b0.m6071i().m6085F("BoxLatestVer", this.f6018b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h */
    public void m7207h() {
        C1000a.m7488a(this.f6017a, 2131689876);
    }

    /* JADX INFO: renamed from: k */
    private void m7208k(int i, String str, String str2, String str3, String str4) {
        if (C0731b.f4351h) {
            return;
        }
        DialogC0885d.a aVar = new DialogC0885d.a(this.f6017a);
        aVar.m6563b(str, str2);
        DialogC0885d dialogC0885dM6562a = aVar.m6562a();
        dialogC0885dM6562a.show();
        dialogC0885dM6562a.m6561h().setOnClickListener(new c(dialogC0885dM6562a, str3, str, str4, i));
        dialogC0885dM6562a.m6560g().setOnClickListener(new d(this, str, dialogC0885dM6562a));
        if (i != 0) {
            dialogC0885dM6562a.m6559f();
        }
    }

    /* JADX INFO: renamed from: i */
    public void m7209i() {
        HashMap map = new HashMap(7);
        map.put("lang", BuildConfig.FLAVOR + C1002x.m7495c());
        map.put("code", "37");
        map.put("ver", "2025.03.19.1126");
        map.put("uuid", C0953u.m7001z().m7010I());
        map.put("r", BuildConfig.FLAVOR + C0925p.f5874k + "x" + C0925p.f5875l);
        map.put("m", Build.MODEL);
        map.put("pkg", this.f6017a.getPackageName());
        new C0979p().m7342j("/a/upgrade/checkApp", map, new a());
    }

    /* JADX INFO: renamed from: j */
    public void m7210j() {
        if (C0733d.m5591i()) {
            new HashMap(7);
            HashMap map = new HashMap(8);
            map.put("lang", BuildConfig.FLAVOR + C1002x.m7495c());
            map.put("code", "37");
            map.put("appVer", "2025.03.19.1126");
            map.put("ver", C0732c.m5542e().m5558p());
            map.put("uuid", C0732c.m5542e().m5557o());
            map.put("mfd", C0732c.m5542e().m5550h());
            map.put("fwn", C0732c.m5542e().m5546c());
            map.put("model", C0732c.m5542e().m5551i());
            new C0979p().m7342j("/a/upgrade/checkBox", map, new b());
        }
    }
}
