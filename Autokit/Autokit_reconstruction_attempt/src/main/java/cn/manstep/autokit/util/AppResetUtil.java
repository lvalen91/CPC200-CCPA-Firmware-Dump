/**
 * AppResetUtil.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.w
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Utility for resetting and restarting the application. Provides two modes:
 * - restart: clears caches and logs, then restarts MainActivity
 * - factoryReset: additionally clears app user data (API 19+)
 *
 * Both methods optionally disconnect the box, delete all cached files,
 * and relaunch via a delayed Handler post.
 */
package cn.manstep.autokit.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Process;
import cn.manstep.phonemirrorBox.MainActivity;

public class AppResetUtil /* was: 'util.w' */ {

    /**
     * Restart runnable (post-delay).
     * /* was: inner class 'a' */
     */
    static class RestartRunnable /* was: 'a' */ implements Runnable {
        final Context context /* was: 'f1932b' */;

        RestartRunnable(Context ctx) { this.context = ctx; }

        @Override
        public void run() {
            Intent intent = new Intent(this.context, (Class<?>) MainActivity.class);
            intent.setFlags(268468224);
            this.context.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    /**
     * Factory reset runnable (post-delay).
     * /* was: inner class 'b' */
     */
    static class FactoryResetRunnable /* was: 'b' */ implements Runnable {
        final Context context /* was: 'f1933b' */;

        FactoryResetRunnable(Context ctx) { this.context = ctx; }

        @Override
        public void run() {
            Intent intent = new Intent(this.context, (Class<?>) MainActivity.class);
            intent.setFlags(268468224);
            this.context.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    /**
     * Restart the app, optionally disconnecting the box first.
     * /* was: 'a' */
     */
    public static void restart(/* was: 'a' */ Context context, boolean disconnectBox) {
        if (disconnectBox) {
            cn.manstep.phonemirrorBox.BoxInterface.d.o();
            cn.manstep.phonemirrorBox.BoxInterface.d.I();
        }
        FileUtil.deleteFile(cn.manstep.phonemirrorBox.p.e);
        FileUtil.deleteLogFiles(context);
        FileUtil.deleteRecursive(context.getCacheDir());
        FileUtil.deleteRecursive(context.getFilesDir());
        if (Environment.getExternalStorageState().equals("mounted")) {
            FileUtil.deleteRecursive(context.getExternalCacheDir());
        }
        cn.manstep.phonemirrorBox.b0.i().b();
        Intent homeIntent = new Intent("android.intent.action.MAIN");
        homeIntent.setFlags(268435456);
        homeIntent.addCategory("android.intent.category.HOME");
        context.startActivity(homeIntent);
        new Handler().postDelayed(new FactoryResetRunnable(context), 500L);
    }

    /**
     * Factory reset: clear all user data and restart.
     * /* was: 'b' */
     */
    public static void factoryReset(/* was: 'b' */ Context context, boolean disconnectBox) {
        if (disconnectBox) {
            cn.manstep.phonemirrorBox.BoxInterface.d.o();
            cn.manstep.phonemirrorBox.BoxInterface.d.I();
        }
        FileUtil.deleteFile(cn.manstep.phonemirrorBox.p.e);
        FileUtil.deleteLogFiles(context);
        FileUtil.deleteRecursive(context.getCacheDir());
        FileUtil.deleteRecursive(context.getFilesDir());
        if (Environment.getExternalStorageState().equals("mounted")) {
            FileUtil.deleteRecursive(context.getExternalCacheDir());
        }
        cn.manstep.phonemirrorBox.b0.i().b();
        if (Build.VERSION.SDK_INT >= 19) {
            ((ActivityManager) context.getSystemService("activity")).clearApplicationUserData();
        }
        Intent homeIntent = new Intent("android.intent.action.MAIN");
        homeIntent.setFlags(268435456);
        homeIntent.addCategory("android.intent.category.HOME");
        context.startActivity(homeIntent);
        new Handler().postDelayed(new RestartRunnable(context), 500L);
    }
}
