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
import cn.manstep.phonemirrorBox.Main1Activity;
import cn.manstep.phonemirrorBox.MediaButtonReceiver;
import cn.manstep.phonemirrorBox.util.g;
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

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c0 {
    public static boolean a(Context context, String str, String str2) {
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
                s.e(Log.getStackTraceString(e));
            }
        }
        return false;
    }

    public static int b(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private static String c(String str) {
        if (str.length() == 32) {
            return str;
        }
        return c("0" + str);
    }

    public static void d(Context context) {
        List<Sensor> sensorList = ((SensorManager) context.getSystemService("sensor")).getSensorList(-1);
        s.h("Number of Sensors: " + sensorList.size());
        for (Sensor sensor : sensorList) {
            s.h(String.format(Locale.CHINA, "[N:%s][V:%s][VER:%d][T:%d]", sensor.getName(), sensor.getVendor(), Integer.valueOf(sensor.getVersion()), Integer.valueOf(sensor.getType())));
        }
    }

    public static String e(Context context) {
        return Settings.System.getString(context.getContentResolver(), "android_id");
    }

    public static String f(Context context) {
        File externalCacheDir = StubApp.getOrigApplicationContext(context.getApplicationContext()).getExternalCacheDir();
        return ((externalCacheDir != null && externalCacheDir.isDirectory() && externalCacheDir.canWrite()) ? externalCacheDir.toString() : new File("/sdcard/").isDirectory() ? "/sdcard/" : n.q(context).getAbsolutePath()) + "/App.apk";
    }

    public static Bitmap g(Context context, String str) {
        try {
            return BitmapFactory.decodeStream(context.getAssets().open(str));
        } catch (Exception e) {
            e.printStackTrace();
            s.e(Log.getStackTraceString(e));
            return null;
        }
    }

    public static String h(Context context, int i, int i2) {
        String strC = cn.manstep.phonemirrorBox.p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strC2 = cn.manstep.phonemirrorBox.p.c("ro.board.platform", BuildConfig.FLAVOR);
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
        String str11 = cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l;
        Locale locale = context.getResources().getConfiguration().locale;
        return ("Manufacturer: " + strC + "\nPlatform:     " + strC2 + "\nModel:        " + str10 + "\nID:           " + e(context) + "\nDisplay:      " + str7 + "\nFingerprint:  " + str8 + "\nHardware:     " + str9 + "\nDevice:       " + str6 + "\nBoard:        " + str3 + "\nBrand:        " + str4 + "\nProduct:      " + Build.PRODUCT + "\nTIME:         " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINESE).format(new Date(Build.TIME)) + "\nINCREMENTAL:  " + Build.VERSION.INCREMENTAL + "\nHWDecoder:    " + cn.manstep.phonemirrorBox.p.f + "\nCPU_ABI:      " + str5 + "\nResolution:   " + str11 + "(" + (i + "x" + i2) + ")\ndensityDpi:   " + cn.manstep.phonemirrorBox.p.p + "\ndensity:      " + cn.manstep.phonemirrorBox.p.q + "\nlanguage:     " + locale.getLanguage() + "-" + locale.getCountry() + "\nAPI:          " + str + "\nAndroid:      " + str2 + "\n\n") + ("Name: 37.AutoKit\nTIME: 2025.03.19.1126\nApp:  " + cn.manstep.phonemirrorBox.p.a + "\nVER:  10208\nBox:  " + cn.manstep.phonemirrorBox.p.f1804b + "\nMFD:  " + cn.manstep.phonemirrorBox.BoxInterface.c.e().h() + "\n\nUse TextureView Render: " + cn.manstep.phonemirrorBox.p.i + "\nMediaButton: " + context.getPackageManager().getComponentEnabledSetting(new ComponentName(context.getPackageName(), MediaButtonReceiver.class.getName())) + " (1:E, 2:D)\nSHA1: " + cn.manstep.phonemirrorBox.s0.b.a(context, "SHA1") + "\nSHA256: " + cn.manstep.phonemirrorBox.s0.b.a(context, "SHA256") + "\nCert: " + cn.manstep.phonemirrorBox.s0.a.a(context) + "\nCert: " + cn.manstep.phonemirrorBox.s0.a.b(context) + "\nPID:  " + Process.myPid() + "\n\n" + cn.manstep.phonemirrorBox.b0.i().c() + "\n\n\n");
    }

    public static Drawable i(Context context, String str) {
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

    public static String j(File file) {
        if (file != null && file.isFile()) {
            byte[] bArr = new byte[1024];
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(file);
                while (true) {
                    int i = fileInputStream.read(bArr, 0, 1024);
                    if (i == -1) {
                        fileInputStream.close();
                        return c(new BigInteger(1, messageDigest.digest()).toString(16));
                    }
                    messageDigest.update(bArr, 0, i);
                }
            } catch (Exception e) {
                e.printStackTrace();
                s.e(Log.getStackTraceString(e));
            }
        }
        return BuildConfig.FLAVOR;
    }

    public static int k(Context context, String str) {
        return context.getResources().getIdentifier(str, "id", context.getPackageName());
    }

    public static List<String> l(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile(str2).matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group());
        }
        return arrayList;
    }

    public static String m(Context context, int i) {
        return context == null ? BuildConfig.FLAVOR : context.getResources().getString(i);
    }

    public static String n(Context context) {
        Locale locale = context.getResources().getConfiguration().locale;
        String language = locale.getLanguage();
        if ("zh".equals(language) && !"CN".equalsIgnoreCase(locale.getCountry().toLowerCase())) {
            language = "zh_TW";
        }
        return ((("https://paplink.cn/www/TranslateManage/?l=" + language) + "&id=" + cn.manstep.phonemirrorBox.u.z().I()) + "&ui=37") + "&t=apk";
    }

    public static void o(Context context, String str) {
        File file = new File(str);
        if (file.exists()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                intent.addFlags(67108867);
                intent.setDataAndType(FileProvider.e(context, context.getPackageName() + ".fileprovider", file), "application/vnd.android.package-archive");
            } else {
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            }
            try {
                s.d("Util", "installApk: startActivity");
                context.startActivity(intent);
                if (context instanceof cn.manstep.phonemirrorBox.k) {
                    ((cn.manstep.phonemirrorBox.k) context).e0();
                }
            } catch (ActivityNotFoundException unused) {
                cn.manstep.phonemirrorBox.widget.a.a(context, 2131689698);
            }
        }
    }

    public static boolean p() {
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
            s.e(name + ", we use soft-decode");
            return true;
        } catch (Exception unused) {
            s.e("MediaCodec.createDecoderByType video/avc is null, we use soft-decode");
            return true;
        }
    }

    public static boolean q() {
        String strC = cn.manstep.phonemirrorBox.p.c("ro.board.platform", BuildConfig.FLAVOR);
        String strC2 = cn.manstep.phonemirrorBox.p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        return strC.contains("sofia3gr") || strC2.equalsIgnoreCase("allwinner") || "msm8916".equalsIgnoreCase(strC) || "mt6735".equalsIgnoreCase(strC) || "mt6739".equalsIgnoreCase(strC) || "rk3368".equalsIgnoreCase(strC) || "rk3188".equalsIgnoreCase(strC) || "rk3288".equalsIgnoreCase(strC) || "FYT6025".equalsIgnoreCase(Build.MODEL) || "rkpx3".equalsIgnoreCase(strC) || "alps".equalsIgnoreCase(strC2) || "sp9853i_1h10_vmm".equalsIgnoreCase(Build.MODEL) || "rk3326_mid".equalsIgnoreCase(Build.MODEL) || "mt2712".equalsIgnoreCase(strC) || "sc8830".equalsIgnoreCase(strC) || "telechips".equalsIgnoreCase(strC2) || strC2.equalsIgnoreCase("HUAWEI") || strC2.equalsIgnoreCase("QUALCOMM") || strC2.equalsIgnoreCase("samsung") || strC2.equalsIgnoreCase("Freescale");
    }

    public static int r(int i, int i2) {
        return (i << 16) | (i2 & 65535);
    }

    public static void s(Context context, boolean z) {
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

    public static void t(Context context, boolean z) {
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
            s.c("Util,setMediaButtonEnable: state=" + packageManager.getComponentEnabledSetting(componentName));
        }
    }

    public static void u(Context context, int i) {
        if (context == null) {
            return;
        }
        g.c cVar = new g.c(context);
        cVar.c(context.getResources().getString(i));
        cVar.b(true);
        cVar.a(true);
        cVar.d().b(true);
    }

    public static int[] v(int i) {
        return new int[]{i & 65535, i >>> 16};
    }

    public static String w(String str) {
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
