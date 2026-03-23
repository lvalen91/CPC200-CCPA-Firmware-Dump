package cn.manstep.phonemirrorBox;

import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.view.MotionEvent;
import android.view.Window;
import android.view.WindowManager;
import com.stub.StubApp;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class EmptyActivity extends k {

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent launchIntentForPackage = EmptyActivity.this.getPackageManager().getLaunchIntentForPackage(EmptyActivity.this.getPackageName());
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(268468224);
                EmptyActivity.this.startActivity(launchIntentForPackage);
            }
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    static {
        StubApp.interface11(1471);
    }

    private void n0() {
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

    @Override // cn.manstep.phonemirrorBox.k, android.app.Activity
    public void finish() {
        overridePendingTransition(2130771982, 2130771982);
        super.finish();
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // cn.manstep.phonemirrorBox.k, androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        q.g().l(this);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (4 == motionEvent.getAction()) {
            moveTaskToBack(true);
        }
        return super.onTouchEvent(motionEvent);
    }
}
