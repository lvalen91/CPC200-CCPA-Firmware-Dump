package cn.manstep.phonemirrorBox;

import android.os.Build;
import android.text.TextUtils;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.HashMap;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class p {
    public static boolean A = true;
    public static boolean B = true;
    public static int C = 0;
    public static int D = 0;
    public static int E = 0;
    public static int F = 0;
    public static int G = 0;
    public static boolean H = false;
    public static int I = 0;
    private static final HashMap<String, Integer> J;
    public static String a = "VER:2025.03.19.1126";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f1804b = "BOX:unknown";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f1805c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f1806d = false;
    public static String e = "/sdcard/hwbox.log";
    public static String f = "None";
    public static boolean g = false;
    private static int h = -1;
    public static boolean i = false;
    public static boolean j = false;
    public static int k = 0;
    public static int l = 0;
    public static boolean m = false;
    public static int n = 0;
    public static int o = 0;
    public static int p = 0;
    public static float q = 0.0f;
    public static int r = -1;
    public static boolean s;
    public static boolean t;
    public static boolean u;
    public static boolean v;
    public static boolean w;
    public static boolean x;
    public static boolean y;
    public static boolean z;

    static {
        HashMap<String, Integer> map = new HashMap<>();
        J = map;
        map.put("P", 255);
        J.put("IG", 254);
        J.put("PIG", 17);
        J.put("PIGHS", 255);
        J.put("I", 0);
        J.put("T", 1);
        J.put("Y", 2);
        J.put("B", 3);
        J.put("H", 4);
        J.put("D", 13);
        J.put("K", 14);
        J.put("J", 15);
        J.put("S", 16);
        J.put("G", 17);
        J.put("L", 18);
        J.put("M", 19);
        C = 60;
        D = 0;
        E = 1;
        G = CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION;
        F = 0;
        H = true;
    }

    public static int a() {
        Integer num = J.get("Y");
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static int b() {
        String str = c("ro.product.manufacturer", BuildConfig.FLAVOR) + "-" + c("ro.board.platform", BuildConfig.FLAVOR);
        String str2 = Build.MODEL;
        if ("rockchip-rk3368".equals(str) || "Allwinner-t3".equals(str)) {
            t = true;
        }
        int iM = b0.i().m("RecordDelay", 0);
        if (iM != 0) {
            return iM;
        }
        if ("rockchip-rk3399".equals(str)) {
            return 530;
        }
        if ("Allwinner-t3".equals(str)) {
            return 1320;
        }
        return "ATC-ac8317".equals(str) ? "at8317_1537323153".equals(str2) ? 844 : 150 : "sprd-sp7731e".equals(str) ? "sp7731e_1h10_native".equals(str2) ? 1081 : 150 : "rockchip-rk3368".equals(str) ? "PX5".equals(Build.MODEL) ? 540 : 150 : "alps-mt6753".equals(str) ? ("land_rover_mrw1920x720".equals(Build.MODEL) && "full_land_rover_mrw1920x720".equals(Build.PRODUCT)) ? 1079 : 150 : "rockchip-rk3188".equals(str) ? 580 : 150;
    }

    public static String c(String str, String str2) {
        try {
            Class<?> clsLoadClass = ClassLoader.getSystemClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class, String.class).invoke(clsLoadClass, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public static boolean d(String str) {
        if (TextUtils.isEmpty(str) || "BOX:unknown".equals(str)) {
            return true;
        }
        int length = str.length();
        if (length >= 22) {
            String strSubstring = str.substring(21, 22);
            if ("Y".equals(strSubstring)) {
                return !"B".equals(strSubstring) || length <= 22;
            }
        }
        return false;
    }

    public static int e() {
        if (h == -1) {
            String str = c("ro.board.platform", BuildConfig.FLAVOR) + "_" + Build.VERSION.RELEASE;
            cn.manstep.phonemirrorBox.util.s.c("isRegisterMediaButton: " + str);
            if (str.equals("rk3368_8.0.0") || str.equals("rk3188_7.1.2") || str.equals("rk3326_10")) {
                h = 0;
            } else {
                h = 1;
            }
        }
        return h;
    }

    public static void f(int i2, int i3) {
        if (m) {
            return;
        }
        k = i2;
        l = i3;
    }
}
