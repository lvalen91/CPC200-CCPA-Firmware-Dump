/**
 * UpdateChecker.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.b0
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Singleton OTA update checker for both app APK and box firmware updates.
 * Contacts the paplink.cn API to check for new versions, compares version
 * strings, and manages download paths. Uses Debouncer for throttling.
 */
package cn.manstep.autokit.util;

import android.os.Build;
import cn.manstep.phonemirrorBox.MyApplication;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class UpdateChecker /* was: 'util.b0' */ {

    /** Common request parameters. /* was: 'a' */ */
    private final Map<String, String> commonParams /* was: 'a' */;

    /** Debouncer for box update checks. /* was: 'f1848b' */ */
    private final Debouncer debouncer /* was: 'f1848b' */;

    /** Server-provided auth token. /* was: 'f1849c' */ */
    private String token /* was: 'f1849c' */;

    /** Latest app version from server. /* was: 'f1850d' */ */
    private String latestAppVersion /* was: 'f1850d' */;

    /** Latest app file ID. /* was: 'e' */ */
    private String appFileId /* was: 'e' */;

    /** Latest box firmware version. /* was: 'f' */ */
    private String latestBoxVersion /* was: 'f' */;

    /** Latest box firmware file ID. /* was: 'g' */ */
    private String boxFileId /* was: 'g' */;

    /** Downloaded app APK path. /* was: 'h' */ */
    private String appDownloadPath /* was: 'h' */;

    /** Downloaded box firmware path. /* was: 'i' */ */
    private String boxDownloadPath /* was: 'i' */;

    /**
     * Callback for app version check results.
     * /* was: inner class 'a' */
     */
    class AppCheckCallback /* was: 'a' */ implements HttpClient.ResponseCallback {
        final UpdateCallback callback /* was: 'a' */;

        AppCheckCallback(UpdateCallback cb) {
            this.callback = cb;
        }

        @Override
        public void onFailure(/* was: 'b' */ String error) {
            Logger.log("checkApp->failure");
            UpdateCallback cb = this.callback;
            if (cb != null) {
                cb.onResult(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -400L, BuildConfig.FLAVOR, false);
            }
        }

        @Override
        public void onSuccess(/* was: 'c' */ String response) {
            Logger.log("checkApp->success: " + response);
            try {
                JSONObject json = new JSONObject(response);
                if (json.getInt("err") == 0) {
                    UpdateChecker.this.token = json.getString("token");
                    String version = json.getString("ver");
                    String notes = json.getString("notes");
                    String id = json.getString("id");
                    long size = Long.parseLong(json.getString("size"));
                    int forced = json.getInt("forced");
                    UpdateChecker.this.appFileId = id;
                    UpdateChecker.this.latestAppVersion = version;
                    if (this.callback != null) {
                        if ("2025.03.19.1126".compareTo(version) < 0) {
                            this.callback.onResult(version, id, size, notes, forced == 1);
                        } else {
                            this.callback.onResult(version, BuildConfig.FLAVOR, -200L, notes, false);
                        }
                    }
                } else if (this.callback != null) {
                    this.callback.onResult(BuildConfig.FLAVOR, BuildConfig.FLAVOR,
                            json.getInt("err") * (-1), BuildConfig.FLAVOR, false);
                }
                if (json.has("cku")) {
                    cn.manstep.phonemirrorBox.p.B = json.getInt("cku") == 0;
                }
            } catch (Exception e) {
                Logger.logError("checkApp->success: \n" + Logger.getStackTrace(e));
                UpdateCallback cb = this.callback;
                if (cb != null) {
                    cb.onResult(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -500L, e.getMessage(), false);
                }
            }
        }
    }

    /**
     * Callback for box firmware check results.
     * /* was: inner class 'b' */
     */
    class BoxCheckCallback /* was: 'b' */ implements HttpClient.ResponseCallback {
        final UpdateCallback callback /* was: 'a' */;

        BoxCheckCallback(UpdateCallback cb) {
            this.callback = cb;
        }

        @Override
        public void onFailure(String error) {
            UpdateCallback cb = this.callback;
            if (cb != null) {
                cb.onResult(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -400L, BuildConfig.FLAVOR, false);
            }
        }

        @Override
        public void onSuccess(String response) {
            Logger.log("checkBox->success: " + response);
            try {
                JSONObject json = new JSONObject(response);
                if (json.getInt("err") == 0) {
                    UpdateChecker.this.token = json.getString("token");
                    String version = json.getString("ver");
                    String notes = json.getString("notes");
                    String id = json.getString("id");
                    long size = Long.parseLong(json.getString("size"));
                    int forced = json.getInt("forced");
                    UpdateChecker.this.boxFileId = id;
                    UpdateChecker.this.latestBoxVersion = version;
                    if (this.callback != null) {
                        if (cn.manstep.phonemirrorBox.BoxInterface.c.e().p().compareTo(version) < 0) {
                            this.callback.onResult(version, id, size, notes, forced == 1);
                        } else {
                            this.callback.onResult(version, BuildConfig.FLAVOR, -200L, notes, false);
                        }
                    }
                } else if (this.callback != null) {
                    this.callback.onResult(BuildConfig.FLAVOR, BuildConfig.FLAVOR,
                            json.getInt("err") * (-1), BuildConfig.FLAVOR, false);
                }
            } catch (Exception e) {
                Logger.logError("checkApp->success: \n" + Logger.getStackTrace(e));
                UpdateCallback cb = this.callback;
                if (cb != null) {
                    cb.onResult(BuildConfig.FLAVOR, BuildConfig.FLAVOR, -500L, e.getMessage(), false);
                }
            }
        }
    }

    /**
     * Debounced box check runnable.
     * /* was: inner class 'c' */
     */
    class DebouncedBoxCheck /* was: 'c' */ implements Runnable {
        final UpdateCallback callback /* was: 'f1853b' */;

        DebouncedBoxCheck(UpdateCallback cb) {
            this.callback = cb;
        }

        @Override
        public void run() {
            UpdateChecker.this.checkBoxInternal(this.callback);
        }
    }

    /**
     * Update result callback interface.
     * /* was: inner interface 'd' */
     */
    public interface UpdateCallback /* was: 'd' */ {
        void onResult(/* was: 'a' */ String version, String fileId, long size,
                       String notes, boolean forced);
    }

    /** Singleton holder. /* was: inner class 'e' */ */
    private static class Holder /* was: 'e' */ {
        private static final UpdateChecker INSTANCE = new UpdateChecker(null);
    }

    /* synthetic */ UpdateChecker(AppCheckCallback unused) {
        this();
    }

    /**
     * Check box firmware update (internal, called via debouncer).
     * /* was: 'i' */
     */
    /* package */ void checkBoxInternal(/* was: 'i' */ UpdateCallback callback) {
        ConcurrentHashMap<String, String> params = new ConcurrentHashMap<>();
        params.put("lang", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.x.c());
        params.put("appVer", "2025.03.19.1126");
        params.put("ver", cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
        params.put("uuid", cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
        params.put("mfd", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
        params.put("fwn", cn.manstep.phonemirrorBox.BoxInterface.c.e().c());
        params.put("model", cn.manstep.phonemirrorBox.BoxInterface.c.e().i());
        params.putAll(this.commonParams);
        new HttpClient().postForm("/a/upgrade/checkBox", params, new BoxCheckCallback(callback));
    }

    /** Get the singleton instance. /* was: 'm' */ */
    public static UpdateChecker getInstance(/* was: 'm' */) {
        return Holder.INSTANCE;
    }

    /**
     * Check for app update.
     * /* was: 'g' */
     */
    public void checkAppUpdate(/* was: 'g' */ UpdateCallback callback) {
        ConcurrentHashMap<String, String> params = new ConcurrentHashMap<>();
        params.put("lang", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.x.c());
        params.put("ver", "2025.03.19.1126");
        params.put("uuid", cn.manstep.phonemirrorBox.u.z().I());
        params.put("r", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l);
        params.put("pkg", MyApplication.b().getPackageName());
        params.putAll(this.commonParams);
        new HttpClient().postForm("/a/upgrade/checkApp", params, new AppCheckCallback(callback));
    }

    /**
     * Debounced box firmware check.
     * /* was: 'h' */
     */
    public void checkBoxUpdate(/* was: 'h' */ UpdateCallback callback) {
        this.debouncer.execute(0, new DebouncedBoxCheck(callback));
    }

    /**
     * Download an update (app or box firmware).
     * /* was: 'j' */
     *
     * @param isApp true for app APK, false for box firmware
     * @param downloadCallback download progress/completion callback
     */
    public void download(/* was: 'j' */ boolean isApp, HttpClient.DownloadCallback downloadCallback) {
        ConcurrentHashMap<String, String> params = new ConcurrentHashMap<>(2);
        HttpClient http = new HttpClient(20);
        if (isApp) {
            params.put("ver", this.latestAppVersion);
            params.put("id", this.appFileId);
            this.appDownloadPath = FileUtil.getTmpPath(MyApplication.b()) + "/app.apk";
            File file = new File(this.appDownloadPath);
            if (file.exists() && file.isFile()
                    && CryptoUtil.md5File(file).equals(this.appFileId) && downloadCallback != null) {
                downloadCallback.onComplete(this.appFileId);
                return;
            } else {
                http.download("/a/upgrade/down", params, this.appDownloadPath, downloadCallback);
                return;
            }
        }
        params.put("ver", this.latestBoxVersion);
        params.put("id", this.boxFileId);
        this.boxDownloadPath = FileUtil.getTmpPath(MyApplication.b()) + "/Auto_Box_Update.img";
        File file2 = new File(this.boxDownloadPath);
        if (file2.exists() && file2.isFile()
                && CryptoUtil.md5File(file2).equals(this.boxFileId) && downloadCallback != null) {
            downloadCallback.onComplete(this.boxFileId);
        } else {
            http.download("/a/upgrade/down", params, this.boxDownloadPath, downloadCallback);
        }
    }

    /** Get the app download path. /* was: 'k' */ */
    public String getAppDownloadPath(/* was: 'k' */) {
        return this.appDownloadPath;
    }

    /** Get the box download path. /* was: 'l' */ */
    public String getBoxDownloadPath(/* was: 'l' */) {
        return this.boxDownloadPath;
    }

    private UpdateChecker() {
        this.latestAppVersion = BuildConfig.FLAVOR;
        this.appFileId = BuildConfig.FLAVOR;
        this.latestBoxVersion = BuildConfig.FLAVOR;
        this.boxFileId = BuildConfig.FLAVOR;
        this.debouncer = new Debouncer(1000L);
        ConcurrentHashMap<String, String> params = new ConcurrentHashMap<>();
        this.commonParams = params;
        params.put("code", "37");
        this.commonParams.put("m", Build.MODEL);
        this.commonParams.put("manufc", Build.MANUFACTURER);
        this.commonParams.put("prod", Build.PRODUCT);
        this.commonParams.put("brand", Build.BRAND);
        this.commonParams.put("id", Build.ID);
        this.commonParams.put("huid", cn.manstep.phonemirrorBox.u.z().w());
        this.commonParams.put("csn", cn.manstep.phonemirrorBox.s0.a.b(MyApplication.b()));
    }
}
