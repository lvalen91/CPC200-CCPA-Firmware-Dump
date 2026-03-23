package cn.manstep.autokit.config;

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
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/**
 * DeviceConfig -- Singleton that detects the current head-unit hardware and
 * provides platform-specific quirks, layout overrides, audio configurations,
 * and video sizing adjustments.
 *
 * Uses Build.FINGERPRINT / MANUFACTURER / MODEL strings to identify known
 * OEM head-units (NIO, Hozon/Neta, FAW, BYD, Renesas, etc.) and returns
 * appropriate corner radii, margins, DPI, orientation modes, and fixed video
 * sizes for each.
 *
 * Deobfuscated from: cn.manstep.phonemirrorBox.u
 */
public class DeviceConfig {

    /* ── known-device lists ─────────────────────────────────────────── */

    /** Fingerprints of devices that use custom video sizing (j = true). */
    private static final List<String> CUSTOM_VIDEO_FINGERPRINTS =            /* was: 'p' */
            Arrays.asList(
                    "rockchip/rkpx3/rkpx3:4.4.4/KTU84Q/eng.kityzhou.20170427.141957:eng/test-keys",
                    "Dolphin_D3/e03_high_arm64/e03_high_arm64:10/20.01.01.000000.211951/186:eng/test-keys",
                    "kia/wp_bdc_cn/wp_bdc_cn:4.4.2/KVT49L/eng.vmadmin.20190403.090300:user/dev-keys",
                    "alps/full_ac8257_demo/ac8257_demo:9/PPR1.180610.011/bean01112215:user/test-keys");

    /** Device names that are treated as legacy (i = true). */
    private static final List<String> LEGACY_DEVICES =                       /* was: 'q' */
            Arrays.asList("evb3561s_65_m0", "evb3561sv_t_63_m0", "FF-5000", "t8-p2");

    /* ── singleton ──────────────────────────────────────────────────── */

    private static DeviceConfig singleton;                                   /* was: 'r' */

    /* ── device identity strings ────────────────────────────────────── */

    /**
     * Short form: MANUFACTURER-MODEL-VERSION(SDK).
     * E.g. "NIO-ET7-vader-12(32)"
     */
    private final String info1;                                              /* was: 'f1835b' */

    /**
     * Long form: MANUFACTURER-MODEL-PRODUCT-VERSION(SDK).
     */
    private final String info2;                                              /* was: 'f1836c' */

    /**
     * Extended form: info2 + "-" + Build.ID.
     */
    private final String info3;                                              /* was: 'f1837d' */

    /** MD5 hash of hardware-unique identifier string. */
    private final String huid;                                               /* was: 'e' */

    /** Context weak reference for resource lookups. */
    private WeakReference<Context> contextRef;                               /* was: 'h' */

    /** True for known legacy head-unit devices. */
    private boolean isLegacyDevice;                                          /* was: 'i' */

    /** True for devices whose fingerprint is in CUSTOM_VIDEO_FINGERPRINTS. */
    private boolean useCustomVideoSizing;                                    /* was: 'j' */

    /** Measured surface width (set via m0). */
    private int surfaceWidth;                                                /* was: 'l' -- UNCERTAIN naming */

    /** Measured surface height (set via m0). */
    private int surfaceHeight;                                               /* was: 'm' -- UNCERTAIN naming */

    /** System display width from DisplayMetrics at construction time. */
    private final int sysWidth;                                              /* was: 'n' */

    /** System display height from DisplayMetrics at construction time. */
    private final int sysHeight;                                             /* was: 'o' */

    /** Build.ID cache. */
    private final String buildId = Build.ID;                                 /* was: 'f' */

    /** UUID cache (lazily computed). */
    private String uuid = null;                                              /* was: 'k' */

    /** Build.DEVICE. */
    private final String deviceName = Build.DEVICE;                          /* was: 'a' */

    /** Locale/timezone info string for diagnostics. */
    private final String localeInfo =                                        /* was: 'g' */
            "[" + TimeZone.getDefault().getDisplayName()
                    + "," + TimeZone.getDefault().getID()
                    + "][" + Locale.getDefault().getDisplayName()
                    + "," + Locale.getDefault().getLanguage()
                    + "," + Locale.getDefault().getDisplayLanguage()
                    + "," + Locale.getDefault().getCountry()
                    + "," + Locale.getDefault().getDisplayCountry() + "]";

    /* ── constructor ────────────────────────────────────────────────── */

