/**
 * UpdateVersionUi.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.d0
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * UI-driven update version checker. Checks for both app APK and box firmware
 * updates via the paplink.cn API, shows update dialogs to the user, and
 * handles the download + install flow with progress UI.
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Properties;
import org.json.JSONObject;

public class UpdateVersionUi /* was: 'util.d0' */ {

    /** Application context. /* was: 'a' */ */
    private Context context /* was: 'a' */;

    /** Latest box version string. /* was: 'f1859b' */ */
    private String latestBoxVersion /* was: 'f1859b' */ = BuildConfig.FLAVOR;

    /** Fragment manager reference. /* was: 'f1860c' */ */
    private androidx.fragment.app.n fragmentManager /* was: 'f1860c' */;

    /* Inner classes omitted for brevity — they handle HTTP callbacks,
     * download progress, dialog button clicks, and APK installation.
     * See original cn.manstep.phonemirrorBox.util.d0 for full implementation. */

    public UpdateVersionUi(Context context, androidx.fragment.app.n fragmentManager) {
        new LinkedList();
        this.fragmentManager = fragmentManager;
        this.context = context;
    }

    /**
     * Check for app updates via API.
     * /* was: 'i' */
     */
    public void checkAppUpdate(/* was: 'i' */) {
        HashMap<String, String> params = new HashMap<>(7);
        params.put("lang", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.x.c());
        params.put("code", "37");
        params.put("ver", "2025.03.19.1126");
        params.put("uuid", cn.manstep.phonemirrorBox.u.z().I());
        params.put("r", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l);
        params.put("m", Build.MODEL);
        params.put("pkg", this.context.getPackageName());
        new HttpClient().postForm("/a/upgrade/checkApp", params, new AppCheckCallback());
    }

    /**
     * Check for box firmware updates via API.
     * /* was: 'j' */
     */
    public void checkBoxUpdate(/* was: 'j' */) {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            HashMap<String, String> params = new HashMap<>(8);
            params.put("lang", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.x.c());
            params.put("code", "37");
            params.put("appVer", "2025.03.19.1126");
            params.put("ver", cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
            params.put("uuid", cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
            params.put("mfd", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
            params.put("fwn", cn.manstep.phonemirrorBox.BoxInterface.c.e().c());
            params.put("model", cn.manstep.phonemirrorBox.BoxInterface.c.e().i());
            new HttpClient().postForm("/a/upgrade/checkBox", params, new BoxCheckCallback());
        }
    }

    /* Stub inner class references for compilation context */
    class AppCheckCallback implements HttpClient.ResponseCallback {
        @Override public void onFailure(String s) { showNetworkError(); }
        @Override public void onSuccess(String s) {
            Logger.log("utilUpdateVersion,success,checkAppUpdate: " + s);
            if (!cn.manstep.phonemirrorBox.p.z) { parseAppUpdateResponse(s); }
        }
    }

    class BoxCheckCallback implements HttpClient.ResponseCallback {
        @Override public void onFailure(String s) { showNetworkError(); }
        @Override public void onSuccess(String s) {
            Logger.log("utilUpdateVersion,checkBoxUpdate->success: " + s);
            parseBoxUpdateResponse(s);
        }
    }

    private void parseAppUpdateResponse(/* was: 'f' */ String response) {
        try {
            JSONObject json = new JSONObject(response);
            HttpClient.token = json.getString("token");
            String version = json.getString("ver");
            if (version.compareTo("2025.03.19.1126") <= 0
                    || version.compareTo(cn.manstep.phonemirrorBox.b0.i().n("AppLatestVer", BuildConfig.FLAVOR)) == 0) {
                return;
            }
            int forced = json.has("forced") ? json.getInt("forced") : 0;
            if (json.has("cku") && json.getInt("cku") == 0) {
                cn.manstep.phonemirrorBox.p.B = false;
            }
            String notes = json.getString("notes");
            String id = json.getString("id");
            String size = json.getString("size");
            if (forced != 0) {
                File dir = new File("/sdcard", "bluetooth");
                if ((dir.exists() && dir.isDirectory()) || dir.mkdir()) {
                    try {
                        FileOutputStream fos = new FileOutputStream(new File(dir, ".car"));
                        Properties props = new Properties();
                        props.setProperty("av", version);
                        props.setProperty("afs", size);
                        props.setProperty("arn", notes);
                        props.setProperty("am5", id);
                        props.setProperty("aui", String.valueOf(37));
                        props.store(fos, BuildConfig.FLAVOR);
                        props.clear();
                        fos.close();
                    } catch (Error | Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            showUpdateDialog(forced, version, notes, size, id);
        } catch (Exception e) {
            Logger.logError("utilUpdateVersion,getUpdateInfo: \n" + Log.getStackTraceString(e));
        }
    }

    private void parseBoxUpdateResponse(/* was: 'g' */ String response) {
        try {
            JSONObject json = new JSONObject(response);
            HttpClient.token = json.getString("token");
            String version = json.getString("ver");
            Logger.log("utilUpdateVersion,checkBoxVer: new:" + version
                    + ", old:" + cn.manstep.phonemirrorBox.BoxInterface.c.e().p()
                    + ",ver.compareTo " + version.compareTo(cn.manstep.phonemirrorBox.BoxInterface.c.e().p()));
            if (version.compareTo(cn.manstep.phonemirrorBox.BoxInterface.c.e().p()) > 0) {
                json.getString("id");
                if (!TextUtils.isEmpty(version)) {
                    Logger.logError("utilUpdateVersion,mBoxNewVer: ");
                    this.latestBoxVersion = version;
                }
            }
        } catch (Exception e) {
            Logger.logError("utilUpdateVersion,checkBoxVerError: \n" + Log.getStackTraceString(e));
        }
        if (!cn.manstep.phonemirrorBox.b0.i().n("BoxLatestVer", BuildConfig.FLAVOR).equals(this.latestBoxVersion)
                && cn.manstep.phonemirrorBox.BoxInterface.d.i() && TextUtils.isEmpty(this.latestBoxVersion)) {
            cn.manstep.phonemirrorBox.b0.i().F("BoxLatestVer", this.latestBoxVersion);
        }
    }

    private void showNetworkError(/* was: 'h' */) {
        cn.manstep.phonemirrorBox.widget.a.a(this.context, 2131689876);
    }

    private void showUpdateDialog(int forced, String version, String notes, String size, String id) {
        /* Dialog construction omitted — see original d0.k() */
    }
}
