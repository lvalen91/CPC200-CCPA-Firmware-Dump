package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.os.Build;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.AbstractC0366n;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.util.C0979p;
import cn.manstep.phonemirrorBox.widget.C1000a;
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

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.e0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0968e0 {

    /* JADX INFO: renamed from: a */
    private final Context f6035a;

    /* JADX INFO: renamed from: c */
    private g f6037c;

    /* JADX INFO: renamed from: d */
    private CountDownTimer f6038d;

    /* JADX INFO: renamed from: f */
    private String f6040f;

    /* JADX INFO: renamed from: g */
    private String f6041g;

    /* JADX INFO: renamed from: b */
    private String f6036b = "录音文件";

    /* JADX INFO: renamed from: e */
    private final C0979p f6039e = new C0979p(30);

    /* JADX INFO: renamed from: h */
    private boolean f6042h = true;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.e0$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0982s.m7372b();
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            C0982s.m7381k(StubApp.getOrigApplicationContext(C0968e0.this.f6035a.getApplicationContext()));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.e0$b */
    class b implements C0979p.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ File f6044a;

        b(File file) {
            this.f6044a = file;
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            C0982s.m7375e("utilUploadLog,uploadLog:failure: app.log !!!");
            C0968e0.this.m7221m();
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7375e("utilUploadLog,uploadLog:success: app.log " + str);
            if (C0733d.m5591i()) {
                C0968e0.this.m7223p();
            }
            C0968e0.this.m7222n(str, this.f6044a.getAbsolutePath(), true);
            C0977n.m7299b(C0968e0.this.f6035a);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.e0$c */
    class c implements C0979p.e {
        c() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            C0982s.m7375e("utilUploadLog,uploadLog:failure: box.log !!!");
            C0977n.m7303f(C0925p.f5868e);
            C0968e0.this.m7221m();
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7375e("utilUploadLog,uploadLog:success: box.log " + str);
            C0968e0.this.m7222n(str, C0925p.f5868e, false);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.e0$d */
    class d implements C0979p.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ File f6047a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ long f6048b;

        d(File file, long j) {
            this.f6047a = file;
            this.f6048b = j;
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            C0982s.m7375e("utilUploadLog,uploadDataFile:failure!!!" + this.f6048b + ",reason=" + str);
            C0968e0.this.m7221m();
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7375e("utilUploadLog,uploadDataFile:success: " + str);
            C0977n.m7303f(this.f6047a.getAbsolutePath());
            C1000a.m7489b(C0968e0.this.f6035a, "file upload success!");
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.e0$e */
    class e implements C0979p.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ String f6050a;

        e(String str) {
            this.f6050a = str;
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            C1000a.makeText(C0968e0.this.f6035a, 2131689996, 0).show();
            C0968e0.this.m7229k();
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C1000a.makeText(C0968e0.this.f6035a, 2131689998, 0).show();
            C0968e0.this.m7228j(this.f6050a);
            if (C0968e0.this.f6037c != null) {
                C0968e0.this.f6037c.mo7234a(true, str);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.e0$f */
    class f extends CountDownTimer {
        f(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (C0968e0.this.m7219i()) {
                C0968e0.this.m7224q();
            } else {
                C0968e0.this.m7223p();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            if (C0968e0.this.m7219i()) {
                C0968e0.this.m7225r();
                C0968e0.this.m7224q();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.e0$g */
    public interface g {
        /* JADX INFO: renamed from: a */
        void mo7234a(boolean z, String str);
    }

    public C0968e0(Context context, AbstractC0366n abstractC0366n) {
        this.f6035a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i */
    public boolean m7219i() {
        File file = new File(C0925p.f5868e);
        return file.isFile() && file.exists();
    }

    /* JADX INFO: renamed from: l */
    private Map<String, String> m7220l(String str) {
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(this.f6040f)) {
            map.put("notes", "Debug日志");
        } else {
            map.put("notes", this.f6040f);
        }
        if (!TextUtils.isEmpty(this.f6041g)) {
            map.put("issueTypes", this.f6041g);
        }
        String strM6859c = C0925p.m6859c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strM6859c2 = C0925p.m6859c("ro.board.platform", BuildConfig.FLAVOR);
        map.put("resolution", C0925p.f5874k + "x" + C0925p.f5875l);
        map.put("manufacturer", strM6859c);
        map.put("platform", strM6859c2);
        map.put("huid", C0953u.m7001z().m7062w());
        if ("box.log".equals(str)) {
            map.put("android", C0732c.m5542e().m5550h());
            map.put("mfd", C0732c.m5542e().m5550h());
            map.put("ufn", C0732c.m5542e().m5546c());
            map.put("version", C0732c.m5542e().m5558p());
            map.put("uuid", C0732c.m5542e().m5557o());
            map.put("model", C0732c.m5542e().m5551i());
        } else {
            map.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
            map.put("mfd", new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault()).format(new Date(Build.TIME)));
            map.put("version", "2025.03.19.1126");
            map.put("uuid", C0953u.m7001z().m7010I());
            map.put("model", Build.MODEL);
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m */
    public void m7221m() {
        C1000a.m7488a(this.f6035a, 2131689876);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n */
    public void m7222n(String str, String str2, boolean z) {
        JSONException e2;
        int i;
        String strReplace;
        g gVar;
        try {
            JSONObject jSONObject = new JSONObject(str);
            i = jSONObject.getInt("err");
            try {
                strReplace = String.format(Locale.getDefault(), "http://paplink.cn/feedback.html?code=%s&t=%s&types=%s", jSONObject.getString("code"), jSONObject.getString("time"), this.f6041g).replace(" ", "%20");
            } catch (JSONException e3) {
                e2 = e3;
                C0982s.m7375e("utilUploadLog,onUploadFileSuccess: \n" + Log.getStackTraceString(e2));
                strReplace = BuildConfig.FLAVOR;
            }
        } catch (JSONException e4) {
            e2 = e4;
            i = 0;
        }
        String str3 = z ? "App" : "Box";
        if (i == 0) {
            if (!C0733d.m5591i()) {
                g gVar2 = this.f6037c;
                if (gVar2 != null) {
                    gVar2.mo7234a(true, strReplace);
                }
            } else if (!z && (gVar = this.f6037c) != null) {
                gVar.mo7234a(true, strReplace);
            }
            if (this.f6042h) {
                C1000a.m7489b(this.f6035a, str3 + this.f6035a.getResources().getString(2131689798));
            }
            C0977n.m7303f(str2);
            return;
        }
        String str4 = str3 + this.f6035a.getResources().getString(2131689799);
        C1000a.m7489b(this.f6035a, str4 + "(" + i + ")");
        StringBuilder sb = new StringBuilder();
        sb.append("utilUploadLog,onUploadFileFail: ");
        sb.append(i);
        C0982s.m7375e(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p */
    public void m7223p() {
        f fVar = new f(5000L, 1000L);
        this.f6038d = fVar;
        fVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q */
    public void m7224q() {
        CountDownTimer countDownTimer = this.f6038d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r */
    public void m7225r() {
        if (!TextUtils.isEmpty(C0925p.f5868e)) {
            this.f6039e.m7343o("/a/upload/log", m7220l("box.log"), C0953u.m7001z().m7010I().substring(0, 12) + "_box.log", C0925p.f5868e, new c());
        }
    }

    /* JADX INFO: renamed from: u */
    private void m7226u() {
        C0735f c0735f;
        if (TextUtils.isEmpty(this.f6040f)) {
            this.f6040f = "D" + Long.toString(System.currentTimeMillis(), 36) + "G";
        }
        if (C0733d.m5591i() && (c0735f = C0733d.f4428l) != null) {
            c0735f.m5701U0(2);
        }
        boolean z = C0982s.f6143a;
        C0982s.m7372b();
        if (z) {
            new Thread(new a()).start();
        }
    }

    /* JADX INFO: renamed from: v */
    private void m7227v(String str, String str2) {
        File file = new File(str2);
        C0982s.m7374d("utilUploadLog", "uploadRecordFile: " + str + ",fileSize: " + file.length());
        if (file.length() <= 0) {
            m7228j(str2);
            return;
        }
        this.f6036b = "37_(" + Build.HARDWARE + ")(" + Build.PRODUCT + ")";
        StringBuilder sb = new StringBuilder();
        sb.append(C0953u.m7001z().m7010I().substring(0, 12));
        sb.append("_");
        sb.append(str);
        new C0979p(10).m7343o("/a/upload/log", m7220l(this.f6036b), sb.toString(), str2, new e(str2));
    }

    /* JADX INFO: renamed from: j */
    public void m7228j(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            file.delete();
        }
    }

    /* JADX INFO: renamed from: k */
    public void m7229k() {
        C0977n.m7298a(this.f6035a);
    }

    /* JADX INFO: renamed from: o */
    public void m7230o(g gVar) {
        this.f6037c = gVar;
    }

    /* JADX INFO: renamed from: s */
    public void m7231s(String str, String str2) {
        String str3;
        File file = new File(str2);
        if (!file.exists() || !file.isFile()) {
            C1000a.m7489b(this.f6035a, "file does not exits");
            return;
        }
        long length = file.length();
        C0982s.m7374d("utilUploadLog", "uploadRecordFile: " + str + ",fileSize: " + length + ",filePath: " + str2);
        if (length <= 0) {
            C1000a.m7489b(this.f6035a, "file does not exits");
            return;
        }
        this.f6036b = "37_(" + Build.HARDWARE + ")(" + Build.PRODUCT + ")";
        if (str.endsWith(".data")) {
            str3 = C0953u.m7001z().m7010I().substring(0, 12) + "_" + str.replace("box_", BuildConfig.FLAVOR).replace(".data", ".xlog");
        } else {
            str3 = C0953u.m7001z().m7010I().substring(0, 12) + "_" + str;
        }
        this.f6039e.m7343o("/a/upload/log", m7220l(this.f6036b), str3, file.getAbsolutePath(), new d(file, length));
    }

    /* JADX INFO: renamed from: t */
    public void m7232t() {
        m7226u();
        C0982s.m7379i("utilUploadLog", "uploadAppLog: ########" + C0982s.f6143a);
        File fileM7313p = C0977n.m7313p(this.f6035a);
        if (!(fileM7313p != null)) {
            C1000a.m7488a(this.f6035a, 2131689884);
            return;
        }
        File fileM7305h = C0977n.m7305h(fileM7313p);
        if (fileM7305h == null) {
            C1000a.m7488a(this.f6035a, 2131689884);
            return;
        }
        String str = "app.xlog";
        if (!fileM7305h.getName().endsWith(".xlog") && !fileM7305h.getName().endsWith(".bs64")) {
            str = "app.log";
        }
        this.f6039e.m7343o("/a/upload/log", m7220l("app.log"), C0953u.m7001z().m7010I().substring(0, 12) + "_" + str, fileM7305h.getAbsolutePath(), new b(fileM7305h));
    }

    /* JADX INFO: renamed from: w */
    public void m7233w() {
        boolean z;
        File[] fileArrListFiles;
        String str = "录音" + this.f6035a.getResources().getString(2131689734);
        File fileM7308k = C0977n.m7308k(this.f6035a);
        if (fileM7308k == null || !fileM7308k.isDirectory() || (fileArrListFiles = fileM7308k.listFiles()) == null) {
            z = false;
        } else {
            z = false;
            for (File file : fileArrListFiles) {
                if (file.isFile() && file.length() < 52428800) {
                    m7227v(file.getName(), file.getAbsolutePath());
                    z = true;
                }
            }
        }
        if (z) {
            return;
        }
        C1000a.makeText(this.f6035a, str, 0).show();
    }
}
