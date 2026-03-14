package cn.manstep.phonemirrorBox.util;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.media.MediaCodec;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.util.Log;
import androidx.core.content.FileProvider;
import cn.manstep.phonemirrorBox.ActivityC0881k;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.Main1Activity;
import cn.manstep.phonemirrorBox.MediaButtonReceiver;
import cn.manstep.phonemirrorBox.p086s0.C0945a;
import cn.manstep.phonemirrorBox.p086s0.C0946b;
import cn.manstep.phonemirrorBox.util.DialogC0970g;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.c0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0964c0 {
    /* JADX INFO: renamed from: a */
    public static boolean m7177a(Context context, String str, String str2) {
        File filesDir = context.getFilesDir();
        if (filesDir.exists() && filesDir.isDirectory()) {
            try {
                InputStream inputStreamOpen = context.getAssets().open(str);
                FileOutputStream fileOutputStream = new FileOutputStream(filesDir.getAbsolutePath() + "/" + str2);
                byte[] bArr = new byte[inputStreamOpen.available()];
                while (true) {
                    int i = inputStreamOpen.read(bArr);
                    if (i <= 0) {
                        fileOutputStream.close();
                        inputStreamOpen.close();
                        return true;
                    }
                    fileOutputStream.write(bArr, 0, i);
                }
            } catch (Exception e) {
                C0982s.m7375e(Log.getStackTraceString(e));
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: b */
    public static int m7178b(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: renamed from: c */
    private static String m7179c(String str) {
        if (str.length() == 32) {
            return str;
        }
        return m7179c("0" + str);
    }

    /* JADX INFO: renamed from: d */
    public static void m7180d(Context context) {
        List<Sensor> sensorList = ((SensorManager) context.getSystemService("sensor")).getSensorList(-1);
        C0982s.m7378h("Number of Sensors: " + sensorList.size());
        for (Sensor sensor : sensorList) {
            C0982s.m7378h(String.format(Locale.CHINA, "[N:%s][V:%s][VER:%d][T:%d]", sensor.getName(), sensor.getVendor(), Integer.valueOf(sensor.getVersion()), Integer.valueOf(sensor.getType())));
        }
    }

    /* JADX INFO: renamed from: e */
    public static String m7181e(Context context) {
        return Settings.System.getString(context.getContentResolver(), "android_id");
    }

    /* JADX INFO: renamed from: f */
    public static String m7182f(Context context) {
        File externalCacheDir = StubApp.getOrigApplicationContext(context.getApplicationContext()).getExternalCacheDir();
        return ((externalCacheDir != null && externalCacheDir.isDirectory() && externalCacheDir.canWrite()) ? externalCacheDir.toString() : new File("/sdcard/").isDirectory() ? "/sdcard/" : C0977n.m7314q(context).getAbsolutePath()) + "/App.apk";
    }

    /* JADX INFO: renamed from: g */
    public static Bitmap m7183g(Context context, String str) {
        try {
            return BitmapFactory.decodeStream(context.getAssets().open(str));
        } catch (Exception e) {
            e.printStackTrace();
            C0982s.m7375e(Log.getStackTraceString(e));
            return null;
        }
    }

    /* JADX INFO: renamed from: h */
    public static String m7184h(Context context, int i, int i2) {
        String strM6859c = C0925p.m6859c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strM6859c2 = C0925p.m6859c("ro.board.platform", BuildConfig.FLAVOR);
        String str = BuildConfig.FLAVOR + Build.VERSION.SDK_INT;
        String str2 = BuildConfig.FLAVOR + Build.VERSION.RELEASE;
        String str3 = Build.BOARD;
        String str4 = Build.BRAND;
        String str5 = Build.CPU_ABI;
        String str6 = Build.DEVICE;
        String str7 = Build.DISPLAY;
        String str8 = Build.FINGERPRINT;
        String str9 = Build.HARDWARE;
        String str10 = Build.MODEL;
        String str11 = C0925p.f5874k + "x" + C0925p.f5875l;
        Locale locale = context.getResources().getConfiguration().locale;
        return ("Manufacturer: " + strM6859c + "\nPlatform:     " + strM6859c2 + "\nModel:        " + str10 + "\nID:           " + m7181e(context) + "\nDisplay:      " + str7 + "\nFingerprint:  " + str8 + "\nHardware:     " + str9 + "\nDevice:       " + str6 + "\nBoard:        " + str3 + "\nBrand:        " + str4 + "\nProduct:      " + Build.PRODUCT + "\nTIME:         " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINESE).format(new Date(Build.TIME)) + "\nINCREMENTAL:  " + Build.VERSION.INCREMENTAL + "\nHWDecoder:    " + C0925p.f5869f + "\nCPU_ABI:      " + str5 + "\nResolution:   " + str11 + "(" + (i + "x" + i2) + ")\ndensityDpi:   " + C0925p.f5879p + "\ndensity:      " + C0925p.f5880q + "\nlanguage:     " + locale.getLanguage() + "-" + locale.getCountry() + "\nAPI:          " + str + "\nAndroid:      " + str2 + "\n\n") + ("Name: 37.AutoKit\nTIME: 2025.03.19.1126\nApp:  " + C0925p.f5864a + "\nVER:  10208\nBox:  " + C0925p.f5865b + "\nMFD:  " + C0732c.m5542e().m5550h() + "\n\nUse TextureView Render: " + C0925p.f5872i + "\nMediaButton: " + context.getPackageManager().getComponentEnabledSetting(new ComponentName(context.getPackageName(), MediaButtonReceiver.class.getName())) + " (1:E, 2:D)\nSHA1: " + C0946b.m6972a(context, "SHA1") + "\nSHA256: " + C0946b.m6972a(context, "SHA256") + "\nCert: " + C0945a.m6970a(context) + "\nCert: " + C0945a.m6971b(context) + "\nPID:  " + Process.myPid() + "\n\n" + C0795b0.m6071i().m6088c() + "\n\n\n");
    }

    /* JADX INFO: renamed from: i */
    public static Drawable m7185i(Context context, String str) {
        if (str.startsWith("/")) {
            try {
                return BitmapDrawable.createFromPath(str);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            try {
                Drawable drawableCreateFromStream = BitmapDrawable.createFromStream(inputStreamOpen, "car.png");
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                return drawableCreateFromStream;
            } finally {
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: j */
    public static String m7186j(File file) {
        if (file != null && file.isFile()) {
            byte[] bArr = new byte[1024];
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(file);
                while (true) {
                    int i = fileInputStream.read(bArr, 0, 1024);
                    if (i == -1) {
                        fileInputStream.close();
                        return m7179c(new BigInteger(1, messageDigest.digest()).toString(16));
                    }
                    messageDigest.update(bArr, 0, i);
                }
            } catch (Exception e) {
                e.printStackTrace();
                C0982s.m7375e(Log.getStackTraceString(e));
            }
        }
        return BuildConfig.FLAVOR;
    }

    /* JADX INFO: renamed from: k */
    public static int m7187k(Context context, String str) {
        return context.getResources().getIdentifier(str, "id", context.getPackageName());
    }

    /* JADX INFO: renamed from: l */
    public static List<String> m7188l(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile(str2).matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group());
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: m */
    public static String m7189m(Context context, int i) {
        return context == null ? BuildConfig.FLAVOR : context.getResources().getString(i);
    }

    /* JADX INFO: renamed from: n */
    public static String m7190n(Context context) {
        Locale locale = context.getResources().getConfiguration().locale;
        String language = locale.getLanguage();
        if ("zh".equals(language) && !"CN".equalsIgnoreCase(locale.getCountry().toLowerCase())) {
            language = "zh_TW";
        }
        return ((("https://paplink.cn/www/TranslateManage/?l=" + language) + "&id=" + C0953u.m7001z().m7010I()) + "&ui=37") + "&t=apk";
    }

    /* JADX INFO: renamed from: o */
    public static void m7191o(Context context, String str) {
        File file = new File(str);
        if (file.exists()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                intent.addFlags(67108867);
                intent.setDataAndType(FileProvider.m1690e(context, context.getPackageName() + ".fileprovider", file), "application/vnd.android.package-archive");
            } else {
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            }
            try {
                C0982s.m7374d("Util", "installApk: startActivity");
                context.startActivity(intent);
                if (context instanceof ActivityC0881k) {
                    ((ActivityC0881k) context).m6514e0();
                }
            } catch (ActivityNotFoundException unused) {
                C1000a.m7488a(context, 2131689698);
            }
        }
    }

    /* JADX INFO: renamed from: p */
    public static boolean m7192p() {
        try {
            MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType("video/avc");
            if (mediaCodecCreateDecoderByType == null) {
                return false;
            }
            String name = BuildConfig.FLAVOR;
            if (Build.VERSION.SDK_INT >= 18) {
                name = mediaCodecCreateDecoderByType.getName();
            }
            mediaCodecCreateDecoderByType.release();
            if (!name.contains("google")) {
                return false;
            }
            C0982s.m7375e(name + ", we use soft-decode");
            return true;
        } catch (Exception unused) {
            C0982s.m7375e("MediaCodec.createDecoderByType video/avc is null, we use soft-decode");
            return true;
        }
    }

    /* JADX INFO: renamed from: q */
    public static boolean m7193q() {
        String strM6859c = C0925p.m6859c("ro.board.platform", BuildConfig.FLAVOR);
        String strM6859c2 = C0925p.m6859c("ro.product.manufacturer", BuildConfig.FLAVOR);
        return strM6859c.contains("sofia3gr") || strM6859c2.equalsIgnoreCase("allwinner") || "msm8916".equalsIgnoreCase(strM6859c) || "mt6735".equalsIgnoreCase(strM6859c) || "mt6739".equalsIgnoreCase(strM6859c) || "rk3368".equalsIgnoreCase(strM6859c) || "rk3188".equalsIgnoreCase(strM6859c) || "rk3288".equalsIgnoreCase(strM6859c) || "FYT6025".equalsIgnoreCase(Build.MODEL) || "rkpx3".equalsIgnoreCase(strM6859c) || "alps".equalsIgnoreCase(strM6859c2) || "sp9853i_1h10_vmm".equalsIgnoreCase(Build.MODEL) || "rk3326_mid".equalsIgnoreCase(Build.MODEL) || "mt2712".equalsIgnoreCase(strM6859c) || "sc8830".equalsIgnoreCase(strM6859c) || "telechips".equalsIgnoreCase(strM6859c2) || strM6859c2.equalsIgnoreCase("HUAWEI") || strM6859c2.equalsIgnoreCase("QUALCOMM") || strM6859c2.equalsIgnoreCase("samsung") || strM6859c2.equalsIgnoreCase("Freescale");
    }

    /* JADX INFO: renamed from: r */
    public static int m7194r(int i, int i2) {
        return (i << 16) | (i2 & 65535);
    }

    /* JADX INFO: renamed from: s */
    public static void m7195s(Context context, boolean z) {
        if (context == null) {
            return;
        }
        ComponentName componentName = new ComponentName(context, (Class<?>) Main1Activity.class);
        PackageManager packageManager = context.getPackageManager();
        int componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
        if (z) {
            if (componentEnabledSetting == 2) {
                packageManager.setComponentEnabledSetting(componentName, 1, 1);
            }
        } else if (componentEnabledSetting != 2) {
            packageManager.setComponentEnabledSetting(componentName, 2, 1);
        }
    }

    /* JADX INFO: renamed from: t */
    public static void m7196t(Context context, boolean z) {
        if (context != null) {
            ComponentName componentName = new ComponentName(context, (Class<?>) MediaButtonReceiver.class);
            PackageManager packageManager = context.getPackageManager();
            int componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
            if (z) {
                if (componentEnabledSetting != 1) {
                    packageManager.setComponentEnabledSetting(componentName, 1, 1);
                }
            } else if (componentEnabledSetting != 2) {
                packageManager.setComponentEnabledSetting(componentName, 2, 1);
            }
            C0982s.m7373c("Util,setMediaButtonEnable: state=" + packageManager.getComponentEnabledSetting(componentName));
        }
    }

    /* JADX INFO: renamed from: u */
    public static void m7197u(Context context, int i) {
        if (context == null) {
            return;
        }
        DialogC0970g.c cVar = new DialogC0970g.c(context);
        cVar.m7247c(context.getResources().getString(i));
        cVar.m7246b(true);
        cVar.m7245a(true);
        cVar.m7248d().m7243b(true);
    }

    /* JADX INFO: renamed from: v */
    public static int[] m7198v(int i) {
        return new int[]{i & 65535, i >>> 16};
    }

    /* JADX INFO: renamed from: w */
    public static String m7199w(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b2 : bArrDigest) {
                int i = b2 & 255;
                if (i < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return BuildConfig.FLAVOR;
        }
    }
}
