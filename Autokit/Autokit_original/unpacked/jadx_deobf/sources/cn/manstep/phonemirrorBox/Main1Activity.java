package cn.manstep.phonemirrorBox;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.ActivityC0081d;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.stub.StubApp;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Main1Activity extends ActivityC0081d {
    static {
        StubApp.interface11(1490);
    }

    /* JADX INFO: renamed from: L */
    private void m5875L() {
        Window window = getWindow();
        window.setGravity(51);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.x = 0;
        attributes.y = 0;
        attributes.height = 1;
        attributes.width = 1;
        attributes.alpha = CropImageView.DEFAULT_ASPECT_RATIO;
        window.setAttributes(attributes);
        window.setType(2003);
        window.setFlags(32, 32);
        window.setFlags(262144, 262144);
        window.setDimAmount(CropImageView.DEFAULT_ASPECT_RATIO);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:17:0x0023
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    private void init() {
        /*
            r3 = this;
            cn.manstep.phonemirrorBox.p089v0.C0995e.m7429B(r3)
            java.lang.String r0 = "Main1Activity"
            java.lang.String r1 = "init: Start AutoStartService"
            cn.manstep.phonemirrorBox.util.C0982s.m7374d(r0, r1)
            android.content.Intent r1 = new android.content.Intent
            java.lang.Class<cn.manstep.phonemirrorBox.AutoStartService> r2 = cn.manstep.phonemirrorBox.AutoStartService.class
            r1.<init>(r3, r2)
            java.lang.String r2 = "starter"
            r1.putExtra(r2, r0)
            r0 = 26
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L23
            if (r2 < r0) goto L20
            r3.startForegroundService(r1)     // Catch: java.lang.Exception -> L23
            goto L23
        L20:
            r3.startService(r1)     // Catch: java.lang.Exception -> L23
        L23:
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L3d
            if (r1 < r0) goto L32
            android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Throwable -> L3d
            java.lang.Class<cn.manstep.phonemirrorBox.service.BackgroundService> r1 = cn.manstep.phonemirrorBox.service.BackgroundService.class
            r0.<init>(r3, r1)     // Catch: java.lang.Throwable -> L3d
            r3.startForegroundService(r0)     // Catch: java.lang.Throwable -> L3d
            goto L3e
        L32:
            android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Throwable -> L3d
            java.lang.Class<cn.manstep.phonemirrorBox.service.BackgroundService> r1 = cn.manstep.phonemirrorBox.service.BackgroundService.class
            r0.<init>(r3, r1)     // Catch: java.lang.Throwable -> L3d
            r3.startService(r0)     // Catch: java.lang.Throwable -> L3d
            goto L3e
        L3d:
        L3e:
            cn.manstep.phonemirrorBox.b0 r0 = cn.manstep.phonemirrorBox.C0795b0.m6071i()
            r1 = 0
            java.lang.String r2 = "ShowFloatBall"
            boolean r0 = r0.m6093o(r2, r1)
            if (r0 == 0) goto L5d
            android.content.Intent r0 = new android.content.Intent
            android.content.Context r1 = r3.getApplicationContext()
            android.content.Context r1 = com.stub.StubApp.getOrigApplicationContext(r1)
            java.lang.Class<cn.manstep.phonemirrorBox.floatwindow.FloatWindowService> r2 = cn.manstep.phonemirrorBox.floatwindow.FloatWindowService.class
            r0.<init>(r1, r2)
            r3.startService(r0)
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.manstep.phonemirrorBox.Main1Activity.init():void");
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(2130771982, 2130771982);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        C0982s.m7383m("Main1Activity,onBackPressed!!!");
        moveTaskToBack(true);
    }

    @Override // androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onDestroy() {
        C0930q.m6906g().m6916l(this);
        C0982s.m7376f("Main1Activity", "onDestroy: ");
        finish();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onResume() {
        super.onResume();
        C0982s.m7386p("Main1Activity", "onResume: ");
    }

    @Override // androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStart() {
        super.onStart();
        C0982s.m7386p("Main1Activity", "onStart: ");
        init();
        finish();
    }

    @Override // androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStop() {
        super.onStop();
        C0982s.m7386p("Main1Activity", "onStop: ");
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C0982s.m7383m("Main1Activity,MotionEvent!!!");
        if (4 == motionEvent.getAction()) {
            moveTaskToBack(true);
        }
        finish();
        return super.onTouchEvent(motionEvent);
    }
}
