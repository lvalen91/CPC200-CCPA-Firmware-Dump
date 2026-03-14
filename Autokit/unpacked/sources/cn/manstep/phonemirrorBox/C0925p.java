package cn.manstep.phonemirrorBox;

import android.os.Build;
import android.text.TextUtils;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.HashMap;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0925p {

    /* JADX INFO: renamed from: A */
    public static boolean f5854A = true;

    /* JADX INFO: renamed from: B */
    public static boolean f5855B = true;

    /* JADX INFO: renamed from: C */
    public static int f5856C = 0;

    /* JADX INFO: renamed from: D */
    public static int f5857D = 0;

    /* JADX INFO: renamed from: E */
    public static int f5858E = 0;

    /* JADX INFO: renamed from: F */
    public static int f5859F = 0;

    /* JADX INFO: renamed from: G */
    public static int f5860G = 0;

    /* JADX INFO: renamed from: H */
    public static boolean f5861H = false;

    /* JADX INFO: renamed from: I */
    public static int f5862I = 0;

    /* JADX INFO: renamed from: J */
    private static final HashMap<String, Integer> f5863J;

    /* JADX INFO: renamed from: a */
    public static String f5864a = "VER:2025.03.19.1126";

    /* JADX INFO: renamed from: b */
    public static String f5865b = "BOX:unknown";

    /* JADX INFO: renamed from: c */
    public static boolean f5866c = false;

    /* JADX INFO: renamed from: d */
    public static boolean f5867d = false;

    /* JADX INFO: renamed from: e */
    public static String f5868e = "/sdcard/hwbox.log";

    /* JADX INFO: renamed from: f */
    public static String f5869f = "None";

    /* JADX INFO: renamed from: g */
    public static boolean f5870g = false;

    /* JADX INFO: renamed from: h */
    private static int f5871h = -1;

    /* JADX INFO: renamed from: i */
    public static boolean f5872i = false;

    /* JADX INFO: renamed from: j */
    public static boolean f5873j = false;

    /* JADX INFO: renamed from: k */
    public static int f5874k = 0;

    /* JADX INFO: renamed from: l */
    public static int f5875l = 0;

    /* JADX INFO: renamed from: m */
    public static boolean f5876m = false;

    /* JADX INFO: renamed from: n */
    public static int f5877n = 0;

    /* JADX INFO: renamed from: o */
    public static int f5878o = 0;

    /* JADX INFO: renamed from: p */
    public static int f5879p = 0;

    /* JADX INFO: renamed from: q */
    public static float f5880q = 0.0f;

    /* JADX INFO: renamed from: r */
    public static int f5881r = -1;

    /* JADX INFO: renamed from: s */
    public static boolean f5882s;

    /* JADX INFO: renamed from: t */
    public static boolean f5883t;

    /* JADX INFO: renamed from: u */
    public static boolean f5884u;

    /* JADX INFO: renamed from: v */
    public static boolean f5885v;

    /* JADX INFO: renamed from: w */
    public static boolean f5886w;

    /* JADX INFO: renamed from: x */
    public static boolean f5887x;

    /* JADX INFO: renamed from: y */
    public static boolean f5888y;

    /* JADX INFO: renamed from: z */
    public static boolean f5889z;

    static {
        HashMap<String, Integer> map = new HashMap<>();
        f5863J = map;
        map.put("P", 255);
        f5863J.put("IG", 254);
        f5863J.put("PIG", 17);
        f5863J.put("PIGHS", 255);
        f5863J.put("I", 0);
        f5863J.put("T", 1);
        f5863J.put("Y", 2);
        f5863J.put("B", 3);
        f5863J.put("H", 4);
        f5863J.put("D", 13);
        f5863J.put("K", 14);
        f5863J.put("J", 15);
        f5863J.put("S", 16);
        f5863J.put("G", 17);
        f5863J.put("L", 18);
        f5863J.put("M", 19);
        f5856C = 60;
        f5857D = 0;
        f5858E = 1;
        f5860G = CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION;
        f5859F = 0;
        f5861H = true;
    }

    /* JADX INFO: renamed from: a */
    public static int m6857a() {
        Integer num = f5863J.get("Y");
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: renamed from: b */
    public static int m6858b() {
        String str = m6859c("ro.product.manufacturer", BuildConfig.FLAVOR) + "-" + m6859c("ro.board.platform", BuildConfig.FLAVOR);
        String str2 = Build.MODEL;
        if ("rockchip-rk3368".equals(str) || "Allwinner-t3".equals(str)) {
            f5883t = true;
        }
        int iM6091m = C0795b0.m6071i().m6091m("RecordDelay", 0);
        if (iM6091m != 0) {
            return iM6091m;
        }
        if ("rockchip-rk3399".equals(str)) {
            return 530;
        }
        if ("Allwinner-t3".equals(str)) {
            return 1320;
        }
        return "ATC-ac8317".equals(str) ? "at8317_1537323153".equals(str2) ? 844 : 150 : "sprd-sp7731e".equals(str) ? "sp7731e_1h10_native".equals(str2) ? 1081 : 150 : "rockchip-rk3368".equals(str) ? "PX5".equals(Build.MODEL) ? 540 : 150 : "alps-mt6753".equals(str) ? ("land_rover_mrw1920x720".equals(Build.MODEL) && "full_land_rover_mrw1920x720".equals(Build.PRODUCT)) ? 1079 : 150 : "rockchip-rk3188".equals(str) ? 580 : 150;
    }

    /* JADX INFO: renamed from: c */
    public static String m6859c(String str, String str2) {
        try {
            Class<?> clsLoadClass = ClassLoader.getSystemClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class, String.class).invoke(clsLoadClass, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m6860d(String str) {
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

    /* JADX INFO: renamed from: e */
    public static int m6861e() {
        if (f5871h == -1) {
            String str = m6859c("ro.board.platform", BuildConfig.FLAVOR) + "_" + Build.VERSION.RELEASE;
            C0982s.m7373c("isRegisterMediaButton: " + str);
            if (str.equals("rk3368_8.0.0") || str.equals("rk3188_7.1.2") || str.equals("rk3326_10")) {
                f5871h = 0;
            } else {
                f5871h = 1;
            }
        }
        return f5871h;
    }

    /* JADX INFO: renamed from: f */
    public static void m6862f(int i, int i2) {
        if (f5876m) {
            return;
        }
        f5874k = i;
        f5875l = i2;
    }
}
