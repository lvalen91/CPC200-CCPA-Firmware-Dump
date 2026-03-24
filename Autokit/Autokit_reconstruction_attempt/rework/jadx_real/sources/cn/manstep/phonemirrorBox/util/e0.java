package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.os.Build;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.Log;
import cn.manstep.phonemirrorBox.util.p;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class e0 {
    private final Context a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f1870c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CountDownTimer f1871d;
    private String f;
    private String g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1869b = "录音文件";
    private final p e = new p(30);
    private boolean h = true;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.b();
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            s.k(StubApp.getOrigApplicationContext(e0.this.a.getApplicationContext()));
        }
    }

    class b implements p.e {
        final /* synthetic */ File a;

        b(File file) {
            this.a = file;
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            s.e("utilUploadLog,uploadLog:failure: app.log !!!");
            e0.this.m();
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            s.e("utilUploadLog,uploadLog:success: app.log " + str);
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                e0.this.p();
            }
            e0.this.n(str, this.a.getAbsolutePath(), true);
            n.b(e0.this.a);
        }
    }

    class c implements p.e {
        c() {
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            s.e("utilUploadLog,uploadLog:failure: box.log !!!");
            n.f(cn.manstep.phonemirrorBox.p.e);
            e0.this.m();
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            s.e("utilUploadLog,uploadLog:success: box.log " + str);
            e0.this.n(str, cn.manstep.phonemirrorBox.p.e, false);
        }
    }

    class d implements p.e {
        final /* synthetic */ File a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f1874b;

        d(File file, long j) {
            this.a = file;
            this.f1874b = j;
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            s.e("utilUploadLog,uploadDataFile:failure!!!" + this.f1874b + ",reason=" + str);
            e0.this.m();
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            s.e("utilUploadLog,uploadDataFile:success: " + str);
            n.f(this.a.getAbsolutePath());
            cn.manstep.phonemirrorBox.widget.a.b(e0.this.a, "file upload success!");
        }
    }

    class e implements p.e {
        final /* synthetic */ String a;

        e(String str) {
            this.a = str;
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            cn.manstep.phonemirrorBox.widget.a.makeText(e0.this.a, 2131689996, 0).show();
            e0.this.k();
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            cn.manstep.phonemirrorBox.widget.a.makeText(e0.this.a, 2131689998, 0).show();
            e0.this.j(this.a);
            if (e0.this.f1870c != null) {
                e0.this.f1870c.a(true, str);
            }
        }
    }

    class f extends CountDownTimer {
        f(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (e0.this.i()) {
                e0.this.q();
            } else {
                e0.this.p();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            if (e0.this.i()) {
                e0.this.r();
                e0.this.q();
            }
        }
    }

    public interface g {
        void a(boolean z, String str);
    }

    public e0(Context context, androidx.fragment.app.n nVar) {
        this.a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        File file = new File(cn.manstep.phonemirrorBox.p.e);
        return file.isFile() && file.exists();
    }

    private Map<String, String> l(String str) {
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(this.f)) {
            map.put("notes", "Debug日志");
        } else {
            map.put("notes", this.f);
        }
        if (!TextUtils.isEmpty(this.g)) {
            map.put("issueTypes", this.g);
        }
        String strC = cn.manstep.phonemirrorBox.p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strC2 = cn.manstep.phonemirrorBox.p.c("ro.board.platform", BuildConfig.FLAVOR);
        map.put("resolution", cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l);
        map.put("manufacturer", strC);
        map.put("platform", strC2);
        map.put("huid", cn.manstep.phonemirrorBox.u.z().w());
        if ("box.log".equals(str)) {
            map.put("android", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
            map.put("mfd", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
            map.put("ufn", cn.manstep.phonemirrorBox.BoxInterface.c.e().c());
            map.put("version", cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
            map.put("uuid", cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
            map.put("model", cn.manstep.phonemirrorBox.BoxInterface.c.e().i());
        } else {
            map.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
            map.put("mfd", new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault()).format(new Date(Build.TIME)));
            map.put("version", "2025.03.19.1126");
            map.put("uuid", cn.manstep.phonemirrorBox.u.z().I());
            map.put("model", Build.MODEL);
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        cn.manstep.phonemirrorBox.widget.a.a(this.a, 2131689876);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(String str, String str2, boolean z) {
        JSONException e2;
        int i;
        String strReplace;
        g gVar;
        try {
            JSONObject jSONObject = new JSONObject(str);
            i = jSONObject.getInt("err");
            try {
                strReplace = String.format(Locale.getDefault(), "http://paplink.cn/feedback.html?code=%s&t=%s&types=%s", jSONObject.getString("code"), jSONObject.getString("time"), this.g).replace(" ", "%20");
            } catch (JSONException e3) {
                e2 = e3;
                s.e("utilUploadLog,onUploadFileSuccess: \n" + Log.getStackTraceString(e2));
                strReplace = BuildConfig.FLAVOR;
            }
        } catch (JSONException e4) {
            e2 = e4;
            i = 0;
        }
        String str3 = z ? "App" : "Box";
        if (i == 0) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                g gVar2 = this.f1870c;
                if (gVar2 != null) {
                    gVar2.a(true, strReplace);
                }
            } else if (!z && (gVar = this.f1870c) != null) {
                gVar.a(true, strReplace);
            }
            if (this.h) {
                cn.manstep.phonemirrorBox.widget.a.b(this.a, str3 + this.a.getResources().getString(2131689798));
            }
            n.f(str2);
            return;
        }
        String str4 = str3 + this.a.getResources().getString(2131689799);
        cn.manstep.phonemirrorBox.widget.a.b(this.a, str4 + "(" + i + ")");
        StringBuilder sb = new StringBuilder();
        sb.append("utilUploadLog,onUploadFileFail: ");
        sb.append(i);
        s.e(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        f fVar = new f(5000L, 1000L);
        this.f1871d = fVar;
        fVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        CountDownTimer countDownTimer = this.f1871d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (!TextUtils.isEmpty(cn.manstep.phonemirrorBox.p.e)) {
            this.e.o("/a/upload/log", l("box.log"), cn.manstep.phonemirrorBox.u.z().I().substring(0, 12) + "_box.log", cn.manstep.phonemirrorBox.p.e, new c());
        }
    }

    private void u() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        if (TextUtils.isEmpty(this.f)) {
            this.f = "D" + Long.toString(System.currentTimeMillis(), 36) + "G";
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i() && (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) != null) {
            fVar.U0(2);
        }
        boolean z = s.a;
        s.b();
        if (z) {
            new Thread(new a()).start();
        }
    }

    private void v(String str, String str2) {
        File file = new File(str2);
        s.d("utilUploadLog", "uploadRecordFile: " + str + ",fileSize: " + file.length());
        if (file.length() <= 0) {
            j(str2);
            return;
        }
        this.f1869b = "37_(" + Build.HARDWARE + ")(" + Build.PRODUCT + ")";
        StringBuilder sb = new StringBuilder();
        sb.append(cn.manstep.phonemirrorBox.u.z().I().substring(0, 12));
        sb.append("_");
        sb.append(str);
        new p(10).o("/a/upload/log", l(this.f1869b), sb.toString(), str2, new e(str2));
    }

    public void j(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            file.delete();
        }
    }

    public void k() {
        n.a(this.a);
    }

    public void o(g gVar) {
        this.f1870c = gVar;
    }

    public void s(String str, String str2) {
        String str3;
        File file = new File(str2);
        if (!file.exists() || !file.isFile()) {
            cn.manstep.phonemirrorBox.widget.a.b(this.a, "file does not exits");
            return;
        }
        long length = file.length();
        s.d("utilUploadLog", "uploadRecordFile: " + str + ",fileSize: " + length + ",filePath: " + str2);
        if (length <= 0) {
            cn.manstep.phonemirrorBox.widget.a.b(this.a, "file does not exits");
            return;
        }
        this.f1869b = "37_(" + Build.HARDWARE + ")(" + Build.PRODUCT + ")";
        if (str.endsWith(".data")) {
            str3 = cn.manstep.phonemirrorBox.u.z().I().substring(0, 12) + "_" + str.replace("box_", BuildConfig.FLAVOR).replace(".data", ".xlog");
        } else {
            str3 = cn.manstep.phonemirrorBox.u.z().I().substring(0, 12) + "_" + str;
        }
        this.e.o("/a/upload/log", l(this.f1869b), str3, file.getAbsolutePath(), new d(file, length));
    }

    public void t() {
        u();
        s.i("utilUploadLog", "uploadAppLog: ########" + s.a);
        File fileP = n.p(this.a);
        if (!(fileP != null)) {
            cn.manstep.phonemirrorBox.widget.a.a(this.a, 2131689884);
            return;
        }
        File fileH = n.h(fileP);
        if (fileH == null) {
            cn.manstep.phonemirrorBox.widget.a.a(this.a, 2131689884);
            return;
        }
        String str = "app.xlog";
        if (!fileH.getName().endsWith(".xlog") && !fileH.getName().endsWith(".bs64")) {
            str = "app.log";
        }
        this.e.o("/a/upload/log", l("app.log"), cn.manstep.phonemirrorBox.u.z().I().substring(0, 12) + "_" + str, fileH.getAbsolutePath(), new b(fileH));
    }

    public void w() {
        boolean z;
        File[] fileArrListFiles;
        String str = "录音" + this.a.getResources().getString(2131689734);
        File fileK = n.k(this.a);
        if (fileK == null || !fileK.isDirectory() || (fileArrListFiles = fileK.listFiles()) == null) {
            z = false;
        } else {
            z = false;
            for (File file : fileArrListFiles) {
                if (file.isFile() && file.length() < 52428800) {
                    v(file.getName(), file.getAbsolutePath());
                    z = true;
                }
            }
        }
        if (z) {
            return;
        }
        cn.manstep.phonemirrorBox.widget.a.makeText(this.a, str, 0).show();
    }
}