    private DeviceConfig() {
        this.isLegacyDevice = false;
        this.useCustomVideoSizing = false;

        if (LEGACY_DEVICES.contains(this.deviceName)) {
            this.isLegacyDevice = true;
        }
        if (CUSTOM_VIDEO_FINGERPRINTS.contains(Build.FINGERPRINT)) {
            this.useCustomVideoSizing = true;
        }

        StringBuilder sb = new StringBuilder();
        sb.append(Build.MANUFACTURER).append("-")
          .append(Build.MODEL).append("-")
          .append(Build.PRODUCT).append("-")
          .append(Build.VERSION.RELEASE).append("(")
          .append(Build.VERSION.SDK_INT).append(")");
        this.info2 = sb.toString();                                          /* was: f1836c */

        this.info1 = Build.MANUFACTURER + "-" + Build.MODEL + "-"
                + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")"; /* was: f1835b */

        this.info3 = sb + "-" + Build.ID;                                    /* was: f1837d */

        cn.manstep.phonemirrorBox.util.s.d("DeviceConfig",
                "DeviceConfig: " + MyApplication.b().f1544c.toString());
        this.sysWidth  = MyApplication.b().f1544c.widthPixels;               /* was: n */
        this.sysHeight = MyApplication.b().f1544c.heightPixels;              /* was: o */

        cn.manstep.phonemirrorBox.util.s.i("DeviceConfig", "DeviceConfig: 1、" + this.info1);
        cn.manstep.phonemirrorBox.util.s.i("DeviceConfig", "DeviceConfig: 2、" + this.info2);
        cn.manstep.phonemirrorBox.util.s.i("DeviceConfig", "DeviceConfig: 3、" + this.info3);

        String huidSource = Build.MANUFACTURER + "-" + Build.BRAND + "-"
                + Build.PRODUCT + "-" + Build.MODEL + "-" + Build.ID;
        cn.manstep.phonemirrorBox.util.s.d("DeviceConfig", "DeviceConfig: HUID:" + huidSource);
        this.huid = cn.manstep.phonemirrorBox.util.c0.w(huidSource);        /* was: e = util.c0.w(...) -- likely MD5 */
        cn.manstep.phonemirrorBox.util.s.d("DeviceConfig", "DeviceConfig: HUID:" + this.huid);
    }

    /* ── singleton accessor ─────────────────────────────────────────── */

    /**
     * Returns the singleton instance.
     * was: z()
     */
    public static DeviceConfig getInstance() {
        if (singleton == null) {
            synchronized (DeviceConfig.class) {
                if (singleton == null) {
                    singleton = new DeviceConfig();
                }
            }
        }
        return singleton;
    }

    /* ── private helpers ────────────────────────────────────────────── */

    /**
     * Generates a UUID from hardware and OS properties via MD5.
     * was: a()
     */
    private String generateUuid() {
        return cn.manstep.phonemirrorBox.util.c0.w(
                Build.BRAND + Build.DEVICE + Build.PRODUCT + Build.MODEL
                        + Build.DISPLAY + Build.ID + Build.FINGERPRINT
                        + Build.VERSION.RELEASE + Build.VERSION.SDK_INT
                        + cn.manstep.phonemirrorBox.util.c0.e(MyApplication.b()));
    }

