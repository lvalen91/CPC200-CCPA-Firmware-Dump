package cn.manstep.phonemirrorBox.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Process;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.MainActivity;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.w */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0986w {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.w$a */
    static class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Context f6156b;

        a(Context context) {
            this.f6156b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f6156b, (Class<?>) MainActivity.class);
            intent.setFlags(268468224);
            this.f6156b.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.w$b */
    static class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Context f6157b;

        b(Context context) {
            this.f6157b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(this.f6157b, (Class<?>) MainActivity.class);
            intent.setFlags(268468224);
            this.f6157b.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m7395a(Context context, boolean z) {
        if (z) {
            C0733d.m5595o();
            C0733d.m5576I();
        }
        C0977n.m7303f(C0925p.f5868e);
        C0977n.m7299b(context);
        C0977n.m7302e(context.getCacheDir());
        C0977n.m7302e(context.getFilesDir());
        if (Environment.getExternalStorageState().equals("mounted")) {
            C0977n.m7302e(context.getExternalCacheDir());
        }
        C0795b0.m6071i().m6087b();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setFlags(268435456);
        intent.addCategory("android.intent.category.HOME");
        context.startActivity(intent);
        new Handler().postDelayed(new b(context), 500L);
    }

    /* JADX INFO: renamed from: b */
    public static void m7396b(Context context, boolean z) {
        if (z) {
            C0733d.m5595o();
            C0733d.m5576I();
        }
        C0977n.m7303f(C0925p.f5868e);
        C0977n.m7299b(context);
        C0977n.m7302e(context.getCacheDir());
        C0977n.m7302e(context.getFilesDir());
        if (Environment.getExternalStorageState().equals("mounted")) {
            C0977n.m7302e(context.getExternalCacheDir());
        }
        C0795b0.m6071i().m6087b();
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
