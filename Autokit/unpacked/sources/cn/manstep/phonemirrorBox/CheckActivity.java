package cn.manstep.phonemirrorBox;

import android.content.Intent;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.ActivityC0081d;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0987x;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class CheckActivity extends ActivityC0081d {

    /* JADX INFO: renamed from: b */
    private View f4559b;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.CheckActivity$a */
    class RunnableC0740a implements Runnable {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.CheckActivity$a$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                int width = CheckActivity.this.f4559b.getWidth();
                int height = CheckActivity.this.f4559b.getHeight();
                if (C0797c0.m6113m().m7398j(width, height)) {
                    z = false;
                } else {
                    z = true;
                    if (!C0925p.f5876m) {
                        C0797c0.m6109i().m6120o(width, height);
                        if (C0733d.m5591i()) {
                            C0733d.f4428l.m5742q0();
                        }
                    }
                }
                C0987x c0987xM6116t = C0797c0.m6116t();
                if (C0733d.m5572E()) {
                    C0733d.f4428l.m5718d0(c0987xM6116t.f6158b, c0987xM6116t.f6159c);
                }
                Intent intent = new Intent();
                intent.putExtra("MaxSize", C0797c0.m6113m());
                intent.putExtra("ReAddSettingsFragment", z);
                CheckActivity.this.setResult(-1, intent);
                CheckActivity.this.finish();
                CheckActivity.this.overridePendingTransition(2130771982, 2130771982);
            }
        }

        RunnableC0740a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Point point = new Point();
            Point point2 = new Point();
            CheckActivity.this.getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
            C0982s.m7378h("CheckActivity,availableSize: CurrentSizeRange: " + point + "," + point2);
            C0982s.m7373c("CheckActivity,availableSize:A -> View.getWidth()xView.getHeight()=" + CheckActivity.this.f4559b.getWidth() + "x" + CheckActivity.this.f4559b.getHeight());
            new Handler().postDelayed(new a(), 800L);
        }
    }

    static {
        StubApp.interface11(1468);
    }

    /* JADX INFO: renamed from: M */
    private void m5831M() {
        this.f4559b.post(new RunnableC0740a());
    }

    /* JADX INFO: renamed from: N */
    private void m5832N(Window window) {
        if (C0925p.f5873j) {
            return;
        }
        if (C0953u.m7001z().m7025X()) {
            getWindow().setFlags(1024, 1024);
        }
        boolean zM6093o = C0795b0.m6071i().m6093o("HideSysNavBar", true);
        window.clearFlags(2048);
        View decorView = window.getDecorView();
        if (Build.VERSION.SDK_INT >= 19) {
            int i = 7428;
            if (zM6093o) {
                i = 7942;
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.systemUiVisibility = 2050;
                window.setAttributes(attributes);
            }
            decorView.setSystemUiVisibility(i);
        } else {
            window.setFlags(1024, 1024);
            decorView.setSystemUiVisibility(8);
            C0982s.m7373c("CheckActivity,setFullScreen: Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar.");
        }
        if (Build.VERSION.SDK_INT <= 28) {
            window.addFlags(256);
        }
        if (zM6093o) {
            window.addFlags(512);
        }
    }

    @Override // androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected native void onCreate(Bundle bundle);
}
