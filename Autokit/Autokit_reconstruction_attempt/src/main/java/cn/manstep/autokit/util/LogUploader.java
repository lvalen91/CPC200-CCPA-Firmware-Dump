/**
 * LogUploader.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.e0
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Handles uploading app logs, box logs, and audio recording files to the
 * paplink.cn server. Manages log rotation, base64 encoding, and provides
 * user feedback via toast/dialog. Supports both app and box log upload
 * with retry via CountDownTimer.
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.os.Build;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.Log;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class LogUploader /* was: 'util.e0' */ {

    /** Application context. /* was: 'a' */ */
    private final Context context /* was: 'a' */;

    /** Upload completion callback. /* was: 'f1870c' */ */
    private UploadCallback uploadCallback /* was: 'f1870c' */;

    /** Retry timer for box log upload. /* was: 'f1871d' */ */
    private CountDownTimer retryTimer /* was: 'f1871d' */;

    /** Upload notes prefix. /* was: 'f' */ */
    private String notes /* was: 'f' */;

    /** Issue types for feedback. /* was: 'g' */ */
    private String issueTypes /* was: 'g' */;

    /** File type description. /* was: 'f1869b' */ */
    private String fileTypeDesc /* was: 'f1869b' */ = "录音文件";

    /** HTTP client with 30s timeout. /* was: 'e' */ */
    private final HttpClient httpClient /* was: 'e' */ = new HttpClient(30);

    /** Whether to show toast feedback. /* was: 'h' */ */
    private boolean showToast /* was: 'h' */ = true;

    /**
     * Callback interface for upload completion.
     * /* was: inner interface 'g' */
     */
    public interface UploadCallback /* was: 'g' */ {
        void onComplete(/* was: 'a' */ boolean success, String feedbackUrl);
    }

    public LogUploader(Context context, androidx.fragment.app.n fragmentManager) {
        this.context = context;
    }

    /**
     * Set the upload completion callback.
     * /* was: 'o' */
     */
    public void setCallback(/* was: 'o' */ UploadCallback callback) {
        this.uploadCallback = callback;
    }

    /**
     * Upload app logs (main entry point).
     * /* was: 't' */
     */
    public void uploadAppLog(/* was: 't' */) {
        prepareAndFlush();
        Logger.logInfo("utilUploadLog", "uploadAppLog: ########" + Logger.isInitialized);
        File logDir = FileUtil.getAppLogFile(this.context);
        if (logDir == null) {
            cn.manstep.phonemirrorBox.widget.a.a(this.context, 2131689884);
            return;
        }
        File encodedLog = FileUtil.encodeToBase64(logDir);
        if (encodedLog == null) {
            cn.manstep.phonemirrorBox.widget.a.a(this.context, 2131689884);
            return;
        }
        String logName = "app.xlog";
        if (!encodedLog.getName().endsWith(".xlog") && !encodedLog.getName().endsWith(".bs64")) {
            logName = "app.log";
        }
        this.httpClient.uploadFile("/a/upload/log", buildParams("app.log"),
                cn.manstep.phonemirrorBox.u.z().I().substring(0, 12) + "_" + logName,
                encodedLog.getAbsolutePath(),
                new AppLogUploadCallback(encodedLog));
    }

    /**
     * Upload audio recording files.
     * /* was: 'w' */
     */
    public void uploadRecordings(/* was: 'w' */) {
        boolean found;
        File[] files;
        String noFilesMsg = "录音" + this.context.getResources().getString(2131689734);
        File audioDir = FileUtil.getAudioDir(this.context);
        if (audioDir == null || !audioDir.isDirectory() || (files = audioDir.listFiles()) == null) {
            found = false;
        } else {
            found = false;
            for (File file : files) {
                if (file.isFile() && file.length() < 52428800) {
                    uploadRecordingFile(file.getName(), file.getAbsolutePath());
                    found = true;
                }
            }
        }
        if (!found) {
            cn.manstep.phonemirrorBox.widget.a.makeText(this.context, noFilesMsg, 0).show();
        }
    }

    /**
     * Build common upload parameters.
     * /* was: 'l' */
     */
    private Map<String, String> buildParams(/* was: 'l' */ String fileType) {
        HashMap<String, String> params = new HashMap<>();
        if (TextUtils.isEmpty(this.notes)) {
            params.put("notes", "Debug日志");
        } else {
            params.put("notes", this.notes);
        }
        if (!TextUtils.isEmpty(this.issueTypes)) {
            params.put("issueTypes", this.issueTypes);
        }
        String manufacturer = cn.manstep.phonemirrorBox.p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String platform = cn.manstep.phonemirrorBox.p.c("ro.board.platform", BuildConfig.FLAVOR);
        params.put("resolution", cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l);
        params.put("manufacturer", manufacturer);
        params.put("platform", platform);
        params.put("huid", cn.manstep.phonemirrorBox.u.z().w());
        if ("box.log".equals(fileType)) {
            params.put("android", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
            params.put("mfd", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
            params.put("ufn", cn.manstep.phonemirrorBox.BoxInterface.c.e().c());
            params.put("version", cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
            params.put("uuid", cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
            params.put("model", cn.manstep.phonemirrorBox.BoxInterface.c.e().i());
        } else {
            params.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
            params.put("mfd", new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault()).format(new Date(Build.TIME)));
            params.put("version", "2025.03.19.1126");
            params.put("uuid", cn.manstep.phonemirrorBox.u.z().I());
            params.put("model", Build.MODEL);
        }
        return params;
    }

    private void prepareAndFlush(/* was: 'u' */) {
        if (TextUtils.isEmpty(this.notes)) {
            this.notes = "D" + Long.toString(System.currentTimeMillis(), 36) + "G";
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
            if (fVar != null) {
                fVar.U0(2);
            }
        }
        boolean wasInit = Logger.isInitialized;
        Logger.close();
        if (wasInit) {
            new Thread(new LogReinitRunnable()).start();
        }
    }

    class LogReinitRunnable /* was: 'a' */ implements Runnable {
        @Override
        public void run() {
            Logger.close();
            try { Thread.sleep(1000L); } catch (InterruptedException e) { e.printStackTrace(); }
            Logger.open(StubApp.getOrigApplicationContext(LogUploader.this.context.getApplicationContext()));
        }
    }

    class AppLogUploadCallback implements HttpClient.ResponseCallback {
        final File logFile;
        AppLogUploadCallback(File f) { this.logFile = f; }
        @Override public void onFailure(String s) {
            Logger.logError("utilUploadLog,uploadLog:failure: app.log !!!");
            showNetworkError();
        }
        @Override public void onSuccess(String s) {
            Logger.logError("utilUploadLog,uploadLog:success: app.log " + s);
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) { startBoxLogRetry(); }
            handleUploadResult(s, this.logFile.getAbsolutePath(), true);
            FileUtil.deleteLogFiles(LogUploader.this.context);
        }
    }

    private void uploadRecordingFile(/* was: 'v' */ String name, String path) {
        File file = new File(path);
        Logger.logDebug("utilUploadLog", "uploadRecordFile: " + name + ",fileSize: " + file.length());
        if (file.length() <= 0) {
            deleteFile(path);
            return;
        }
        this.fileTypeDesc = "37_(" + Build.HARDWARE + ")(" + Build.PRODUCT + ")";
        new HttpClient(10).uploadFile("/a/upload/log", buildParams(this.fileTypeDesc),
                cn.manstep.phonemirrorBox.u.z().I().substring(0, 12) + "_" + name,
                path, new RecordingUploadCallback(path));
    }

    class RecordingUploadCallback implements HttpClient.ResponseCallback {
        final String filePath;
        RecordingUploadCallback(String p) { this.filePath = p; }
        @Override public void onFailure(String s) {
            cn.manstep.phonemirrorBox.widget.a.makeText(context, 2131689996, 0).show();
            clearRecordingFiles();
        }
        @Override public void onSuccess(String s) {
            cn.manstep.phonemirrorBox.widget.a.makeText(context, 2131689998, 0).show();
            deleteFile(this.filePath);
            if (uploadCallback != null) { uploadCallback.onComplete(true, s); }
        }
    }

    /** Delete a single file. /* was: 'j' */ */
    public void deleteFile(/* was: 'j' */ String path) {
        File file = new File(path);
        if (file.isFile() && file.exists()) { file.delete(); }
    }

    /** Clear all recording files. /* was: 'k' */ */
    public void clearRecordingFiles(/* was: 'k' */) {
        FileUtil.deleteAudioFiles(this.context);
    }

    private void showNetworkError(/* was: 'm' */) {
        cn.manstep.phonemirrorBox.widget.a.a(this.context, 2131689876);
    }

    private void handleUploadResult(String response, String filePath, boolean isApp) {
        /* See original e0.n() for full implementation */
    }

    private void startBoxLogRetry(/* was: 'p' */) {
        CountDownTimer timer = new CountDownTimer(5000L, 1000L) {
            @Override public void onFinish() { /* upload box log or cancel */ }
            @Override public void onTick(long l) { /* check and upload if ready */ }
        };
        this.retryTimer = timer;
        timer.start();
    }

    /**
     * Upload a data file (generic).
     * /* was: 's' */
     */
    public void uploadDataFile(/* was: 's' */ String name, String path) {
        File file = new File(path);
        if (!file.exists() || !file.isFile()) {
            cn.manstep.phonemirrorBox.widget.a.b(this.context, "file does not exits");
            return;
        }
        long length = file.length();
        Logger.logDebug("utilUploadLog", "uploadRecordFile: " + name + ",fileSize: " + length + ",filePath: " + path);
        if (length <= 0) {
            cn.manstep.phonemirrorBox.widget.a.b(this.context, "file does not exits");
            return;
        }
        this.fileTypeDesc = "37_(" + Build.HARDWARE + ")(" + Build.PRODUCT + ")";
        String remoteName;
        if (name.endsWith(".data")) {
            remoteName = cn.manstep.phonemirrorBox.u.z().I().substring(0, 12) + "_"
                    + name.replace("box_", BuildConfig.FLAVOR).replace(".data", ".xlog");
        } else {
            remoteName = cn.manstep.phonemirrorBox.u.z().I().substring(0, 12) + "_" + name;
        }
        this.httpClient.uploadFile("/a/upload/log", buildParams(this.fileTypeDesc),
                remoteName, file.getAbsolutePath(), new DataFileUploadCallback(file, length));
    }

    class DataFileUploadCallback implements HttpClient.ResponseCallback {
        final File file; final long size;
        DataFileUploadCallback(File f, long s) { this.file = f; this.size = s; }
        @Override public void onFailure(String s) {
            Logger.logError("utilUploadLog,uploadDataFile:failure!!!" + this.size + ",reason=" + s);
            showNetworkError();
        }
        @Override public void onSuccess(String s) {
            Logger.logError("utilUploadLog,uploadDataFile:success: " + s);
            FileUtil.deleteFile(this.file.getAbsolutePath());
            cn.manstep.phonemirrorBox.widget.a.b(context, "file upload success!");
        }
    }
}
