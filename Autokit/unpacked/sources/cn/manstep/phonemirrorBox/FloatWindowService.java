package cn.manstep.phonemirrorBox;

import android.app.Application;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class FloatWindowService extends Service {

    /* JADX INFO: renamed from: b */
    public static LinearLayout f4566b;

    /* JADX INFO: renamed from: c */
    public static WindowManager.LayoutParams f4567c;

    /* JADX INFO: renamed from: d */
    public static WindowManager f4568d;

    /* JADX INFO: renamed from: e */
    public static Surface f4569e;

    /* JADX INFO: renamed from: f */
    public static int f4570f;

    /* JADX INFO: renamed from: g */
    public static int f4571g;

    /* JADX INFO: renamed from: h */
    private static boolean f4572h;

    /* JADX INFO: renamed from: i */
    private static boolean f4573i;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.FloatWindowService$a */
    class SurfaceHolderCallbackC0743a implements SurfaceHolder.Callback {
        SurfaceHolderCallbackC0743a(FloatWindowService floatWindowService) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            C0982s.m7374d("FloatWindowService", "SurfaceView surfaceChanged: " + i2 + "x" + i3 + "---" + surfaceHolder);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            FloatWindowService.m5837a(surfaceHolder);
            FloatWindowService.f4569e = surfaceHolder.getSurface();
            C0982s.m7374d("FloatWindowService", "SurfaceView surfaceCreated:" + surfaceHolder);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            C0982s.m7374d("FloatWindowService", "SurfaceView surfaceDestroyed");
        }
    }

    static {
        StubApp.interface11(1475);
    }

    /* JADX INFO: renamed from: a */
    static /* synthetic */ SurfaceHolder m5837a(SurfaceHolder surfaceHolder) {
        return surfaceHolder;
    }

    /* JADX INFO: renamed from: b */
    private static void m5838b(int i, int i2) {
        int i3;
        if (f4572h) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 17) {
                f4568d.getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                f4568d.getDefaultDisplay().getMetrics(displayMetrics);
            }
            int i4 = displayMetrics.widthPixels;
            int i5 = displayMetrics.heightPixels;
            if (i2 == 0 || i == 0) {
                i3 = 0;
                i5 = 0;
            } else {
                i3 = i > i2 ? i4 : ((int) ((i5 * i) / i2)) & 65534;
            }
            if (!f4573i) {
                i3 = ((i3 * 2) / 5) & 65534;
                i5 = ((i5 * 2) / 5) & 65534;
            }
            WindowManager.LayoutParams layoutParams = f4567c;
            layoutParams.x = (i4 - i3) / 2;
            layoutParams.y = 0;
            layoutParams.width = i3;
            layoutParams.height = i5;
        } else {
            WindowManager.LayoutParams layoutParams2 = f4567c;
            layoutParams2.width = 0;
            layoutParams2.height = 0;
        }
        C0982s.m7379i("FloatWindowService", "float window calculateWH: " + f4567c.width + "x" + f4567c.height);
    }

    /* JADX INFO: renamed from: c */
    private void m5839c() {
        f4567c = new WindowManager.LayoutParams();
        Application application = getApplication();
        getApplication();
        f4568d = (WindowManager) application.getSystemService("window");
        C0982s.m7379i("FloatWindowService", "mWindowManager--->" + f4568d);
        if (Build.VERSION.SDK_INT >= 26) {
            f4567c.type = 2038;
        } else {
            f4567c.type = 2002;
        }
        WindowManager.LayoutParams layoutParams = f4567c;
        layoutParams.format = 1;
        layoutParams.flags = 56;
        layoutParams.gravity = 51;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.width = 2;
        layoutParams.height = 2;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getApplication()).inflate(2131492924, (ViewGroup) null);
        f4566b = linearLayout;
        f4568d.addView(linearLayout, f4567c);
        f4566b.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        ((SurfaceView) f4566b.findViewById(2131296526)).getHolder().addCallback(new SurfaceHolderCallbackC0743a(this));
    }

    /* JADX INFO: renamed from: d */
    public static void m5840d(boolean z) {
        if (f4569e == null) {
            C0982s.m7386p("FloatWindowService", "float window not init!");
            return;
        }
        C0982s.m7379i("FloatWindowService", "float window set reg:" + z);
        f4573i = z;
        if (f4572h) {
            m5838b(f4570f, f4571g);
            f4568d.updateViewLayout(f4566b, f4567c);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m5841e(int i, int i2) {
        if (f4569e == null) {
            C0982s.m7386p("FloatWindowService", "float window not init!");
            return;
        }
        f4570f = i;
        f4571g = i2;
        if (f4572h) {
            m5838b(i, i2);
            f4568d.updateViewLayout(f4566b, f4567c);
        }
        C0982s.m7379i("FloatWindowService", "set WH: " + i + "x" + i2);
    }

    /* JADX INFO: renamed from: f */
    public static void m5842f(boolean z) {
        if (f4569e == null) {
            C0982s.m7386p("FloatWindowService", "float window not init!");
            return;
        }
        f4572h = z;
        m5838b(f4570f, f4571g);
        f4568d.updateViewLayout(f4566b, f4567c);
        C0982s.m7379i("FloatWindowService", "float window set mbVisible: " + f4572h);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C0982s.m7379i("FloatWindowService", "onCreate");
        f4572h = false;
        f4569e = null;
        f4570f = 0;
        f4571g = 0;
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(StubApp.getOrigApplicationContext(getApplicationContext()))) {
            m5839c();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        LinearLayout linearLayout = f4566b;
        if (linearLayout != null) {
            f4568d.removeView(linearLayout);
        }
    }
}
