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
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class u {
    private static final List<String> p = Arrays.asList("rockchip/rkpx3/rkpx3:4.4.4/KTU84Q/eng.kityzhou.20170427.141957:eng/test-keys", "Dolphin_D3/e03_high_arm64/e03_high_arm64:10/20.01.01.000000.211951/186:eng/test-keys", "kia/wp_bdc_cn/wp_bdc_cn:4.4.2/KVT49L/eng.vmadmin.20190403.090300:user/dev-keys", "alps/full_ac8257_demo/ac8257_demo:9/PPR1.180610.011/bean01112215:user/test-keys");
    private static final List<String> q = Arrays.asList("evb3561s_65_m0", "evb3561sv_t_63_m0", "FF-5000", "t8-p2");
    private static u r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f1836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1837d;
    private final String e;
    private WeakReference<Context> h;
    private boolean i;
    private boolean j;
    private int l;
    private int m;
    private final int n;
    private final int o;
    private final String f = Build.ID;
    private String k = null;
    private final String a = Build.DEVICE;
    private final String g = "[" + TimeZone.getDefault().getDisplayName() + "," + TimeZone.getDefault().getID() + "][" + Locale.getDefault().getDisplayName() + "," + Locale.getDefault().getLanguage() + "," + Locale.getDefault().getDisplayLanguage() + "," + Locale.getDefault().getCountry() + "," + Locale.getDefault().getDisplayCountry() + "]";

    private u() {
        this.i = false;
        this.j = false;
        if (q.contains(this.a)) {
            this.i = true;
        }
        if (p.contains(Build.FINGERPRINT)) {
            this.j = true;
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
        this.f1836c = sb.toString();
        this.f1835b = Build.MANUFACTURER + "-" + Build.MODEL + "-" + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")";
        this.f1837d = sb + "-" + Build.ID;
        cn.manstep.phonemirrorBox.util.s.d("DeviceConfig", "DeviceConfig: " + MyApplication.b().f1544c.toString());
        this.n = MyApplication.b().f1544c.widthPixels;
        this.o = MyApplication.b().f1544c.heightPixels;
        cn.manstep.phonemirrorBox.util.s.i("DeviceConfig", "DeviceConfig: 1、" + this.f1835b);
        cn.manstep.phonemirrorBox.util.s.i("DeviceConfig", "DeviceConfig: 2、" + this.f1836c);
        cn.manstep.phonemirrorBox.util.s.i("DeviceConfig", "DeviceConfig: 3、" + this.f1837d);
        String str = Build.MANUFACTURER + "-" + Build.BRAND + "-" + Build.PRODUCT + "-" + Build.MODEL + "-" + Build.ID;
        cn.manstep.phonemirrorBox.util.s.d("DeviceConfig", "DeviceConfig: HUID:" + str);
        this.e = cn.manstep.phonemirrorBox.util.c0.w(str);
        cn.manstep.phonemirrorBox.util.s.d("DeviceConfig", "DeviceConfig: HUID:" + this.e);
    }

    private String a() {
        return cn.manstep.phonemirrorBox.util.c0.w(Build.BRAND + Build.DEVICE + Build.PRODUCT + Build.MODEL + Build.DISPLAY + Build.ID + Build.FINGERPRINT + Build.VERSION.RELEASE + Build.VERSION.SDK_INT + cn.manstep.phonemirrorBox.util.c0.e(MyApplication.b()));
    }

    private void n0(Context context) {
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

    public static u z() {
        if (r == null) {
            synchronized (u.class) {
                if (r == null) {
                    r = new u();
                }
            }
        }
        return r;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Rect A() {
        byte b2;
        String str = this.f1836c;
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

    public int B() {
        return this.i ? 2 : 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Rect C() {
        byte b2;
        String str = this.f1836c;
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

    public int D() {
        if ("Parrot-ivic229vmcid-ivic229vmcid-9(28)".equals(this.f1836c)) {
            return 255;
        }
        if ("intel-HONG QI-t1c_acrn-9(28)".equals(this.f1836c) || "alps-spm8666p1_64_car-changan_car-9(28)".equals(this.f1836c)) {
            return 15;
        }
        if ("ecarx-IHU3Q122-IHU3Q122-9(28)".equals(this.f1836c)) {
            return 3;
        }
        return "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001".equals(this.f1837d) ? 12 : 0;
    }

    public int E() {
        String str = this.f1836c;
        return ((str.hashCode() == 1138880147 && str.equals("alps-spm8666p1_64_car-changan_car-9(28)")) ? (byte) 0 : (byte) -1) != 0 ? 2 : 0;
    }

    public int F() {
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001".equals(this.f1837d) || "QTI-Leapmotor C10-msmnile_gvmq-11(30)-RQ3A.211001.001".equals(this.f1837d) || "Qualcomm-msmnile_gvmq for arm64-msmnile_gvmq-12(32)-SQ3A.220705.003.A1".equals(this.f1837d)) {
            return 7;
        }
        String str = this.f1836c;
        byte b2 = -1;
        if (str.hashCode() == -605983119 && str.equals("QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)")) {
            b2 = 0;
        }
        return b2 != 0 ? 1 : 10;
    }

    public int G(int i) {
        if ("QTI-FAW-msmnile_faw_e202_fl-2010(30)".equals(this.f1836c)) {
            return 620;
        }
        return i;
    }

    public String H() {
        String str;
        Context context = this.h.get();
        if (this.h == null || context == null) {
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
        return str + "," + this.l + "x" + this.m;
    }

    public String I() {
        if (TextUtils.isEmpty(this.k)) {
            this.k = a();
        }
        return this.k;
    }

    public int J() {
        return this.i ? 2 : 3;
    }

    public int K() {
        return this.i ? 0 : 3;
    }

    public boolean L() {
        return "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.f1836c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean M() {
        byte b2;
        String str = this.f1836c;
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

    public boolean N() {
        return !"QTI-Leapmotor C10-msmnile_gvmq-11(30)".equals(this.f1836c);
    }

    public int O() {
        if ("alps-E01-5.1(22)".equals(this.f1835b) || "Freescale-SABRESD-MX6DQ-4.4.2(19)".equals(this.f1835b) || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.f1836c)) {
            return 1;
        }
        if ("QUALCOMM-msm8953_32-8.1.0(27)".equals(this.f1835b) || "HUAWEI".equals(Build.MANUFACTURER)) {
            return 2;
        }
        if ("QTI-FAW-msmnile_faw_e202_fl-2010(30)".equals(this.f1836c)) {
            return 1;
        }
        return "alps-spm8666p1_64_car-changan_car-9(28)".equals(this.f1836c) ? 2 : 0;
    }

    public boolean P() {
        return "Renesas-G6SH-r8a7796-g6sa_c101-9(28)".equals(this.f1836c);
    }

    public boolean Q() {
        return "QUALCOMM-msm8953_32-8.1.0(27)".equals(this.f1835b);
    }

    public boolean R() {
        return !"QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.f1836c);
    }

    public boolean S() {
        String str = this.f1836c;
        return ((str.hashCode() == 1138880147 && str.equals("alps-spm8666p1_64_car-changan_car-9(28)")) ? (byte) 0 : (byte) -1) == 0;
    }

    public boolean T() {
        return "ATC-Generic Android on ac8317-generic_ac8317-4.2.2(17)-JDQ39E".equals(this.f1837d) || "ADAYO-AC822X-generic_ac8317-4.2.2(17)-JDQ39E".equals(this.f1837d);
    }

    public boolean U() {
        String str = this.f1836c;
        return ((str.hashCode() == 1138880147 && str.equals("alps-spm8666p1_64_car-changan_car-9(28)")) ? (byte) 0 : (byte) -1) == 0;
    }

    public boolean V() {
        return "HUAWEI".equals(Build.MANUFACTURER);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean W() {
        byte b2;
        String str = this.f1836c;
        int iHashCode = str.hashCode();
        if (iHashCode != -1649237164) {
            b2 = (iHashCode == 1072463447 && str.equals("QTI-FAW-msmnile_faw_e202_fl-2010(30)")) ? (byte) 0 : (byte) -1;
        } else if (str.equals("QTI-FAW-msmnile_faw_e001_fl-2010(30)")) {
            b2 = 1;
        }
        return b2 == 0 || b2 == 1;
    }

    public boolean X() {
        if (v() == 2) {
            return true;
        }
        return this.j;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean Y() {
        byte b2;
        String str = this.f1836c;
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
        return b2 == 0 || b2 == 1 || b2 == 2 || b2 == 3 || v() == 1;
    }

    public boolean Z() {
        return !"QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.f1836c);
    }

    public boolean a0() {
        if ("hozon-EP37-vnd_mars-11(30)".equals(this.f1836c) || "hozon-oversea-vnd_mars-11(30)".equals(this.f1836c) || "hozon-EP36-vnd_mars-11(30)".equals(this.f1836c) || "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)".equals(this.f1836c) || "hozon-EP32E01-vnd_mars-11(30)".equals(this.f1836c)) {
            return true;
        }
        return p.t;
    }

    public int b() {
        return ("ecarx-IHU3Q122-IHU3Q122-9(28)".equals(z().y()) || "hozon-oversea-vnd_mars-11(30)".equals(this.f1836c) || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.f1836c)) ? 1 : -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b0() {
        byte b2;
        String str = this.f1837d;
        int iHashCode = str.hashCode();
        if (iHashCode != 30583034) {
            b2 = (iHashCode == 1108798925 && str.equals("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1")) ? (byte) 0 : (byte) -1;
        } else if (str.equals("HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)-ICHU3100F123-ADV")) {
            b2 = 1;
        }
        if (b2 == 0 || b2 == 1) {
            return true;
        }
        WeakReference<Context> weakReference = this.h;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        return this.h.get().getResources().getBoolean(2131034112);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int c() {
        byte b2;
        String str = this.f1836c;
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

    public boolean c0() {
        String str = this.f1836c;
        return ((str.hashCode() == -1559849941 && str.equals("Renesas-G6SH-r8a7796-g6sa_c100-9(28)")) ? (byte) 0 : (byte) -1) == 0;
    }

    public boolean d() {
        return !"QUALCOMM-msm8953_32-8.1.0(27)".equals(this.f1835b);
    }

    public boolean d0() {
        return "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(this.f1836c);
    }

    public int e() {
        return 0;
    }

    public boolean e0() {
        return "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(this.f1836c) || Build.VERSION.SDK_INT < 26;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int f(int i) {
        byte b2;
        String str = this.f1836c;
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

    public boolean f0() {
        return "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1".equals(this.f1837d);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int g() {
        byte b2;
        String str = this.f1836c;
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

    public void g0(boolean z) {
        this.j = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int h() {
        int i;
        int i2;
        i = 3;
        i2 = 2;
        switch (this.f1836c) {
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

    public void h0() {
        if (!this.i || this.h.get() == null) {
            return;
        }
        n0(this.h.get());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean i() {
        byte b2;
        String str = this.f1836c;
        int iHashCode = str.hashCode();
        if (iHashCode != -1559849941) {
            b2 = (iHashCode == 1135108203 && str.equals("Renesas-G6SH-r8a7796-g6sa_c001-9(28)")) ? (byte) 0 : (byte) -1;
        } else if (str.equals("Renesas-G6SH-r8a7796-g6sa_c100-9(28)")) {
            b2 = 1;
        }
        return b2 == 0 || b2 == 1;
    }

    public void i0() {
        if (!this.i || this.h.get() == null) {
            return;
        }
        n0(this.h.get());
    }

    public int j() {
        int i;
        int i2 = 0;
        if ("sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.f1836c)) {
            i2 = 4;
            i = 33;
        } else {
            i = 0;
        }
        if ("ADAYO-AC822X-generic_ac8317-4.2.2(17)".equals(this.f1836c)) {
            i = 19;
        }
        return (i & 65535) | (i2 << 16);
    }

    public int j0() {
        if ("intel-HONG QI-t1c_acrn-9(28)".equals(this.f1836c)) {
            if (this.f.startsWith("hs5y21_11_080005")) {
                return 0;
            }
            if (this.f.startsWith("hs5y22_11_351004")) {
                return 640;
            }
        }
        if ("Parrot-ivic229vmcid-ivic229vmcid-9(28)".equals(this.f1836c)) {
            return 640;
        }
        return "ecarx-IHU3Q122-IHU3Q122-9(28)".equals(this.f1836c) ? 156 : 0;
    }

    public int k() {
        return cn.manstep.phonemirrorBox.u0.c.h().g();
    }

    public int k0() {
        if ("alps-DongfengAeolus-vnd_spm8675p1_64_raite-11(30)".equals(this.f1836c) || "hozon-oversea-vnd_mars-11(30)".equals(this.f1836c)) {
            return 240;
        }
        return "hozon-EP36-vnd_mars-11(30)".equals(this.f1836c) ? 736 : 40;
    }

    public int l(int i) {
        if ("Freescale-SABRESD-MX6DQ-4.4.2(19)".equals(this.f1835b) || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.f1836c)) {
            return 60;
        }
        return i;
    }

    public void l0(Context context) {
        this.h = new WeakReference<>(context);
    }

    public int m(int i) {
        return i;
    }

    public void m0(int i, int i2, int i3) {
        this.l = i;
        this.m = i2;
        int i4 = (((i * i2) - 384000) * 23) / 998400;
    }

    public int n() {
        return "Renesas-G6SH-r8a7796-g6sa_c101-9(28)".equals(this.f1836c) ? 2 : 0;
    }

    public int o() {
        int i;
        int i2 = 12;
        int i3 = 2;
        int i4 = 0;
        if ("Parrot-ivic229vmcid-ivic229vmcid-9(28)".equals(this.f1836c) || "QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.f1836c) || "hozon-EP37-vnd_mars-11(30)".equals(this.f1836c) || "hozon-EP36-vnd_mars-11(30)".equals(this.f1836c) || "hozon-EP32E01-vnd_mars-11(30)".equals(this.f1836c) || "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)".equals(this.f1836c) ? Build.VERSION.SDK_INT < 26 : !("HUAWEI-ICHU3200F2-ADV-ICHU3200F2-ADV-12(31)".equals(this.f1836c) || "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)".equals(this.f1836c))) {
            i = 0;
            i2 = 0;
        } else {
            i = 2;
        }
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1".equals(this.f1837d)) {
            i2 = 16;
        } else {
            i4 = i;
        }
        if ("alps-ac8257_G01-G01-9(28)".equals(this.f1836c)) {
            i2 = 5;
            i4 = 4;
        }
        if ("QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)".equals(this.f1836c)) {
            i2 = 11;
        } else {
            i3 = i4;
        }
        return ((i3 << 16) & (-65536)) | (i2 & 65535);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int p() {
        byte b2;
        String str = this.f1836c;
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

    public int q() {
        if ("alps-E01-MEABGRD-5.1(22)".equals(this.f1836c)) {
            return 393240;
        }
        return "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.f1836c) ? 131105 : 0;
    }

    public cn.manstep.phonemirrorBox.util.x r() {
        String str = this.f1836c;
        if (((str.hashCode() == -1559849941 && str.equals("Renesas-G6SH-r8a7796-g6sa_c100-9(28)")) ? (byte) 0 : (byte) -1) == 0 && this.n <= this.o) {
            return new cn.manstep.phonemirrorBox.util.x(1408, 1506);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int s() {
        int i;
        int i2 = 2;
        if ("alps-E01-MEABGRD-5.1(22)".equals(this.f1836c)) {
            return 2;
        }
        if ("DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(this.f1836c)) {
            return 3;
        }
        i = 4;
        int i3 = 0;
        switch (this.f1836c) {
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
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1".equals(this.f1837d)) {
            i = 16;
        } else {
            i3 = i2;
        }
        return ((i3 << 16) & (-65536)) | (65535 & i);
    }

    public int t() {
        if ("alps-E01-MEABGRD-5.1(22)".equals(this.f1836c)) {
            return 393228;
        }
        return "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.f1836c) ? 131105 : 0;
    }

    public String toString() {
        return "DeviceConfig{info1='" + this.f1835b + "', info2='" + this.f1836c + "', info3='" + this.f1837d + "', huid='" + this.e + "', defLocal='" + this.g + "', uuid='" + this.k + "', width=" + this.l + ", height=" + this.m + ", sysWidth=" + this.n + ", sysHeight=" + this.o + '}';
    }

    public WindowManager.LayoutParams u() {
        if ("hozon-EP37-vnd_mars-11(30)".equals(this.f1836c) || "hozon-EP32E01-vnd_mars-11(30)".equals(this.f1836c)) {
            b0.i().E(true);
            b0.i().A(false);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.width = 1230;
            layoutParams.height = -1;
            layoutParams.gravity = 8388661;
            return layoutParams;
        }
        if ("hozon-oversea-vnd_mars-11(30)".equals(this.f1836c)) {
            b0.i().E(true);
            b0.i().A(false);
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = 1750;
            layoutParams2.gravity = 17;
            return layoutParams2;
        }
        if ("hozon-EP36-vnd_mars-11(30)".equals(this.f1836c)) {
            b0.i().E(true);
            b0.i().A(false);
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams();
            layoutParams3.width = -1;
            layoutParams3.height = 2200;
            layoutParams3.gravity = 17;
            return layoutParams3;
        }
        if (!"QTI-f6801f for arm64-f6801f-9(28)".equals(this.f1836c) && !"QTI-f6803f for arm64-f6803f-9(28)".equals(this.f1836c) && !"QTI-msmnile_gvmq for arm64-f6805h-11(30)".equals(this.f1836c) && !"QTI-msmnile_gvmq for arm64-f6810-11(30)".equals(this.f1836c) && !"QTI-msmnile_gvmq for arm64-f6811-11(30)".equals(this.f1836c) && !"QTI-msmnile_gvmq for arm64-f6802h-11(30)".equals(this.f1836c)) {
            if (!"BYD AUTO-DiLink5.0 For BYD AUTO-DiLink5.0-12(32)".equals(this.f1836c)) {
                return null;
            }
            b0.i().E(true);
            b0.i().A(false);
            return null;
        }
        b0.i().E(true);
        b0.i().A(false);
        WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams();
        layoutParams4.width = 1780;
        layoutParams4.height = -1;
        layoutParams4.gravity = 8388613;
        return layoutParams4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int v() {
        switch (this.f1836c) {
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
                return this.o > this.n ? 1 : 0;
        }
    }

    public String w() {
        return this.e;
    }

    public String x() {
        return toString();
    }

    public String y() {
        return this.f1836c;
    }
}
