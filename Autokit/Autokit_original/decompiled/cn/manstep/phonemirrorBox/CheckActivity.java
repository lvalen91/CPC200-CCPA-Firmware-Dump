package cn.manstep.phonemirrorBox;

import android.content.Intent;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.d;
import com.stub.StubApp;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class CheckActivity extends d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f1481b;

    class a implements Runnable {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.CheckActivity$a$a, reason: collision with other inner class name */
        class RunnableC0079a implements Runnable {
            RunnableC0079a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                int width = CheckActivity.this.f1481b.getWidth();
                int height = CheckActivity.this.f1481b.getHeight();
                if (c0.m().j(width, height)) {
                    z = false;
                } else {
                    z = true;
                    if (!p.m) {
                        c0.i().o(width, height);
                        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                            cn.manstep.phonemirrorBox.BoxInterface.d.l.q0();
                        }
                    }
                }
                cn.manstep.phonemirrorBox.util.x xVarT = c0.t();
                if (cn.manstep.phonemirrorBox.BoxInterface.d.E()) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.l.d0(xVarT.f1934b, xVarT.f1935c);
                }
                Intent intent = new Intent();
                intent.putExtra("MaxSize", c0.m());
                intent.putExtra("ReAddSettingsFragment", z);
                CheckActivity.this.setResult(-1, intent);
                CheckActivity.this.finish();
                CheckActivity.this.overridePendingTransition(2130771982, 2130771982);
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Point point = new Point();
            Point point2 = new Point();
            CheckActivity.this.getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
            cn.manstep.phonemirrorBox.util.s.h("CheckActivity,availableSize: CurrentSizeRange: " + point + "," + point2);
            cn.manstep.phonemirrorBox.util.s.c("CheckActivity,availableSize:A -> View.getWidth()xView.getHeight()=" + CheckActivity.this.f1481b.getWidth() + "x" + CheckActivity.this.f1481b.getHeight());
            new Handler().postDelayed(new RunnableC0079a(), 800L);
        }
    }

    static {
        StubApp.interface11(1468);
    }

    private void M() {
        this.f1481b.post(new a());
    }

    private void N(Window window) {
        if (p.j) {
            return;
        }
        if (u.z().X()) {
            getWindow().setFlags(1024, 1024);
        }
        boolean zO = b0.i().o("HideSysNavBar", true);
        window.clearFlags(2048);
        View decorView = window.getDecorView();
        if (Build.VERSION.SDK_INT >= 19) {
            int i = 7428;
            if (zO) {
                i = 7942;
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.systemUiVisibility = 2050;
                window.setAttributes(attributes);
            }
            decorView.setSystemUiVisibility(i);
        } else {
            window.setFlags(1024, 1024);
            decorView.setSystemUiVisibility(8);
            cn.manstep.phonemirrorBox.util.s.c("CheckActivity,setFullScreen: Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar.");
        }
        if (Build.VERSION.SDK_INT <= 28) {
            window.addFlags(256);
        }
        if (zO) {
            window.addFlags(512);
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected native void onCreate(Bundle bundle);
}