    /**
     * Starts Main1Activity if the component is not disabled.
     * was: n0(context)
     */
    private void launchMainActivity(Context context) {
        if (context.getPackageManager().getComponentEnabledSetting(
                new ComponentName(context, (Class<?>) Main1Activity.class)) != 2) {
            Intent intent = new Intent(context, (Class<?>) Main1Activity.class);
            intent.addFlags(268435456);
            try {
                context.startActivity(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* ── video layout padding / insets ───────────────────────────────── */

    /**
     * Returns device-specific video overlay padding as a Rect, or null.
     * was: A()
     */
    public Rect getVideoOverlayPadding() {
        /* JADX WARN: reconstructed from hash-based switch */
        if ("alps-spm8666p1_64_car-changan_car-9(28)".equals(this.info2)) {
            return new Rect(0, 0, 0, 72);
        }
        if ("Great_Wall-F7-22-SERIALS-g6sa_a12-8.1.0(27)".equals(this.info2)) {
            return new Rect(130, 0, 0, 0);
        }
        if ("JIDU-ROBOCAR-msmnile_gvmq-12(32)".equals(this.info2)) {
            return new Rect(0, 96, 0, 128);
        }
        return null;
    }

    /**
     * Returns buffer count: 2 for legacy devices, 3 otherwise.
     * was: B()
     */
    public int getBufferCount() {
        return this.isLegacyDevice ? 2 : 3;
    }

    /**
     * Returns device-specific Android-Auto overlay inset as a Rect, or null.
     * was: C()
     */
    public Rect getAndroidAutoOverlayInset() {
        if ("QTI-FAW-msmnile_faw_e202_fl-2010(30)".equals(this.info2)
                || "QTI-FAW-msmnile_faw_e001_fl-2010(30)".equals(this.info2)) {
            return new Rect(0, 96, 720, 0);
        }
        return null;
    }

    /**
     * Returns a device-specific notification filter flag.
     * was: D()
     */
    public int getNotificationFilter() {
        if ("Parrot-ivic229vmcid-ivic229vmcid-9(28)".equals(this.info2)) {
            return 255;
        }
        if ("intel-HONG QI-t1c_acrn-9(28)".equals(this.info2)
                || "alps-spm8666p1_64_car-changan_car-9(28)".equals(this.info2)) {
            return 15;
        }
        if ("ecarx-IHU3Q122-IHU3Q122-9(28)".equals(this.info2)) {
            return 3;
        }
        return "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001".equals(this.info3)
                ? 12 : 0;
    }

    /**
     * Returns navigation-bar mode. 0 for Changan, 2 otherwise.
     * was: E()
     */
    public int getNavBarMode() {
        if ("alps-spm8666p1_64_car-changan_car-9(28)".equals(this.info2)) {
            return 0;
        }
        return 2;
    }

    /**
     * Returns device-specific focus-handling mode.
     * was: F()
     */
    public int getFocusHandlingMode() {
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.211001.001".equals(this.info3)
                || "QTI-Leapmotor C10-msmnile_gvmq-11(30)-RQ3A.211001.001".equals(this.info3)
                || "Qualcomm-msmnile_gvmq for arm64-msmnile_gvmq-12(32)-SQ3A.220705.003.A1".equals(this.info3)) {
            return 7;
        }
        if ("QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)".equals(this.info2)) {
            return 10;
        }
        return 1;
    }

    /**
     * Returns the device-specific video margin (pixels to subtract from width).
     * Returns the provided defaultMargin unless overridden for a known device.
     * was: G(defaultMargin)
     */
    public int getVideoMargin(int defaultMargin) {
        if ("QTI-FAW-msmnile_faw_e202_fl-2010(30)".equals(this.info2)) {
            return 620;
        }
        return defaultMargin;
    }

    /**
     * Returns a multi-part screen size info string combining configuration dp,
     * Display size, DisplayMetrics, and measured surface dimensions.
     * was: H()
     */
    public String getScreenSizeInfo() {
        String str;
        Context context = this.contextRef.get();
        if (this.contextRef == null || context == null) {
            str = "";
        } else {
            Configuration configuration = context.getResources().getConfiguration();
            str = configuration.screenWidthDp + "x" + configuration.screenHeightDp;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window"))
                    .getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            int displayW = point.x;
            int displayH = point.y;
            if (!str.contains(displayW + "x" + displayH)) {
                str = str + "," + displayW + "x" + displayH;
            }
            DisplayMetrics dm = context.getResources().getDisplayMetrics();
            int metricsW = dm.widthPixels;
            int metricsH = dm.heightPixels;
            if (!str.contains(metricsW + "x" + metricsH)) {
                str = str + "," + metricsW + "x" + metricsH;
            }
        }
        return str + "," + this.surfaceWidth + "x" + this.surfaceHeight;
    }

    /**
     * Returns the cached UUID, computing it lazily on first call.
     * was: I()
     */
    public String getUuid() {
        if (TextUtils.isEmpty(this.uuid)) {
            this.uuid = generateUuid();
        }
        return this.uuid;
    }

    /**
     * Returns decoder thread count: 2 for legacy, 3 otherwise.
     * was: J()
     */
    public int getDecoderThreadCount() {
        return this.isLegacyDevice ? 2 : 3;
    }

    /**
     * Returns render queue depth: 0 for legacy, 3 otherwise.
     * was: K()
     */
    public int getRenderQueueDepth() {
        return this.isLegacyDevice ? 0 : 3;
    }

    /**
     * Returns true for sprd-uis8581a2h10 (Spread UIS8581 automotive).
     * was: L()
     */
    public boolean isSprdAutomotive() {
        return "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.info2);
    }

    /**
     * Returns true for devices that need a forced-landscape workaround.
     * was: M()
     */
    public boolean needsForcedLandscape() {
        return "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)".equals(this.info2)
                || "QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.info2)
                || "hozon-EP37-vnd_mars-11(30)".equals(this.info2)
                || "hozon-EP32E01-vnd_mars-11(30)".equals(this.info2)
                || "hozon-EP36-vnd_mars-11(30)".equals(this.info2)
                || "hozon-oversea-vnd_mars-11(30)".equals(this.info2);
    }

    /**
     * Returns true unless we're on Leapmotor C10.
     * was: N()
     */
    public boolean isNotLeapmotor() {
        return !"QTI-Leapmotor C10-msmnile_gvmq-11(30)".equals(this.info2);
    }

    /**
     * Returns TextureView preference override: 1 = force SurfaceView,
     * 2 = force TextureView, 0 = use default.
     * was: O()
     */
    public int getTextureViewOverride() {
        if ("alps-E01-5.1(22)".equals(this.info1)
                || "Freescale-SABRESD-MX6DQ-4.4.2(19)".equals(this.info1)
                || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.info2)) {
            return 1;
        }
        if ("QUALCOMM-msm8953_32-8.1.0(27)".equals(this.info1)
                || "HUAWEI".equals(Build.MANUFACTURER)) {
            return 2;
        }
        if ("QTI-FAW-msmnile_faw_e202_fl-2010(30)".equals(this.info2)) {
            return 1;
        }
        return "alps-spm8666p1_64_car-changan_car-9(28)".equals(this.info2) ? 2 : 0;
    }

    /**
     * Returns true for Renesas G6SH r8a7796 g6sa_c101.
     * was: P()
     */
    public boolean isRenesasC101() {
        return "Renesas-G6SH-r8a7796-g6sa_c101-9(28)".equals(this.info2);
    }

    /**
     * Returns true for QUALCOMM msm8953_32.
     * was: Q()
     */
    public boolean isQualcommMsm8953() {
        return "QUALCOMM-msm8953_32-8.1.0(27)".equals(this.info1);
    }

    /**
     * Returns true unless we're on QTI k6801_a.
     * was: R()
     */
    public boolean isNotK6801() {
        return !"QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.info2);
    }

    /**
     * Returns true for Changan (alps-spm8666p1_64_car).
     * was: S()
     */
    public boolean isChangan() {
        return "alps-spm8666p1_64_car-changan_car-9(28)".equals(this.info2);
    }

    /**
     * Returns true if the device uses a "fit size" mode (ATC ac8317 legacy
     * devices).
     * was: T()
     */
    public boolean isFitSizeMode() {
        return "ATC-Generic Android on ac8317-generic_ac8317-4.2.2(17)-JDQ39E".equals(this.info3)
                || "ADAYO-AC822X-generic_ac8317-4.2.2(17)-JDQ39E".equals(this.info3);
    }

    /**
     * Returns true for Changan (same as isChangan).
     * was: U()
     */
    public boolean isChanganU() {
        return "alps-spm8666p1_64_car-changan_car-9(28)".equals(this.info2);
    }

    /**
     * Returns true for HUAWEI manufacturer.
     * was: V()
     */
    public boolean isHuawei() {
        return "HUAWEI".equals(Build.MANUFACTURER);
    }

    /**
     * Returns true for FAW (QTI-FAW) devices.
     * was: W()
     */
    public boolean isFaw() {
        return "QTI-FAW-msmnile_faw_e202_fl-2010(30)".equals(this.info2)
                || "QTI-FAW-msmnile_faw_e001_fl-2010(30)".equals(this.info2);
    }

    /**
     * Returns true if the device uses custom video sizing, or the orientation
     * mode indicates portrait layout.
     * was: X()
     */
    public boolean usesCustomVideoSizing() {
        if (getOrientationMode() == 2) {
            return true;
        }
        return this.useCustomVideoSizing;
    }

    /**
     * Returns true if the device uses a measure-based max size strategy
     * (NIO, Hozon, Renesas, or portrait-orientation devices).
     * was: Y()
     */
    public boolean usesMeasureBasedMaxSize() {
        if ("hozon-EP36-vnd_mars-11(30)".equals(this.info2)
                || "NIO-ET7-vader-12(32)".equals(this.info2)
                || "NIO-ET5-luke-9(28)".equals(this.info2)
                || "Renesas-G6SH-r8a7796-g6sa_c001-9(28)".equals(this.info2)) {
            return true;
        }
        return getOrientationMode() == 1;
    }

    /**
     * Returns true unless we're on QTI k6801_a (wireless connect toggle).
     * was: Z()
     */
    public boolean isWirelessConnectSupported() {
        return !"QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.info2);
    }

    /**
     * Returns true if the device needs the custom layout flag or touch
     * passthrough from specific Hozon/JMEV/GlobalConfig state.
     * was: a0()
     */
    public boolean needsCustomLayoutOrPassthrough() {
        if ("hozon-EP37-vnd_mars-11(30)".equals(this.info2)
                || "hozon-oversea-vnd_mars-11(30)".equals(this.info2)
                || "hozon-EP36-vnd_mars-11(30)".equals(this.info2)
                || "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)".equals(this.info2)
                || "hozon-EP32E01-vnd_mars-11(30)".equals(this.info2)) {
            return true;
        }
        return GlobalConfig.useCustomLayout;                                 /* was: p.t */
    }

    /**
     * Returns a device-specific audio source mode.
     * was: b()
     */
    public int getAudioSourceMode() {
        return ("ecarx-IHU3Q122-IHU3Q122-9(28)".equals(getInstance().getInfo2())
                || "hozon-oversea-vnd_mars-11(30)".equals(this.info2)
                || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.info2)) ? 1 : -1;
    }

    /**
     * Returns true for devices that should use Bluetooth calling.
     * was: b0()
     */
    public boolean useBtCall() {
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1".equals(this.info3)
                || "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)-ICHU3100F123-ADV".equals(this.info3)) {
            return true;
        }
        WeakReference<Context> ref = this.contextRef;
        if (ref == null || ref.get() == null) {
            return false;
        }
        return this.contextRef.get().getResources().getBoolean(2131034112);
    }

