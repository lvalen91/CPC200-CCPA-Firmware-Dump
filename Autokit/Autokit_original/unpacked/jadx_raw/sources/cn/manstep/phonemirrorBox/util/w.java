package cn.manstep.phonemirrorBox.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Process;
import cn.manstep.phonemirrorBox.MainActivity;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class w {

    static class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f1932b;

        a(Context context) {
            this.f1932b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f1932b, (Class<?>) MainActivity.class);
            intent.setFlags(268468224);
            this.f1932b.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f1933b;

        b(Context context) {
            this.f1933b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f1933b, (Class<?>) MainActivity.class);
            intent.setFlags(268468224);
            this.f1933b.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    public static void a(Context context, boolean z) {
        if (z) {
            cn.manstep.phonemirrorBox.BoxInterface.d.o();
            cn.manstep.phonemirrorBox.BoxInterface.d.I();
        }
        n.f(cn.manstep.phonemirrorBox.p.e);
        n.b(context);
        n.e(context.getCacheDir());
        n.e(context.getFilesDir());
        if (Environment.getExternalStorageState().equals("mounted")) {
            n.e(context.getExternalCacheDir());
        }
        cn.manstep.phonemirrorBox.b0.i().b();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setFlags(268435456);
        intent.addCategory("android.intent.category.HOME");
        context.startActivity(intent);
        new Handler().postDelayed(new b(context), 500L);
    }

    public static void b(Context context, boolean z) {
        if (z) {
            cn.manstep.phonemirrorBox.BoxInterface.d.o();
            cn.manstep.phonemirrorBox.BoxInterface.d.I();
        }
        n.f(cn.manstep.phonemirrorBox.p.e);
        n.b(context);
        n.e(context.getCacheDir());
        n.e(context.getFilesDir());
        if (Environment.getExternalStorageState().equals("mounted")) {
            n.e(context.getExternalCacheDir());
        }
        cn.manstep.phonemirrorBox.b0.i().b();
        if (Build.VERSION.SDK_INT >= 19) {
            ((ActivityManager) context.getSystemService("activity")).clearApplicationUserData();
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setFlags(268435456);
        intent.addCategory("android.intent.category.HOME");
        context.startActivity(intent);
        new Handler().postDelayed(new a(context), 500L);
    }
}
