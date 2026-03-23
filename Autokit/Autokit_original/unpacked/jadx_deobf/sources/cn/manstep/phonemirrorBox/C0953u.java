package cn.manstep.phonemirrorBox;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0987x;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.u */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0953u {

    /* JADX INFO: renamed from: p */
    private static final List<String> f5948p = Arrays.asList("rockchip/rkpx3/rkpx3:4.4.4/KTU84Q/eng.kityzhou.20170427.141957:eng/test-keys", "Dolphin_D3/e03_high_arm64/e03_high_arm64:10/20.01.01.000000.211951/186:eng/test-keys", "kia/wp_bdc_cn/wp_bdc_cn:4.4.2/KVT49L/eng.vmadmin.20190403.090300:user/dev-keys", "alps/full_ac8257_demo/ac8257_demo:9/PPR1.180610.011/bean01112215:user/test-keys");

    /* JADX INFO: renamed from: q */
    private static final List<String> f5949q = Arrays.asList("evb3561s_65_m0", "evb3561sv_t_63_m0", "FF-5000", "t8-p2");

    /* JADX INFO: renamed from: r */
    private static C0953u f5950r;

    /* JADX INFO: renamed from: b */
    private final String f5952b;

    /* JADX INFO: renamed from: c */
    private final String f5953c;

    /* JADX INFO: renamed from: d */
    private final String f5954d;

    /* JADX INFO: renamed from: e */
    private final String f5955e;

    /* JADX INFO: renamed from: h */
    private WeakReference<Context> f5958h;

    /* JADX INFO: renamed from: i */
    private boolean f5959i;

    /* JADX INFO: renamed from: j */
    private boolean f5960j;

    /* JADX INFO: renamed from: l */
    private int f5962l;

    /* JADX INFO: renamed from: m */
    private int f5963m;

    /* JADX INFO: renamed from: n */
    private final int f5964n;

    /* JADX INFO: renamed from: o */
    private final int f5965o;

    /* JADX INFO: renamed from: f */
    private final String f5956f = Build.ID;

    /* JADX INFO: renamed from: k */
    private String f5961k = null;

    /* JADX INFO: renamed from: a */
    private final String f5951a = Build.DEVICE;

    /* JADX INFO: renamed from: g */
    private final String f5957g = "[" + TimeZone.getDefault().getDisplayName() + "," + TimeZone.getDefault().getID() + "][" + Locale.getDefault().getDisplayName() + "," + Locale.getDefault().getLanguage() + "," + Locale.getDefault().getDisplayLanguage() + "," + Locale.getDefault().getCountry() + "," + Locale.getDefault().getDisplayCountry() + "]";

    private C0953u() {
        this.f5959i = false;
        this.f5960j = false;
        if (f5949q.contains(this.f5951a)) {
            this.f5959i = true;
        }
        if (f5948p.contains(Build.FINGERPRINT)) {
            this.f5960j = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Build.MANUFACTURER);
        sb.append("-");
        sb.append(Build.MODEL);
        sb.append("-");
        sb.append(Build.PRODUCT);
        sb.append("-");
        sb.append(Build.VERSION.RELEASE);
        sb.append("(");
        sb.append(Build.VERSION.SDK_INT);
        sb.append(")");
        this.f5953c = sb.toString();
        this.f5952b = Build.MANUFACTURER + "-" + Build.MODEL + "-" + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")";
        this.f5954d = sb + "-" + Build.ID;
        C0982s.m7374d("DeviceConfig", "DeviceConfig: " + MyApplication.m5997b().f4699c.toString());
        this.f5964n = MyApplication.m5997b().f4699c.widthPixels;
        this.f5965o = MyApplication.m5997b().f4699c.heightPixels;
        C0982s.m7379i("DeviceConfig", "DeviceConfig: 1、" + this.f5952b);
        C0982s.m7379i("DeviceConfig", "DeviceConfig: 2、" + this.f5953c);
        C0982s.m7379i("DeviceConfig", "DeviceConfig: 3、" + this.f5954d);
        String str = Build.MANUFACTURER + "-" + Build.BRAND + "-" + Build.PRODUCT + "-" + Build.MODEL + "-" + Build.ID;
        C0982s.m7374d("DeviceConfig", "DeviceConfig: HUID:" + str);
        this.f5955e = C0964c0.m7199w(str);
        C0982s.m7374d("DeviceConfig", "DeviceConfig: HUID:" + this.f5955e);
    }

    /* JADX INFO: renamed from: a */
    private String m6999a() {
        return C0964c0.m7199w(Build.BRAND + Build.DEVICE + Build.PRODUCT + Build.MODEL + Build.DISPLAY + Build.ID + Build.FINGERPRINT + Build.VERSION.RELEASE + Build.VERSION.SDK_INT + C0964c0.m7181e(MyApplication.m5997b()));
    }

    /* JADX INFO: renamed from: n0 */
    private void m7000n0(Context context) {
        if (context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, (Class<?>) Main1Activity.class)) != 2) {
            Intent intent = new Intent(context, (Class<?>) Main1Activity.class);
            intent.addFlags(268435456);
            try {
                context.startActivity(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: z */
    public static C0953u m7001z() {
        if (f5950r == null) {
            synchronized (C0953u.class) {
                if (f5950r == null) {
                    f5950r = new C0953u();
                }
            }
        }
        return f5950r;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX INFO: renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Rect m7002A() {
        byte b2;
        String str = this.f5953c;
        int iHashCode = str.hashCode();
        if (iHashCode != -1825773316) {
            if (iHashCode != 106973241) {
                b2 = (iHashCode == 1138880147 && str.equals("alps-spm8666p1_64_car-changan_car-9(28)")) ? (byte) 0 : (byte) -1;
            } else if (str.equals("JIDU-ROBOCAR-msmnile_gvmq-12(32)")) {
                b2 = 2;
            }
        } else if (str.equals("Great_Wall-F7-22-SERIALS-g6sa_a12-8.1.0(27)")) {
            b2 = 1;
        }
        if (b2 == 0) {
            return new Rect(0, 0, 0, 72);
        }
        if (b2 == 1) {
            return new Rect(130, 0, 0, 0);
        }
        if (b2 != 2) {
            return null;
        }
        return new Rect(0, 96, 0, 128);
    }

    /* JADX INFO: renamed from: B */
    public int m7003B() {
        return this.f5959i ? 2 : 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX INFO: renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Rect m7004C() {
        byte b2;
        String str = this.f5953c;
        int iHashCode = str.hashCode();
        if (iHashCode != -1649237164) {
            b2 = (iHashCode == 1072463447 && str.equals("QTI-FAW-msmnile_faw_e202_fl-2010(30)")) ? (byte) 0 : (byte) -1;
        } else if (str.equals("QTI-FAW-msmnile_faw_e001_fl-2010(30)")) {
            b2 = 1;
        }
        if (b2 == 0 || b2 == 1) {
            return new Rect(0, 96, 720, 0);
        }
        return null;
    }

    /* JADX INFO: renamed from: D */
    public int m7005D() {
        if ("Parrot-ivic229vmcid-ivic229vmcid-9(28)".equals(this.f5953c)) {
            return 255;
        }
        if ("intel-HONG QI-t1c_acrn-9(28)".equals(this.f5953c) || "alps-spm8666p1_64_car-changan_car-9(28)".equals(this.f5953c)) {
            return 15;
        }
        if ("ecarx-IHU3Q122-IHU3Q122-9(28)".equals(this.f5953c)) {
            return 3;
        }
        return "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001".equals(this.f5954d) ? 12 : 0;
    }

    /* JADX INFO: renamed from: E */
    public int m7006E() {
        String str = this.f5953c;
        return ((str.hashCode() == 1138880147 && str.equals("alps-spm8666p1_64_car-changan_car-9(28)")) ? (byte) 0 : (byte) -1) != 0 ? 2 : 0;
    }

    /* JADX INFO: renamed from: F */
    public int m7007F() {
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001".equals(this.f5954d) || "QTI-Leapmotor C10-msmnile_gvmq-11(30)-RQ3A.211001.001".equals(this.f5954d) || "Qualcomm-msmnile_gvmq for arm64-msmnile_gvmq-12(32)-SQ3A.220705.003.A1".equals(this.f5954d)) {
            return 7;
        }
        String str = this.f5953c;
        byte b2 = -1;
        if (str.hashCode() == -605983119 && str.equals("QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)")) {
            b2 = 0;
        }
        return b2 != 0 ? 1 : 10;
    }

    /* JADX INFO: renamed from: G */
    public int m7008G(int i) {
        if ("QTI-FAW-msmnile_faw_e202_fl-2010(30)".equals(this.f5953c)) {
            return 620;
        }
        return i;
    }

    /* JADX INFO: renamed from: H */
    public String m7009H() {
        String str;
        Context context = this.f5958h.get();
        if (this.f5958h == null || context == null) {
            str = BuildConfig.FLAVOR;
        } else {
            Configuration configuration = context.getResources().getConfiguration();
            str = configuration.screenWidthDp + "x" + configuration.screenHeightDp;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            int i = point.x;
            int i2 = point.y;
            if (!str.contains(i + "x" + i2)) {
                str = str + "," + i + "x" + i2;
            }
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            int i3 = displayMetrics.widthPixels;
            int i4 = displayMetrics.heightPixels;
            if (!str.contains(i3 + "x" + i4)) {
                str = str + "," + i3 + "x" + i4;
            }
        }
        return str + "," + this.f5962l + "x" + this.f5963m;
    }

    /* JADX INFO: renamed from: I */
    public String m7010I() {
        if (TextUtils.isEmpty(this.f5961k)) {
            this.f5961k = m6999a();
        }
        return this.f5961k;
    }

    /* JADX INFO: renamed from: J */
    public int m7011J() {
        return this.f5959i ? 2 : 3;
    }

    /* JADX INFO: renamed from: K */
    public int m7012K() {
        return this.f5959i ? 0 : 3;
    }

    /* JADX INFO: renamed from: L */
    public boolean m7013L() {
        return "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.f5953c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004c  */
    /* JADX INFO: renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m7014M() {
        byte b2;
        String str = this.f5953c;
        switch (str.hashCode()) {
            case -1528909028:
                b2 = !str.equals("hozon-oversea-vnd_mars-11(30)") ? (byte) -1 : (byte) 5;
                break;
            case -1468750011:
                if (str.equals("hozon-EP36-vnd_mars-11(30)")) {
                    b2 = 4;
                    break;
                }
                break;
            case -605983119:
                if (str.equals("QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)")) {
                    b2 = 0;
                    break;
                }
                break;
            case -374617043:
                if (str.equals("QTI-msmnile_gvmq for arm64-k6801_a-11(30)")) {
                    b2 = 1;
                    break;
                }
                break;
            case -115440314:
                if (str.equals("hozon-EP37-vnd_mars-11(30)")) {
                    b2 = 2;
                    break;
                }
                break;
            case 1541492381:
                if (str.equals("hozon-EP32E01-vnd_mars-11(30)")) {
                    b2 = 3;
                    break;
                }
                break;
        }
        return b2 == 0 || b2 == 1 || b2 == 2 || b2 == 3 || b2 == 4 || b2 == 5;
    }

    /* JADX INFO: renamed from: N */
    public boolean m7015N() {
        return !"QTI-Leapmotor C10-msmnile_gvmq-11(30)".equals(this.f5953c);
    }

    /* JADX INFO: renamed from: O */
    public int m7016O() {
        if ("alps-E01-5.1(22)".equals(this.f5952b) || "Freescale-SABRESD-MX6DQ-4.4.2(19)".equals(this.f5952b) || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.f5953c)) {
            return 1;
        }
        if ("QUALCOMM-msm8953_32-8.1.0(27)".equals(this.f5952b) || "HUAWEI".equals(Build.MANUFACTURER)) {
            return 2;
        }
        if ("QTI-FAW-msmnile_faw_e202_fl-2010(30)".equals(this.f5953c)) {
            return 1;
        }
        return "alps-spm8666p1_64_car-changan_car-9(28)".equals(this.f5953c) ? 2 : 0;
    }

    /* JADX INFO: renamed from: P */
    public boolean m7017P() {
        return "Renesas-G6SH-r8a7796-g6sa_c101-9(28)".equals(this.f5953c);
    }

    /* JADX INFO: renamed from: Q */
    public boolean m7018Q() {
        return "QUALCOMM-msm8953_32-8.1.0(27)".equals(this.f5952b);
    }

    /* JADX INFO: renamed from: R */
    public boolean m7019R() {
        return !"QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.f5953c);
    }

    /* JADX INFO: renamed from: S */
    public boolean m7020S() {
        String str = this.f5953c;
        return ((str.hashCode() == 1138880147 && str.equals("alps-spm8666p1_64_car-changan_car-9(28)")) ? (byte) 0 : (byte) -1) == 0;
    }

    /* JADX INFO: renamed from: T */
    public boolean m7021T() {
        return "ATC-Generic Android on ac8317-generic_ac8317-4.2.2(17)-JDQ39E".equals(this.f5954d) || "ADAYO-AC822X-generic_ac8317-4.2.2(17)-JDQ39E".equals(this.f5954d);
    }

    /* JADX INFO: renamed from: U */
    public boolean m7022U() {
        String str = this.f5953c;
        return ((str.hashCode() == 1138880147 && str.equals("alps-spm8666p1_64_car-changan_car-9(28)")) ? (byte) 0 : (byte) -1) == 0;
    }

    /* JADX INFO: renamed from: V */
    public boolean m7023V() {
        return "HUAWEI".equals(Build.MANUFACTURER);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX INFO: renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m7024W() {
        byte b2;
        String str = this.f5953c;
        int iHashCode = str.hashCode();
        if (iHashCode != -1649237164) {
            b2 = (iHashCode == 1072463447 && str.equals("QTI-FAW-msmnile_faw_e202_fl-2010(30)")) ? (byte) 0 : (byte) -1;
        } else if (str.equals("QTI-FAW-msmnile_faw_e001_fl-2010(30)")) {
            b2 = 1;
        }
        return b2 == 0 || b2 == 1;
    }

    /* JADX INFO: renamed from: X */
    public boolean m7025X() {
        if (m7061v() == 2) {
            return true;
        }
        return this.f5960j;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX INFO: renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m7026Y() {
        byte b2;
        String str = this.f5953c;
        switch (str.hashCode()) {
            case -1825736888:
                b2 = !str.equals("NIO-ET7-vader-12(32)") ? (byte) -1 : (byte) 1;
                break;
            case -1603382454:
                if (str.equals("NIO-ET5-luke-9(28)")) {
                    b2 = 2;
                    break;
                }
                break;
            case -1468750011:
                if (str.equals("hozon-EP36-vnd_mars-11(30)")) {
                    b2 = 0;
                    break;
                }
                break;
            case 1135108203:
                if (str.equals("Renesas-G6SH-r8a7796-g6sa_c001-9(28)")) {
                    b2 = 3;
                    break;
                }
                break;
        }
        return b2 == 0 || b2 == 1 || b2 == 2 || b2 == 3 || m7061v() == 1;
    }

    /* JADX INFO: renamed from: Z */
    public boolean m7027Z() {
        return !"QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.f5953c);
    }

    /* JADX INFO: renamed from: a0 */
    public boolean m7028a0() {
        if ("hozon-EP37-vnd_mars-11(30)".equals(this.f5953c) || "hozon-oversea-vnd_mars-11(30)".equals(this.f5953c) || "hozon-EP36-vnd_mars-11(30)".equals(this.f5953c) || "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)".equals(this.f5953c) || "hozon-EP32E01-vnd_mars-11(30)".equals(this.f5953c)) {
            return true;
        }
        return C0925p.f5883t;
    }

    /* JADX INFO: renamed from: b */
    public int m7029b() {
        return ("ecarx-IHU3Q122-IHU3Q122-9(28)".equals(m7001z().m7064y()) || "hozon-oversea-vnd_mars-11(30)".equals(this.f5953c) || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.f5953c)) ? 1 : -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX INFO: renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m7030b0() {
        byte b2;
        String str = this.f5954d;
        int iHashCode = str.hashCode();
        if (iHashCode != 30583034) {
            b2 = (iHashCode == 1108798925 && str.equals("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1")) ? (byte) 0 : (byte) -1;
        } else if (str.equals("HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)-ICHU3100F123-ADV")) {
            b2 = 1;
        }
        if (b2 == 0 || b2 == 1) {
            return true;
        }
        WeakReference<Context> weakReference = this.f5958h;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        return this.f5958h.get().getResources().getBoolean(2131034112);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m7031c() {
        byte b2;
        String str = this.f5953c;
        int iHashCode = str.hashCode();
        if (iHashCode != -1649237164) {
            b2 = (iHashCode == 1072463447 && str.equals("QTI-FAW-msmnile_faw_e202_fl-2010(30)")) ? (byte) 0 : (byte) -1;
        } else if (str.equals("QTI-FAW-msmnile_faw_e001_fl-2010(30)")) {
            b2 = 1;
        }
        if (b2 != 0) {
            return b2 != 1 ? 0 : 32;
        }
        return 36;
    }

    /* JADX INFO: renamed from: c0 */
    public boolean m7032c0() {
        String str = this.f5953c;
        return ((str.hashCode() == -1559849941 && str.equals("Renesas-G6SH-r8a7796-g6sa_c100-9(28)")) ? (byte) 0 : (byte) -1) == 0;
    }

    /* JADX INFO: renamed from: d */
    public boolean m7033d() {
        return !"QUALCOMM-msm8953_32-8.1.0(27)".equals(this.f5952b);
    }

    /* JADX INFO: renamed from: d0 */
    public boolean m7034d0() {
        return "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(this.f5953c);
    }

    /* JADX INFO: renamed from: e */
    public int m7035e() {
        return 0;
    }

    /* JADX INFO: renamed from: e0 */
    public boolean m7036e0() {
        return "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(this.f5953c) || Build.VERSION.SDK_INT < 26;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m7037f(int i) {
        byte b2;
        String str = this.f5953c;
        int iHashCode = str.hashCode();
        if (iHashCode != -1825736888) {
            if (iHashCode != -1603382454) {
                b2 = (iHashCode == -118508263 && str.equals("HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)")) ? (byte) 2 : (byte) -1;
            } else if (str.equals("NIO-ET5-luke-9(28)")) {
                b2 = 1;
            }
        } else if (str.equals("NIO-ET7-vader-12(32)")) {
            b2 = 0;
        }
        if (b2 == 0 || b2 == 1 || b2 == 2) {
            return 1080;
        }
        return i;
    }

    /* JADX INFO: renamed from: f0 */
    public boolean m7038f0() {
        return "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1".equals(this.f5954d);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX INFO: renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m7039g() {
        byte b2;
        String str = this.f5953c;
        int iHashCode = str.hashCode();
        if (iHashCode != -1559849941) {
            b2 = (iHashCode == -1180500822 && str.equals("intel-HONG QI-t1c_acrn-9(28)")) ? (byte) 1 : (byte) -1;
        } else if (str.equals("Renesas-G6SH-r8a7796-g6sa_c100-9(28)")) {
            b2 = 0;
        }
        if (b2 != 0) {
            return b2 != 1 ? 0 : 90;
        }
        return 10;
    }

    /* JADX INFO: renamed from: g0 */
    public void m7040g0(boolean z) {
        this.f5960j = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
    /* JADX INFO: renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m7041h() {
        int i;
        int i2;
        i = 3;
        i2 = 2;
        switch (this.f5953c) {
            case "Renesas-G6SH-r8a7796-g6sa_c001-9(28)":
            case "Renesas-G6SH-r8a7796-g6sa_c100-9(28)":
                i2 = 25;
                i = 1;
                break;
            case "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)":
                i = 1;
                i2 = 4;
                break;
            case "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)":
            case "hozon-EP37-vnd_mars-11(30)":
            case "hozon-EP36-vnd_mars-11(30)":
            case "hozon-EP32E01-vnd_mars-11(30)":
                i = 1;
                break;
            case "QUALCOMM-trinket for arm64-trinket-10(29)":
                i2 = 14;
                break;
            default:
                i = 0;
                i2 = 0;
                break;
        }
        return ((i << 16) & (-65536)) | (65535 & i2);
    }

    /* JADX INFO: renamed from: h0 */
    public void m7042h0() {
        if (!this.f5959i || this.f5958h.get() == null) {
            return;
        }
        m7000n0(this.f5958h.get());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX INFO: renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m7043i() {
        byte b2;
        String str = this.f5953c;
        int iHashCode = str.hashCode();
        if (iHashCode != -1559849941) {
            b2 = (iHashCode == 1135108203 && str.equals("Renesas-G6SH-r8a7796-g6sa_c001-9(28)")) ? (byte) 0 : (byte) -1;
        } else if (str.equals("Renesas-G6SH-r8a7796-g6sa_c100-9(28)")) {
            b2 = 1;
        }
        return b2 == 0 || b2 == 1;
    }

    /* JADX INFO: renamed from: i0 */
    public void m7044i0() {
        if (!this.f5959i || this.f5958h.get() == null) {
            return;
        }
        m7000n0(this.f5958h.get());
    }

    /* JADX INFO: renamed from: j */
    public int m7045j() {
        int i;
        int i2 = 0;
        if ("sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.f5953c)) {
            i2 = 4;
            i = 33;
        } else {
            i = 0;
        }
        if ("ADAYO-AC822X-generic_ac8317-4.2.2(17)".equals(this.f5953c)) {
            i = 19;
        }
        return (i & 65535) | (i2 << 16);
    }

    /* JADX INFO: renamed from: j0 */
    public int m7046j0() {
        if ("intel-HONG QI-t1c_acrn-9(28)".equals(this.f5953c)) {
            if (this.f5956f.startsWith("hs5y21_11_080005")) {
                return 0;
            }
            if (this.f5956f.startsWith("hs5y22_11_351004")) {
                return 640;
            }
        }
        if ("Parrot-ivic229vmcid-ivic229vmcid-9(28)".equals(this.f5953c)) {
            return 640;
        }
        return "ecarx-IHU3Q122-IHU3Q122-9(28)".equals(this.f5953c) ? 156 : 0;
    }

    /* JADX INFO: renamed from: k */
    public int m7047k() {
        return C0956c.m7100h().m7114g();
    }

    /* JADX INFO: renamed from: k0 */
    public int m7048k0() {
        if ("alps-DongfengAeolus-vnd_spm8675p1_64_raite-11(30)".equals(this.f5953c) || "hozon-oversea-vnd_mars-11(30)".equals(this.f5953c)) {
            return 240;
        }
        return "hozon-EP36-vnd_mars-11(30)".equals(this.f5953c) ? 736 : 40;
    }

    /* JADX INFO: renamed from: l */
    public int m7049l(int i) {
        if ("Freescale-SABRESD-MX6DQ-4.4.2(19)".equals(this.f5952b) || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.f5953c)) {
            return 60;
        }
        return i;
    }

    /* JADX INFO: renamed from: l0 */
    public void m7050l0(Context context) {
        this.f5958h = new WeakReference<>(context);
    }

    /* JADX INFO: renamed from: m */
    public int m7051m(int i) {
        return i;
    }

    /* JADX INFO: renamed from: m0 */
    public void m7052m0(int i, int i2, int i3) {
        this.f5962l = i;
        this.f5963m = i2;
        int i4 = (((i * i2) - 384000) * 23) / 998400;
    }

    /* JADX INFO: renamed from: n */
    public int m7053n() {
        return "Renesas-G6SH-r8a7796-g6sa_c101-9(28)".equals(this.f5953c) ? 2 : 0;
    }

    /* JADX INFO: renamed from: o */
    public int m7054o() {
        int i;
        int i2 = 12;
        int i3 = 2;
        int i4 = 0;
        if ("Parrot-ivic229vmcid-ivic229vmcid-9(28)".equals(this.f5953c) || "QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.f5953c) || "hozon-EP37-vnd_mars-11(30)".equals(this.f5953c) || "hozon-EP36-vnd_mars-11(30)".equals(this.f5953c) || "hozon-EP32E01-vnd_mars-11(30)".equals(this.f5953c) || "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)".equals(this.f5953c) ? Build.VERSION.SDK_INT < 26 : !("HUAWEI-ICHU3200F2-ADV-ICHU3200F2-ADV-12(31)".equals(this.f5953c) || "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)".equals(this.f5953c))) {
            i = 0;
            i2 = 0;
        } else {
            i = 2;
        }
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1".equals(this.f5954d)) {
            i2 = 16;
        } else {
            i4 = i;
        }
        if ("alps-ac8257_G01-G01-9(28)".equals(this.f5953c)) {
            i2 = 5;
            i4 = 4;
        }
        if ("QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)".equals(this.f5953c)) {
            i2 = 11;
        } else {
            i3 = i4;
        }
        return ((i3 << 16) & (-65536)) | (i2 & 65535);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX INFO: renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m7055p() {
        byte b2;
        String str = this.f5953c;
        int i = 4;
        int i2 = 1;
        switch (str.hashCode()) {
            case -887483713:
                b2 = !str.equals("CAIC-x9hp for arm64-x9hp_bestune_d511_overseas_none_linux_di_baseline-10(29)") ? (byte) -1 : (byte) 4;
                break;
            case -605983119:
                if (str.equals("QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)")) {
                    b2 = 2;
                    break;
                }
                break;
            case 1138880147:
                if (str.equals("alps-spm8666p1_64_car-changan_car-9(28)")) {
                    b2 = 3;
                    break;
                }
                break;
            case 1293486950:
                if (str.equals("alps-E01-MEABGRD-5.1(22)")) {
                    b2 = 0;
                    break;
                }
                break;
            case 1948885352:
                if (str.equals("alps-ac8257_G01-G01-9(28)")) {
                    b2 = 1;
                    break;
                }
                break;
        }
        if (b2 != 0) {
            if (b2 != 1) {
                if (b2 == 2 || b2 == 3) {
                    i = 6;
                } else if (b2 != 4) {
                    i = 0;
                } else {
                    i = 13;
                }
                i2 = 2;
            }
            return ((i2 << 16) & (-65536)) | (65535 & i);
        }
        i = 6;
        i2 = 0;
        return ((i2 << 16) & (-65536)) | (65535 & i);
    }

    /* JADX INFO: renamed from: q */
    public int m7056q() {
        if ("alps-E01-MEABGRD-5.1(22)".equals(this.f5953c)) {
            return 393240;
        }
        return "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.f5953c) ? 131105 : 0;
    }

    /* JADX INFO: renamed from: r */
    public C0987x m7057r() {
        String str = this.f5953c;
        if (((str.hashCode() == -1559849941 && str.equals("Renesas-G6SH-r8a7796-g6sa_c100-9(28)")) ? (byte) 0 : (byte) -1) == 0 && this.f5964n <= this.f5965o) {
            return new C0987x(1408, 1506);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009a  */
    /* JADX INFO: renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m7058s() {
        int i;
        int i2 = 2;
        if ("alps-E01-MEABGRD-5.1(22)".equals(this.f5953c)) {
            return 2;
        }
        if ("DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(this.f5953c)) {
            return 3;
        }
        i = 4;
        int i3 = 0;
        switch (this.f5953c) {
            case "Renesas-G6SH-r8a7796-g6sa_c001-9(28)":
            case "Renesas-G6SH-r8a7796-g6sa_c100-9(28)":
                i2 = 5;
                i = 16;
                break;
            case "Parrot-ivic229vmcid-ivic229vmcid-9(28)":
                i = 11;
                break;
            case "hozon-EP37-vnd_mars-11(30)":
            case "hozon-EP36-vnd_mars-11(30)":
            case "hozon-EP32E01-vnd_mars-11(30)":
            case "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)":
                i2 = 1;
                i = 16;
                break;
            case "HUAWEI-ICHU3200X2-ADV-ICHU3200X2-ADV-12(31)":
            case "HUAWEI-ICHU3200F2-ADV-ICHU3200F2-ADV-12(31)":
                i2 = 1;
                i = 7;
                break;
            case "QTI-msmnile_gvmq for arm64-k6801_a-11(30)":
                i2 = 0;
                i = 11;
                break;
            case "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)":
                i2 = 1;
                break;
            default:
                i2 = 0;
                i = 0;
                break;
        }
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1".equals(this.f5954d)) {
            i = 16;
        } else {
            i3 = i2;
        }
        return ((i3 << 16) & (-65536)) | (65535 & i);
    }

    /* JADX INFO: renamed from: t */
    public int m7059t() {
        if ("alps-E01-MEABGRD-5.1(22)".equals(this.f5953c)) {
            return 393228;
        }
        return "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.f5953c) ? 131105 : 0;
    }

    public String toString() {
        return "DeviceConfig{info1='" + this.f5952b + "', info2='" + this.f5953c + "', info3='" + this.f5954d + "', huid='" + this.f5955e + "', defLocal='" + this.f5957g + "', uuid='" + this.f5961k + "', width=" + this.f5962l + ", height=" + this.f5963m + ", sysWidth=" + this.f5964n + ", sysHeight=" + this.f5965o + '}';
    }

    /* JADX INFO: renamed from: u */
    public WindowManager.LayoutParams m7060u() {
        if ("hozon-EP37-vnd_mars-11(30)".equals(this.f5953c) || "hozon-EP32E01-vnd_mars-11(30)".equals(this.f5953c)) {
            C0795b0.m6071i().m6084E(true);
            C0795b0.m6071i().m6081A(false);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.width = 1230;
            layoutParams.height = -1;
            layoutParams.gravity = 8388661;
            return layoutParams;
        }
        if ("hozon-oversea-vnd_mars-11(30)".equals(this.f5953c)) {
            C0795b0.m6071i().m6084E(true);
            C0795b0.m6071i().m6081A(false);
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = 1750;
            layoutParams2.gravity = 17;
            return layoutParams2;
        }
        if ("hozon-EP36-vnd_mars-11(30)".equals(this.f5953c)) {
            C0795b0.m6071i().m6084E(true);
            C0795b0.m6071i().m6081A(false);
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams();
            layoutParams3.width = -1;
            layoutParams3.height = 2200;
            layoutParams3.gravity = 17;
            return layoutParams3;
        }
        if (!"QTI-f6801f for arm64-f6801f-9(28)".equals(this.f5953c) && !"QTI-f6803f for arm64-f6803f-9(28)".equals(this.f5953c) && !"QTI-msmnile_gvmq for arm64-f6805h-11(30)".equals(this.f5953c) && !"QTI-msmnile_gvmq for arm64-f6810-11(30)".equals(this.f5953c) && !"QTI-msmnile_gvmq for arm64-f6811-11(30)".equals(this.f5953c) && !"QTI-msmnile_gvmq for arm64-f6802h-11(30)".equals(this.f5953c)) {
            if (!"BYD AUTO-DiLink5.0 For BYD AUTO-DiLink5.0-12(32)".equals(this.f5953c)) {
                return null;
            }
            C0795b0.m6071i().m6084E(true);
            C0795b0.m6071i().m6081A(false);
            return null;
        }
        C0795b0.m6071i().m6084E(true);
        C0795b0.m6071i().m6081A(false);
        WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams();
        layoutParams4.width = 1780;
        layoutParams4.height = -1;
        layoutParams4.gravity = 8388613;
        return layoutParams4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0069  */
    /* JADX INFO: renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m7061v() {
        switch (this.f5953c) {
            case "Freescale-CS11-cs11_19a_h-4.4.3(19)":
            case "BYD AUTO-DiLink5.0 For BYD AUTO-DiLink5.0-12(32)":
            case "NIO-ET7-vader-12(32)":
            case "NIO-ET5-luke-9(28)":
                return 1;
            case "alps-spm8666p1_64_car-changan_car-9(28)":
            case "Great_Wall-F7-22-SERIALS-g6sa_a12-8.1.0(27)":
            case "JIDU-ROBOCAR-msmnile_gvmq-12(32)":
                return 2;
            case "QTI-FAW-msmnile_faw_e202_fl-2010(30)":
            case "QTI-FAW-msmnile_faw_e001_fl-2010(30)":
                return 4;
            default:
                return this.f5965o > this.f5964n ? 1 : 0;
        }
    }

    /* JADX INFO: renamed from: w */
    public String m7062w() {
        return this.f5955e;
    }

    /* JADX INFO: renamed from: x */
    public String m7063x() {
        return toString();
    }

    /* JADX INFO: renamed from: y */
    public String m7064y() {
        return this.f5953c;
    }
}
