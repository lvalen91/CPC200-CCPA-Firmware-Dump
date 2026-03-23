package cn.manstep.phonemirrorBox;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.d;
import cn.manstep.phonemirrorBox.customview.AdjustSizeView;
import com.stub.StubApp;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class AdjustSizeActivity extends d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdjustSizeView f1352b;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AdjustSizeActivity$a$a, reason: collision with other inner class name */
        class ViewOnClickListenerC0070a implements View.OnClickListener {
            ViewOnClickListenerC0070a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String strFlattenToString = AdjustSizeActivity.this.f1352b.getSize().flattenToString();
                cn.manstep.phonemirrorBox.util.s.i("AdjustSizeActivity", "onClick: " + strFlattenToString);
                b0.i().F("AREA_RECT", strFlattenToString);
                AdjustSizeActivity.this.N();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdjustSizeActivity.this.finish();
            }
        }

        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.manstep.phonemirrorBox.k0.a.J2(AdjustSizeActivity.this.getSupportFragmentManager(), "修改为当前分辨率？", new ViewOnClickListenerC0070a(), new b());
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdjustSizeActivity.this.f1352b.m();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdjustSizeActivity.this.overridePendingTransition(0, 0);
            AdjustSizeActivity.this.finish();
            Intent intent = new Intent(AdjustSizeActivity.this, (Class<?>) MainActivity.class);
            intent.addFlags(335642624);
            AdjustSizeActivity.this.overridePendingTransition(0, 0);
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            AdjustSizeActivity.this.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    static {
        StubApp.interface11(1370);
    }

    private void M() {
        Window window = getWindow();
        window.clearFlags(2048);
        View decorView = window.getDecorView();
        if (Build.VERSION.SDK_INT >= 19) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.systemUiVisibility = 2;
            window.setAttributes(attributes);
            decorView.setSystemUiVisibility(7942);
        } else {
            window.setFlags(1024, 1024);
            decorView.setSystemUiVisibility(8);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            window.addFlags(256);
        }
        window.addFlags(512);
    }

    public void N() {
        new Handler().postDelayed(new c(), 500L);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected native void onCreate(Bundle bundle);
}
