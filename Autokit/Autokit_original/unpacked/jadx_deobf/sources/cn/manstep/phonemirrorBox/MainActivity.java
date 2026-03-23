package cn.manstep.phonemirrorBox;

import android.R;
import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewAnimator;
import androidx.core.app.C0231a;
import androidx.core.content.C0242a;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.Fragment;
import cn.manstep.phonemirrorBox.AbstractC0791a;
import cn.manstep.phonemirrorBox.BoxInterface.C0730a;
import cn.manstep.phonemirrorBox.BoxInterface.C0731b;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.ModeChangeService;
import cn.manstep.phonemirrorBox.customview.C0798a;
import cn.manstep.phonemirrorBox.ecarx.ECarXUtil;
import cn.manstep.phonemirrorBox.floatwindow.C0843e;
import cn.manstep.phonemirrorBox.floatwindow.ViewOnTouchListenerC0840b;
import cn.manstep.phonemirrorBox.p071e0.HandlerC0814b;
import cn.manstep.phonemirrorBox.p072f0.C0826b;
import cn.manstep.phonemirrorBox.p072f0.C0827c;
import cn.manstep.phonemirrorBox.p072f0.C0829e;
import cn.manstep.phonemirrorBox.p072f0.C0830f;
import cn.manstep.phonemirrorBox.p072f0.C0831g;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.p077k0.C0883b;
import cn.manstep.phonemirrorBox.p077k0.C0892k;
import cn.manstep.phonemirrorBox.p077k0.DialogC0887f;
import cn.manstep.phonemirrorBox.p078l0.C0907n;
import cn.manstep.phonemirrorBox.p078l0.InterfaceC0914u;
import cn.manstep.phonemirrorBox.p083p0.C0928c;
import cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.p091x0.C1013k;
import cn.manstep.phonemirrorBox.util.C0962b0;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0969f;
import cn.manstep.phonemirrorBox.util.C0973j;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0979p;
import cn.manstep.phonemirrorBox.util.C0981r;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0983t;
import cn.manstep.phonemirrorBox.util.C0984u;
import cn.manstep.phonemirrorBox.util.C0987x;
import cn.manstep.phonemirrorBox.util.JniTools;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.UCrop;
import com.yalantis.ucrop.view.CropImageView;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MainActivity extends ActivityC0881k implements InterfaceC0927b, AbstractC0791a.b, C0983t.a {

    /* JADX INFO: renamed from: a0 */
    public static int f4608a0 = 2;

    /* JADX INFO: renamed from: b0 */
    public static boolean f4609b0;

    /* JADX INFO: renamed from: D */
    private AutoBoxMirrorView f4613D;

    /* JADX INFO: renamed from: E */
    private AutoBoxMirrorTextureView f4614E;

    /* JADX INFO: renamed from: F */
    private ViewOnTouchListenerC0840b f4615F;

    /* JADX INFO: renamed from: G */
    private C0928c f4616G;

    /* JADX INFO: renamed from: I */
    private ViewOnClickListenerC1017z f4618I;

    /* JADX INFO: renamed from: J */
    private AbstractC0366n f4619J;

    /* JADX INFO: renamed from: K */
    private C0907n f4620K;

    /* JADX INFO: renamed from: M */
    private C0983t f4622M;

    /* JADX INFO: renamed from: P */
    private AbstractC0791a f4625P;

    /* JADX INFO: renamed from: Q */
    private C0798a f4626Q;

    /* JADX INFO: renamed from: R */
    private C0882a f4627R;

    /* JADX INFO: renamed from: S */
    private boolean f4628S;

    /* JADX INFO: renamed from: T */
    private boolean f4629T;

    /* JADX INFO: renamed from: U */
    private final C0984u f4630U;

    /* JADX INFO: renamed from: V */
    private InterfaceC0914u f4631V;

    /* JADX INFO: renamed from: W */
    private boolean f4632W;

    /* JADX INFO: renamed from: X */
    private boolean f4633X;

    /* JADX INFO: renamed from: Y */
    private final int[] f4634Y;

    /* JADX INFO: renamed from: Z */
    private final C0984u f4635Z;

    /* JADX INFO: renamed from: w */
    private ViewAnimator f4639w;

    /* JADX INFO: renamed from: x */
    private Animation f4640x;

    /* JADX INFO: renamed from: y */
    private Animation f4641y;

    /* JADX INFO: renamed from: z */
    private TextView f4642z;

    /* JADX INFO: renamed from: t */
    public boolean f4636t = false;

    /* JADX INFO: renamed from: u */
    public int f4637u = -1;

    /* JADX INFO: renamed from: v */
    public int f4638v = -1;

    /* JADX INFO: renamed from: A */
    private ServiceConnection f4610A = null;

    /* JADX INFO: renamed from: B */
    private ModeChangeService f4611B = null;

    /* JADX INFO: renamed from: C */
    private String f4612C = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: H */
    private boolean f4617H = false;

    /* JADX INFO: renamed from: L */
    private boolean f4621L = false;

    /* JADX INFO: renamed from: N */
    private boolean f4623N = false;

    /* JADX INFO: renamed from: O */
    private boolean f4624O = false;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$a */
    class C0754a implements C0962b0.d {
        C0754a() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0962b0.d
        /* JADX INFO: renamed from: a */
        public void mo5968a(String str, String str2, long j, String str3, boolean z) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            MainActivity.this.m5953l1(z, str, str3, j, str2, false);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$a0 */
    class RunnableC0755a0 implements Runnable {
        RunnableC0755a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C0733d.m5591i() || MainActivity.this.f4618I == null || MainActivity.this.f4618I.f6462y0 == null || !MainActivity.this.f4618I.f6462y0.m7739a0()) {
                return;
            }
            MainActivity.this.mo5962t(C0733d.m5597r());
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$b */
    class RunnableC0756b implements Runnable {
        RunnableC0756b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.m5890O0();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$b0 */
    class C0757b0 implements C0798a.g {
        C0757b0() {
        }

        @Override // cn.manstep.phonemirrorBox.customview.C0798a.g
        /* JADX INFO: renamed from: a */
        public void mo5969a() {
            MainActivity.this.f4615F.m6276a(MainActivity.this.f4626Q);
            MainActivity.this.f4626Q = null;
        }

        @Override // cn.manstep.phonemirrorBox.customview.C0798a.g
        /* JADX INFO: renamed from: b */
        public void mo5970b(String str, int i) {
            if (MainActivity.this.f4614E != null) {
                MainActivity.this.f4614E.m5341p(str, i);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$c */
    class RunnableC0758c implements Runnable {
        RunnableC0758c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.m5901a1();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$c0 */
    class C0759c0 implements C0962b0.d {
        C0759c0() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0962b0.d
        /* JADX INFO: renamed from: a */
        public void mo5968a(String str, String str2, long j, String str3, boolean z) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            MainActivity.this.m5953l1(z, str, str3, j, str2, true);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$d */
    class RunnableC0760d implements Runnable {
        RunnableC0760d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.m5915p1();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$e */
    class RunnableC0761e implements Runnable {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$e$a */
        class a implements View.OnClickListener {
            a(RunnableC0761e runnableC0761e) {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C0795b0.m6071i().m6085F("ATP", Boolean.TRUE);
                MyApplication.m5997b().m6002e();
            }
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$e$b */
        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.finish();
            }
        }

        RunnableC0761e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!MainActivity.this.f4632W) {
                if (MainActivity.this.getResources().getBoolean(2131034120)) {
                    C0892k.m6627A2(MainActivity.this.getSupportFragmentManager(), new a(this), new b());
                } else {
                    MainActivity.this.f4632W = true;
                    C0795b0.m6071i().m6085F("ATP", Boolean.TRUE);
                    MyApplication.m5997b().m6002e();
                }
            }
            if (MainActivity.this.f4639w.getCurrentView() == null) {
                C0982s.m7374d("MainActivity", "initAnimation->run: " + MainActivity.this.f4639w.getWidth() + "x" + MainActivity.this.f4639w.getHeight());
                return;
            }
            int height = MainActivity.this.f4639w.getCurrentView().getHeight();
            int width = MainActivity.this.f4639w.getCurrentView().getWidth();
            C0982s.m7374d("MainActivity", "initAnimation->run: " + C0925p.f5874k + "x" + C0925p.f5875l + ", Measured: " + width + "x" + height);
            if (C0925p.f5875l > C0925p.f5874k) {
                C0925p.f5877n = width;
                C0925p.f5878o = height;
            }
            if (MainActivity.this.m5902b1() || height > width) {
                C0797c0.m6109i().m6121q(width, height);
                C0735f c0735f = C0733d.f4428l;
                if (c0735f != null) {
                    c0735f.m5693Q();
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$f */
    class ViewTreeObserverOnGlobalLayoutListenerC0762f implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f4652b;

        ViewTreeObserverOnGlobalLayoutListenerC0762f(View view) {
            this.f4652b = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int[] iArr = new int[2];
            this.f4652b.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            if (MainActivity.this.f4634Y[0] == i && MainActivity.this.f4634Y[1] == i2) {
                return;
            }
            C0982s.m7374d("Position", "X Coordinate: " + i + ", Y Coordinate: " + i2);
            MainActivity.this.f4634Y[0] = i;
            MainActivity.this.f4634Y[1] = i2;
            if (C0843e.m6289g().m6296i()) {
                C0982s.m7374d("MainActivity", "onGlobalLayout： ");
                C0843e.m6289g().m6301p(StubApp.getOrigApplicationContext(MainActivity.this.getApplicationContext()), i > 100);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$g */
    class RunnableC0763g implements Runnable {
        RunnableC0763g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0964c0.m7196t(MainActivity.this, true);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$h */
    class RunnableC0764h implements Runnable {
        RunnableC0764h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MainActivity.this.getResources().getBoolean(2131034120)) {
                return;
            }
            if (!Settings.canDrawOverlays(StubApp.getOrigApplicationContext(MainActivity.this.getApplicationContext()))) {
                MainActivity.this.m5906g1();
            } else {
                if (C0733d.m5574G()) {
                    return;
                }
                MainActivity.this.m5907h1();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$i */
    class ViewOnClickListenerC0765i implements View.OnClickListener {
        ViewOnClickListenerC0765i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                intent.setData(Uri.parse("package:" + MainActivity.this.getPackageName()));
                intent.setFlags(268435456);
                MainActivity.this.startActivity(intent);
            } catch (ActivityNotFoundException unused) {
                MainActivity.this.m5907h1();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$j */
    class ViewOnClickListenerC0766j implements View.OnClickListener {
        ViewOnClickListenerC0766j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.finish();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$k */
    class C0767k extends BroadcastReceiver {
        C0767k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("GoMainActivity.BroadcastReceiver.action")) {
                int intExtra = intent.getIntExtra("GoMainActivity.BroadcastReceiver.data", 1);
                C0982s.m7373c("MainActivity, goMainActivityReceiver: mode = " + intExtra);
                MainActivity mainActivity = MainActivity.this;
                mainActivity.f4638v = intExtra;
                mainActivity.m5887L0(intExtra, false);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$l */
    class ViewOnClickListenerC0768l implements View.OnClickListener {
        ViewOnClickListenerC0768l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                C0969f.m7239e(MainActivity.this, "com.huawei.security.privilegemanager", "com.huawei.security.enhanced.permission.ui.activity.MainActivity");
            } catch (ActivityNotFoundException unused) {
                MainActivity.this.m5907h1();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$m */
    class ViewOnClickListenerC0769m implements View.OnClickListener {
        ViewOnClickListenerC0769m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.finish();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$n */
    class ViewOnClickListenerC0770n implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ List f4661b;

        ViewOnClickListenerC0770n(List list) {
            this.f4661b = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0231a.m1643m(MainActivity.this, (String[]) this.f4661b.toArray(new String[0]), 1000);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$o */
    class ViewOnClickListenerC0771o implements View.OnClickListener {
        ViewOnClickListenerC0771o(MainActivity mainActivity) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$p */
    class RunnableC0772p implements Runnable {
        RunnableC0772p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0964c0.m7177a(MainActivity.this, "mute.wav", "mute.wav")) {
                C0795b0.m6065D(MainActivity.this, true);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$q */
    class DialogInterfaceOnClickListenerC0773q implements DialogInterface.OnClickListener {
        DialogInterfaceOnClickListenerC0773q(MainActivity mainActivity) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$r */
    class ViewOnClickListenerC0774r implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AlertDialog f4664b;

        ViewOnClickListenerC0774r(AlertDialog alertDialog) {
            this.f4664b = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.f4616G.m6898p();
            this.f4664b.dismiss();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$s */
    class ViewOnClickListenerC0775s implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ long f4666b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ boolean f4667c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ String f4668d;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$s$a */
        class a implements C0979p.f {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ DialogC0887f f4670a;

            /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$s$a$a, reason: collision with other inner class name */
            class ViewOnClickListenerC1352a implements View.OnClickListener {
                ViewOnClickListenerC1352a() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    C0964c0.m7191o(MainActivity.this, C0962b0.m7168m().m7172k());
                }
            }

            /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$s$a$b */
            class b implements Runnable {
                b() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f4670a.dismiss();
                }
            }

            a(DialogC0887f dialogC0887f) {
                this.f4670a = dialogC0887f;
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.f
            /* JADX INFO: renamed from: a */
            public void mo5971a() {
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.e
            /* JADX INFO: renamed from: b */
            public void mo5972b(String str) {
                this.f4670a.m6588m();
                this.f4670a.m6586k(2131689706);
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.e
            /* JADX INFO: renamed from: c */
            public void mo5973c(String str) {
                if (!ViewOnClickListenerC0775s.this.f4668d.equalsIgnoreCase(str)) {
                    mo5972b(ViewOnClickListenerC0775s.this.f4668d);
                    return;
                }
                if (ViewOnClickListenerC0775s.this.f4667c) {
                    this.f4670a.dismiss();
                    C0882a.m6522D2(MainActivity.this.getSupportFragmentManager(), new ViewOnClickListenerC1352a(), false);
                    return;
                }
                if (!C0733d.m5591i()) {
                    this.f4670a.dismiss();
                    return;
                }
                File file = new File(C0962b0.m7168m().m7173l());
                if (file.exists() && file.isFile()) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        int iAvailable = fileInputStream.available();
                        byte[] bArr = new byte[iAvailable];
                        int i = fileInputStream.read(bArr, 0, iAvailable);
                        fileInputStream.close();
                        if (i == iAvailable) {
                            if (C0733d.f4428l == null) {
                                this.f4670a.dismiss();
                            } else if (C0733d.f4428l.m5750w1("/tmp/Auto_Box_Update.img\u0000", bArr)) {
                                new Handler().postDelayed(new b(), 1000L);
                            }
                        }
                    } catch (Exception e) {
                        C0982s.m7375e("MainActivity,upgradeBox: \n" + Log.getStackTraceString(e));
                    }
                }
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.f
            /* JADX INFO: renamed from: d */
            public void mo5974d(long j) {
                this.f4670a.m6587l((int) j);
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.f
            /* JADX INFO: renamed from: e */
            public void mo5975e(long j) {
                this.f4670a.m6585j((int) j);
            }
        }

        ViewOnClickListenerC0775s(long j, boolean z, String str) {
            this.f4666b = j;
            this.f4667c = z;
            this.f4668d = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC0887f dialogC0887fM6590b = new DialogC0887f.b(MainActivity.this).m6590b();
            dialogC0887fM6590b.show();
            dialogC0887fM6590b.m6585j((int) this.f4666b);
            if (C0733d.m5574G()) {
                C0733d.m5579O(1, 25);
                C0733d.f4428l.m5713b1();
            }
            C0962b0.m7168m().m7171j(this.f4667c, new a(dialogC0887fM6590b));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$t */
    class ViewOnClickListenerC0776t implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ boolean f4674b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ String f4675c;

        ViewOnClickListenerC0776t(boolean z, String str) {
            this.f4674b = z;
            this.f4675c = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f4674b && C0733d.m5591i()) {
                MainActivity.this.m5888M0();
            }
            C0795b0.m6071i().m6085F(this.f4674b ? "AppLatestVer" : "BoxLatestVer", this.f4675c);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$u */
    class RunnableC0777u implements Runnable {
        RunnableC0777u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0375w abstractC0375wM2774l = MainActivity.this.f4619J.m2774l();
            abstractC0375wM2774l.m2895r(2130772007, 2130772012, 2130772007, 2130772012);
            if (MainActivity.this.f4618I != null) {
                MainActivity.this.f4618I.m7836S2();
                if (MainActivity.this.f4618I.m2486q0()) {
                    abstractC0375wM2774l.mo2533t(MainActivity.this.f4618I);
                } else {
                    abstractC0375wM2774l.m2886b(2131296606, MainActivity.this.f4618I);
                }
                abstractC0375wM2774l.mo2527i();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$v */
    class RunnableC0778v implements Runnable {
        RunnableC0778v(MainActivity mainActivity) {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyApplication.m5997b().m6006j();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$w */
    class RunnableC0779w implements Runnable {
        RunnableC0779w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.m5942c1(11);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$x */
    class RunnableC0780x implements Runnable {
        RunnableC0780x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.m5942c1(11);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$y */
    class ServiceConnectionC0781y implements ServiceConnection {
        ServiceConnectionC0781y() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MainActivity.this.f4611B = ((ModeChangeService.BinderC0789c) iBinder).m5995a();
            MainActivity.this.f4611B.m5994o(MainActivity.this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            MainActivity.this.f4611B = null;
            C0982s.m7379i("MainActivity", "onServiceDisconnected: " + componentName);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$z */
    class ViewOnSystemUiVisibilityChangeListenerC0782z implements View.OnSystemUiVisibilityChangeListener {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$z$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.m5899Y0();
            }
        }

        ViewOnSystemUiVisibilityChangeListenerC0782z() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append("MainActivity,onCreate,onSystemUiVisibilityChange: visibility=");
            sb.append(i);
            sb.append(" ");
            int i2 = i & 4;
            sb.append(i2);
            sb.append(" ");
            int i3 = i & 1024;
            sb.append(i3);
            C0982s.m7373c(sb.toString());
            if (i2 == 0 || i3 == 0) {
                C0973j c0973jM7257c = C0973j.m7257c();
                c0973jM7257c.m7259b("hideNavigationBar");
                c0973jM7257c.m7260e("hideNavigationBar", 3000L, new a());
            }
        }
    }

    static {
        StubApp.interface11(1526);
    }

    public MainActivity() {
        new C0767k();
        this.f4628S = true;
        this.f4629T = false;
        this.f4630U = new C0984u();
        this.f4631V = null;
        this.f4632W = false;
        this.f4633X = false;
        this.f4634Y = new int[2];
        this.f4635Z = new C0984u();
    }

    /* JADX INFO: renamed from: J0 */
    private void m5885J0() {
        this.f4610A = new ServiceConnectionC0781y();
        bindService(new Intent(this, (Class<?>) ModeChangeService.class), this.f4610A, 1);
    }

    /* JADX INFO: renamed from: K0 */
    private void m5886K0(boolean z) {
        TextView textView = this.f4642z;
        if (textView != null) {
            if (z) {
                textView.setVisibility(0);
            } else {
                textView.setVisibility(4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: L0 */
    public void m5887L0(int i, boolean z) {
        mo5931D();
        if (C0735f.f4458O) {
            m5889N0();
            return;
        }
        if (i == -1) {
            i = 1;
        }
        if (i != this.f4637u) {
            this.f4637u = i;
        } else if (!z) {
            return;
        }
        C0982s.m7373c("MainActivity,changeSingleWorkMode: mode = " + i);
        if (i == 1) {
            C0735f.k.m5773b(0);
            C0735f.k.m5774c(2);
            C0735f c0735f = C0733d.f4428l;
            if (c0735f != null) {
                c0735f.m5706X0();
            }
        } else if (i == 2) {
            C0735f.k.m5773b(2);
            C0735f.k.m5774c(4);
            C0735f c0735f2 = C0733d.f4428l;
            if (c0735f2 != null) {
                c0735f2.m5706X0();
            }
        } else if (i == 3) {
            C0735f.k.m5773b(1);
            C0735f.k.m5774c(4);
            C0735f c0735f3 = C0733d.f4428l;
            if (c0735f3 != null) {
                c0735f3.m5706X0();
            }
        }
        C0795b0.m6078w(this, this.f4637u);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M0 */
    public void m5888M0() {
        C0735f c0735f;
        if (!this.f4632W || (c0735f = C0733d.f4428l) == null || c0735f.m5702V()) {
            return;
        }
        C0962b0.m7168m().m7170h(new C0754a());
    }

    /* JADX INFO: renamed from: N0 */
    private boolean m5889N0() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: O0 */
    public void m5890O0() {
        if (this.f4632W) {
            C0962b0.m7168m().m7169g(new C0759c0());
        }
    }

    /* JADX INFO: renamed from: P0 */
    private void m5891P0() {
        if (C0795b0.m6070h(this)) {
            return;
        }
        new Thread(new RunnableC0772p(), "copyMute").start();
    }

    /* JADX INFO: renamed from: Q0 */
    private void m5892Q0(Uri uri, Uri uri2) {
        UCrop.Options options = new UCrop.Options();
        options.setToolbarColor(C0242a.m1697b(this, 2131099741));
        options.setStatusBarColor(C0242a.m1697b(this, 2131099741));
        options.setCompressionFormat(Bitmap.CompressFormat.PNG);
        options.setCompressionQuality(100);
        options.setHideBottomControls(false);
        options.setToolbarTitle(C0964c0.m7189m(this, 2131689909));
        UCrop.m9048of(uri, uri2).withAspectRatio(1.0f, 1.0f).withMaxResultSize(180, 180).withOptions(options).start(this);
    }

    /* JADX INFO: renamed from: R0 */
    private void m5893R0(Runnable runnable, long j) {
        new Handler().postDelayed(runnable, j);
    }

    /* JADX INFO: renamed from: S0 */
    private void m5894S0(Window window) {
        C0982s.m7385o("MainActivity,enterFullScreen: ###### isVideoNotFullscreen=" + C0925p.f5873j);
        if (m5902b1()) {
            return;
        }
        boolean z = true;
        boolean zM6093o = C0795b0.m6071i().m6093o("HideSysNavBar", true);
        boolean zM6089k = C0795b0.m6071i().m6089k();
        C0982s.m7374d("MainActivity", "enterFullScreen: isHideSysNavBar=" + zM6093o + ", bShowStatusBar=" + zM6089k);
        if (zM6093o || !zM6089k) {
            if (4 == C0953u.m7001z().m7061v()) {
                zM6093o = true;
            } else {
                z = zM6089k;
            }
            m6515f0();
            window.clearFlags(2048);
            View decorView = window.getDecorView();
            if (Build.VERSION.SDK_INT >= 19) {
                int i = 2048 | (C0953u.m7001z().m7019R() ? 4096 : 0);
                if (!z) {
                    i = (C0953u.m7001z().m7019R() ? 4096 : 0) | 2052 | 1024 | 256;
                }
                if (zM6093o) {
                    i |= 1538;
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    attributes.systemUiVisibility = 2050;
                    window.setAttributes(attributes);
                }
                C0982s.m7374d("MainActivity", "enterFullScreen: setSystemUiVisibility->uiOptions=" + i);
                decorView.setSystemUiVisibility(i);
            } else {
                window.setFlags(1024, 1024);
                decorView.setSystemUiVisibility(8);
                C0982s.m7373c("Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar.");
            }
            if (Build.VERSION.SDK_INT <= 28) {
                window.addFlags(256);
            }
            if (zM6093o) {
                window.addFlags(512);
            }
        }
    }

    /* JADX INFO: renamed from: T0 */
    private void m5895T0(Window window) {
        C0982s.m7373c("MainActivity,exitFullScreen: ######");
        m6516g0();
        window.clearFlags(1024);
        if (Build.VERSION.SDK_INT <= 28) {
            window.clearFlags(256);
        }
        window.clearFlags(512);
        View decorView = window.getDecorView();
        if (Build.VERSION.SDK_INT < 19) {
            decorView.setSystemUiVisibility(0);
            C0982s.m7373c("Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar.");
        } else if (C0953u.m7001z().m7018Q()) {
            decorView.setSystemUiVisibility(1024 | (C0953u.m7001z().m7019R() ? 4096 : 0) | 2052 | 256);
        } else {
            decorView.setSystemUiVisibility(0);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            if (C0953u.m7001z().m7018Q()) {
                window.addFlags(256);
            } else {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.flags = 0;
                window.setAttributes(attributes);
            }
        }
        if (C0953u.m7001z().m7018Q()) {
            return;
        }
        window.setFlags(2048, 2048);
    }

    /* JADX INFO: renamed from: V0 */
    private void m5896V0(Context context) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        int i = Build.VERSION.SDK_INT;
        if (i >= 9) {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", getPackageName(), null));
        } else if (i <= 8) {
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra("com.android.settings.ApplicationPkgName", getPackageName());
        }
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            C0982s.m7375e("MainActivity,getAppDetailSettingIntent: \n" + Log.getStackTraceString(e));
        }
    }

    /* JADX INFO: renamed from: W0 */
    private void m5897W0(Intent intent) {
        int intExtra;
        AbstractC0791a abstractC0791a;
        if (intent == null || (intExtra = intent.getIntExtra("EXTRA_NAME_1", -255)) == -255 || (abstractC0791a = this.f4625P) == null) {
            return;
        }
        abstractC0791a.m6020E(intExtra);
    }

    /* JADX INFO: renamed from: X0 */
    private boolean m5898X0() {
        if (Build.VERSION.SDK_INT >= 23) {
            return C0242a.m1696a(this, "android.permission.RECORD_AUDIO") == 0 && (C0242a.m1696a(this, "android.permission.ACCESS_FINE_LOCATION") == 0 || C0242a.m1696a(this, "android.permission.ACCESS_COARSE_LOCATION") == 0);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Y0 */
    public void m5899Y0() {
        if (m5902b1()) {
            return;
        }
        if (this.f4616G.m6895m()) {
            m5909k1(true);
        } else if (C0925p.f5875l == 600 && C0925p.f5874k == 800 && "rk3188".equals(this.f4612C)) {
            m5909k1(true);
        } else {
            m5909k1(false);
        }
    }

    /* JADX INFO: renamed from: Z0 */
    private void m5900Z0() {
        C0982s.m7374d("MainActivity", "initAnimation: ");
        this.f4641y = AnimationUtils.loadAnimation(this, 2130771980);
        this.f4640x = AnimationUtils.loadAnimation(this, 2130771981);
        ViewAnimator viewAnimator = (ViewAnimator) findViewById(2131296702);
        this.f4639w = viewAnimator;
        viewAnimator.post(new RunnableC0761e());
        View viewFindViewById = findViewById(R.id.content);
        viewFindViewById.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0762f(viewFindViewById));
        this.f4639w.setInAnimation(this.f4641y);
        this.f4639w.setOutAnimation(this.f4640x);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a1 */
    public void m5901a1() {
        if (this.f4619J == null) {
            this.f4619J = getSupportFragmentManager();
        }
        if (this.f4618I == null) {
            ViewOnClickListenerC1017z viewOnClickListenerC1017z = new ViewOnClickListenerC1017z();
            this.f4618I = viewOnClickListenerC1017z;
            if (!viewOnClickListenerC1017z.m2486q0()) {
                try {
                    AbstractC0375w abstractC0375wM2774l = this.f4619J.m2774l();
                    abstractC0375wM2774l.m2886b(2131296606, this.f4618I);
                    abstractC0375wM2774l.mo2531n(this.f4618I);
                    abstractC0375wM2774l.mo2527i();
                } catch (Exception e) {
                    C0982s.m7376f("MainActivity", "initSettingsFragment: " + C0982s.m7377g(e));
                }
            }
        }
        C0982s.m7374d("MainActivity", "initSettingsFragment: SettingsFragment=" + this.f4618I);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b1 */
    public boolean m5902b1() {
        if (C0953u.m7001z().m7061v() == 1 || C0925p.f5873j) {
            return true;
        }
        return !C0795b0.m6071i().m6093o("HideSysNavBar", true) && C0795b0.m6071i().m6089k();
    }

    /* JADX INFO: renamed from: d1 */
    private void m5903d1() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(C0964c0.m7189m(this, 2131689700));
        builder.setMessage(C0964c0.m7189m(this, 2131689802));
        builder.setPositiveButton(C0964c0.m7189m(this, 2131689625), (DialogInterface.OnClickListener) null);
        builder.setNegativeButton(C0964c0.m7189m(this, 2131689621), new DialogInterfaceOnClickListenerC0773q(this));
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new ViewOnClickListenerC0774r(alertDialogCreate));
    }

    /* JADX INFO: renamed from: e1 */
    private void m5904e1() {
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            c0735f.m5737n1(true);
            C0733d.f4428l.m5710a1();
        }
        C0795b0.m6071i().m6085F("WirelessConnectMode", 1);
        mo5947h();
        this.f4623N = true;
    }

    /* JADX INFO: renamed from: f1 */
    private void m5905f1(Fragment fragment) {
        if (fragment == null || !fragment.m2507z0()) {
            return;
        }
        AbstractC0375w abstractC0375wM2774l = this.f4619J.m2774l();
        abstractC0375wM2774l.mo2532o(fragment);
        abstractC0375wM2774l.mo2526h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g1 */
    public void m5906g1() {
        if (Build.VERSION.SDK_INT >= 23) {
            if (Settings.canDrawOverlays(StubApp.getOrigApplicationContext(getApplicationContext()))) {
                m5907h1();
                return;
            }
            if (!getResources().getBoolean(2131034124) && !C0795b0.m6071i().m6093o("ShowFloatBall", getResources().getBoolean(2131034136))) {
                m5907h1();
                return;
            }
            if (C0969f.m7236b(this, "com.android.settings", "com.android.settings.Settings$AppDrawOverlaySettingsActivity")) {
                C0882a.m6530L2(this.f4619J, 2131689564, new ViewOnClickListenerC0765i(), new ViewOnClickListenerC0766j());
            } else if (C0969f.m7236b(this, "com.huawei.security.privilegemanager", "com.huawei.security.enhanced.permission.ui.activity.MainActivity")) {
                C0882a.m6530L2(this.f4619J, 2131689564, new ViewOnClickListenerC0768l(), new ViewOnClickListenerC0769m());
            } else {
                C0982s.m7376f("MainActivity", "requestCanDrawOverlaysPermission: Settings$AppDrawOverlaySettingsActivity does not exist.");
                m5907h1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h1 */
    public void m5907h1() {
        if (C0795b0.m6071i().m6093o("ShowFloatBall", false)) {
            C0982s.m7374d("MainActivity", "requestPermission: start FloatWindowService");
            startService(new Intent(StubApp.getOrigApplicationContext(getApplicationContext()), (Class<?>) FloatWindowService.class));
        }
        if (getResources().getBoolean(2131034120)) {
            if (!C0733d.m5574G() || C0795b0.m6071i().m6093o("PERMISSION", false)) {
                return;
            }
            C0795b0.m6071i().m6085F("PERMISSION", Boolean.TRUE);
            if (Build.VERSION.SDK_INT >= 23) {
                ArrayList arrayList = new ArrayList();
                if (C0242a.m1696a(this, "android.permission.RECORD_AUDIO") != 0) {
                    arrayList.add("android.permission.RECORD_AUDIO");
                }
                if (arrayList.size() > 0) {
                    C0882a.m6528J2(getSupportFragmentManager(), C0977n.m7317t(this, "use_permission_tips", 2131886087), new ViewOnClickListenerC0770n(arrayList), new ViewOnClickListenerC0771o(this));
                    return;
                }
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            ArrayList arrayList2 = new ArrayList();
            if (C0242a.m1696a(this, "android.permission.RECORD_AUDIO") != 0) {
                arrayList2.add("android.permission.RECORD_AUDIO");
            }
            if (C0242a.m1696a(this, "android.permission.ACCESS_FINE_LOCATION") != 0) {
                arrayList2.add("android.permission.ACCESS_FINE_LOCATION");
            }
            if (C0242a.m1696a(this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                arrayList2.add("android.permission.ACCESS_COARSE_LOCATION");
            }
            if (arrayList2.size() > 0) {
                String[] strArr = (String[]) arrayList2.toArray(new String[0]);
                if (C0795b0.m6071i().m6093o("showRequestPermission", true)) {
                    this.f4628S = !this.f4628S;
                    C0231a.m1643m(this, strArr, 1000);
                }
            }
        }
    }

    private void init() {
        TextView textView;
        if (this.f4633X) {
            return;
        }
        this.f4633X = true;
        ((ViewStub) findViewById(2131296824)).setVisibility(0);
        m5891P0();
        if (C0795b0.m6071i().m6093o("ShowFloatBall", false)) {
            startService(new Intent(StubApp.getOrigApplicationContext(getApplicationContext()), (Class<?>) cn.manstep.phonemirrorBox.floatwindow.FloatWindowService.class));
        }
        new Handler().postDelayed(new RunnableC0756b(), 500L);
        m5900Z0();
        C0973j.m7257c().m7260e("initSettingsFragment", 50L, new RunnableC0758c());
        m5893R0(new RunnableC0760d(), 800L);
        this.f4625P.mo6021a();
        this.f4625P.mo6017B(this.f4616G);
        this.f4625P.m6016A(this);
        this.f4613D = (AutoBoxMirrorView) findViewById(2131296258);
        this.f4614E = (AutoBoxMirrorTextureView) findViewById(2131296257);
        m5885J0();
        C0983t c0983t = new C0983t(this);
        this.f4622M = c0983t;
        c0983t.m7388b(this);
        if (getResources().getIdentifier("editText", "id", getPackageName()) != 0 && (textView = (TextView) findViewById(2131296477)) != null) {
            textView.setText(C0925p.f5864a);
        }
        int identifier = getResources().getIdentifier("boxintro", "id", getPackageName());
        if (identifier != 0) {
            TextView textView2 = (TextView) findViewById(identifier);
            this.f4642z = textView2;
            if (textView2 != null) {
                textView2.setText(2131689478);
            }
        }
    }

    /* JADX INFO: renamed from: j1 */
    private void m5908j1(int i) {
        int iM6091m = C0795b0.m6071i().m6091m("NightMode", 2);
        if (C0733d.m5591i() && iM6091m == 2) {
            int i2 = i & 48;
            C0982s.m7374d("MainActivity", "setDayNightMode: uiMode=" + i2);
            if (i2 == 32) {
                C0733d.m5578L(16);
            } else {
                C0733d.m5578L(17);
            }
        }
    }

    /* JADX INFO: renamed from: k1 */
    private void m5909k1(boolean z) {
        C0982s.m7373c("MainActivity,setFullScreen: " + z);
        AbstractC0791a abstractC0791a = this.f4625P;
        if (abstractC0791a == null || abstractC0791a.m6018C(z)) {
            if (!z || f4609b0) {
                if (C0953u.m7001z().m7025X()) {
                    getWindow().getDecorView().setSystemUiVisibility(0);
                    return;
                }
                if (C0925p.f5875l <= C0925p.f5874k) {
                    if (z) {
                        m5894S0(getWindow());
                        return;
                    } else {
                        m5895T0(getWindow());
                        return;
                    }
                }
                C0982s.m7374d("MainActivity", "setFullScreen: exitFullScreen " + C0925p.f5874k + "x" + C0925p.f5875l);
                m5895T0(getWindow());
            }
        }
    }

    /* JADX INFO: renamed from: n1 */
    private void m5911n1(int i, int i2) {
        TextView textView = this.f4642z;
        if (textView == null) {
            return;
        }
        textView.setTextColor(i2);
        this.f4642z.setText(i);
    }

    /* JADX INFO: renamed from: o1 */
    private void m5913o1(String str, int i) {
        TextView textView = this.f4642z;
        if (textView == null) {
            return;
        }
        textView.setTextColor(i);
        this.f4642z.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p1 */
    public void m5915p1() {
    }

    /* JADX INFO: renamed from: q1 */
    private boolean m5917q1(MotionEvent motionEvent) {
        C0983t c0983t = this.f4622M;
        if (c0983t == null) {
            return false;
        }
        return c0983t.m7389c(motionEvent);
    }

    /* JADX INFO: renamed from: r1 */
    private void m5919r1() {
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: A */
    public void mo5928A(boolean z) {
        C0982s.m7373c("MainActivity,onNoticeBoxWifiConnStatus: " + z);
        this.f4625P.m6032l(z);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: B */
    public void mo5929B() {
        m5886K0(true);
        m5911n1(2131689608, -16711936);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: C */
    public void mo5930C() {
        C0732c.m5542e().m5563u();
        this.f4625P.mo6025e();
        m5911n1(2131689478, -1);
        mo5944e(BuildConfig.FLAVOR);
        ECarXUtil.getInstance().release();
        if (C0953u.m7001z().m7014M() && this.f4629T) {
            BluetoothAdapter.getDefaultAdapter().enable();
            C0982s.m7386p("MainActivity", "onNoticeBoxPlugIn: Bluetooth enable");
            this.f4629T = false;
        }
        C0981r.m7366a().m7370e();
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: D */
    public void mo5931D() {
        if (!C0733d.m5591i() || this.f4623N) {
            return;
        }
        Runtime.getRuntime().gc();
        ECarXUtil.getInstance().release();
        C0956c.m7100h().m7129w(this);
        C0982s.m7374d("MainActivity", "onNoticePhonePlug: bBtEnable=" + this.f4629T);
        if (C0953u.m7001z().m7014M() && this.f4629T) {
            BluetoothAdapter.getDefaultAdapter().enable();
            C0982s.m7376f("MainActivity", "onNoticePhonePlug: Bluetooth enable");
            this.f4629T = false;
        }
        WindowManager windowManager = (WindowManager) getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        C0925p.m6862f(displayMetrics.widthPixels, displayMetrics.heightPixels);
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        C0925p.f5877n = displayMetrics.widthPixels;
        C0925p.f5878o = displayMetrics.heightPixels;
        if (C0733d.m5572E() && this.f4621L) {
            this.f4621L = false;
            m5915p1();
        }
        if (this.f5496j) {
            recreate();
        }
        if (C0733d.m5590h()) {
            this.f4625P.mo6028h(C0795b0.m6071i().m6091m("MicType", 0));
        }
        this.f4625P.mo6037q();
        m5886K0(false);
        int identifier = getResources().getIdentifier("tvNoticePlug", "id", getPackageName());
        TextView textView = identifier != 0 ? (TextView) findViewById(identifier) : null;
        if (textView != null) {
            int i = this.f4638v;
            if (i == 1) {
                textView.setText(String.format(getResources().getString(2131689670), "CarPlay"));
            } else if (i != 3) {
                textView.setText(2131689886);
            } else {
                textView.setText(String.format(getResources().getString(2131689670), "Android Auto"));
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: F */
    public void mo5932F() {
        m5886K0(true);
        m5911n1(2131690012, -256);
        this.f4625P.mo6036p();
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: G */
    public void mo5933G() {
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: H */
    public void mo5934H(boolean z) {
        this.f4625P.m6024d(z);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: I */
    public void mo5935I() {
        m5886K0(true);
        m5911n1(2131690010, -16711936);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: J */
    public void mo5936J(boolean z) {
        C0982s.m7374d("MainActivity", "onNoticeWifiTransChanged: " + z);
        if (z) {
            C0982s.m7379i("MainActivity", "onNoticeWifiTransChanged: " + C0732c.m5542e().toString());
        }
        if (findViewById(2131296916) != null) {
            findViewById(2131296916).setVisibility(z ? 8 : 0);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: K */
    public void mo5937K() {
        C0982s.m7373c("MainActivity,onSettingsPageBackFirstPage: " + this.f4639w.getCurrentView());
        Runtime.getRuntime().gc();
        m5945f(this.f4618I);
        this.f4625P.m6044x(true);
        C0827c.m6227n().m6232p(StubApp.getOrigApplicationContext(getApplicationContext()));
        C0826b.m6214j().m6219l(StubApp.getOrigApplicationContext(getApplicationContext()));
        C0829e.m6240j().m6245l(StubApp.getOrigApplicationContext(getApplicationContext()));
        C0831g.m6258j().m6262l(StubApp.getOrigApplicationContext(getApplicationContext()));
        C0830f.m6249j().m6254l(StubApp.getOrigApplicationContext(getApplicationContext()));
        mo5933G();
        if (C0733d.m5571C()) {
            new Handler().postDelayed(new RunnableC0778v(this), 500L);
        } else if (C0733d.m5591i() && !C0733d.m5574G()) {
            C0982s.m7374d("MainActivity", "onSettingsPageBackFirstPage: send_g_open_async");
            C0733d.f4428l.m5707Y0();
        }
        if (C0735f.f4458O) {
            m5909k1(true);
        }
    }

    /* JADX INFO: renamed from: U0 */
    public void m5938U0() {
        if (this.f4617H || this.f4618I == null) {
            return;
        }
        this.f4625P.m6044x(false);
        if (C0735f.f4458O) {
            C0733d.m5579O(1, 2);
        }
        m5942c1(5);
        this.f4616G.m6892h();
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: a */
    public void mo5939a() {
        moveTaskToBack(false);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: b */
    public void mo5940b() {
        m5949i1("Action", "OnRestart");
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: c */
    public void mo5941c() {
        this.f4625P.mo6043w();
    }

    /* JADX INFO: renamed from: c1 */
    public void m5942c1(int i) {
        Fragment fragment;
        AbstractC0375w abstractC0375wM2774l = this.f4619J.m2774l();
        abstractC0375wM2774l.m2895r(2130772009, 2130772010, 2130772008, 2130772011);
        if (i == 5) {
            if (this.f4618I == null) {
                this.f4618I = new ViewOnClickListenerC1017z();
            }
            fragment = this.f4618I;
        } else if (i == 11) {
            if (this.f4620K == null) {
                this.f4620K = new C0907n();
            }
            fragment = this.f4620K;
        } else {
            fragment = null;
        }
        if (fragment != null) {
            try {
                if (fragment.m2486q0()) {
                    abstractC0375wM2774l.mo2533t(fragment);
                } else {
                    abstractC0375wM2774l.m2886b(2131296606, fragment);
                }
            } catch (Exception e) {
                C0982s.m7376f("MainActivity", "onEnterPage: \n" + C0982s.m7377g(e));
                return;
            }
        }
        abstractC0375wM2774l.mo2527i();
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: d */
    public void mo5943d() {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (m5917q1(motionEvent)) {
            return true;
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: e */
    public void mo5944e(String str) {
        int iCheck;
        TextView textView;
        C0982s.m7373c("MainActivity,onShowBoxVersion: BoxVer = " + str + ",APP:2025.03.19.1126,2025.03.19.1126");
        if (!TextUtils.isEmpty(str)) {
            C0795b0.m6071i().m6085F("BoxVersion", str);
        }
        if (this.f4625P.mo6022b()) {
            try {
                iCheck = JniTools.check();
            } catch (Error | Exception e) {
                e.printStackTrace();
                C0982s.m7374d("MainActivity", "onShowBoxVersion: \n" + C0982s.m7377g(e));
                iCheck = 0;
            }
            if (iCheck != 0) {
                C0982s.m7375e("MainActivity,onShowBoxVersion: ret=" + iCheck);
                if (iCheck == 1 || iCheck == 2) {
                    return;
                }
                if (iCheck == 3) {
                    m5904e1();
                    return;
                } else {
                    m5904e1();
                    return;
                }
            }
            if (!C0925p.m6860d(str)) {
                m5904e1();
                return;
            }
        } else {
            this.f4625P.mo6041u(str);
        }
        this.f4625P.mo6041u(str);
        this.f4623N = false;
        int identifier = getResources().getIdentifier("BoxVerText", "id", getPackageName());
        if (identifier != 0 && (textView = (TextView) findViewById(identifier)) != null) {
            textView.setText(str);
        }
        if (TextUtils.isEmpty(C0732c.m5542e().m5557o()) || TextUtils.isEmpty(C0732c.m5542e().m5558p())) {
            return;
        }
        m5888M0();
    }

    /* JADX INFO: renamed from: f */
    public void m5945f(Fragment fragment) {
        if (fragment != null) {
            AbstractC0375w abstractC0375wM2774l = this.f4619J.m2774l();
            abstractC0375wM2774l.m2895r(2130772008, 2130772011, 2130772009, 2130772010);
            abstractC0375wM2774l.mo2531n(fragment);
            abstractC0375wM2774l.mo2529k();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: g */
    public void mo5946g(int i) {
        m5886K0(true);
        if (i == 0) {
            m5911n1(2131689488, -16711936);
        } else if (1 == i) {
            m5911n1(2131689487, -65536);
        } else if (2 == i) {
            m5911n1(2131689485, -16711936);
            C0735f.k.m5774c(f4608a0);
        } else if (3 == i) {
            m5911n1(2131689484, -65536);
        }
        this.f4617H = false;
        this.f4625P.m6029i(i);
        m5905f1(this.f4620K);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: h */
    public void mo5947h() {
        if (!this.f4625P.mo6022b()) {
            this.f4625P.mo6046z();
            return;
        }
        m5886K0(true);
        m5911n1(2131689919, -65536);
        this.f4625P.m6031k();
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: i */
    public void mo5948i() {
        AbstractC0791a abstractC0791a = this.f4625P;
        if (abstractC0791a != null) {
            abstractC0791a.mo6042v();
        }
    }

    /* JADX INFO: renamed from: i1 */
    void m5949i1(String str, String str2) {
        Intent intent = new Intent("cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN");
        intent.putExtra(str, str2);
        sendBroadcast(intent);
    }

    @Override // cn.manstep.phonemirrorBox.util.C0983t.a
    /* JADX INFO: renamed from: j */
    public void mo5950j() {
        if (C0733d.f4428l == null || !C0735f.f4458O) {
            return;
        }
        C0733d.m5579O(1, 25);
        C0733d.f4428l.m5713b1();
        new Handler().postDelayed(new RunnableC0777u(), 1000L);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: k */
    public boolean mo5951k(int i) {
        ViewAnimator viewAnimator = this.f4639w;
        return viewAnimator == null || i < 0 || i >= viewAnimator.getChildCount() || this.f4639w.getCurrentView() == this.f4639w.getChildAt(i);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: l */
    public void mo5952l() {
        C0982s.m7374d("MainActivity", "onNoticeBoxDisconnected: bRecreate=" + this.f5496j);
        this.f4625P.mo6026f();
        m5911n1(2131689478, -1);
        mo5944e(BuildConfig.FLAVOR);
        mo5934H(false);
        mo5928A(false);
        ECarXUtil.getInstance().release();
        if (this.f5496j) {
            recreate();
        }
        if (C0953u.m7001z().m7014M() && this.f4629T) {
            BluetoothAdapter.getDefaultAdapter().enable();
            C0982s.m7386p("MainActivity", "onNoticeBoxDisconnected: Bluetooth enable");
            this.f4629T = false;
        }
        C0882a c0882a = this.f4627R;
        if (c0882a != null && c0882a.m2507z0()) {
            this.f4627R.mo2606j2();
        }
        C0981r.m7366a().m7370e();
    }

    /* JADX INFO: renamed from: l1 */
    public void m5953l1(boolean z, String str, String str2, long j, String str3, boolean z2) {
        if (C0795b0.m6071i().m6092n(z2 ? "AppLatestVer" : "BoxLatestVer", BuildConfig.FLAVOR).equals(str)) {
            return;
        }
        C0882a c0882a = this.f4627R;
        if ((c0882a == null || !c0882a.m2507z0()) && !C0731b.f4351h) {
            this.f4627R = C0882a.m6529K2(getSupportFragmentManager(), new ViewOnClickListenerC0775s(j, z2, str3), z ? null : new ViewOnClickListenerC0776t(z2, str));
        }
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: m */
    public void mo5954m(boolean z) {
        if (z) {
            m5911n1(2131689733, -65536);
            return;
        }
        if (C0733d.m5591i()) {
            m5911n1(2131689478, -1);
        } else {
            m5911n1(2131689479, -1);
        }
        m5886K0(true);
    }

    /* JADX INFO: renamed from: m1 */
    public void m5955m1() {
        if (this.f4626Q == null) {
            C0798a c0798a = new C0798a(StubApp.getOrigApplicationContext(getApplicationContext()));
            this.f4626Q = c0798a;
            this.f4615F.m6277b(c0798a, getResources().getDimension(2131165332), getResources().getDimension(2131165331));
            this.f4626Q.setCallback(new C0757b0());
        }
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: n */
    public void mo5956n(boolean z) {
        this.f4617H = true;
        if (z) {
            m5945f(this.f4618I);
        }
        m5886K0(true);
        m5911n1(2131689483, -256);
        this.f4625P.m6030j();
        this.f4630U.m7391b(new RunnableC0780x(), 800L);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: o */
    public void mo5957o() {
        finish();
    }

    @Override // androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        ViewOnClickListenerC1017z viewOnClickListenerC1017z;
        super.onActivityResult(i, i2, intent);
        C0982s.m7373c("MainActivity,onActivityResult: requestCode=" + i + ", resultCode=" + i2);
        if (this.f4625P.mo6023c(i, i2, intent)) {
            return;
        }
        if (i == 69) {
            if (i2 != -1) {
                if (i2 != 96) {
                    if (i2 == 0) {
                        this.f4636t = false;
                        C0982s.m7373c("MainActivity,onActivityResult: Activity.RESULT_CANCELED");
                        return;
                    }
                    return;
                }
                Throwable error = UCrop.getError(intent);
                this.f4636t = false;
                C0982s.m7375e("MainActivity,onActivityResult: " + Log.getStackTraceString(error));
                return;
            }
            Uri output = UCrop.getOutput(intent);
            C0982s.m7373c("MainActivity,onActivityResult: " + output);
            if (output != null) {
                String path = output.getPath();
                C0982s.m7373c("MainActivity,onActivityResult: " + path);
                C0795b0.m6071i().m6096z("custom", path);
                this.f4636t = true;
                return;
            }
            return;
        }
        if (i != 100) {
            if (i == 1 && i2 == -1) {
                m5892Q0(intent.getData(), Uri.fromFile(new File(getCacheDir(), "custom.png")));
                return;
            }
            return;
        }
        if (i2 == -1) {
            Point point = new Point();
            Point point2 = new Point();
            Point point3 = new Point();
            getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
            getWindow().getWindowManager().getDefaultDisplay().getSize(point3);
            C0982s.m7378h("MainActivity,onActivityResult: CurrentSizeRange: " + point + "," + point2 + "," + point3);
            if (((C0987x) intent.getParcelableExtra("MaxSize")) == null || (viewOnClickListenerC1017z = this.f4618I) == null || viewOnClickListenerC1017z.f6462y0 == null || !intent.getBooleanExtra("ReAddSettingsFragment", false)) {
                return;
            }
            AbstractC0375w abstractC0375wM2774l = this.f4619J.m2774l();
            abstractC0375wM2774l.mo2532o(this.f4618I);
            abstractC0375wM2774l.mo2527i();
            this.f4618I = null;
            m5901a1();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.f4616G.m6899q();
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        C0982s.m7373c("MainActivity,onConfigurationChanged: newConfig.orientation = " + configuration.orientation);
        super.onConfigurationChanged(configuration);
        if (this.f4625P.m6033m(configuration)) {
            C0982s.m7373c("MainActivity,onConfigurationChanged: mFirstPageEx= " + configuration.orientation);
            return;
        }
        m5908j1(configuration.uiMode);
        if (C0995e.m7430C()) {
            m5915p1();
        }
        int i = configuration.orientation;
        if (i == 2) {
            this.f4621L = true;
            if (C0925p.f5874k < C0925p.f5875l) {
                C0925p.m6862f(C0925p.f5875l, C0925p.f5874k);
            }
            if (C0925p.f5877n < C0925p.f5878o) {
                int i2 = C0925p.f5877n;
                C0925p.f5877n = C0925p.f5878o;
                C0925p.f5878o = i2;
            }
            AutoBoxMirrorView.m5345g(C0925p.f5874k, C0925p.f5875l);
            C0733d.m5579O(1, CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
            if (this.f4616G.m6895m()) {
                m5909k1(true);
            }
        } else if (i == 1) {
            this.f4621L = true;
            if (C0925p.f5874k > C0925p.f5875l) {
                C0925p.m6862f(C0925p.f5875l, C0925p.f5874k);
            }
            if (C0925p.f5877n > C0925p.f5878o) {
                int i3 = C0925p.f5877n;
                C0925p.f5877n = C0925p.f5878o;
                C0925p.f5878o = i3;
            }
            Point point = new Point();
            Point point2 = new Point();
            getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
            if (this.f5488b) {
                C0982s.m7373c("MainActivity,onConfigurationChanged: " + point.toString() + " " + point2.toString() + " " + C0925p.f5878o);
                int i4 = point2.y;
                if (i4 < C0925p.f5878o) {
                    C0925p.f5878o = i4;
                }
            }
            AutoBoxMirrorView.m5345g(C0925p.f5877n, C0925p.f5878o);
            C0733d.m5579O(1, CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
            m5909k1(false);
        }
        if (C0995e.m7430C() && this.f5496j && !C0733d.m5574G()) {
            recreate();
        }
        C0982s.m7373c("MainActivity,onConfigurationChanged: " + C0925p.f5874k + " " + C0925p.f5875l + " " + configuration.orientation);
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onDestroy() {
        C1013k c1013k;
        C0982s.m7375e("MainActivity,onDestroy");
        C0930q.m6906g().m6917m(this, false);
        this.f4619J = null;
        this.f4633X = false;
        AbstractC0791a abstractC0791a = this.f4625P;
        if (abstractC0791a != null) {
            abstractC0791a.mo6045y();
            this.f4625P = null;
        }
        C0928c c0928c = this.f4616G;
        if (c0928c != null) {
            c0928c.m6888E();
        }
        ViewAnimator viewAnimator = this.f4639w;
        if (viewAnimator != null) {
            viewAnimator.removeAllViews();
        }
        ServiceConnection serviceConnection = this.f4610A;
        if (serviceConnection != null) {
            unbindService(serviceConnection);
        }
        this.f4611B = null;
        stopService(new Intent(this, (Class<?>) ModeChangeService.class));
        C0827c.m6227n().m6235t();
        C0982s.m7373c("MainActivity,onDestroy: Stop AutoStartService");
        ViewOnClickListenerC1017z viewOnClickListenerC1017z = this.f4618I;
        if (viewOnClickListenerC1017z != null && (c1013k = viewOnClickListenerC1017z.f6462y0) != null) {
            c1013k.m7726K0();
        }
        stopService(new Intent(this, (Class<?>) AutoStartService.class));
        C0824f.m6204e();
        C0883b.m6538c().m6542g();
        m5919r1();
        m5949i1("Action", "onDestroy");
        ECarXUtil.getInstance().release();
        if (!this.f5496j) {
            C0843e.m6289g().m6297j(StubApp.getOrigApplicationContext(getApplicationContext()));
            stopService(new Intent(StubApp.getOrigApplicationContext(getApplicationContext()), (Class<?>) cn.manstep.phonemirrorBox.floatwindow.FloatWindowService.class));
            C0735f c0735f = C0733d.f4428l;
            if (c0735f != null) {
                c0735f.m5712b0();
            }
            C0995e.m7433F();
            C0956c.m7100h().m7128v();
        }
        C0956c.m7100h().m7101A(this);
        HandlerC0814b.m6192a().m6193b();
        super.onDestroy();
        C0982s.m7375e("MainActivity,onDestroy Over");
    }

    @Override // androidx.appcompat.app.ActivityC0081d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        C0982s.m7373c("MainActivity,onKeyDown: keyCode=" + i + " " + keyEvent.toString());
        if (C0730a.f4333s || C0953u.m7001z().m7017P()) {
            return super.onKeyDown(i, keyEvent);
        }
        if ((i == 25 || i == 24 || i == 164) && this.f4616G.m6897o(i, true)) {
            C0982s.m7373c("MainActivity,onKeyDown: UseVolumeKeySwitchMusic " + i);
            return true;
        }
        if (keyEvent.getRepeatCount() > 0) {
            this.f4624O = true;
        } else {
            this.f4624O = false;
        }
        if (this.f4625P.m6034n(i, keyEvent)) {
            return true;
        }
        if (this.f4631V != null && !C0733d.m5574G()) {
            return this.f4631V.onKeyDown(i, keyEvent);
        }
        if (!C0733d.m5574G()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (i == 300) {
            if (C0991a.m7412t().m7423w()) {
                C0995e.m7435H(300);
                return true;
            }
        } else if (i == 301 && C0991a.m7412t().m7423w()) {
            C0995e.m7435H(301);
            return true;
        }
        int iM6068f = C0795b0.m6068f(this, i);
        int iM6069g = C0795b0.m6069g(this, i);
        C0982s.m7373c("MainActivity,onKeyDown: cmd=" + iM6068f + ", cmd2=" + iM6069g);
        if (iM6068f == 0 && iM6069g == 0) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (C0730a.f4333s || C0953u.m7001z().m7017P()) {
            return super.onKeyUp(i, keyEvent);
        }
        C0982s.m7373c("MainActivity,onKeyUp: keyCode=" + i + " " + keyEvent.toString());
        if (((i == 25 || i == 24 || i == 164) && this.f4616G.m6897o(i, false)) || this.f4625P.m6035o(i, keyEvent, this.f4624O)) {
            return true;
        }
        if (this.f4631V != null && !C0733d.m5574G()) {
            return this.f4631V.m6756a(i, keyEvent, this.f4624O);
        }
        if (!C0735f.f4458O) {
            return super.onKeyUp(i, keyEvent);
        }
        if (i != 300 && i != 301) {
            int iM6069g = this.f4624O ? C0795b0.m6069g(this, i) : C0795b0.m6068f(this, i);
            C0982s.m7373c("MainActivity,onKeyUp: cmd=" + iM6069g + ", mLongPressKey=" + this.f4624O);
            if (iM6069g == 0) {
                C0982s.m7373c("MainActivity,onKeyUp: keyCode = " + i);
                if (!this.f4624O || !C0735f.f4458O || 4 != i) {
                    return super.onKeyUp(i, keyEvent);
                }
                m5903d1();
                return true;
            }
            C0730a.m5423G();
            this.f4616G.m6889G(iM6069g);
        }
        return true;
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m5897W0(intent);
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f4625P.m6044x(false);
        C0982s.m7373c("MainActivity,onPause");
        if (this.f4616G.m6896n() && !C0925p.f5870g && "ac8317".equals(this.f4612C)) {
            this.f4613D.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, android.app.Activity
    public native void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onResume() {
        super.onResume();
        C0982s.m7373c("MainActivity,onResume: " + C0925p.f5865b);
        if (C0733d.m5574G()) {
            C0956c.m7100h().m7108H();
        }
        if (C0733d.m5574G()) {
            C0956c.m7100h().m7112d(C0995e.m7430C());
        }
        if (C0733d.m5574G() && C0991a.m7412t().m7425y()) {
            ECarXUtil.getInstance().init(StubApp.getOrigApplicationContext(getApplicationContext()));
        }
        if (this.f4625P == null) {
            C0990v c0990v = new C0990v(this);
            this.f4625P = c0990v;
            c0990v.mo6021a();
        }
        if (this.f4616G.m6893i() == 0 || this.f4616G.m6893i() == -1) {
            this.f4625P.m6044x(true);
        } else {
            this.f4625P.m6044x(false);
        }
        if (this.f4616G.m6896n() && !C0925p.f5870g && "ac8317".equals(this.f4612C)) {
            this.f4613D.setVisibility(0);
        }
        this.f4616G.m6887D(true);
        m5899Y0();
        C0982s.m7373c("MainActivity,onResume: PhoneConnected=" + C0735f.f4458O);
        if (C0735f.f4458O) {
            if (this.f4639w == null) {
                init();
            }
            if (this.f4639w.getCurrentView() != this.f4639w.getChildAt(3)) {
                mo5960r(3, true);
            }
        }
        try {
            m5949i1("Action", "onResume");
            if (this.f4616G.m6896n() && C0733d.f4428l != null && C0733d.f4428l.m5683J() != null) {
                if (C0733d.f4428l.m5683J().mo6920b()) {
                    sendBroadcast(new Intent("net.easyconn.a2dp.acquire"));
                    C0982s.m7376f("A2DP", "send broad a2dp acquire");
                } else {
                    C0730a.m5418B();
                }
            }
        } catch (Exception e) {
            C0982s.m7375e("MainActivity,onResume: \n" + Log.getStackTraceString(e));
        }
        ModeChangeService modeChangeService = this.f4611B;
        if (modeChangeService != null) {
            modeChangeService.m5993n(true);
        }
        C0982s.m7374d("MainActivity", "bRequestPermissionStarted=" + this.f4628S);
        if (!this.f4628S) {
            m5907h1();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.f4635Z.m7390a(new RunnableC0764h());
        }
        if (C0733d.m5574G() && C0953u.m7001z().m7014M() && BluetoothAdapter.getDefaultAdapter().isEnabled()) {
            this.f4629T = true;
            BluetoothAdapter.getDefaultAdapter().disable();
        }
        if (this.f4633X || !hasWindowFocus()) {
            return;
        }
        init();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.clear();
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStart() {
        super.onStart();
        C0982s.m7378h("MainActivity,onStart");
        new Handler().postDelayed(new RunnableC0763g(), 800L);
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStop() {
        super.onStop();
        C0982s.m7378h("MainActivity,onStop");
        this.f4625P.m6044x(false);
        m5949i1("Action", "onStop");
        this.f4616G.m6887D(false);
        C0964c0.m7196t(this, C0795b0.m6071i().m6093o("BgKeyValid", true));
        ModeChangeService modeChangeService = this.f4611B;
        if (modeChangeService != null) {
            modeChangeService.m5993n(false);
        }
        if (!C0733d.m5574G() && C0953u.m7001z().m7014M() && this.f4629T) {
            BluetoothAdapter.getDefaultAdapter().enable();
            C0982s.m7386p("MainActivity", "onStop: Bluetooth enable");
            this.f4629T = false;
        }
        if (C0733d.m5574G()) {
            C0956c.m7100h().m7130x();
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (C0733d.m5591i() && C0735f.f4459P && motionEvent.getAction() == 1) {
            this.f4625P.m6019D(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        C0982s.m7378h("MainActivity, onWindowFocusChanged: hasFocus = " + z + "=================" + (SystemClock.elapsedRealtime() - MyApplication.m5997b().f4698b));
        if (z) {
            init();
        }
        f4609b0 = z;
        this.f4616G.m6887D(z);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            int i = extras.getInt("AutoStart");
            C0982s.m7373c("MainActivity, onWindowFocusChanged: flag = " + i);
            if (i == 1) {
                if (!C0733d.m5574G()) {
                    mo5931D();
                }
            } else if (i == 2) {
                f4609b0 = false;
                C0733d.m5592j();
                C0735f c0735f = C0733d.f4428l;
                if (c0735f != null) {
                    c0735f.m5706X0();
                }
            }
        }
        if (C0731b.f4351h && m6513d0()) {
            if (z) {
                m5899Y0();
            } else {
                m5895T0(getWindow());
            }
        }
        if (this.f4616G.m6896n() && !C0925p.f5870g && "ac8317".equals(this.f4612C)) {
            this.f4613D.setVisibility(z ? 0 : 8);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: p */
    public void mo5958p(int i) {
        C0982s.m7374d("MainActivity", "onBackHome: " + i);
        if (i != 0) {
            Intent intent = new Intent(this, (Class<?>) MainActivity.class);
            intent.setFlags(268435456);
            startActivity(intent);
            C0730a.m5423G();
            return;
        }
        if (MyApplication.m5997b().m6004g()) {
            if ("ecarx-IHU3Q122-IHU3Q122-9(28)".equals(C0953u.m7001z().m7064y())) {
                Intent intent2 = new Intent();
                intent2.setComponent(new ComponentName("com.fawcar.dlife6.launcher", "com.fawcar.dlife6.launcher.activity.AllAppsActivity"));
                startActivity(intent2);
                return;
            }
            if ("QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(C0953u.m7001z().m7064y())) {
                Intent intent3 = new Intent();
                intent3.setComponent(new ComponentName("com.avatr.ivi.foundation.launcher", "com.avatr.ivi.foundation.launcher.base.LauncherService"));
                intent3.putExtra("launcher_service:arg", "start_home");
                String str = String.format(Locale.getDefault(), "{\"extra\":\"\",\"from\":\"%s\"}", getPackageName());
                C0982s.m7374d("MainActivity", "onBackHome: extra=" + str);
                intent3.putExtra("launcher_service:arg_extra", str);
                startService(intent3);
                return;
            }
            if ("CAIC-x9hp for arm64-x9hp_bestune_d511_overseas_none_linux_di_baseline-10(29)".equals(C0953u.m7001z().m7064y())) {
                Intent intent4 = new Intent();
                C0982s.m7374d("MainActivity", "com.faw.factorymode.ui.activity.");
                intent4.setComponent(new ComponentName("com.faw.factorymode", "com.faw.factorymode.ui.activity.MainActivity"));
                startActivity(intent4);
                return;
            }
            if ("DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(C0953u.m7001z().m7064y())) {
                Intent intent5 = new Intent();
                C0982s.m7374d("MainActivity", "com.desaysv.setting.fragment.voice.TimbreActivity");
                intent5.setComponent(new ComponentName("com.faw.systemsetting", "com.desaysv.setting.fragment.voice.TimbreActivity"));
                startActivity(intent5);
                return;
            }
            Intent intent6 = new Intent("android.intent.action.MAIN");
            intent6.setFlags(268435456);
            intent6.addCategory("android.intent.category.HOME");
            startActivity(intent6);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: q */
    public void mo5959q(boolean z) {
        this.f4618I.m7835M2(z);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: r */
    public void mo5960r(int i, boolean z) {
        C0982s.m7373c("MainActivity, changePage: nextPage=" + i);
        if (this.f4639w == null) {
            init();
        }
        if (3 == i) {
            if (this.f4611B == null) {
                m5885J0();
            }
            AutoBoxMirrorView.setOrientation(getResources().getConfiguration().orientation);
            C0730a.m5418B();
            this.f4625P.mo6039s(true);
            if (!this.f4616G.m6895m()) {
                this.f4616G.m6890H(3);
            }
            m5899Y0();
            ECarXUtil.getInstance().init(StubApp.getOrigApplicationContext(getApplicationContext()));
            m5908j1(getResources().getConfiguration().uiMode);
            if (!m5898X0()) {
                C1000a.m7490c(this, 2131689954);
            }
        } else if (i == 1) {
            this.f4625P.mo6040t();
            m5899Y0();
        } else {
            this.f4625P.mo6039s(false);
        }
        if (!getResources().getBoolean(2131034139)) {
            if (i != 3 && i != 0) {
                if (i == 1) {
                    this.f4625P.mo6040t();
                    return;
                } else {
                    this.f4625P.mo6039s(false);
                    return;
                }
            }
            if (i == 3) {
                m5899Y0();
                this.f4625P.mo6039s(true);
                i = 1;
            } else {
                this.f4625P.mo6039s(false);
            }
        }
        if (z) {
            this.f4639w.setDisplayedChild(i);
            if (i == 0) {
                m5909k1(false);
                return;
            } else {
                if (i == 3) {
                    m5909k1(true);
                    return;
                }
                return;
            }
        }
        C0982s.m7373c("MainActivity, changePage: nextPage=" + i + ", mSingleWorkMode=" + this.f4637u);
        if (this.f4639w.getCurrentView() != this.f4639w.getChildAt(i)) {
            this.f4639w.setDisplayedChild(i);
        }
        m5899Y0();
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: s */
    public void mo5961s() {
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: t */
    public void mo5962t(String str) {
        m5886K0(true);
        m5913o1(String.format(getResources().getString(2131690011), str), -65536);
        this.f4625P.mo6037q();
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: u */
    public void mo5963u() {
        Toast.makeText(this, getString(2131689954), 1).show();
        m5896V0(this);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: v */
    public void mo5964v(String str) {
        C0982s.m7374d("MainActivity", "onNoticeWirelessDeviceConnFailed: " + str);
        m5886K0(true);
        m5913o1(String.format(getResources().getString(2131690009), str), -65536);
        C0732c.m5542e().m5564v();
        this.f4625P.mo6037q();
        this.f4625P.m6038r(str);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: x */
    public void mo5965x(boolean z) {
        this.f4617H = true;
        if (z) {
            m5945f(this.f4618I);
        }
        m5886K0(true);
        m5911n1(2131689486, -256);
        this.f4625P.m6030j();
        this.f4630U.m7391b(new RunnableC0779w(), 800L);
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: y */
    public void mo5966y() {
        m5911n1(2131689984, -16711936);
        this.f4625P.m6027g();
    }

    @Override // cn.manstep.phonemirrorBox.p083p0.InterfaceC0927b
    /* JADX INFO: renamed from: z */
    public void mo5967z() {
        if (C0953u.m7001z().m7014M()) {
            if (BluetoothAdapter.getDefaultAdapter().isEnabled()) {
                this.f4629T = true;
                C0982s.m7374d("MainActivity", "onPhoneWorking: bBtEnable = true");
                BluetoothAdapter.getDefaultAdapter().disable();
            } else {
                this.f4629T = false;
                C0982s.m7374d("MainActivity", "onPhoneWorking: bBtEnable = false");
            }
        }
        C0981r.m7366a().m7369c();
    }
}
