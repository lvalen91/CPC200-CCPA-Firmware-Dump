/**
 * NetworkUtil.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.f
 *
 * Connectivity and context utility methods: checking running tasks,
 * activity existence, cross-app connection state, component enable/disable,
 * launching activities by class name, and bringing MainActivity to front.
 */
package cn.manstep.autokit.util;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import cn.manstep.phonemirrorBox.MainActivity;
import com.stub.StubApp;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class NetworkUtil /* was: 'f' */ {

    /**
     * Get the package name of the top running activity.
     * /* was: 'a' */
     */
    public static String getTopPackageName(/* was: 'a' */ Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks =
                ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        return runningTasks.get(0).topActivity.getPackageName();
    }

    /**
     * Check whether a specific activity component exists.
     * /* was: 'b' */
     */
    public static boolean isActivityExists(/* was: 'b' */ Context context, String packageName, String className) {
        if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(className)) {
            try {
                ActivityInfo activityInfo = context.getPackageManager()
                        .getActivityInfo(new ComponentName(packageName, className), 128);
                Logger.logInfo("ContextUtil", "isExistsActivity: " + activityInfo.toString());
                Logger.logInfo("ContextUtil", "isExistsActivity: " + activityInfo.permission);
                return true;
            } catch (Exception unused) {
                Logger.logDebug("ContextUtil",
                        "isExistsActivity: " + packageName + "/" + className + " ActivityNotFound");
            }
        }
        return false;
    }

    /**
     * Check if another AutoKit instance is connected via content provider.
     * /* was: 'c' */
     */
    public static boolean isOtherConnected(/* was: 'c' */ Context context) {
        List<ResolveInfo> receivers = context.getPackageManager()
                .queryBroadcastReceivers(new Intent("cn.manstep.phonemirrorBox.AUTO_BOX_WEAK"), 0);
        ContentResolver resolver = context.getContentResolver();
        Iterator<ResolveInfo> it = receivers.iterator();
        while (it.hasNext()) {
            String pkgName = it.next().activityInfo.packageName;
            if (!context.getPackageName().equals(pkgName)) {
                Logger.logDebug("ContextUtil", "isOtherConnected: " + pkgName);
                try {
                    Cursor cursor = resolver.query(
                            Uri.parse(String.format(Locale.getDefault(),
                                    "content://%s.myfileprovider/box", pkgName)),
                            null, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                String data = cursor.getString(cursor.getColumnIndex("data"));
                                Logger.logWarnTagged("ContextUtil", "isOtherConnected: " + data);
                                boolean isConnected = "1".equals(data);
                                if (cursor != null) {
                                    cursor.close();
                                }
                                return isConnected;
                            }
                        } finally {
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    /**
     * Enable or disable a component.
     * /* was: 'd' */
     */
    public static void setComponentEnabled(/* was: 'd' */ Context context, Class<?> cls, boolean enabled) {
        ComponentName componentName = new ComponentName(
                StubApp.getOrigApplicationContext(context.getApplicationContext()), cls);
        PackageManager pm = StubApp.getOrigApplicationContext(context.getApplicationContext()).getPackageManager();
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
     * Launch an activity by package name and class name.
     * /* was: 'e' */
     */
    public static void launchActivity(/* was: 'e' */ Context context, String packageName, String className) {
        Intent intent = new Intent();
        intent.setClassName(packageName, className);
        intent.setFlags(270532608);
        context.startActivity(intent);
    }

    /**
     * Start or bring MainActivity to front.
     * /* was: 'f' */
     */
    public static void startMainActivity(/* was: 'f' */ Context context, Bundle extras) {
        String topName = getTopPackageName(context);
        Logger.logDebug("ContextUtil", "startMainActivity: topName=" + topName + ", context=" + context);
        if (cn.manstep.phonemirrorBox.q.g().h() != null
                && cn.manstep.phonemirrorBox.q.g().h().hasWindowFocus()) {
            Logger.logWarnTagged("ContextUtil", "startMainActivity: isVisible");
            return;
        }
        if ("com.hozonauto.avm".equals(topName)) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.setFlags(268435456);
        if (extras != null) {
            intent.putExtras(extras);
        }
        ActivityManager am = (ActivityManager) context.getSystemService("activity");
        Iterator<ActivityManager.RunningTaskInfo> it = am.getRunningTasks(20).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ActivityManager.RunningTaskInfo taskInfo = it.next();
            String packageName = taskInfo.topActivity.getPackageName();
            Logger.logInfo("ContextUtil", "startMainActivity: " + packageName);
            if (packageName.equals(context.getPackageName())) {
                Logger.logDebug("ContextUtil", "startMainActivity: moveTaskToFront");
                am.moveTaskToFront(taskInfo.id, 1);
                break;
            }
        }
        context.startActivity(intent);
    }
}
