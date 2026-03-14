package cn.manstep.phonemirrorBox.p091x0;

import android.app.Application;
import android.content.Intent;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.CompoundButton;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.lifecycle.C0384a;
import androidx.lifecycle.C0401o;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.p078l0.C0905l;
import cn.manstep.phonemirrorBox.p078l0.ViewOnClickListenerC0911r;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0966d0;
import cn.manstep.phonemirrorBox.util.C0968e0;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0986w;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1007e extends C0384a {

    /* JADX INFO: renamed from: d */
    private final C0401o<String> f6286d;

    /* JADX INFO: renamed from: e */
    private final C0401o<String> f6287e;

    /* JADX INFO: renamed from: f */
    private final C0401o<String> f6288f;

    /* JADX INFO: renamed from: g */
    private final C0401o<String> f6289g;

    /* JADX INFO: renamed from: h */
    private C0401o<String> f6290h;

    /* JADX INFO: renamed from: i */
    private C0968e0 f6291i;

    /* JADX INFO: renamed from: j */
    private C0966d0 f6292j;

    /* JADX INFO: renamed from: k */
    private C0401o<String> f6293k;

    /* JADX INFO: renamed from: l */
    private C0401o<String> f6294l;

    /* JADX INFO: renamed from: m */
    private C0401o<String> f6295m;

    /* JADX INFO: renamed from: n */
    private WeakReference<AbstractC0366n> f6296n;

    /* JADX INFO: renamed from: o */
    private C0401o<Boolean> f6297o;

    /* JADX INFO: renamed from: p */
    private C0401o<Boolean> f6298p;

    /* JADX INFO: renamed from: q */
    private final C0401o<String> f6299q;

    /* JADX INFO: renamed from: r */
    private C0401o<Boolean> f6300r;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.e$a */
    class a implements C0968e0.g {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0968e0.g
        /* JADX INFO: renamed from: a */
        public void mo7234a(boolean z, String str) {
            C1007e.this.m7586E(!z);
        }
    }

    public C1007e(Application application, AbstractC0366n abstractC0366n) {
        super(application);
        this.f6296n = new WeakReference<>(abstractC0366n);
        this.f6297o = new C0401o<>(Boolean.valueOf(C0925p.f5886w && C0925p.f5887x));
        this.f6291i = new C0968e0(C0995e.m7462z(), abstractC0366n);
        C0966d0 c0966d0 = new C0966d0(C0995e.m7462z(), abstractC0366n);
        this.f6292j = c0966d0;
        c0966d0.m7209i();
        this.f6292j.m7210j();
        WindowManager windowManager = (WindowManager) m2977i().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        this.f6293k = new C0401o<>(displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.f6293k.mo2965k(this.f6293k.m2959e() + "(" + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels + ")");
        this.f6294l = new C0401o<>(String.valueOf(displayMetrics.densityDpi) + "(" + String.valueOf(displayMetrics.density) + "," + String.valueOf(displayMetrics.scaledDensity) + ")");
        this.f6299q = new C0401o<>();
        m7580A();
        StringBuilder sb = new StringBuilder("2025.03.19.1126");
        sb.insert(10, String.format(Locale.CHINA, ".%02d", 37));
        sb.append("V");
        sb.append("2025.03.19.1126");
        this.f6289g = new C0401o<>(sb.toString());
        this.f6288f = new C0401o<>(C0732c.m5542e().m5558p());
        this.f6286d = new C0401o<>(C0732c.m5542e().m5559q());
        this.f6287e = new C0401o<>(C0732c.m5542e().m5559q());
        StringBuilder sb2 = new StringBuilder();
        if (Build.VERSION.SDK_INT >= 21) {
            for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
                if (!mediaCodecInfo.isEncoder()) {
                    for (String str : mediaCodecInfo.getSupportedTypes()) {
                        if ("video/avc".equals(str)) {
                            if (!TextUtils.isEmpty(sb2.toString())) {
                                sb2.append("\n");
                            }
                            sb2.append(mediaCodecInfo.getName());
                            sb2.append(":");
                            sb2.append(m7581o(mediaCodecInfo.getName()));
                        }
                    }
                }
            }
        } else {
            int codecCount = MediaCodecList.getCodecCount();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (!codecInfoAt.isEncoder()) {
                    for (String str2 : codecInfoAt.getSupportedTypes()) {
                        if ("video/avc".equals(str2)) {
                            if (!TextUtils.isEmpty(sb2.toString())) {
                                sb2.append("\n");
                            }
                            sb2.append(codecInfoAt.getName());
                        }
                    }
                }
            }
        }
        this.f6295m = new C0401o<>(sb2.toString());
        this.f6298p = new C0401o<>(Boolean.valueOf(C0977n.m7318u(application)));
    }

    /* JADX INFO: renamed from: A */
    private void m7580A() {
        StringBuilder sb = new StringBuilder();
        sb.append(m7582r("ro.product.model", Build.MODEL));
        sb.append("\n");
        sb.append(m7582r("ro.product.name", Build.PRODUCT));
        sb.append("\n");
        sb.append(m7582r("ro.build.id", Build.ID));
        sb.append("\n");
        sb.append(m7582r("ro.board.platform", C0925p.m6859c("ro.board.platform", BuildConfig.FLAVOR)));
        sb.append("\n");
        sb.append(m7582r("ro.product.brand", Build.BRAND));
        sb.append("\n");
        sb.append(m7582r("ro.build.fingerprint", Build.FINGERPRINT));
        sb.append("\n");
        sb.append(m7582r("ro.build.date.utc", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINESE).format(new Date(Build.TIME))));
        sb.append("\n");
        sb.append(m7582r("ro.build.version.release(sdk)", Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")"));
        sb.append("\n");
        this.f6299q.mo2965k(sb.toString());
    }

    /* JADX INFO: renamed from: o */
    private String m7581o(String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            MediaCodec mediaCodecCreateByCodecName = null;
            try {
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                MediaCodecInfo.VideoCapabilities videoCapabilities = mediaCodecCreateByCodecName.getCodecInfo().getCapabilitiesForType("video/avc").getVideoCapabilities();
                return String.format(Locale.getDefault(), "%d~%d,%d~%d", videoCapabilities.getSupportedWidths().getLower(), videoCapabilities.getSupportedWidths().getUpper(), videoCapabilities.getSupportedHeights().getLower(), videoCapabilities.getSupportedHeights().getUpper());
            } catch (Exception unused) {
            } finally {
                mediaCodecCreateByCodecName.release();
            }
        }
        return BuildConfig.FLAVOR;
    }

    /* JADX INFO: renamed from: r */
    private String m7582r(String str, String str2) {
        return String.format(Locale.CHINA, "%-40s: %s", str, str2);
    }

    /* JADX INFO: renamed from: B */
    public void m7583B() {
        C0986w.m7396b(StubApp.getOrigApplicationContext(m2977i().getApplicationContext()), false);
    }

    /* JADX INFO: renamed from: C */
    public void m7584C(View view) {
        if (view instanceof CompoundButton) {
            C0733d.m5577J(((CompoundButton) view).isChecked());
            if (C0733d.m5591i()) {
                C0733d.f4428l.m5707Y0();
            }
        }
    }

    /* JADX INFO: renamed from: D */
    public void m7585D(String str) {
        this.f6288f.mo2965k(str);
    }

    /* JADX INFO: renamed from: E */
    public void m7586E(boolean z) {
        this.f6298p.mo2965k(Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: F */
    public void m7587F(View view) {
        if (view instanceof CompoundButton) {
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            this.f6297o.mo2965k(Boolean.valueOf(zIsChecked));
            if (!zIsChecked) {
                C0925p.f5886w = false;
                C0925p.f5887x = false;
                C0925p.f5888y = false;
            } else {
                C0925p.f5886w = true;
                C0925p.f5887x = true;
                C0925p.f5888y = true;
                C0977n.m7298a(C0995e.m7462z());
            }
        }
    }

    /* JADX INFO: renamed from: G */
    public void m7588G(View view) {
        if (view instanceof CompoundButton) {
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            this.f6300r.mo2965k(Boolean.valueOf(zIsChecked));
            C0925p.f5867d = zIsChecked;
            if (zIsChecked) {
                C0977n.m7300c(C0995e.m7462z());
            }
        }
    }

    /* JADX INFO: renamed from: H */
    public void m7589H(String str) {
        this.f6287e.mo2965k(str);
    }

    /* JADX INFO: renamed from: I */
    public void m7590I(String str) {
        this.f6286d.mo2965k(str);
    }

    /* JADX INFO: renamed from: J */
    public void m7591J() {
        this.f6291i.m7232t();
    }

    /* JADX INFO: renamed from: K */
    public void m7592K() {
        if (C0925p.f5887x && C0925p.f5886w) {
            this.f6291i.m7233w();
            this.f6291i.m7230o(new a());
        }
    }

    /* JADX INFO: renamed from: j */
    public void m7593j() {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        int i = Build.VERSION.SDK_INT;
        if (i >= 9) {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", C0995e.m7462z().getPackageName(), null));
        } else if (i <= 8) {
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra("com.android.settings.ApplicationPkgName", C0995e.m7462z().getPackageName());
        }
        try {
            C0995e.m7462z().startActivity(intent);
        } catch (Exception e) {
            C0982s.m7376f("DebugFragmentViewModel", ",getAppDetailSettingIntent: \n" + Log.getStackTraceString(e));
        }
    }

    /* JADX INFO: renamed from: k */
    public void m7594k() {
        AbstractC0375w abstractC0375wM2774l = this.f6296n.get().m2774l();
        abstractC0375wM2774l.m2886b(2131296606, C0905l.newInstance());
        abstractC0375wM2774l.m2891g("AudioDebugFragment");
        abstractC0375wM2774l.mo2527i();
    }

    /* JADX INFO: renamed from: l */
    public void m7595l() {
        AbstractC0375w abstractC0375wM2774l = this.f6296n.get().m2774l();
        abstractC0375wM2774l.m2886b(2131296606, ViewOnClickListenerC0911r.newInstance());
        abstractC0375wM2774l.m2891g("FileShareFragment");
        abstractC0375wM2774l.mo2527i();
    }

    /* JADX INFO: renamed from: m */
    public C0401o<String> m7596m() {
        return this.f6289g;
    }

    /* JADX INFO: renamed from: n */
    public C0401o<String> m7597n() {
        return this.f6288f;
    }

    /* JADX INFO: renamed from: p */
    public C0401o<String> m7598p() {
        return this.f6294l;
    }

    /* JADX INFO: renamed from: q */
    public C0401o<Boolean> m7599q() {
        return this.f6298p;
    }

    /* JADX INFO: renamed from: s */
    public C0401o<String> m7600s() {
        return this.f6295m;
    }

    /* JADX INFO: renamed from: t */
    public C0401o<Boolean> m7601t() {
        return this.f6297o;
    }

    /* JADX INFO: renamed from: u */
    public C0401o<String> m7602u() {
        return this.f6293k;
    }

    /* JADX INFO: renamed from: v */
    public C0401o<Boolean> m7603v() {
        if (this.f6300r == null) {
            this.f6300r = new C0401o<>(Boolean.valueOf(C0925p.f5867d));
        }
        return this.f6300r;
    }

    /* JADX INFO: renamed from: w */
    public C0401o<String> m7604w() {
        if (this.f6290h == null) {
            C0401o<String> c0401o = new C0401o<>();
            this.f6290h = c0401o;
            if (Build.VERSION.SDK_INT >= 21) {
                c0401o.mo2965k(Arrays.toString(Build.SUPPORTED_ABIS));
            } else if (TextUtils.isEmpty(Build.CPU_ABI2)) {
                this.f6290h.mo2965k(Build.CPU_ABI);
            } else {
                this.f6290h.mo2965k(Build.CPU_ABI + "," + Build.CPU_ABI2);
            }
        }
        return this.f6290h;
    }

    /* JADX INFO: renamed from: x */
    public C0401o<String> m7605x() {
        return this.f6299q;
    }

    /* JADX INFO: renamed from: y */
    public C0401o<String> m7606y() {
        return this.f6287e;
    }

    /* JADX INFO: renamed from: z */
    public C0401o<String> m7607z() {
        return this.f6286d;
    }
}
