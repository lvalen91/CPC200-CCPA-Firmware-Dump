package cn.manstep.autokit.config;

import android.os.Build;
import android.text.TextUtils;
import java.util.HashMap;

/**
 * GlobalConfig -- Static configuration flags and global state for the AutoKit application.
 *
 * Holds app/box version strings, hardware detection state, screen dimensions,
 * video encoding parameters, audio settings, and per-device record-delay overrides.
 *
 * Deobfuscated from: cn.manstep.phonemirrorBox.p
 */
public class GlobalConfig {

    /* ── version / identity ─────────────────────────────────────────── */

    public static String APP_VERSION = "VER:2025.03.19.1126";               /* was: 'a' */

    public static String BOX_VERSION = "BOX:unknown";                        /* was: 'f1804b' */

    public static boolean debugMode = false;                                 /* was: 'f1805c' */

    public static boolean isRecording = false;                               /* was: 'f1806d' */

    public static String LOG_PATH = "/sdcard/hwbox.log";                     /* was: 'e' */

    public static String hardwareId = "None";                                /* was: 'f' */

    /* ── rendering flags ────────────────────────────────────────────── */

    /** Enables AutoBoxMirrorSoftView + openH264 software decoder. */
    public static boolean useSoftDecode = false;                             /* was: 'g' */

    /** Internal cache for isRegisterMediaButton result (-1 = uncached). */
    private static int _mediaButtonCache = -1;                               /* was: 'h' */

    /** Enables AutoBoxMirrorTextureView rendering path. */
    public static boolean useTextureView = false;                            /* was: 'i' */

    /** Enables OpenGL-based rendering path. */
    public static boolean useOpenGLRender = false;                           /* was: 'j' */

    /* ── screen geometry ────────────────────────────────────────────── */

    /** Screen width (set via {@link #setScreenSize(int, int)}). */
    public static int screenWidth = 0;                                       /* was: 'k' */

    /** Screen height (set via {@link #setScreenSize(int, int)}). */
    public static int screenHeight = 0;                                      /* was: 'l' */

    /** When true, {@link #setScreenSize} becomes a no-op. */
    public static boolean screenSizeLocked = false;                          /* was: 'm' */

    /* ── phone / device state ───────────────────────────────────────── */

    /** 0 = unknown, 1 = Android, 2 = iPhone */
    public static int phoneType = 0;                                         /* was: 'n' */

    public static int outputFormat = 0;                                      /* was: 'o' */

    public static int videoRotation = 0;                                     /* was: 'p' */

    public static float density = 0.0f;                                      /* was: 'q' */

    /** Current connected phone type (-1 = none). */
    public static int currentPhoneType = -1;                                 /* was: 'r' */

    public static boolean hasExternalMic;                                    /* was: 's' */

    public static boolean useCustomLayout;                                   /* was: 't' */

    public static boolean hideNavBar;                                        /* was: 'u' */

    public static boolean hideStatusBar;                                     /* was: 'v' */

    public static boolean autoConnect;                                       /* was: 'w' */

    public static boolean wifiAutoConnect;                                   /* was: 'x' */

    public static boolean btAutoConnect;                                     /* was: 'y' */

    public static boolean showFloatWindow;                                   /* was: 'z' */

    /* ── touch / video / audio tuning ───────────────────────────────── */

    public static boolean enableTouchPassthrough = true;                     /* was: 'A' */

    public static boolean enableMultiTouch = true;                           /* was: 'B' */

    /** Video frame rate -- 60 for hardware decode, 25 for soft decode. */
    public static int videoFrameRate = 0;                                    /* was: 'C' -- initialised to 60 in static block */

    public static int dropThreshold = 0;                                     /* was: 'D' */

    /** Compression method (1 = H.264). */
    public static int compressMethod = 0;                                    /* was: 'E' -- initialised to 1 in static block */

    public static int bufferFrameCount = 0;                                  /* was: 'F' */

    /** Microphone recording delay in milliseconds (default 500). */
    public static int micRecordDelay = 0;                                    /* was: 'G' -- initialised to CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION (500) */

    public static boolean enableHeartbeat = false;                           /* was: 'H' -- initialised to true in static block */

    /** Audio output mode. */
    public static int audioOutputMode = 0;                                   /* was: 'I' */

    /**
     * Maps device-code strings to integer delay/capability codes.
     * Key examples: "P"=255, "Y"=2, "T"=1, etc.
     */
    private static final HashMap<String, Integer> deviceDelayMap;            /* was: 'J' */

    /* ── static initializer ─────────────────────────────────────────── */

