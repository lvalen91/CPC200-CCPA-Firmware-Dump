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
import androidx.fragment.app.Fragment;
import cn.manstep.phonemirrorBox.BoxInterface.f;
import cn.manstep.phonemirrorBox.ModeChangeService;
import cn.manstep.phonemirrorBox.a;
import cn.manstep.phonemirrorBox.customview.a;
import cn.manstep.phonemirrorBox.ecarx.ECarXUtil;
import cn.manstep.phonemirrorBox.k0.f;
import cn.manstep.phonemirrorBox.util.JniTools;
import cn.manstep.phonemirrorBox.util.b0;
import cn.manstep.phonemirrorBox.util.p;
import cn.manstep.phonemirrorBox.util.t;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.UCrop;
import com.yalantis.ucrop.view.CropImageView;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class MainActivity extends cn.manstep.phonemirrorBox.k implements cn.manstep.phonemirrorBox.p0.b, a.b, t.a {
    public static int a0 = 2;
    public static boolean b0;
    private AutoBoxMirrorView D;
    private AutoBoxMirrorTextureView E;
    private cn.manstep.phonemirrorBox.floatwindow.b F;
    private cn.manstep.phonemirrorBox.p0.c G;
    private cn.manstep.phonemirrorBox.z I;
    private androidx.fragment.app.n J;
    private cn.manstep.phonemirrorBox.l0.n K;
    private cn.manstep.phonemirrorBox.util.t M;
    private cn.manstep.phonemirrorBox.a P;
    private cn.manstep.phonemirrorBox.customview.a Q;
    private cn.manstep.phonemirrorBox.k0.a R;
    private boolean S;
    private boolean T;
    private final cn.manstep.phonemirrorBox.util.u U;
    private cn.manstep.phonemirrorBox.l0.u V;
    private boolean W;
    private boolean X;
    private final int[] Y;
    private final cn.manstep.phonemirrorBox.util.u Z;
    private ViewAnimator w;
    private Animation x;
    private Animation y;
    private TextView z;
    public boolean t = false;
    public int u = -1;
    public int v = -1;
    private ServiceConnection A = null;
    private ModeChangeService B = null;
    private String C = BuildConfig.FLAVOR;
    private boolean H = false;
    private boolean L = false;
    private boolean N = false;
    private boolean O = false;

    class a implements b0.d {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.util.b0.d
        public void a(String str, String str2, long j, String str3, boolean z) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            MainActivity.this.l1(z, str, str3, j, str2, false);
        }
    }

    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || MainActivity.this.I == null || MainActivity.this.I.y0 == null || !MainActivity.this.I.y0.a0()) {
                return;
            }
            MainActivity.this.t(cn.manstep.phonemirrorBox.BoxInterface.d.r());
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.O0();
        }
    }

    class b0 implements a.g {
        b0() {
        }

        @Override // cn.manstep.phonemirrorBox.customview.a.g
        public void a() {
            MainActivity.this.F.a(MainActivity.this.Q);
            MainActivity.this.Q = null;
        }

        @Override // cn.manstep.phonemirrorBox.customview.a.g
        public void b(String str, int i) {
            if (MainActivity.this.E != null) {
                MainActivity.this.E.p(str, i);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.a1();
        }
    }

    class c0 implements b0.d {
        c0() {
        }

        @Override // cn.manstep.phonemirrorBox.util.b0.d
        public void a(String str, String str2, long j, String str3, boolean z) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            MainActivity.this.l1(z, str, str3, j, str2, true);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.p1();
        }
    }

    class e implements Runnable {

        class a implements View.OnClickListener {
            a(e eVar) {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                cn.manstep.phonemirrorBox.b0.i().F("ATP", Boolean.TRUE);
                MyApplication.b().e();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.finish();
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!MainActivity.this.W) {
                if (MainActivity.this.getResources().getBoolean(2131034120)) {
                    cn.manstep.phonemirrorBox.k0.k.A2(MainActivity.this.getSupportFragmentManager(), new a(this), new b());
                } else {
                    MainActivity.this.W = true;
                    cn.manstep.phonemirrorBox.b0.i().F("ATP", Boolean.TRUE);
                    MyApplication.b().e();
                }
            }
            if (MainActivity.this.w.getCurrentView() == null) {
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "initAnimation->run: " + MainActivity.this.w.getWidth() + "x" + MainActivity.this.w.getHeight());
                return;
            }
            int height = MainActivity.this.w.getCurrentView().getHeight();
            int width = MainActivity.this.w.getCurrentView().getWidth();
            cn.manstep.phonemirrorBox.util.s.d("MainActivity", "initAnimation->run: " + cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l + ", Measured: " + width + "x" + height);
            if (cn.manstep.phonemirrorBox.p.l > cn.manstep.phonemirrorBox.p.k) {
                cn.manstep.phonemirrorBox.p.n = width;
                cn.manstep.phonemirrorBox.p.o = height;
            }
            if (MainActivity.this.b1() || height > width) {
                cn.manstep.phonemirrorBox.c0.i().q(width, height);
                cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
                if (fVar != null) {
                    fVar.Q();
                }
            }
        }
    }

    class f implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f1509b;

        f(View view) {
            this.f1509b = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int[] iArr = new int[2];
            this.f1509b.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            if (MainActivity.this.Y[0] == i && MainActivity.this.Y[1] == i2) {
                return;
            }
            cn.manstep.phonemirrorBox.util.s.d("Position", "X Coordinate: " + i + ", Y Coordinate: " + i2);
            MainActivity.this.Y[0] = i;
            MainActivity.this.Y[1] = i2;
            if (cn.manstep.phonemirrorBox.floatwindow.e.g().i()) {
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onGlobalLayout： ");
                cn.manstep.phonemirrorBox.floatwindow.e.g().p(StubApp.getOrigApplicationContext(MainActivity.this.getApplicationContext()), i > 100);
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.manstep.phonemirrorBox.util.c0.t(MainActivity.this, true);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MainActivity.this.getResources().getBoolean(2131034120)) {
                return;
            }
            if (!Settings.canDrawOverlays(StubApp.getOrigApplicationContext(MainActivity.this.getApplicationContext()))) {
                MainActivity.this.g1();
            } else {
                if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                    return;
                }
                MainActivity.this.h1();
            }
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                intent.setData(Uri.parse("package:" + MainActivity.this.getPackageName()));
                intent.setFlags(268435456);
                MainActivity.this.startActivity(intent);
            } catch (ActivityNotFoundException unused) {
                MainActivity.this.h1();
            }
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.finish();
        }
    }

    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("GoMainActivity.BroadcastReceiver.action")) {
                int intExtra = intent.getIntExtra("GoMainActivity.BroadcastReceiver.data", 1);
                cn.manstep.phonemirrorBox.util.s.c("MainActivity, goMainActivityReceiver: mode = " + intExtra);
                MainActivity mainActivity = MainActivity.this;
                mainActivity.v = intExtra;
                mainActivity.L0(intExtra, false);
            }
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                cn.manstep.phonemirrorBox.util.f.e(MainActivity.this, "com.huawei.security.privilegemanager", "com.huawei.security.enhanced.permission.ui.activity.MainActivity");
            } catch (ActivityNotFoundException unused) {
                MainActivity.this.h1();
            }
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.finish();
        }
    }

    class n implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f1517b;

        n(List list) {
            this.f1517b = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            androidx.core.app.a.m(MainActivity.this, (String[]) this.f1517b.toArray(new String[0]), 1000);
        }
    }

    class o implements View.OnClickListener {
        o(MainActivity mainActivity) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (cn.manstep.phonemirrorBox.util.c0.a(MainActivity.this, "mute.wav", "mute.wav")) {
                cn.manstep.phonemirrorBox.b0.D(MainActivity.this, true);
            }
        }
    }

    class q implements DialogInterface.OnClickListener {
        q(MainActivity mainActivity) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    class r implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AlertDialog f1520b;

        r(AlertDialog alertDialog) {
            this.f1520b = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainActivity.this.G.p();
            this.f1520b.dismiss();
        }
    }

    class s implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f1522b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f1523c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f1524d;

        class a implements p.f {
            final /* synthetic */ cn.manstep.phonemirrorBox.k0.f a;

            /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.MainActivity$s$a$a, reason: collision with other inner class name */
            class ViewOnClickListenerC0080a implements View.OnClickListener {
                ViewOnClickListenerC0080a() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    cn.manstep.phonemirrorBox.util.c0.o(MainActivity.this, cn.manstep.phonemirrorBox.util.b0.m().k());
                }
            }

            class b implements Runnable {
                b() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.a.dismiss();
                }
            }

            a(cn.manstep.phonemirrorBox.k0.f fVar) {
                this.a = fVar;
            }

            @Override // cn.manstep.phonemirrorBox.util.p.f
            public void a() {
            }

            @Override // cn.manstep.phonemirrorBox.util.p.e
            public void b(String str) {
                this.a.m();
                this.a.k(2131689706);
            }

            @Override // cn.manstep.phonemirrorBox.util.p.e
            public void c(String str) {
                if (!s.this.f1524d.equalsIgnoreCase(str)) {
                    b(s.this.f1524d);
                    return;
                }
                if (s.this.f1523c) {
                    this.a.dismiss();
                    cn.manstep.phonemirrorBox.k0.a.D2(MainActivity.this.getSupportFragmentManager(), new ViewOnClickListenerC0080a(), false);
                    return;
                }
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                    this.a.dismiss();
                    return;
                }
                File file = new File(cn.manstep.phonemirrorBox.util.b0.m().l());
                if (file.exists() && file.isFile()) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        int iAvailable = fileInputStream.available();
                        byte[] bArr = new byte[iAvailable];
                        int i = fileInputStream.read(bArr, 0, iAvailable);
                        fileInputStream.close();
                        if (i == iAvailable) {
                            if (cn.manstep.phonemirrorBox.BoxInterface.d.l == null) {
                                this.a.dismiss();
                            } else if (cn.manstep.phonemirrorBox.BoxInterface.d.l.w1("/tmp/Auto_Box_Update.img\u0000", bArr)) {
                                new Handler().postDelayed(new b(), 1000L);
                            }
                        }
                    } catch (Exception e) {
                        cn.manstep.phonemirrorBox.util.s.e("MainActivity,upgradeBox: \n" + Log.getStackTraceString(e));
                    }
                }
            }

            @Override // cn.manstep.phonemirrorBox.util.p.f
            public void d(long j) {
                this.a.l((int) j);
            }

            @Override // cn.manstep.phonemirrorBox.util.p.f
            public void e(long j) {
                this.a.j((int) j);
            }
        }

        s(long j, boolean z, String str) {
            this.f1522b = j;
            this.f1523c = z;
            this.f1524d = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.manstep.phonemirrorBox.k0.f fVarB = new f.b(MainActivity.this).b();
            fVarB.show();
            fVarB.j((int) this.f1522b);
            if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 25);
                cn.manstep.phonemirrorBox.BoxInterface.d.l.b1();
            }
            cn.manstep.phonemirrorBox.util.b0.m().j(this.f1523c, new a(fVarB));
        }
    }

    class t implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f1528b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f1529c;

        t(boolean z, String str) {
            this.f1528b = z;
            this.f1529c = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f1528b && cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                MainActivity.this.M0();
            }
            cn.manstep.phonemirrorBox.b0.i().F(this.f1528b ? "AppLatestVer" : "BoxLatestVer", this.f1529c);
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.fragment.app.w wVarL = MainActivity.this.J.l();
            wVarL.r(2130772007, 2130772012, 2130772007, 2130772012);
            if (MainActivity.this.I != null) {
                MainActivity.this.I.S2();
                if (MainActivity.this.I.q0()) {
                    wVarL.t(MainActivity.this.I);
                } else {
                    wVarL.b(2131296606, MainActivity.this.I);
                }
                wVarL.i();
            }
        }
    }

    class v implements Runnable {
        v(MainActivity mainActivity) {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyApplication.b().j();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.c1(11);
        }
    }

    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainActivity.this.c1(11);
        }
    }

    class y implements ServiceConnection {
        y() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MainActivity.this.B = ((ModeChangeService.c) iBinder).a();
            MainActivity.this.B.o(MainActivity.this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            MainActivity.this.B = null;
            cn.manstep.phonemirrorBox.util.s.i("MainActivity", "onServiceDisconnected: " + componentName);
        }
    }

    class z implements View.OnSystemUiVisibilityChangeListener {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.Y0();
            }
        }

        z() {
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
            cn.manstep.phonemirrorBox.util.s.c(sb.toString());
            if (i2 == 0 || i3 == 0) {
                cn.manstep.phonemirrorBox.util.j jVarC = cn.manstep.phonemirrorBox.util.j.c();
                jVarC.b("hideNavigationBar");
                jVarC.e("hideNavigationBar", 3000L, new a());
            }
        }
    }

    static {
        StubApp.interface11(1526);
    }

    public MainActivity() {
        new k();
        this.S = true;
        this.T = false;
        this.U = new cn.manstep.phonemirrorBox.util.u();
        this.V = null;
        this.W = false;
        this.X = false;
        this.Y = new int[2];
        this.Z = new cn.manstep.phonemirrorBox.util.u();
    }

    private void J0() {
        this.A = new y();
        bindService(new Intent(this, (Class<?>) ModeChangeService.class), this.A, 1);
    }

    private void K0(boolean z2) {
        TextView textView = this.z;
        if (textView != null) {
            if (z2) {
                textView.setVisibility(0);
            } else {
                textView.setVisibility(4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0(int i2, boolean z2) {
        D();
        if (cn.manstep.phonemirrorBox.BoxInterface.f.O) {
            N0();
            return;
        }
        if (i2 == -1) {
            i2 = 1;
        }
        if (i2 != this.u) {
            this.u = i2;
        } else if (!z2) {
            return;
        }
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,changeSingleWorkMode: mode = " + i2);
        if (i2 == 1) {
            f.k.b(0);
            f.k.c(2);
            cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
            if (fVar != null) {
                fVar.X0();
            }
        } else if (i2 == 2) {
            f.k.b(2);
            f.k.c(4);
            cn.manstep.phonemirrorBox.BoxInterface.f fVar2 = cn.manstep.phonemirrorBox.BoxInterface.d.l;
            if (fVar2 != null) {
                fVar2.X0();
            }
        } else if (i2 == 3) {
            f.k.b(1);
            f.k.c(4);
            cn.manstep.phonemirrorBox.BoxInterface.f fVar3 = cn.manstep.phonemirrorBox.BoxInterface.d.l;
            if (fVar3 != null) {
                fVar3.X0();
            }
        }
        cn.manstep.phonemirrorBox.b0.w(this, this.u);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M0() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        if (!this.W || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null || fVar.V()) {
            return;
        }
        cn.manstep.phonemirrorBox.util.b0.m().h(new a());
    }

    private boolean N0() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        if (this.W) {
            cn.manstep.phonemirrorBox.util.b0.m().g(new c0());
        }
    }

    private void P0() {
        if (cn.manstep.phonemirrorBox.b0.h(this)) {
            return;
        }
        new Thread(new p(), "copyMute").start();
    }

    private void Q0(Uri uri, Uri uri2) {
        UCrop.Options options = new UCrop.Options();
        options.setToolbarColor(androidx.core.content.a.b(this, 2131099741));
        options.setStatusBarColor(androidx.core.content.a.b(this, 2131099741));
        options.setCompressionFormat(Bitmap.CompressFormat.PNG);
        options.setCompressionQuality(100);
        options.setHideBottomControls(false);
        options.setToolbarTitle(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689909));
        UCrop.of(uri, uri2).withAspectRatio(1.0f, 1.0f).withMaxResultSize(180, 180).withOptions(options).start(this);
    }

    private void R0(Runnable runnable, long j2) {
        new Handler().postDelayed(runnable, j2);
    }

    private void S0(Window window) {
        cn.manstep.phonemirrorBox.util.s.o("MainActivity,enterFullScreen: ###### isVideoNotFullscreen=" + cn.manstep.phonemirrorBox.p.j);
        if (b1()) {
            return;
        }
        boolean z2 = true;
        boolean zO = cn.manstep.phonemirrorBox.b0.i().o("HideSysNavBar", true);
        boolean zK = cn.manstep.phonemirrorBox.b0.i().k();
        cn.manstep.phonemirrorBox.util.s.d("MainActivity", "enterFullScreen: isHideSysNavBar=" + zO + ", bShowStatusBar=" + zK);
        if (zO || !zK) {
            if (4 == cn.manstep.phonemirrorBox.u.z().v()) {
                zO = true;
            } else {
                z2 = zK;
            }
            f0();
            window.clearFlags(2048);
            View decorView = window.getDecorView();
            if (Build.VERSION.SDK_INT >= 19) {
                int i2 = 2048 | (cn.manstep.phonemirrorBox.u.z().R() ? 4096 : 0);
                if (!z2) {
                    i2 = (cn.manstep.phonemirrorBox.u.z().R() ? 4096 : 0) | 2052 | 1024 | 256;
                }
                if (zO) {
                    i2 |= 1538;
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    attributes.systemUiVisibility = 2050;
                    window.setAttributes(attributes);
                }
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "enterFullScreen: setSystemUiVisibility->uiOptions=" + i2);
                decorView.setSystemUiVisibility(i2);
            } else {
                window.setFlags(1024, 1024);
                decorView.setSystemUiVisibility(8);
                cn.manstep.phonemirrorBox.util.s.c("Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar.");
            }
            if (Build.VERSION.SDK_INT <= 28) {
                window.addFlags(256);
            }
            if (zO) {
                window.addFlags(512);
            }
        }
    }

    private void T0(Window window) {
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,exitFullScreen: ######");
        g0();
        window.clearFlags(1024);
        if (Build.VERSION.SDK_INT <= 28) {
            window.clearFlags(256);
        }
        window.clearFlags(512);
        View decorView = window.getDecorView();
        if (Build.VERSION.SDK_INT < 19) {
            decorView.setSystemUiVisibility(0);
            cn.manstep.phonemirrorBox.util.s.c("Because the Android version number is lower than 4.4.4, there is no hidden NavigationBar.");
        } else if (cn.manstep.phonemirrorBox.u.z().Q()) {
            decorView.setSystemUiVisibility(1024 | (cn.manstep.phonemirrorBox.u.z().R() ? 4096 : 0) | 2052 | 256);
        } else {
            decorView.setSystemUiVisibility(0);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            if (cn.manstep.phonemirrorBox.u.z().Q()) {
                window.addFlags(256);
            } else {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.flags = 0;
                window.setAttributes(attributes);
            }
        }
        if (cn.manstep.phonemirrorBox.u.z().Q()) {
            return;
        }
        window.setFlags(2048, 2048);
    }

    private void V0(Context context) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 9) {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", getPackageName(), null));
        } else if (i2 <= 8) {
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra("com.android.settings.ApplicationPkgName", getPackageName());
        }
        try {
            context.startActivity(intent);
        } catch (Exception e2) {
            cn.manstep.phonemirrorBox.util.s.e("MainActivity,getAppDetailSettingIntent: \n" + Log.getStackTraceString(e2));
        }
    }

    private void W0(Intent intent) {
        int intExtra;
        cn.manstep.phonemirrorBox.a aVar;
        if (intent == null || (intExtra = intent.getIntExtra("EXTRA_NAME_1", -255)) == -255 || (aVar = this.P) == null) {
            return;
        }
        aVar.E(intExtra);
    }

    private boolean X0() {
        if (Build.VERSION.SDK_INT >= 23) {
            return androidx.core.content.a.a(this, "android.permission.RECORD_AUDIO") == 0 && (androidx.core.content.a.a(this, "android.permission.ACCESS_FINE_LOCATION") == 0 || androidx.core.content.a.a(this, "android.permission.ACCESS_COARSE_LOCATION") == 0);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0() {
        if (b1()) {
            return;
        }
        if (this.G.m()) {
            k1(true);
        } else if (cn.manstep.phonemirrorBox.p.l == 600 && cn.manstep.phonemirrorBox.p.k == 800 && "rk3188".equals(this.C)) {
            k1(true);
        } else {
            k1(false);
        }
    }

    private void Z0() {
        cn.manstep.phonemirrorBox.util.s.d("MainActivity", "initAnimation: ");
        this.y = AnimationUtils.loadAnimation(this, 2130771980);
        this.x = AnimationUtils.loadAnimation(this, 2130771981);
        ViewAnimator viewAnimator = (ViewAnimator) findViewById(2131296702);
        this.w = viewAnimator;
        viewAnimator.post(new e());
        View viewFindViewById = findViewById(R.id.content);
        viewFindViewById.getViewTreeObserver().addOnGlobalLayoutListener(new f(viewFindViewById));
        this.w.setInAnimation(this.y);
        this.w.setOutAnimation(this.x);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a1() {
        if (this.J == null) {
            this.J = getSupportFragmentManager();
        }
        if (this.I == null) {
            cn.manstep.phonemirrorBox.z zVar = new cn.manstep.phonemirrorBox.z();
            this.I = zVar;
            if (!zVar.q0()) {
                try {
                    androidx.fragment.app.w wVarL = this.J.l();
                    wVarL.b(2131296606, this.I);
                    wVarL.n(this.I);
                    wVarL.i();
                } catch (Exception e2) {
                    cn.manstep.phonemirrorBox.util.s.f("MainActivity", "initSettingsFragment: " + cn.manstep.phonemirrorBox.util.s.g(e2));
                }
            }
        }
        cn.manstep.phonemirrorBox.util.s.d("MainActivity", "initSettingsFragment: SettingsFragment=" + this.I);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b1() {
        if (cn.manstep.phonemirrorBox.u.z().v() == 1 || cn.manstep.phonemirrorBox.p.j) {
            return true;
        }
        return !cn.manstep.phonemirrorBox.b0.i().o("HideSysNavBar", true) && cn.manstep.phonemirrorBox.b0.i().k();
    }

    private void d1() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689700));
        builder.setMessage(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689802));
        builder.setPositiveButton(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689625), (DialogInterface.OnClickListener) null);
        builder.setNegativeButton(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689621), new q(this));
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new r(alertDialogCreate));
    }

    private void e1() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
        if (fVar != null) {
            fVar.n1(true);
            cn.manstep.phonemirrorBox.BoxInterface.d.l.a1();
        }
        cn.manstep.phonemirrorBox.b0.i().F("WirelessConnectMode", 1);
        h();
        this.N = true;
    }

    private void f1(Fragment fragment) {
        if (fragment == null || !fragment.z0()) {
            return;
        }
        androidx.fragment.app.w wVarL = this.J.l();
        wVarL.o(fragment);
        wVarL.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g1() {
        if (Build.VERSION.SDK_INT >= 23) {
            if (Settings.canDrawOverlays(StubApp.getOrigApplicationContext(getApplicationContext()))) {
                h1();
                return;
            }
            if (!getResources().getBoolean(2131034124) && !cn.manstep.phonemirrorBox.b0.i().o("ShowFloatBall", getResources().getBoolean(2131034136))) {
                h1();
                return;
            }
            if (cn.manstep.phonemirrorBox.util.f.b(this, "com.android.settings", "com.android.settings.Settings$AppDrawOverlaySettingsActivity")) {
                cn.manstep.phonemirrorBox.k0.a.L2(this.J, 2131689564, new i(), new j());
            } else if (cn.manstep.phonemirrorBox.util.f.b(this, "com.huawei.security.privilegemanager", "com.huawei.security.enhanced.permission.ui.activity.MainActivity")) {
                cn.manstep.phonemirrorBox.k0.a.L2(this.J, 2131689564, new l(), new m());
            } else {
                cn.manstep.phonemirrorBox.util.s.f("MainActivity", "requestCanDrawOverlaysPermission: Settings$AppDrawOverlaySettingsActivity does not exist.");
                h1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h1() {
        if (cn.manstep.phonemirrorBox.b0.i().o("ShowFloatBall", false)) {
            cn.manstep.phonemirrorBox.util.s.d("MainActivity", "requestPermission: start FloatWindowService");
            startService(new Intent(StubApp.getOrigApplicationContext(getApplicationContext()), (Class<?>) FloatWindowService.class));
        }
        if (getResources().getBoolean(2131034120)) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.G() || cn.manstep.phonemirrorBox.b0.i().o("PERMISSION", false)) {
                return;
            }
            cn.manstep.phonemirrorBox.b0.i().F("PERMISSION", Boolean.TRUE);
            if (Build.VERSION.SDK_INT >= 23) {
                ArrayList arrayList = new ArrayList();
                if (androidx.core.content.a.a(this, "android.permission.RECORD_AUDIO") != 0) {
                    arrayList.add("android.permission.RECORD_AUDIO");
                }
                if (arrayList.size() > 0) {
                    cn.manstep.phonemirrorBox.k0.a.J2(getSupportFragmentManager(), cn.manstep.phonemirrorBox.util.n.t(this, "use_permission_tips", 2131886087), new n(arrayList), new o(this));
                    return;
                }
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            ArrayList arrayList2 = new ArrayList();
            if (androidx.core.content.a.a(this, "android.permission.RECORD_AUDIO") != 0) {
                arrayList2.add("android.permission.RECORD_AUDIO");
            }
            if (androidx.core.content.a.a(this, "android.permission.ACCESS_FINE_LOCATION") != 0) {
                arrayList2.add("android.permission.ACCESS_FINE_LOCATION");
            }
            if (androidx.core.content.a.a(this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                arrayList2.add("android.permission.ACCESS_COARSE_LOCATION");
            }
            if (arrayList2.size() > 0) {
                String[] strArr = (String[]) arrayList2.toArray(new String[0]);
                if (cn.manstep.phonemirrorBox.b0.i().o("showRequestPermission", true)) {
                    this.S = !this.S;
                    androidx.core.app.a.m(this, strArr, 1000);
                }
            }
        }
    }

    private void init() {
        TextView textView;
        if (this.X) {
            return;
        }
        this.X = true;
        ((ViewStub) findViewById(2131296824)).setVisibility(0);
        P0();
        if (cn.manstep.phonemirrorBox.b0.i().o("ShowFloatBall", false)) {
            startService(new Intent(StubApp.getOrigApplicationContext(getApplicationContext()), (Class<?>) cn.manstep.phonemirrorBox.floatwindow.FloatWindowService.class));
        }
        new Handler().postDelayed(new b(), 500L);
        Z0();
        cn.manstep.phonemirrorBox.util.j.c().e("initSettingsFragment", 50L, new c());
        R0(new d(), 800L);
        this.P.a();
        this.P.B(this.G);
        this.P.A(this);
        this.D = (AutoBoxMirrorView) findViewById(2131296258);
        this.E = (AutoBoxMirrorTextureView) findViewById(2131296257);
        J0();
        cn.manstep.phonemirrorBox.util.t tVar = new cn.manstep.phonemirrorBox.util.t(this);
        this.M = tVar;
        tVar.b(this);
        if (getResources().getIdentifier("editText", "id", getPackageName()) != 0 && (textView = (TextView) findViewById(2131296477)) != null) {
            textView.setText(cn.manstep.phonemirrorBox.p.a);
        }
        int identifier = getResources().getIdentifier("boxintro", "id", getPackageName());
        if (identifier != 0) {
            TextView textView2 = (TextView) findViewById(identifier);
            this.z = textView2;
            if (textView2 != null) {
                textView2.setText(2131689478);
            }
        }
    }

    private void j1(int i2) {
        int iM = cn.manstep.phonemirrorBox.b0.i().m("NightMode", 2);
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i() && iM == 2) {
            int i3 = i2 & 48;
            cn.manstep.phonemirrorBox.util.s.d("MainActivity", "setDayNightMode: uiMode=" + i3);
            if (i3 == 32) {
                cn.manstep.phonemirrorBox.BoxInterface.d.L(16);
            } else {
                cn.manstep.phonemirrorBox.BoxInterface.d.L(17);
            }
        }
    }

    private void k1(boolean z2) {
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,setFullScreen: " + z2);
        cn.manstep.phonemirrorBox.a aVar = this.P;
        if (aVar == null || aVar.C(z2)) {
            if (!z2 || b0) {
                if (cn.manstep.phonemirrorBox.u.z().X()) {
                    getWindow().getDecorView().setSystemUiVisibility(0);
                    return;
                }
                if (cn.manstep.phonemirrorBox.p.l <= cn.manstep.phonemirrorBox.p.k) {
                    if (z2) {
                        S0(getWindow());
                        return;
                    } else {
                        T0(getWindow());
                        return;
                    }
                }
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "setFullScreen: exitFullScreen " + cn.manstep.phonemirrorBox.p.k + "x" + cn.manstep.phonemirrorBox.p.l);
                T0(getWindow());
            }
        }
    }

    private void n1(int i2, int i3) {
        TextView textView = this.z;
        if (textView == null) {
            return;
        }
        textView.setTextColor(i3);
        this.z.setText(i2);
    }

    private void o1(String str, int i2) {
        TextView textView = this.z;
        if (textView == null) {
            return;
        }
        textView.setTextColor(i2);
        this.z.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p1() {
    }

    private boolean q1(MotionEvent motionEvent) {
        cn.manstep.phonemirrorBox.util.t tVar = this.M;
        if (tVar == null) {
            return false;
        }
        return tVar.c(motionEvent);
    }

    private void r1() {
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void A(boolean z2) {
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onNoticeBoxWifiConnStatus: " + z2);
        this.P.l(z2);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void B() {
        K0(true);
        n1(2131689608, -16711936);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void C() {
        cn.manstep.phonemirrorBox.BoxInterface.c.e().u();
        this.P.e();
        n1(2131689478, -1);
        e(BuildConfig.FLAVOR);
        ECarXUtil.getInstance().release();
        if (cn.manstep.phonemirrorBox.u.z().M() && this.T) {
            BluetoothAdapter.getDefaultAdapter().enable();
            cn.manstep.phonemirrorBox.util.s.p("MainActivity", "onNoticeBoxPlugIn: Bluetooth enable");
            this.T = false;
        }
        cn.manstep.phonemirrorBox.util.r.a().e();
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void D() {
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || this.N) {
            return;
        }
        Runtime.getRuntime().gc();
        ECarXUtil.getInstance().release();
        cn.manstep.phonemirrorBox.u0.c.h().w(this);
        cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onNoticePhonePlug: bBtEnable=" + this.T);
        if (cn.manstep.phonemirrorBox.u.z().M() && this.T) {
            BluetoothAdapter.getDefaultAdapter().enable();
            cn.manstep.phonemirrorBox.util.s.f("MainActivity", "onNoticePhonePlug: Bluetooth enable");
            this.T = false;
        }
        WindowManager windowManager = (WindowManager) getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        cn.manstep.phonemirrorBox.p.f(displayMetrics.widthPixels, displayMetrics.heightPixels);
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        cn.manstep.phonemirrorBox.p.n = displayMetrics.widthPixels;
        cn.manstep.phonemirrorBox.p.o = displayMetrics.heightPixels;
        if (cn.manstep.phonemirrorBox.BoxInterface.d.E() && this.L) {
            this.L = false;
            p1();
        }
        if (this.j) {
            recreate();
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.h()) {
            this.P.h(cn.manstep.phonemirrorBox.b0.i().m("MicType", 0));
        }
        this.P.q();
        K0(false);
        int identifier = getResources().getIdentifier("tvNoticePlug", "id", getPackageName());
        TextView textView = identifier != 0 ? (TextView) findViewById(identifier) : null;
        if (textView != null) {
            int i2 = this.v;
            if (i2 == 1) {
                textView.setText(String.format(getResources().getString(2131689670), "CarPlay"));
            } else if (i2 != 3) {
                textView.setText(2131689886);
            } else {
                textView.setText(String.format(getResources().getString(2131689670), "Android Auto"));
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void F() {
        K0(true);
        n1(2131690012, -256);
        this.P.p();
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void G() {
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void H(boolean z2) {
        this.P.d(z2);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void I() {
        K0(true);
        n1(2131690010, -16711936);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void J(boolean z2) {
        cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onNoticeWifiTransChanged: " + z2);
        if (z2) {
            cn.manstep.phonemirrorBox.util.s.i("MainActivity", "onNoticeWifiTransChanged: " + cn.manstep.phonemirrorBox.BoxInterface.c.e().toString());
        }
        if (findViewById(2131296916) != null) {
            findViewById(2131296916).setVisibility(z2 ? 8 : 0);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void K() {
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onSettingsPageBackFirstPage: " + this.w.getCurrentView());
        Runtime.getRuntime().gc();
        f(this.I);
        this.P.x(true);
        cn.manstep.phonemirrorBox.f0.c.n().p(StubApp.getOrigApplicationContext(getApplicationContext()));
        cn.manstep.phonemirrorBox.f0.b.j().l(StubApp.getOrigApplicationContext(getApplicationContext()));
        cn.manstep.phonemirrorBox.f0.e.j().l(StubApp.getOrigApplicationContext(getApplicationContext()));
        cn.manstep.phonemirrorBox.f0.g.j().l(StubApp.getOrigApplicationContext(getApplicationContext()));
        cn.manstep.phonemirrorBox.f0.f.j().l(StubApp.getOrigApplicationContext(getApplicationContext()));
        G();
        if (cn.manstep.phonemirrorBox.BoxInterface.d.C()) {
            new Handler().postDelayed(new v(this), 500L);
        } else if (cn.manstep.phonemirrorBox.BoxInterface.d.i() && !cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onSettingsPageBackFirstPage: send_g_open_async");
            cn.manstep.phonemirrorBox.BoxInterface.d.l.Y0();
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.f.O) {
            k1(true);
        }
    }

    public void U0() {
        if (this.H || this.I == null) {
            return;
        }
        this.P.x(false);
        if (cn.manstep.phonemirrorBox.BoxInterface.f.O) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 2);
        }
        c1(5);
        this.G.h();
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void a() {
        moveTaskToBack(false);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void b() {
        i1("Action", "OnRestart");
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void c() {
        this.P.w();
    }

    public void c1(int i2) {
        Fragment fragment;
        androidx.fragment.app.w wVarL = this.J.l();
        wVarL.r(2130772009, 2130772010, 2130772008, 2130772011);
        if (i2 == 5) {
            if (this.I == null) {
                this.I = new cn.manstep.phonemirrorBox.z();
            }
            fragment = this.I;
        } else if (i2 == 11) {
            if (this.K == null) {
                this.K = new cn.manstep.phonemirrorBox.l0.n();
            }
            fragment = this.K;
        } else {
            fragment = null;
        }
        if (fragment != null) {
            try {
                if (fragment.q0()) {
                    wVarL.t(fragment);
                } else {
                    wVarL.b(2131296606, fragment);
                }
            } catch (Exception e2) {
                cn.manstep.phonemirrorBox.util.s.f("MainActivity", "onEnterPage: \n" + cn.manstep.phonemirrorBox.util.s.g(e2));
                return;
            }
        }
        wVarL.i();
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void d() {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (q1(motionEvent)) {
            return true;
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void e(String str) {
        int iCheck;
        TextView textView;
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onShowBoxVersion: BoxVer = " + str + ",APP:2025.03.19.1126,2025.03.19.1126");
        if (!TextUtils.isEmpty(str)) {
            cn.manstep.phonemirrorBox.b0.i().F("BoxVersion", str);
        }
        if (this.P.b()) {
            try {
                iCheck = JniTools.check();
            } catch (Error | Exception e2) {
                e2.printStackTrace();
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onShowBoxVersion: \n" + cn.manstep.phonemirrorBox.util.s.g(e2));
                iCheck = 0;
            }
            if (iCheck != 0) {
                cn.manstep.phonemirrorBox.util.s.e("MainActivity,onShowBoxVersion: ret=" + iCheck);
                if (iCheck == 1 || iCheck == 2) {
                    return;
                }
                if (iCheck == 3) {
                    e1();
                    return;
                } else {
                    e1();
                    return;
                }
            }
            if (!cn.manstep.phonemirrorBox.p.d(str)) {
                e1();
                return;
            }
        } else {
            this.P.u(str);
        }
        this.P.u(str);
        this.N = false;
        int identifier = getResources().getIdentifier("BoxVerText", "id", getPackageName());
        if (identifier != 0 && (textView = (TextView) findViewById(identifier)) != null) {
            textView.setText(str);
        }
        if (TextUtils.isEmpty(cn.manstep.phonemirrorBox.BoxInterface.c.e().o()) || TextUtils.isEmpty(cn.manstep.phonemirrorBox.BoxInterface.c.e().p())) {
            return;
        }
        M0();
    }

    public void f(Fragment fragment) {
        if (fragment != null) {
            androidx.fragment.app.w wVarL = this.J.l();
            wVarL.r(2130772008, 2130772011, 2130772009, 2130772010);
            wVarL.n(fragment);
            wVarL.k();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void g(int i2) {
        K0(true);
        if (i2 == 0) {
            n1(2131689488, -16711936);
        } else if (1 == i2) {
            n1(2131689487, -65536);
        } else if (2 == i2) {
            n1(2131689485, -16711936);
            f.k.c(a0);
        } else if (3 == i2) {
            n1(2131689484, -65536);
        }
        this.H = false;
        this.P.i(i2);
        f1(this.K);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void h() {
        if (!this.P.b()) {
            this.P.z();
            return;
        }
        K0(true);
        n1(2131689919, -65536);
        this.P.k();
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void i() {
        cn.manstep.phonemirrorBox.a aVar = this.P;
        if (aVar != null) {
            aVar.v();
        }
    }

    void i1(String str, String str2) {
        Intent intent = new Intent("cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN");
        intent.putExtra(str, str2);
        sendBroadcast(intent);
    }

    @Override // cn.manstep.phonemirrorBox.util.t.a
    public void j() {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.l == null || !cn.manstep.phonemirrorBox.BoxInterface.f.O) {
            return;
        }
        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 25);
        cn.manstep.phonemirrorBox.BoxInterface.d.l.b1();
        new Handler().postDelayed(new u(), 1000L);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public boolean k(int i2) {
        ViewAnimator viewAnimator = this.w;
        return viewAnimator == null || i2 < 0 || i2 >= viewAnimator.getChildCount() || this.w.getCurrentView() == this.w.getChildAt(i2);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void l() {
        cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onNoticeBoxDisconnected: bRecreate=" + this.j);
        this.P.f();
        n1(2131689478, -1);
        e(BuildConfig.FLAVOR);
        H(false);
        A(false);
        ECarXUtil.getInstance().release();
        if (this.j) {
            recreate();
        }
        if (cn.manstep.phonemirrorBox.u.z().M() && this.T) {
            BluetoothAdapter.getDefaultAdapter().enable();
            cn.manstep.phonemirrorBox.util.s.p("MainActivity", "onNoticeBoxDisconnected: Bluetooth enable");
            this.T = false;
        }
        cn.manstep.phonemirrorBox.k0.a aVar = this.R;
        if (aVar != null && aVar.z0()) {
            this.R.j2();
        }
        cn.manstep.phonemirrorBox.util.r.a().e();
    }

    public void l1(boolean z2, String str, String str2, long j2, String str3, boolean z3) {
        if (cn.manstep.phonemirrorBox.b0.i().n(z3 ? "AppLatestVer" : "BoxLatestVer", BuildConfig.FLAVOR).equals(str)) {
            return;
        }
        cn.manstep.phonemirrorBox.k0.a aVar = this.R;
        if ((aVar == null || !aVar.z0()) && !cn.manstep.phonemirrorBox.BoxInterface.b.h) {
            this.R = cn.manstep.phonemirrorBox.k0.a.K2(getSupportFragmentManager(), new s(j2, z3, str3), z2 ? null : new t(z3, str));
        }
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void m(boolean z2) {
        if (z2) {
            n1(2131689733, -65536);
            return;
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            n1(2131689478, -1);
        } else {
            n1(2131689479, -1);
        }
        K0(true);
    }

    public void m1() {
        if (this.Q == null) {
            cn.manstep.phonemirrorBox.customview.a aVar = new cn.manstep.phonemirrorBox.customview.a(StubApp.getOrigApplicationContext(getApplicationContext()));
            this.Q = aVar;
            this.F.b(aVar, getResources().getDimension(2131165332), getResources().getDimension(2131165331));
            this.Q.setCallback(new b0());
        }
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void n(boolean z2) {
        this.H = true;
        if (z2) {
            f(this.I);
        }
        K0(true);
        n1(2131689483, -256);
        this.P.j();
        this.U.b(new x(), 800L);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void o() {
        finish();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        cn.manstep.phonemirrorBox.z zVar;
        super.onActivityResult(i2, i3, intent);
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onActivityResult: requestCode=" + i2 + ", resultCode=" + i3);
        if (this.P.c(i2, i3, intent)) {
            return;
        }
        if (i2 == 69) {
            if (i3 != -1) {
                if (i3 != 96) {
                    if (i3 == 0) {
                        this.t = false;
                        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onActivityResult: Activity.RESULT_CANCELED");
                        return;
                    }
                    return;
                }
                Throwable error = UCrop.getError(intent);
                this.t = false;
                cn.manstep.phonemirrorBox.util.s.e("MainActivity,onActivityResult: " + Log.getStackTraceString(error));
                return;
            }
            Uri output = UCrop.getOutput(intent);
            cn.manstep.phonemirrorBox.util.s.c("MainActivity,onActivityResult: " + output);
            if (output != null) {
                String path = output.getPath();
                cn.manstep.phonemirrorBox.util.s.c("MainActivity,onActivityResult: " + path);
                cn.manstep.phonemirrorBox.b0.i().z("custom", path);
                this.t = true;
                return;
            }
            return;
        }
        if (i2 != 100) {
            if (i2 == 1 && i3 == -1) {
                Q0(intent.getData(), Uri.fromFile(new File(getCacheDir(), "custom.png")));
                return;
            }
            return;
        }
        if (i3 == -1) {
            Point point = new Point();
            Point point2 = new Point();
            Point point3 = new Point();
            getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
            getWindow().getWindowManager().getDefaultDisplay().getSize(point3);
            cn.manstep.phonemirrorBox.util.s.h("MainActivity,onActivityResult: CurrentSizeRange: " + point + "," + point2 + "," + point3);
            if (((cn.manstep.phonemirrorBox.util.x) intent.getParcelableExtra("MaxSize")) == null || (zVar = this.I) == null || zVar.y0 == null || !intent.getBooleanExtra("ReAddSettingsFragment", false)) {
                return;
            }
            androidx.fragment.app.w wVarL = this.J.l();
            wVarL.o(this.I);
            wVarL.i();
            this.I = null;
            a1();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.G.q();
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onConfigurationChanged: newConfig.orientation = " + configuration.orientation);
        super.onConfigurationChanged(configuration);
        if (this.P.m(configuration)) {
            cn.manstep.phonemirrorBox.util.s.c("MainActivity,onConfigurationChanged: mFirstPageEx= " + configuration.orientation);
            return;
        }
        j1(configuration.uiMode);
        if (cn.manstep.phonemirrorBox.v0.e.C()) {
            p1();
        }
        int i2 = configuration.orientation;
        if (i2 == 2) {
            this.L = true;
            if (cn.manstep.phonemirrorBox.p.k < cn.manstep.phonemirrorBox.p.l) {
                cn.manstep.phonemirrorBox.p.f(cn.manstep.phonemirrorBox.p.l, cn.manstep.phonemirrorBox.p.k);
            }
            if (cn.manstep.phonemirrorBox.p.n < cn.manstep.phonemirrorBox.p.o) {
                int i3 = cn.manstep.phonemirrorBox.p.n;
                cn.manstep.phonemirrorBox.p.n = cn.manstep.phonemirrorBox.p.o;
                cn.manstep.phonemirrorBox.p.o = i3;
            }
            AutoBoxMirrorView.g(cn.manstep.phonemirrorBox.p.k, cn.manstep.phonemirrorBox.p.l);
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
            if (this.G.m()) {
                k1(true);
            }
        } else if (i2 == 1) {
            this.L = true;
            if (cn.manstep.phonemirrorBox.p.k > cn.manstep.phonemirrorBox.p.l) {
                cn.manstep.phonemirrorBox.p.f(cn.manstep.phonemirrorBox.p.l, cn.manstep.phonemirrorBox.p.k);
            }
            if (cn.manstep.phonemirrorBox.p.n > cn.manstep.phonemirrorBox.p.o) {
                int i4 = cn.manstep.phonemirrorBox.p.n;
                cn.manstep.phonemirrorBox.p.n = cn.manstep.phonemirrorBox.p.o;
                cn.manstep.phonemirrorBox.p.o = i4;
            }
            Point point = new Point();
            Point point2 = new Point();
            getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
            if (this.f1677b) {
                cn.manstep.phonemirrorBox.util.s.c("MainActivity,onConfigurationChanged: " + point.toString() + " " + point2.toString() + " " + cn.manstep.phonemirrorBox.p.o);
                int i5 = point2.y;
                if (i5 < cn.manstep.phonemirrorBox.p.o) {
                    cn.manstep.phonemirrorBox.p.o = i5;
                }
            }
            AutoBoxMirrorView.g(cn.manstep.phonemirrorBox.p.n, cn.manstep.phonemirrorBox.p.o);
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
            k1(false);
        }
        if (cn.manstep.phonemirrorBox.v0.e.C() && this.j && !cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            recreate();
        }
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onConfigurationChanged: " + cn.manstep.phonemirrorBox.p.k + " " + cn.manstep.phonemirrorBox.p.l + " " + configuration.orientation);
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // cn.manstep.phonemirrorBox.k, androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        cn.manstep.phonemirrorBox.x0.k kVar;
        cn.manstep.phonemirrorBox.util.s.e("MainActivity,onDestroy");
        cn.manstep.phonemirrorBox.q.g().m(this, false);
        this.J = null;
        this.X = false;
        cn.manstep.phonemirrorBox.a aVar = this.P;
        if (aVar != null) {
            aVar.y();
            this.P = null;
        }
        cn.manstep.phonemirrorBox.p0.c cVar = this.G;
        if (cVar != null) {
            cVar.E();
        }
        ViewAnimator viewAnimator = this.w;
        if (viewAnimator != null) {
            viewAnimator.removeAllViews();
        }
        ServiceConnection serviceConnection = this.A;
        if (serviceConnection != null) {
            unbindService(serviceConnection);
        }
        this.B = null;
        stopService(new Intent(this, (Class<?>) ModeChangeService.class));
        cn.manstep.phonemirrorBox.f0.c.n().t();
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onDestroy: Stop AutoStartService");
        cn.manstep.phonemirrorBox.z zVar = this.I;
        if (zVar != null && (kVar = zVar.y0) != null) {
            kVar.K0();
        }
        stopService(new Intent(this, (Class<?>) AutoStartService.class));
        cn.manstep.phonemirrorBox.f.e();
        cn.manstep.phonemirrorBox.k0.b.c().g();
        r1();
        i1("Action", "onDestroy");
        ECarXUtil.getInstance().release();
        if (!this.j) {
            cn.manstep.phonemirrorBox.floatwindow.e.g().j(StubApp.getOrigApplicationContext(getApplicationContext()));
            stopService(new Intent(StubApp.getOrigApplicationContext(getApplicationContext()), (Class<?>) cn.manstep.phonemirrorBox.floatwindow.FloatWindowService.class));
            cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
            if (fVar != null) {
                fVar.b0();
            }
            cn.manstep.phonemirrorBox.v0.e.F();
            cn.manstep.phonemirrorBox.u0.c.h().v();
        }
        cn.manstep.phonemirrorBox.u0.c.h().A(this);
        cn.manstep.phonemirrorBox.e0.b.a().b();
        super.onDestroy();
        cn.manstep.phonemirrorBox.util.s.e("MainActivity,onDestroy Over");
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onKeyDown: keyCode=" + i2 + " " + keyEvent.toString());
        if (cn.manstep.phonemirrorBox.BoxInterface.a.s || cn.manstep.phonemirrorBox.u.z().P()) {
            return super.onKeyDown(i2, keyEvent);
        }
        if ((i2 == 25 || i2 == 24 || i2 == 164) && this.G.o(i2, true)) {
            cn.manstep.phonemirrorBox.util.s.c("MainActivity,onKeyDown: UseVolumeKeySwitchMusic " + i2);
            return true;
        }
        if (keyEvent.getRepeatCount() > 0) {
            this.O = true;
        } else {
            this.O = false;
        }
        if (this.P.n(i2, keyEvent)) {
            return true;
        }
        if (this.V != null && !cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            return this.V.onKeyDown(i2, keyEvent);
        }
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            return super.onKeyDown(i2, keyEvent);
        }
        if (i2 == 300) {
            if (cn.manstep.phonemirrorBox.v0.a.t().w()) {
                cn.manstep.phonemirrorBox.v0.e.H(300);
                return true;
            }
        } else if (i2 == 301 && cn.manstep.phonemirrorBox.v0.a.t().w()) {
            cn.manstep.phonemirrorBox.v0.e.H(301);
            return true;
        }
        int iF = cn.manstep.phonemirrorBox.b0.f(this, i2);
        int iG = cn.manstep.phonemirrorBox.b0.g(this, i2);
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onKeyDown: cmd=" + iF + ", cmd2=" + iG);
        if (iF == 0 && iG == 0) {
            return super.onKeyDown(i2, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (cn.manstep.phonemirrorBox.BoxInterface.a.s || cn.manstep.phonemirrorBox.u.z().P()) {
            return super.onKeyUp(i2, keyEvent);
        }
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onKeyUp: keyCode=" + i2 + " " + keyEvent.toString());
        if (((i2 == 25 || i2 == 24 || i2 == 164) && this.G.o(i2, false)) || this.P.o(i2, keyEvent, this.O)) {
            return true;
        }
        if (this.V != null && !cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            return this.V.a(i2, keyEvent, this.O);
        }
        if (!cn.manstep.phonemirrorBox.BoxInterface.f.O) {
            return super.onKeyUp(i2, keyEvent);
        }
        if (i2 != 300 && i2 != 301) {
            int iG = this.O ? cn.manstep.phonemirrorBox.b0.g(this, i2) : cn.manstep.phonemirrorBox.b0.f(this, i2);
            cn.manstep.phonemirrorBox.util.s.c("MainActivity,onKeyUp: cmd=" + iG + ", mLongPressKey=" + this.O);
            if (iG == 0) {
                cn.manstep.phonemirrorBox.util.s.c("MainActivity,onKeyUp: keyCode = " + i2);
                if (!this.O || !cn.manstep.phonemirrorBox.BoxInterface.f.O || 4 != i2) {
                    return super.onKeyUp(i2, keyEvent);
                }
                d1();
                return true;
            }
            cn.manstep.phonemirrorBox.BoxInterface.a.G();
            this.G.G(iG);
        }
        return true;
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        W0(intent);
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.fragment.app.e, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.P.x(false);
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onPause");
        if (this.G.n() && !cn.manstep.phonemirrorBox.p.g && "ac8317".equals(this.C)) {
            this.D.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public native void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr);

    @Override // cn.manstep.phonemirrorBox.k, androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onResume: " + cn.manstep.phonemirrorBox.p.f1804b);
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            cn.manstep.phonemirrorBox.u0.c.h().H();
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            cn.manstep.phonemirrorBox.u0.c.h().d(cn.manstep.phonemirrorBox.v0.e.C());
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G() && cn.manstep.phonemirrorBox.v0.a.t().y()) {
            ECarXUtil.getInstance().init(StubApp.getOrigApplicationContext(getApplicationContext()));
        }
        if (this.P == null) {
            cn.manstep.phonemirrorBox.v vVar = new cn.manstep.phonemirrorBox.v(this);
            this.P = vVar;
            vVar.a();
        }
        if (this.G.i() == 0 || this.G.i() == -1) {
            this.P.x(true);
        } else {
            this.P.x(false);
        }
        if (this.G.n() && !cn.manstep.phonemirrorBox.p.g && "ac8317".equals(this.C)) {
            this.D.setVisibility(0);
        }
        this.G.D(true);
        Y0();
        cn.manstep.phonemirrorBox.util.s.c("MainActivity,onResume: PhoneConnected=" + cn.manstep.phonemirrorBox.BoxInterface.f.O);
        if (cn.manstep.phonemirrorBox.BoxInterface.f.O) {
            if (this.w == null) {
                init();
            }
            if (this.w.getCurrentView() != this.w.getChildAt(3)) {
                r(3, true);
            }
        }
        try {
            i1("Action", "onResume");
            if (this.G.n() && cn.manstep.phonemirrorBox.BoxInterface.d.l != null && cn.manstep.phonemirrorBox.BoxInterface.d.l.J() != null) {
                if (cn.manstep.phonemirrorBox.BoxInterface.d.l.J().b()) {
                    sendBroadcast(new Intent("net.easyconn.a2dp.acquire"));
                    cn.manstep.phonemirrorBox.util.s.f("A2DP", "send broad a2dp acquire");
                } else {
                    cn.manstep.phonemirrorBox.BoxInterface.a.B();
                }
            }
        } catch (Exception e2) {
            cn.manstep.phonemirrorBox.util.s.e("MainActivity,onResume: \n" + Log.getStackTraceString(e2));
        }
        ModeChangeService modeChangeService = this.B;
        if (modeChangeService != null) {
            modeChangeService.n(true);
        }
        cn.manstep.phonemirrorBox.util.s.d("MainActivity", "bRequestPermissionStarted=" + this.S);
        if (!this.S) {
            h1();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.Z.a(new h());
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G() && cn.manstep.phonemirrorBox.u.z().M() && BluetoothAdapter.getDefaultAdapter().isEnabled()) {
            this.T = true;
            BluetoothAdapter.getDefaultAdapter().disable();
        }
        if (this.X || !hasWindowFocus()) {
            return;
        }
        init();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.clear();
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onStart() {
        super.onStart();
        cn.manstep.phonemirrorBox.util.s.h("MainActivity,onStart");
        new Handler().postDelayed(new g(), 800L);
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    protected void onStop() {
        super.onStop();
        cn.manstep.phonemirrorBox.util.s.h("MainActivity,onStop");
        this.P.x(false);
        i1("Action", "onStop");
        this.G.D(false);
        cn.manstep.phonemirrorBox.util.c0.t(this, cn.manstep.phonemirrorBox.b0.i().o("BgKeyValid", true));
        ModeChangeService modeChangeService = this.B;
        if (modeChangeService != null) {
            modeChangeService.n(false);
        }
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.G() && cn.manstep.phonemirrorBox.u.z().M() && this.T) {
            BluetoothAdapter.getDefaultAdapter().enable();
            cn.manstep.phonemirrorBox.util.s.p("MainActivity", "onStop: Bluetooth enable");
            this.T = false;
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            cn.manstep.phonemirrorBox.u0.c.h().x();
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i() && cn.manstep.phonemirrorBox.BoxInterface.f.P && motionEvent.getAction() == 1) {
            this.P.D(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // cn.manstep.phonemirrorBox.k, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        cn.manstep.phonemirrorBox.util.s.h("MainActivity, onWindowFocusChanged: hasFocus = " + z2 + "=================" + (SystemClock.elapsedRealtime() - MyApplication.b().f1543b));
        if (z2) {
            init();
        }
        b0 = z2;
        this.G.D(z2);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            int i2 = extras.getInt("AutoStart");
            cn.manstep.phonemirrorBox.util.s.c("MainActivity, onWindowFocusChanged: flag = " + i2);
            if (i2 == 1) {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                    D();
                }
            } else if (i2 == 2) {
                b0 = false;
                cn.manstep.phonemirrorBox.BoxInterface.d.j();
                cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
                if (fVar != null) {
                    fVar.X0();
                }
            }
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.b.h && d0()) {
            if (z2) {
                Y0();
            } else {
                T0(getWindow());
            }
        }
        if (this.G.n() && !cn.manstep.phonemirrorBox.p.g && "ac8317".equals(this.C)) {
            this.D.setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void p(int i2) {
        cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onBackHome: " + i2);
        if (i2 != 0) {
            Intent intent = new Intent(this, (Class<?>) MainActivity.class);
            intent.setFlags(268435456);
            startActivity(intent);
            cn.manstep.phonemirrorBox.BoxInterface.a.G();
            return;
        }
        if (MyApplication.b().g()) {
            if ("ecarx-IHU3Q122-IHU3Q122-9(28)".equals(cn.manstep.phonemirrorBox.u.z().y())) {
                Intent intent2 = new Intent();
                intent2.setComponent(new ComponentName("com.fawcar.dlife6.launcher", "com.fawcar.dlife6.launcher.activity.AllAppsActivity"));
                startActivity(intent2);
                return;
            }
            if ("QTI-msmnile_gvmq for arm64-k6801_a-11(30)".equals(cn.manstep.phonemirrorBox.u.z().y())) {
                Intent intent3 = new Intent();
                intent3.setComponent(new ComponentName("com.avatr.ivi.foundation.launcher", "com.avatr.ivi.foundation.launcher.base.LauncherService"));
                intent3.putExtra("launcher_service:arg", "start_home");
                String str = String.format(Locale.getDefault(), "{\"extra\":\"\",\"from\":\"%s\"}", getPackageName());
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onBackHome: extra=" + str);
                intent3.putExtra("launcher_service:arg_extra", str);
                startService(intent3);
                return;
            }
            if ("CAIC-x9hp for arm64-x9hp_bestune_d511_overseas_none_linux_di_baseline-10(29)".equals(cn.manstep.phonemirrorBox.u.z().y())) {
                Intent intent4 = new Intent();
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "com.faw.factorymode.ui.activity.");
                intent4.setComponent(new ComponentName("com.faw.factorymode", "com.faw.factorymode.ui.activity.MainActivity"));
                startActivity(intent4);
                return;
            }
            if ("DesaySV-G6SA-r8a7795-g6sa_e111_basic-8.1.0(27)".equals(cn.manstep.phonemirrorBox.u.z().y())) {
                Intent intent5 = new Intent();
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "com.desaysv.setting.fragment.voice.TimbreActivity");
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

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void q(boolean z2) {
        this.I.M2(z2);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void r(int i2, boolean z2) {
        cn.manstep.phonemirrorBox.util.s.c("MainActivity, changePage: nextPage=" + i2);
        if (this.w == null) {
            init();
        }
        if (3 == i2) {
            if (this.B == null) {
                J0();
            }
            AutoBoxMirrorView.setOrientation(getResources().getConfiguration().orientation);
            cn.manstep.phonemirrorBox.BoxInterface.a.B();
            this.P.s(true);
            if (!this.G.m()) {
                this.G.H(3);
            }
            Y0();
            ECarXUtil.getInstance().init(StubApp.getOrigApplicationContext(getApplicationContext()));
            j1(getResources().getConfiguration().uiMode);
            if (!X0()) {
                cn.manstep.phonemirrorBox.widget.a.c(this, 2131689954);
            }
        } else if (i2 == 1) {
            this.P.t();
            Y0();
        } else {
            this.P.s(false);
        }
        if (!getResources().getBoolean(2131034139)) {
            if (i2 != 3 && i2 != 0) {
                if (i2 == 1) {
                    this.P.t();
                    return;
                } else {
                    this.P.s(false);
                    return;
                }
            }
            if (i2 == 3) {
                Y0();
                this.P.s(true);
                i2 = 1;
            } else {
                this.P.s(false);
            }
        }
        if (z2) {
            this.w.setDisplayedChild(i2);
            if (i2 == 0) {
                k1(false);
                return;
            } else {
                if (i2 == 3) {
                    k1(true);
                    return;
                }
                return;
            }
        }
        cn.manstep.phonemirrorBox.util.s.c("MainActivity, changePage: nextPage=" + i2 + ", mSingleWorkMode=" + this.u);
        if (this.w.getCurrentView() != this.w.getChildAt(i2)) {
            this.w.setDisplayedChild(i2);
        }
        Y0();
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void s() {
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void t(String str) {
        K0(true);
        o1(String.format(getResources().getString(2131690011), str), -65536);
        this.P.q();
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void u() {
        Toast.makeText(this, getString(2131689954), 1).show();
        V0(this);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void v(String str) {
        cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onNoticeWirelessDeviceConnFailed: " + str);
        K0(true);
        o1(String.format(getResources().getString(2131690009), str), -65536);
        cn.manstep.phonemirrorBox.BoxInterface.c.e().v();
        this.P.q();
        this.P.r(str);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void x(boolean z2) {
        this.H = true;
        if (z2) {
            f(this.I);
        }
        K0(true);
        n1(2131689486, -256);
        this.P.j();
        this.U.b(new w(), 800L);
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void y() {
        n1(2131689984, -16711936);
        this.P.g();
    }

    @Override // cn.manstep.phonemirrorBox.p0.b
    public void z() {
        if (cn.manstep.phonemirrorBox.u.z().M()) {
            if (BluetoothAdapter.getDefaultAdapter().isEnabled()) {
                this.T = true;
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onPhoneWorking: bBtEnable = true");
                BluetoothAdapter.getDefaultAdapter().disable();
            } else {
                this.T = false;
                cn.manstep.phonemirrorBox.util.s.d("MainActivity", "onPhoneWorking: bBtEnable = false");
            }
        }
        cn.manstep.phonemirrorBox.util.r.a().c();
    }
}
