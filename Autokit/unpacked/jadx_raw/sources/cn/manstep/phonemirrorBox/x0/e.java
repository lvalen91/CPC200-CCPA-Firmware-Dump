package cn.manstep.phonemirrorBox.x0;

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
import androidx.fragment.app.n;
import androidx.lifecycle.o;
import cn.manstep.phonemirrorBox.l0.r;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.util.d0;
import cn.manstep.phonemirrorBox.util.e0;
import cn.manstep.phonemirrorBox.util.s;
import cn.manstep.phonemirrorBox.util.w;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class e extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o<String> f1968d;
    private final o<String> e;
    private final o<String> f;
    private final o<String> g;
    private o<String> h;
    private e0 i;
    private d0 j;
    private o<String> k;
    private o<String> l;
    private o<String> m;
    private WeakReference<n> n;
    private o<Boolean> o;
    private o<Boolean> p;
    private final o<String> q;
    private o<Boolean> r;

    class a implements e0.g {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.util.e0.g
        public void a(boolean z, String str) {
            e.this.E(!z);
        }
    }

    public e(Application application, n nVar) {
        super(application);
        this.n = new WeakReference<>(nVar);
        this.o = new o<>(Boolean.valueOf(p.w && p.x));
        this.i = new e0(cn.manstep.phonemirrorBox.v0.e.z(), nVar);
        d0 d0Var = new d0(cn.manstep.phonemirrorBox.v0.e.z(), nVar);
        this.j = d0Var;
        d0Var.i();
        this.j.j();
        WindowManager windowManager = (WindowManager) i().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        this.k = new o<>(displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.k.k(this.k.e() + "(" + displayMetrics.widthPixels + "x" + displayMetrics.heightPixels + ")");
        this.l = new o<>(String.valueOf(displayMetrics.densityDpi) + "(" + String.valueOf(displayMetrics.density) + "," + String.valueOf(displayMetrics.scaledDensity) + ")");
        this.q = new o<>();
        A();
        StringBuilder sb = new StringBuilder("2025.03.19.1126");
        sb.insert(10, String.format(Locale.CHINA, ".%02d", 37));
        sb.append("V");
        sb.append("2025.03.19.1126");
        this.g = new o<>(sb.toString());
        this.f = new o<>(cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
        this.f1968d = new o<>(cn.manstep.phonemirrorBox.BoxInterface.c.e().q());
        this.e = new o<>(cn.manstep.phonemirrorBox.BoxInterface.c.e().q());
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
                            sb2.append(o(mediaCodecInfo.getName()));
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
        this.m = new o<>(sb2.toString());
        this.p = new o<>(Boolean.valueOf(cn.manstep.phonemirrorBox.util.n.u(application)));
    }

    private void A() {
        StringBuilder sb = new StringBuilder();
        sb.append(r("ro.product.model", Build.MODEL));
        sb.append("\n");
        sb.append(r("ro.product.name", Build.PRODUCT));
        sb.append("\n");
        sb.append(r("ro.build.id", Build.ID));
        sb.append("\n");
        sb.append(r("ro.board.platform", p.c("ro.board.platform", BuildConfig.FLAVOR)));
        sb.append("\n");
        sb.append(r("ro.product.brand", Build.BRAND));
        sb.append("\n");
        sb.append(r("ro.build.fingerprint", Build.FINGERPRINT));
        sb.append("\n");
        sb.append(r("ro.build.date.utc", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINESE).format(new Date(Build.TIME))));
        sb.append("\n");
        sb.append(r("ro.build.version.release(sdk)", Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")"));
        sb.append("\n");
        this.q.k(sb.toString());
    }

    private String o(String str) {
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

    private String r(String str, String str2) {
        return String.format(Locale.CHINA, "%-40s: %s", str, str2);
    }

    public void B() {
        w.b(StubApp.getOrigApplicationContext(i().getApplicationContext()), false);
    }

    public void C(View view) {
        if (view instanceof CompoundButton) {
            cn.manstep.phonemirrorBox.BoxInterface.d.J(((CompoundButton) view).isChecked());
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.l.Y0();
            }
        }
    }

    public void D(String str) {
        this.f.k(str);
    }

    public void E(boolean z) {
        this.p.k(Boolean.valueOf(z));
    }

    public void F(View view) {
        if (view instanceof CompoundButton) {
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            this.o.k(Boolean.valueOf(zIsChecked));
            if (!zIsChecked) {
                p.w = false;
                p.x = false;
                p.y = false;
            } else {
                p.w = true;
                p.x = true;
                p.y = true;
                cn.manstep.phonemirrorBox.util.n.a(cn.manstep.phonemirrorBox.v0.e.z());
            }
        }
    }

    public void G(View view) {
        if (view instanceof CompoundButton) {
            boolean zIsChecked = ((CompoundButton) view).isChecked();
            this.r.k(Boolean.valueOf(zIsChecked));
            p.f1806d = zIsChecked;
            if (zIsChecked) {
                cn.manstep.phonemirrorBox.util.n.c(cn.manstep.phonemirrorBox.v0.e.z());
            }
        }
    }

    public void H(String str) {
        this.e.k(str);
    }

    public void I(String str) {
        this.f1968d.k(str);
    }

    public void J() {
        this.i.t();
    }

    public void K() {
        if (p.x && p.w) {
            this.i.w();
            this.i.o(new a());
        }
    }

    public void j() {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        int i = Build.VERSION.SDK_INT;
        if (i >= 9) {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", cn.manstep.phonemirrorBox.v0.e.z().getPackageName(), null));
        } else if (i <= 8) {
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra("com.android.settings.ApplicationPkgName", cn.manstep.phonemirrorBox.v0.e.z().getPackageName());
        }
        try {
            cn.manstep.phonemirrorBox.v0.e.z().startActivity(intent);
        } catch (Exception e) {
            s.f("DebugFragmentViewModel", ",getAppDetailSettingIntent: \n" + Log.getStackTraceString(e));
        }
    }

    public void k() {
        androidx.fragment.app.w wVarL = this.n.get().l();
        wVarL.b(2131296606, cn.manstep.phonemirrorBox.l0.l.newInstance());
        wVarL.g("AudioDebugFragment");
        wVarL.i();
    }

    public void l() {
        androidx.fragment.app.w wVarL = this.n.get().l();
        wVarL.b(2131296606, r.newInstance());
        wVarL.g("FileShareFragment");
        wVarL.i();
    }

    public o<String> m() {
        return this.g;
    }

    public o<String> n() {
        return this.f;
    }

    public o<String> p() {
        return this.l;
    }

    public o<Boolean> q() {
        return this.p;
    }

    public o<String> s() {
        return this.m;
    }

    public o<Boolean> t() {
        return this.o;
    }

    public o<String> u() {
        return this.k;
    }

    public o<Boolean> v() {
        if (this.r == null) {
            this.r = new o<>(Boolean.valueOf(p.f1806d));
        }
        return this.r;
    }

    public o<String> w() {
        if (this.h == null) {
            o<String> oVar = new o<>();
            this.h = oVar;
            if (Build.VERSION.SDK_INT >= 21) {
                oVar.k(Arrays.toString(Build.SUPPORTED_ABIS));
            } else if (TextUtils.isEmpty(Build.CPU_ABI2)) {
                this.h.k(Build.CPU_ABI);
            } else {
                this.h.k(Build.CPU_ABI + "," + Build.CPU_ABI2);
            }
        }
        return this.h;
    }

    public o<String> x() {
        return this.q;
    }

    public o<String> y() {
        return this.e;
    }

    public o<String> z() {
        return this.f1968d;
    }
}