    static {
        HashMap<String, Integer> map = new HashMap<>();
        deviceDelayMap = map;
        map.put("P", 255);
        deviceDelayMap.put("IG", 254);
        deviceDelayMap.put("PIG", 17);
        deviceDelayMap.put("PIGHS", 255);
        deviceDelayMap.put("I", 0);
        deviceDelayMap.put("T", 1);
        deviceDelayMap.put("Y", 2);
        deviceDelayMap.put("B", 3);
        deviceDelayMap.put("H", 4);
        deviceDelayMap.put("D", 13);
        deviceDelayMap.put("K", 14);
        deviceDelayMap.put("J", 15);
        deviceDelayMap.put("S", 16);
        deviceDelayMap.put("G", 17);
        deviceDelayMap.put("L", 18);
        deviceDelayMap.put("M", 19);

        videoFrameRate  = 60;   /* was: C = 60 */
        dropThreshold   = 0;    /* was: D = 0 */
        compressMethod  = 1;    /* was: E = 1  (H.264) */
        micRecordDelay  = 500;  /* was: G = CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION (500ms) */
        bufferFrameCount = 0;   /* was: F = 0 */
        enableHeartbeat = true; /* was: H = true */
    }

    /* ── methods ────────────────────────────────────────────────────── */

    /**
     * Returns the device delay code for the "Y" key (default 0).
     * was: a()
     */
    public static int getDeviceDelayCode() {
        Integer num = deviceDelayMap.get("Y");
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /**
     * Calculates the microphone record delay based on the device's manufacturer
     * and board platform. Falls back to the "RecordDelay" preference, then to
     * hard-coded per-platform values.
     * was: b()
     */
    public static int getRecordDelay() {
        String platformKey = getSystemProperty("ro.product.manufacturer", "")
                + "-"
                + getSystemProperty("ro.board.platform", "");
        String model = Build.MODEL;

        if ("rockchip-rk3368".equals(platformKey) || "Allwinner-t3".equals(platformKey)) {
            useCustomLayout = true;                                          /* was: t = true */
        }

        int prefDelay = PreferenceManager.getInstance().getInt("RecordDelay", 0);
                                                                             /* was: b0.i().m("RecordDelay", 0) */
        if (prefDelay != 0) {
            return prefDelay;
        }

        if ("rockchip-rk3399".equals(platformKey)) {
            return 530;
        }
        if ("Allwinner-t3".equals(platformKey)) {
            return 1320;
        }
        return "ATC-ac8317".equals(platformKey)
                ? "at8317_1537323153".equals(model) ? 844 : 150
                : "sprd-sp7731e".equals(platformKey)
                ? "sp7731e_1h10_native".equals(model) ? 1081 : 150
                : "rockchip-rk3368".equals(platformKey)
                ? "PX5".equals(Build.MODEL) ? 540 : 150
                : "alps-mt6753".equals(platformKey)
                ? ("land_rover_mrw1920x720".equals(Build.MODEL)
                        && "full_land_rover_mrw1920x720".equals(Build.PRODUCT)) ? 1079 : 150
                : "rockchip-rk3188".equals(platformKey) ? 580 : 150;
    }

    /**
     * Reads a hidden Android system property via reflection.
     * was: c(prop, default)
     *
     * @param prop     system property name (e.g. "ro.board.platform")
     * @param defValue fallback if the property is unset or reflection fails
     */
    public static String getSystemProperty(String prop, String defValue) {
        try {
            Class<?> cls = ClassLoader.getSystemClassLoader()
                    .loadClass("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class)
                    .invoke(cls, prop, defValue);
        } catch (Exception unused) {
            return defValue;
        }
    }

    /**
     * Returns true if the box version string is empty, unknown, or does not
     * contain a valid capability marker at position 21.
     * was: d(boxVersion)
     */
    public static boolean isUnknownBox(String boxVersion) {
        if (TextUtils.isEmpty(boxVersion) || "BOX:unknown".equals(boxVersion)) {
            return true;
        }
        int length = boxVersion.length();
        if (length >= 22) {
            String marker = boxVersion.substring(21, 22);
            if ("Y".equals(marker)) {
                return !"B".equals(marker) || length <= 22;
            }
        }
        return false;
    }

    /**
     * Determines whether a media-button broadcast receiver should be registered
     * based on the board platform and Android version. Returns 0 (do not register)
     * for specific legacy platforms, 1 otherwise. Result is cached.
     * was: e()
     */
    public static int isRegisterMediaButton() {
        if (_mediaButtonCache == -1) {
            String platformVersion = getSystemProperty("ro.board.platform", "")
                    + "_" + Build.VERSION.RELEASE;
            cn.manstep.phonemirrorBox.util.s.c("isRegisterMediaButton: " + platformVersion);
            if (platformVersion.equals("rk3368_8.0.0")
                    || platformVersion.equals("rk3188_7.1.2")
                    || platformVersion.equals("rk3326_10")) {
                _mediaButtonCache = 0;
            } else {
                _mediaButtonCache = 1;
            }
        }
        return _mediaButtonCache;
    }

    /**
     * Sets the global screen dimensions unless {@link #screenSizeLocked} is true.
     * was: f(w, h)
     */
    public static void setScreenSize(int w, int h) {
        if (screenSizeLocked) {
            return;
        }
        screenWidth = w;                                                     /* was: k = i2 */
        screenHeight = h;                                                    /* was: l = i3 */
    }
}
