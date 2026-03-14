package cn.manstep.phonemirrorBox;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.ActivityC0081d;
import cn.manstep.phonemirrorBox.customview.AdjustSizeView;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AdjustSizeActivity extends ActivityC0081d {

    /* JADX INFO: renamed from: b */
    private AdjustSizeView f4171b;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AdjustSizeActivity$a */
    class ViewOnClickListenerC0699a implements View.OnClickListener {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AdjustSizeActivity$a$a */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String strFlattenToString = AdjustSizeActivity.this.f4171b.getSize().flattenToString();
                C0982s.m7379i("AdjustSizeActivity", "onClick: " + strFlattenToString);
                C0795b0.m6071i().m6085F("AREA_RECT", strFlattenToString);
                AdjustSizeActivity.this.m5266N();
            }
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AdjustSizeActivity$a$b */
        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdjustSizeActivity.this.finish();
            }
        }

        ViewOnClickListenerC0699a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0882a.m6528J2(AdjustSizeActivity.this.getSupportFragmentManager(), "修改为当前分辨率？", new a(), new b());
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AdjustSizeActivity$b */
    class ViewOnClickListenerC0700b implements View.OnClickListener {
        ViewOnClickListenerC0700b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdjustSizeActivity.this.f4171b.m6137m();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AdjustSizeActivity$c */
    class RunnableC0701c implements Runnable {
        RunnableC0701c() {
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

    /* JADX INFO: renamed from: M */
    private void m5265M() {
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

    /* JADX INFO: renamed from: N */
    public void m5266N() {
        new Handler().postDelayed(new RunnableC0701c(), 500L);
    }

    @Override // androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected native void onCreate(Bundle bundle);
}
