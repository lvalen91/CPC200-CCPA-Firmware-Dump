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
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class FloatWindowService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static LinearLayout f1486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static WindowManager.LayoutParams f1487c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static WindowManager f1488d;
    public static Surface e;
    public static int f;
    public static int g;
    private static boolean h;
    private static boolean i;

    class a implements SurfaceHolder.Callback {
        a(FloatWindowService floatWindowService) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            cn.manstep.phonemirrorBox.util.s.d("FloatWindowService", "SurfaceView surfaceChanged: " + i2 + "x" + i3 + "---" + surfaceHolder);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            FloatWindowService.a(surfaceHolder);
            FloatWindowService.e = surfaceHolder.getSurface();
            cn.manstep.phonemirrorBox.util.s.d("FloatWindowService", "SurfaceView surfaceCreated:" + surfaceHolder);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            cn.manstep.phonemirrorBox.util.s.d("FloatWindowService", "SurfaceView surfaceDestroyed");
        }
    }

    static {
        StubApp.interface11(1475);
    }

    static /* synthetic */ SurfaceHolder a(SurfaceHolder surfaceHolder) {
        return surfaceHolder;
    }

    private static void b(int i2, int i3) {
        int i4;
        if (h) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (Build.VERSION.SDK_INT >= 17) {
                f1488d.getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                f1488d.getDefaultDisplay().getMetrics(displayMetrics);
            }
            int i5 = displayMetrics.widthPixels;
            int i6 = displayMetrics.heightPixels;
            if (i3 == 0 || i2 == 0) {
                i4 = 0;
                i6 = 0;
            } else {
                i4 = i2 > i3 ? i5 : ((int) ((i6 * i2) / i3)) & 65534;
            }
            if (!i) {
                i4 = ((i4 * 2) / 5) & 65534;
                i6 = ((i6 * 2) / 5) & 65534;
            }
            WindowManager.LayoutParams layoutParams = f1487c;
            layoutParams.x = (i5 - i4) / 2;
            layoutParams.y = 0;
            layoutParams.width = i4;
            layoutParams.height = i6;
        } else {
            WindowManager.LayoutParams layoutParams2 = f1487c;
            layoutParams2.width = 0;
            layoutParams2.height = 0;
        }
        cn.manstep.phonemirrorBox.util.s.i("FloatWindowService", "float window calculateWH: " + f1487c.width + "x" + f1487c.height);
    }

    private void c() {
        f1487c = new WindowManager.LayoutParams();
        Application application = getApplication();
        getApplication();
        f1488d = (WindowManager) application.getSystemService("window");
        cn.manstep.phonemirrorBox.util.s.i("FloatWindowService", "mWindowManager--->" + f1488d);
        if (Build.VERSION.SDK_INT >= 26) {
            f1487c.type = 2038;
        } else {
            f1487c.type = 2002;
        }
        WindowManager.LayoutParams layoutParams = f1487c;
        layoutParams.format = 1;
        layoutParams.flags = 56;
        layoutParams.gravity = 51;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.width = 2;
        layoutParams.height = 2;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getApplication()).inflate(2131492924, (ViewGroup) null);
        f1486b = linearLayout;
        f1488d.addView(linearLayout, f1487c);
        f1486b.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        ((SurfaceView) f1486b.findViewById(2131296526)).getHolder().addCallback(new a(this));
    }

    public static void d(boolean z) {
        if (e == null) {
            cn.manstep.phonemirrorBox.util.s.p("FloatWindowService", "float window not init!");
            return;
        }
        cn.manstep.phonemirrorBox.util.s.i("FloatWindowService", "float window set reg:" + z);
        i = z;
        if (h) {
            b(f, g);
            f1488d.updateViewLayout(f1486b, f1487c);
        }
    }

    public static void e(int i2, int i3) {
        if (e == null) {
            cn.manstep.phonemirrorBox.util.s.p("FloatWindowService", "float window not init!");
            return;
        }
        f = i2;
        g = i3;
        if (h) {
            b(i2, i3);
            f1488d.updateViewLayout(f1486b, f1487c);
        }
        cn.manstep.phonemirrorBox.util.s.i("FloatWindowService", "set WH: " + i2 + "x" + i3);
    }

    public static void f(boolean z) {
        if (e == null) {
            cn.manstep.phonemirrorBox.util.s.p("FloatWindowService", "float window not init!");
            return;
        }
        h = z;
        b(f, g);
        f1488d.updateViewLayout(f1486b, f1487c);
        cn.manstep.phonemirrorBox.util.s.i("FloatWindowService", "float window set mbVisible: " + h);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        cn.manstep.phonemirrorBox.util.s.i("FloatWindowService", "onCreate");
        h = false;
        e = null;
        f = 0;
        g = 0;
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(StubApp.getOrigApplicationContext(getApplicationContext()))) {
            c();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        LinearLayout linearLayout = f1486b;
        if (linearLayout != null) {
            f1488d.removeView(linearLayout);
        }
    }
}