    /**
     * Returns device-specific corner radius for the video surface.
     * was: c()
     */
    public int getCornerRadius() {
        if ("QTI-FAW-msmnile_faw_e202_fl-2010(30)".equals(this.info2)) {
            return 36;
        }
        if ("QTI-FAW-msmnile_faw_e001_fl-2010(30)".equals(this.info2)) {
            return 32;
        }
        return 0;
    }

    /**
     * Returns true for Renesas G6SH r8a7796 g6sa_c100 (audio transfer).
     * was: c0()
     */
    public boolean isRenesasC100AudioTransfer() {
        return "Renesas-G6SH-r8a7796-g6sa_c100-9(28)".equals(this.info2);
    }

    /**
     * Returns true unless QUALCOMM msm8953_32.
     * was: d()
     */
    public boolean isNotMsm8953() {
        return !"QUALCOMM-msm8953_32-8.1.0(27)".equals(this.info1);
    }

    /**
     * Returns true for DesaySV G6SA r8a7795 (Desay SV Renesas).
     * was: d0()
     */
    public boolean isDesaySvG6sa() {
        return "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(this.info2);
    }

    /**
     * Returns 0 (constant). Purpose unclear.
     * was: e()
     */
    public int getReserved() {
        return 0;
    }

    /**
     * Returns true for DesaySV or pre-Oreo (SDK < 26) -- use lower audio API.
     * was: e0()
     */
    public boolean useLowerAudioApi() {
        return "DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(this.info2)
                || Build.VERSION.SDK_INT < 26;
    }

