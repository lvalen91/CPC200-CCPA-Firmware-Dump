/**
 * CryptoUtil.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.c0
 *
 * MD5/hash utilities, device information gathering, asset file operations,
 * APK installation, resource ID lookups, and various system helper methods.
 */
package cn.manstep.autokit.util;

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

public class CryptoUtil /* was: 'c0' */ {

    /**
     * Copy an asset file to the app's files directory.
     * /* was: 'a' */
     */
    public static boolean copyAssetToFiles(/* was: 'a' */ Context context, String assetName, String destName) {
        File filesDir = context.getFilesDir();
        if (filesDir.exists() && filesDir.isDirectory()) {
            try {
                InputStream is = context.getAssets().open(assetName);
                FileOutputStream fos = new FileOutputStream(filesDir.getAbsolutePath() + "/" + destName);
                byte[] buffer = new byte[is.available()];
                while (true) {
                    int bytesRead = is.read(buffer);
                    if (bytesRead <= 0) {
                        fos.close();
                        is.close();
                        return true;
                    }
                    fos.write(buffer, 0, bytesRead);
                }
            } catch (Exception e) {
                Logger.logError(Log.getStackTraceString(e));
            }
        }
        return false;
    }

    /**
     * Convert dp to pixels.
     * /* was: 'b' */
     */
    public static int dpToPx(/* was: 'b' */ Context context, float dp) {
        return (int) ((dp * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /**
     * Pad an MD5 hash string to 32 characters with leading zeros (recursive).
     * /* was: 'c' */
     */
    private static String padMd5(/* was: 'c' */ String str) {
        if (str.length() == 32) {
            return str;
        }
        return padMd5("0" + str);
    }

    /**
     * Log all available device sensors.
     * /* was: 'd' */
     */
    public static void logSensors(/* was: 'd' */ Context context) {
        List<Sensor> sensorList = ((SensorManager) context.getSystemService("sensor")).getSensorList(-1);
        Logger.logInfoShort("Number of Sensors: " + sensorList.size());
        for (Sensor sensor : sensorList) {
            Logger.logInfoShort(String.format(Locale.CHINA, "[N:%s][V:%s][VER:%d][T:%d]",
                    sensor.getName(), sensor.getVendor(),
                    Integer.valueOf(sensor.getVersion()), Integer.valueOf(sensor.getType())));
        }
    }

    /**
     * Get the Android device ID.
     * /* was: 'e' */
     */
    public static String getAndroidId(/* was: 'e' */ Context context) {
        return Settings.System.getString(context.getContentResolver(), "android_id");
    }

    /**
     * Get the path to download an APK update to.
     * /* was: 'f' */
     */
    public static String getApkDownloadPath(/* was: 'f' */ Context context) {
        File externalCacheDir = StubApp.getOrigApplicationContext(context.getApplicationContext()).getExternalCacheDir();
        return ((externalCacheDir != null && externalCacheDir.isDirectory() && externalCacheDir.canWrite())
                ? externalCacheDir.toString()
                : new File("/sdcard/").isDirectory()
                    ? "/sdcard/"
                    : FileUtil.getTmpDir(context).getAbsolutePath())
                + "/App.apk";
    }

    /**
     * Decode a Bitmap from an asset file.
     * /* was: 'g' */
     */
    public static Bitmap decodeAssetBitmap(/* was: 'g' */ Context context, String assetPath) {
        try {
            return BitmapFactory.decodeStream(context.getAssets().open(assetPath));
        } catch (Exception e) {
            e.printStackTrace();
            Logger.logError(Log.getStackTraceString(e));
            return null;
        }
    }

    /**
     * Build a comprehensive device info string.
     * /* was: 'h' */
     */
    public static String getDeviceInfo(/* was: 'h' */ Context context, int screenWidth, int screenHeight) {
        String manufacturer = cn.manstep.phonemirrorBox.p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String platform = cn.manstep.phonemirrorBox.p.c("ro.board.platform", BuildConfig.FLAVOR);
        String apiLevel = BuildConfig.FLAVOR + Build.VERSION.SDK_INT;
        String androidVersion = BuildConfig.FLAVOR + Build.VERSION.RELEASE;
        String board = Build.BOARD;
        String brand = Build.BRAND;
        String cpuAbi = Build.CPU_ABI;
        String device = Build.DEVICE;
        String display = Build.DISPLAY;
        String fingerprint = Build.FINGERPRINT;
        String hardware = Build.HARDWARE;
        String model = Build.MODEL;
        String nativeResolution = cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l;
        Locale locale = context.getResources().getConfiguration().locale;
        return ("Manufacturer: " + manufacturer
                + "\nPlatform:     " + platform
                + "\nModel:        " + model
                + "\nID:           " + getAndroidId(context)
                + "\nDisplay:      " + display
                + "\nFingerprint:  " + fingerprint
                + "\nHardware:     " + hardware
                + "\nDevice:       " + device
                + "\nBoard:        " + board
                + "\nBrand:        " + brand
                + "\nProduct:      " + Build.PRODUCT
                + "\nTIME:         " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINESE).format(new Date(Build.TIME))
                + "\nINCREMENTAL:  " + Build.VERSION.INCREMENTAL
                + "\nHWDecoder:    " + cn.manstep.phonemirrorBox.p.f
                + "\nCPU_ABI:      " + cpuAbi
                + "\nResolution:   " + nativeResolution + "(" + (screenWidth + "x" + screenHeight) + ")"
                + "\ndensityDpi:   " + cn.manstep.phonemirrorBox.p.p
                + "\ndensity:      " + cn.manstep.phonemirrorBox.p.q
                + "\nlanguage:     " + locale.getLanguage() + "-" + locale.getCountry()
                + "\nAPI:          " + apiLevel
                + "\nAndroid:      " + androidVersion + "\n\n")
                + ("Name: 37.AutoKit\nTIME: 2025.03.19.1126\nApp:  " + cn.manstep.phonemirrorBox.p.a
                + "\nVER:  10208\nBox:  " + cn.manstep.phonemirrorBox.p.f1804b
                + "\nMFD:  " + cn.manstep.phonemirrorBox.BoxInterface.c.e().h()
                + "\n\nUse TextureView Render: " + cn.manstep.phonemirrorBox.p.i
                + "\nMediaButton: " + context.getPackageManager().getComponentEnabledSetting(
                        new ComponentName(context.getPackageName(), MediaButtonReceiver.class.getName()))
                + " (1:E, 2:D)"
                + "\nSHA1: " + cn.manstep.phonemirrorBox.s0.b.a(context, "SHA1")
                + "\nSHA256: " + cn.manstep.phonemirrorBox.s0.b.a(context, "SHA256")
                + "\nCert: " + cn.manstep.phonemirrorBox.s0.a.a(context)
                + "\nCert: " + cn.manstep.phonemirrorBox.s0.a.b(context)
                + "\nPID:  " + Process.myPid()
                + "\n\n" + cn.manstep.phonemirrorBox.b0.i().c() + "\n\n\n");
    }

    /**
     * Load a Drawable from an asset path or absolute path.
     * /* was: 'i' */
     */
    public static Drawable loadDrawable(/* was: 'i' */ Context context, String path) {
        if (path.startsWith("/")) {
            try {
                return BitmapDrawable.createFromPath(path);
            } catch (Exception unused) {
                return null;
            }
        }
        try {
            InputStream is = context.getAssets().open(path);
            try {
                Drawable drawable = BitmapDrawable.createFromStream(is, "car.png");
                if (is != null) {
                    is.close();
                }
                return drawable;
            } finally {
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    /**
     * Compute the MD5 hash of a file.
     * /* was: 'j' */
     */
    public static String md5File(/* was: 'j' */ File file) {
        if (file != null && file.isFile()) {
            byte[] buffer = new byte[1024];
            try {
                MessageDigest md = MessageDigest.getInstance("MD5");
                FileInputStream fis = new FileInputStream(file);
                while (true) {
                    int bytesRead = fis.read(buffer, 0, 1024);
                    if (bytesRead == -1) {
                        fis.close();
                        return padMd5(new BigInteger(1, md.digest()).toString(16));
                    }
                    md.update(buffer, 0, bytesRead);
                }
            } catch (Exception e) {
                e.printStackTrace();
                Logger.logError(Log.getStackTraceString(e));
            }
        }
        return BuildConfig.FLAVOR;
    }

    /**
     * Look up a resource ID by name.
     * /* was: 'k' */
     */
    public static int getResourceId(/* was: 'k' */ Context context, String name) {
        return context.getResources().getIdentifier(name, "id", context.getPackageName());
    }

    /**
     * Find all regex matches in a string.
     * /* was: 'l' */
     */
    public static List<String> findAllMatches(/* was: 'l' */ String input, String regex) {
        ArrayList<String> results = new ArrayList<>();
        Matcher matcher = Pattern.compile(regex).matcher(input);
        while (matcher.find()) {
            results.add(matcher.group());
        }
        return results;
    }

    /**
     * Get a string resource, returning empty if context is null.
     * /* was: 'm' */
     */
    public static String getStringResource(/* was: 'm' */ Context context, int resId) {
        return context == null ? BuildConfig.FLAVOR : context.getResources().getString(resId);
    }

    /**
     * Build a translation management URL.
     * /* was: 'n' */
     */
    public static String getTranslationUrl(/* was: 'n' */ Context context) {
        Locale locale = context.getResources().getConfiguration().locale;
        String language = locale.getLanguage();
        if ("zh".equals(language) && !"CN".equalsIgnoreCase(locale.getCountry().toLowerCase())) {
            language = "zh_TW";
        }
        return ((("https://paplink.cn/www/TranslateManage/?l=" + language)
                + "&id=" + cn.manstep.phonemirrorBox.u.z().I()) + "&ui=37") + "&t=apk";
    }

    /**
     * Install an APK from a file path.
     * /* was: 'o' */
     */
    public static void installApk(/* was: 'o' */ Context context, String apkPath) {
        File file = new File(apkPath);
        if (file.exists()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                intent.addFlags(67108867);
                intent.setDataAndType(
                        FileProvider.e(context, context.getPackageName() + ".fileprovider", file),
                        "application/vnd.android.package-archive");
            } else {
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            }
            try {
                Logger.logDebug("Util", "installApk: startActivity");
                context.startActivity(intent);
                if (context instanceof cn.manstep.phonemirrorBox.k) {
                    ((cn.manstep.phonemirrorBox.k) context).e0();
                }
            } catch (ActivityNotFoundException unused) {
                cn.manstep.phonemirrorBox.widget.a.a(context, 2131689698);
            }
        }
    }

    /**
     * Check if the device's H.264 decoder is software-only (Google).
     * /* was: 'p' */
     */
    public static boolean isSoftwareDecoder(/* was: 'p' */) {
        try {
            MediaCodec decoder = MediaCodec.createDecoderByType("video/avc");
            if (decoder == null) {
                return false;
            }
            String name = BuildConfig.FLAVOR;
            if (Build.VERSION.SDK_INT >= 18) {
                name = decoder.getName();
            }
            decoder.release();
            if (!name.contains("google")) {
                return false;
            }
            Logger.logError(name + ", we use soft-decode");
            return true;
        } catch (Exception unused) {
            Logger.logError("MediaCodec.createDecoderByType video/avc is null, we use soft-decode");
            return true;
        }
    }

    /**
     * Check if the device platform requires software decoding.
     * /* was: 'q' */
     */
    public static boolean requiresSoftDecode(/* was: 'q' */) {
        String platform = cn.manstep.phonemirrorBox.p.c("ro.board.platform", BuildConfig.FLAVOR);
        String manufacturer = cn.manstep.phonemirrorBox.p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        return platform.contains("sofia3gr")
                || manufacturer.equalsIgnoreCase("allwinner")
                || "msm8916".equalsIgnoreCase(platform)
                || "mt6735".equalsIgnoreCase(platform)
                || "mt6739".equalsIgnoreCase(platform)
                || "rk3368".equalsIgnoreCase(platform)
                || "rk3188".equalsIgnoreCase(platform)
                || "rk3288".equalsIgnoreCase(platform)
                || "FYT6025".equalsIgnoreCase(Build.MODEL)
                || "rkpx3".equalsIgnoreCase(platform)
                || "alps".equalsIgnoreCase(manufacturer)
                || "sp9853i_1h10_vmm".equalsIgnoreCase(Build.MODEL)
                || "rk3326_mid".equalsIgnoreCase(Build.MODEL)
                || "mt2712".equalsIgnoreCase(platform)
                || "sc8830".equalsIgnoreCase(platform)
                || "telechips".equalsIgnoreCase(manufacturer)
                || manufacturer.equalsIgnoreCase("HUAWEI")
                || manufacturer.equalsIgnoreCase("QUALCOMM")
                || manufacturer.equalsIgnoreCase("samsung")
                || manufacturer.equalsIgnoreCase("Freescale");
    }

    /**
     * Pack two 16-bit values into a single int.
     * /* was: 'r' */
     */
    public static int packInt16(/* was: 'r' */ int high, int low) {
        return (high << 16) | (low & 65535);
    }

    /**
     * Set the Main1Activity launcher icon visibility.
     * /* was: 's' */
     */
    public static void setLauncherIconEnabled(/* was: 's' */ Context context, boolean enabled) {
        if (context == null) {
            return;
        }
        ComponentName componentName = new ComponentName(context, (Class<?>) Main1Activity.class);
        PackageManager pm = context.getPackageManager();
        int currentState = pm.getComponentEnabledSetting(componentName);
        if (enabled) {
            if (currentState == 2) {
                pm.setComponentEnabledSetting(componentName, 1, 1);
            }
        } else if (currentState != 2) {
            pm.setComponentEnabledSetting(componentName, 2, 1);
        }
    }

    /**
     * Enable or disable the MediaButtonReceiver component.
     * /* was: 't' */
     */
    public static void setMediaButtonEnabled(/* was: 't' */ Context context, boolean enabled) {
        if (context != null) {
            ComponentName componentName = new ComponentName(context, (Class<?>) MediaButtonReceiver.class);
            PackageManager pm = context.getPackageManager();
            int currentState = pm.getComponentEnabledSetting(componentName);
            if (enabled) {
                if (currentState != 1) {
                    pm.setComponentEnabledSetting(componentName, 1, 1);
                }
            } else if (currentState != 2) {
                pm.setComponentEnabledSetting(componentName, 2, 1);
            }
            Logger.log("Util,setMediaButtonEnable: state=" + pm.getComponentEnabledSetting(componentName));
        }
    }

    /**
     * Show a loading dialog with a string resource message.
     * /* was: 'u' */
     */
    public static void showLoadingDialog(/* was: 'u' */ Context context, int msgResId) {
        if (context == null) {
            return;
        }
        LoadingDialog.Builder builder = new LoadingDialog.Builder(context);
        builder.setMessage(context.getResources().getString(msgResId));
        builder.setCancelable(true);
        builder.setCanceledOnTouchOutside(true);
        builder.build().show(true);
    }

    /**
     * Unpack two 16-bit values from a single int.
     * /* was: 'v' */
     */
    public static int[] unpackInt16(/* was: 'v' */ int packed) {
        return new int[]{packed & 65535, packed >>> 16};
    }

    /**
     * Compute MD5 hash of a string.
     * /* was: 'w' */
     */
    public static String md5String(/* was: 'w' */ String input) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(input.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b : digest) {
                int val = b & 255;
                if (val < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(val));
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return BuildConfig.FLAVOR;
        }
    }
}