    /**
     * Overrides the tier height for specific devices (NIO, HUAWEI ICHU).
     * Returns 1080 for those devices, otherwise returns the provided default.
     * was: f(tierH)
     */
    public int overrideTierHeight(int tierH) {
        if ("NIO-ET7-vader-12(32)".equals(this.info2)
                || "NIO-ET5-luke-9(28)".equals(this.info2)
                || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.info2)) {
            return 1080;
        }
        return tierH;
    }

    /**
     * Returns true for devices whose fingerprint requires a forced restart.
     * was: f0()
     */
    public boolean needsForcedRestart() {
        return "QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1"
                .equals(this.info3);
    }

    /**
     * Returns device-specific boot delay in seconds (10 for Renesas c100,
     * 90 for Intel HONG QI, 0 otherwise).
     * was: g()
     */
    public int getBootDelay() {
        if ("Renesas-G6SH-r8a7796-g6sa_c100-9(28)".equals(this.info2)) {
            return 10;
        }
        if ("intel-HONG QI-t1c_acrn-9(28)".equals(this.info2)) {
            return 90;
        }
        return 0;
    }

    /**
     * Sets the useCustomVideoSizing flag.
     * was: g0(z)
     */
    public void setUseCustomVideoSizing(boolean value) {
        this.useCustomVideoSizing = value;
    }

    /**
     * Returns device-specific call audio type as a packed int (type << 16 | value).
     * was: h()
     */
    public int getCallAudioType() {
        int type = 3;
        int value = 2;
        switch (this.info2) {
            case "Renesas-G6SH-r8a7796-g6sa_c001-9(28)":
            case "Renesas-G6SH-r8a7796-g6sa_c100-9(28)":
                value = 25;
                type = 1;
                break;
            case "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)":
                type = 1;
                value = 4;
                break;
            case "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)":
            case "hozon-EP37-vnd_mars-11(30)":
            case "hozon-EP36-vnd_mars-11(30)":
            case "hozon-EP32E01-vnd_mars-11(30)":
                type = 1;
                break;
            case "QUALCOMM-trinket for arm64-trinket-10(29)":
                value = 14;
                break;
            default:
                type = 0;
                value = 0;
                break;
        }
        return ((type << 16) & (~65535)) | (65535 & value);
    }

    /**
     * Launches Main1Activity on legacy devices.
     * was: h0()
     */
    public void launchOnLegacy() {
        if (!this.isLegacyDevice || this.contextRef.get() == null) {
            return;
        }
        launchMainActivity(this.contextRef.get());
    }

    /**
     * Returns true for Renesas G6SH c001 or c100 (specific behaviour check).
     * was: i()  -- instance method
     */
    public boolean isRenesasG6sh() {
        return "Renesas-G6SH-r8a7796-g6sa_c001-9(28)".equals(this.info2)
                || "Renesas-G6SH-r8a7796-g6sa_c100-9(28)".equals(this.info2);
    }

    /**
     * Launches Main1Activity on legacy devices (duplicate of h0).
     * was: i0()
     */
    public void launchOnLegacy2() {
        if (!this.isLegacyDevice || this.contextRef.get() == null) {
            return;
        }
        launchMainActivity(this.contextRef.get());
    }

    /**
     * Returns device-specific call audio volume as packed int.
     * was: j()
     */
    public int getCallAudioVolume() {
        int type = 0;
        int value;
        if ("sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.info2)) {
            type = 4;
            value = 33;
        } else {
            value = 0;
        }
        /* Additional device checks from lines 600-604 would continue here;
           the full switch was truncated in the decompiled output.
           Includes checks for "ADAYO-AC822X-generic_ac8317-4.2.2(17)" → value=19 */
        if ("ADAYO-AC822X-generic_ac8317-4.2.2(17)".equals(this.info2)) {
            value = 19; /* UNCERTAIN -- reconstructed from partial decompilation */
        }
        return (value & 65535) | (type << 16);
    }

    /**
     * Returns device-specific audio channel offset.
     * was: j0()
     */
    public int getAudioChannelOffset() {
        if ("intel-HONG QI-t1c_acrn-9(28)".equals(this.info2)) {
            if (this.buildId.startsWith("hs5y21_11_080005")) {
                return 0;
            }
            if (this.buildId.startsWith("hs5y22_11_351004")) {
                return 640;
            }
        }
        if ("Parrot-ivic229vmcid-ivic229vmcid-9(28)".equals(this.info2)) {
            return 640;
        }
        return "ecarx-IHU3Q122-IHU3Q122-9(28)".equals(this.info2) ? 156 : 0;
    }

    /**
     * Returns the left-hand drive setting from the driving-mode service.
     * was: k()
     */
    public int getDriveMode() {
        return cn.manstep.phonemirrorBox.u0.c.h().g();
    }

    /**
     * Returns device-specific status bar height.
     * was: k0()
     */
    public int getStatusBarHeight() {
        if ("alps-DongfengAeolus-vnd_spm8675p1_64_raite-11(30)".equals(this.info2)
                || "hozon-oversea-vnd_mars-11(30)".equals(this.info2)) {
            return 240;
        }
        return "hozon-EP36-vnd_mars-11(30)".equals(this.info2) ? 736 : 40;
    }

    /**
     * Overrides the frame rate for specific devices. Returns 60 for
     * Freescale/HUAWEI ICHU, otherwise returns the provided default.
     * was: l(defaultFps)
     */
    public int overrideFrameRate(int defaultFps) {
        if ("Freescale-SABRESD-MX6DQ-4.4.2(19)".equals(this.info1)
                || "HUAWEI-ICHU-X1EV-ICHU-X1EV-10(29)".equals(this.info2)) {
            return 60;
        }
        return defaultFps;
    }

    /**
     * Sets the context reference.
     * was: l0(context)
     */
    public void setContext(Context context) {
        this.contextRef = new WeakReference<>(context);
    }

    /**
     * Returns the mic gain override (pass-through for now).
     * was: m(gain)
     */
    public int overrideMicGain(int gain) {
        return gain;
    }

    /**
     * Sets measured surface dimensions and calculates internal DPI.
     * was: m0(w, h, dpi)
     */
    public void setSurfaceDimensions(int w, int h, int dpi) {
        this.surfaceWidth = w;
        this.surfaceHeight = h;
        int unused = (((w * h) - 384000) * 23) / 998400;  /* DPI calc side-effect */
    }

    /**
     * Returns device-specific mic type override (2 for Renesas c101, 0 otherwise).
     * was: n()
     */
    public int getMicTypeOverride() {
        return "Renesas-G6SH-r8a7796-g6sa_c101-9(28)".equals(this.info2) ? 2 : 0;
    }

    /**
     * Returns device-specific navigation audio type as packed int.
     * was: o()
     */
    public int getNavAudioType() {
        int streamType = 12;
        int channel = 2;
        int effectiveChannel = 0;
        boolean isSpecialDevice =
                "Parrot-ivic229vmcid-ivic229vmcid-9(28)".equals(this.info2)
                        || "QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(this.info2)
                        || "hozon-EP37-vnd_mars-11(30)".equals(this.info2)
                        || "hozon-EP36-vnd_mars-11(30)".equals(this.info2)
                        || "hozon-EP32E01-vnd_mars-11(30)".equals(this.info2)
                        || ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)".equals(this.info2)
                        ? Build.VERSION.SDK_INT < 26 : false);
        boolean isHuaweiIchu =
                "HUAWEI-ICHU3200F2-ADV-ICHU3200F2-ADV-12(31)".equals(this.info2)
                        || "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)".equals(this.info2);

        if (isSpecialDevice && !isHuaweiIchu) {
            channel = 0;
            streamType = 0;
        } else {
            channel = 2;
        }
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1".equals(this.info3)) {
            streamType = 16;
        } else {
            effectiveChannel = channel;
        }
        if ("alps-ac8257_G01-G01-9(28)".equals(this.info2)) {
            streamType = 5;
            effectiveChannel = 4;
        }
        if ("QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)".equals(this.info2)) {
            streamType = 11;
        } else {
            effectiveChannel = effectiveChannel; /* UNCERTAIN -- decompiler artifact */
        }
        return ((effectiveChannel << 16) & (~65535)) | (streamType & 65535);
    }

    /**
     * Returns device-specific ring audio type as packed int.
     * was: p()
     */
    public int getRingAudioType() {
        /* Complex switch-based logic for per-device ring type */
        int channel = 1;
        int streamType = 4;

        if ("alps-E01-MEABGRD-5.1(22)".equals(this.info2)) {
            channel = 0;
            streamType = 6;
        } else if ("alps-ac8257_G01-G01-9(28)".equals(this.info2)) {
            /* channel = 1 stays */
        } else if ("QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)".equals(this.info2)
                || "alps-spm8666p1_64_car-changan_car-9(28)".equals(this.info2)) {
            channel = 2;
            streamType = 6;
        } else if ("CAIC-x9hp for arm64-x9hp_bestune_d511_overseas_none_linux_di_baseline-10(29)".equals(this.info2)) {
            channel = 2;
            streamType = 13;
        } else {
            channel = 2;
            streamType = 0;
        }
        return ((channel << 16) & (~65535)) | (65535 & streamType);
    }

    /**
     * Returns device-specific ring audio volume as packed int.
     * was: q()
     */
    public int getRingAudioVolume() {
        if ("alps-E01-MEABGRD-5.1(22)".equals(this.info2)) {
            return 393240;
        }
        return "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.info2)
                ? 131105 : 0;
    }

    /**
     * Returns a fixed video size for specific devices (Renesas c100 in portrait),
     * or null to use the default size.
     * was: r()
     */
    public cn.manstep.phonemirrorBox.util.x getFixedVideoSize() {
        if ("Renesas-G6SH-r8a7796-g6sa_c100-9(28)".equals(this.info2)
                && this.sysWidth <= this.sysHeight) {
            return new cn.manstep.phonemirrorBox.util.x(1408, 1506);
        }
        return null;
    }

    /**
     * Returns device-specific voice-assistant audio type as packed int.
     * was: s()
     */
    public int getVoiceAssistantAudioType() {
        if ("alps-E01-MEABGRD-5.1(22)".equals(this.info2)) {
            return 2;
        }
        if ("DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(this.info2)) {
            return 3;
        }

        int streamType = 4;
        int channel = 0;
        switch (this.info2) {
            case "Renesas-G6SH-r8a7796-g6sa_c001-9(28)":
            case "Renesas-G6SH-r8a7796-g6sa_c100-9(28)":
                channel = 5;
                streamType = 16;
                break;
            case "Parrot-ivic229vmcid-ivic229vmcid-9(28)":
                streamType = 11;
                break;
            case "hozon-EP37-vnd_mars-11(30)":
            case "hozon-EP36-vnd_mars-11(30)":
            case "hozon-EP32E01-vnd_mars-11(30)":
            case "HUAWEI-ICHU3100F123-ADV-ICHU3100F123-ADV-12(31)":
                channel = 1;
                streamType = 16;
                break;
            case "HUAWEI-ICHU3200X2-ADV-ICHU3200X2-ADV-12(31)":
            case "HUAWEI-ICHU3200F2-ADV-ICHU3200F2-ADV-12(31)":
                channel = 1;
                streamType = 7;
                break;
            case "QTI-msmnile_gvmq for arm64-k6801_a-11(30)":
                channel = 0;
                streamType = 11;
                break;
            case "QUALCOMM-MSM8996 for arm64-jmev_gse-8.1.0(27)":
                channel = 1;
                break;
            default:
                channel = 0;
                streamType = 0;
                break;
        }

        int effectiveChannel = channel;
        if ("QTI-msmnile_gvmq for arm64-msmnile_gvmq-11(30)-RQ3A.210805.001.A1".equals(this.info3)) {
            streamType = 16;
            effectiveChannel = 0;
        }
        return ((effectiveChannel << 16) & (~65535)) | (65535 & streamType);
    }

    /**
     * Returns device-specific voice-assistant audio volume as packed int.
     * was: t()
     */
    public int getVoiceAssistantAudioVolume() {
        if ("alps-E01-MEABGRD-5.1(22)".equals(this.info2)) {
            return 393228;
        }
        return "sprd-uis8581a2h10_Automotive-uis8581a2h10_Automotive-10(29)".equals(this.info2)
                ? 131105 : 0;
    }

    /**
     * Returns device-specific window layout params for the video overlay
     * (size, gravity), or null to use the system default. Also sets flags
     * on PreferenceManager for certain devices.
     * was: u()
     */
    public WindowManager.LayoutParams getWindowLayoutParams() {
        if ("hozon-EP37-vnd_mars-11(30)".equals(this.info2)
                || "hozon-EP32E01-vnd_mars-11(30)".equals(this.info2)) {
            cn.manstep.phonemirrorBox.b0.i().E(true);
                    /* was: b0.i().E(true) → PreferenceManager.getInstance().setFlagF(true) */
            cn.manstep.phonemirrorBox.b0.i().A(false);
                    /* was: b0.i().A(false) → PreferenceManager.getInstance().setHideNavBar(false) */
            WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
            lp.width = 1230;
            lp.height = -1;  /* MATCH_PARENT */
            lp.gravity = 8388661;  /* START | CENTER_VERTICAL */
            return lp;
        }
        if ("hozon-oversea-vnd_mars-11(30)".equals(this.info2)) {
            cn.manstep.phonemirrorBox.b0.i().E(true);
            cn.manstep.phonemirrorBox.b0.i().A(false);
            WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
            lp.width = -1;   /* MATCH_PARENT */
            lp.height = 1750;
            lp.gravity = 17; /* CENTER */
            return lp;
        }
        if ("hozon-EP36-vnd_mars-11(30)".equals(this.info2)) {
            cn.manstep.phonemirrorBox.b0.i().E(true);
            cn.manstep.phonemirrorBox.b0.i().A(false);
            WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
            lp.width = -1;
            lp.height = 2200;
            lp.gravity = 17;
            return lp;
        }
        if ("QTI-f6801f for arm64-f6801f-9(28)".equals(this.info2)
                || "QTI-f6803f for arm64-f6803f-9(28)".equals(this.info2)
                || "QTI-msmnile_gvmq for arm64-f6805h-11(30)".equals(this.info2)
                || "QTI-msmnile_gvmq for arm64-f6810-11(30)".equals(this.info2)
                || "QTI-msmnile_gvmq for arm64-f6811-11(30)".equals(this.info2)
                || "QTI-msmnile_gvmq for arm64-f6802h-11(30)".equals(this.info2)) {
            cn.manstep.phonemirrorBox.b0.i().E(true);
            cn.manstep.phonemirrorBox.b0.i().A(false);
            WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
            lp.width = 1780;
            lp.height = -1;
            lp.gravity = 8388613;  /* END | CENTER_VERTICAL */
            return lp;
        }
        if ("BYD AUTO-DiLink5.0 For BYD AUTO-DiLink5.0-12(32)".equals(this.info2)) {
            cn.manstep.phonemirrorBox.b0.i().E(true);
            cn.manstep.phonemirrorBox.b0.i().A(false);
            return null;
        }
        return null;
    }

    /**
     * Returns the orientation mode for the device:
     *   0 = landscape (default / sysWidth > sysHeight)
     *   1 = portrait  (sysHeight > sysWidth, or NIO/BYD/Freescale)
     *   2 = forced landscape with insets (Changan, Great Wall, JIDU)
     *   4 = FAW-specific split mode
     * was: v()
     */
    public int getOrientationMode() {
        switch (this.info2) {
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
                return this.sysHeight > this.sysWidth ? 1 : 0;
        }
    }

    /* ── simple getters ─────────────────────────────────────────────── */

    /** was: w() */
    public String getHuid() {
        return this.huid;
    }

    /** was: x() */
    public String getDeviceInfoString() {
        return toString();
    }

    /** was: y() */
    public String getInfo2() {
        return this.info2;
    }

    /* ── toString ────────────────────────────────────────────────────── */

    @Override
    public String toString() {
        return "DeviceConfig{"
                + "info1='" + this.info1 + "'"                               /* was: f1835b */
                + ", info2='" + this.info2 + "'"                             /* was: f1836c */
                + ", info3='" + this.info3 + "'"                             /* was: f1837d */
                + ", huid='" + this.huid + "'"                               /* was: e */
                + ", defLocal='" + this.localeInfo + "'"                     /* was: g */
                + ", uuid='" + this.uuid + "'"                               /* was: k */
                + ", width=" + this.surfaceWidth                             /* was: l */
                + ", height=" + this.surfaceHeight                           /* was: m */
                + ", sysWidth=" + this.sysWidth                              /* was: n */
                + ", sysHeight=" + this.sysHeight                            /* was: o */
                + '}';
    }
}
