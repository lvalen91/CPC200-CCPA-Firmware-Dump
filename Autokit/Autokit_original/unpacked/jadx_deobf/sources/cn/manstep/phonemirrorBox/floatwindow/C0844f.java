package cn.manstep.phonemirrorBox.floatwindow;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.CountDownTimer;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.content.C0242a;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0973j;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p066q.p067a.p068a.C0698h;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0844f extends LinearLayout {

    /* JADX INFO: renamed from: v */
    public static int f4960v;

    /* JADX INFO: renamed from: w */
    public static int f4961w;

    /* JADX INFO: renamed from: b */
    private WindowManager f4962b;

    /* JADX INFO: renamed from: c */
    private WindowManager.LayoutParams f4963c;

    /* JADX INFO: renamed from: d */
    private float f4964d;

    /* JADX INFO: renamed from: e */
    private float f4965e;

    /* JADX INFO: renamed from: f */
    private float f4966f;

    /* JADX INFO: renamed from: g */
    private float f4967g;

    /* JADX INFO: renamed from: h */
    private float f4968h;

    /* JADX INFO: renamed from: i */
    private float f4969i;

    /* JADX INFO: renamed from: j */
    private int f4970j;

    /* JADX INFO: renamed from: k */
    private int f4971k;

    /* JADX INFO: renamed from: l */
    private ImageView f4972l;

    /* JADX INFO: renamed from: m */
    private boolean f4973m;

    /* JADX INFO: renamed from: n */
    private boolean f4974n;

    /* JADX INFO: renamed from: o */
    private boolean f4975o;

    /* JADX INFO: renamed from: p */
    private boolean f4976p;

    /* JADX INFO: renamed from: q */
    private Drawable f4977q;

    /* JADX INFO: renamed from: r */
    private Drawable f4978r;

    /* JADX INFO: renamed from: s */
    private boolean f4979s;

    /* JADX INFO: renamed from: t */
    private final CountDownTimer f4980t;

    /* JADX INFO: renamed from: u */
    private final CountDownTimer f4981u;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.f$a */
    class a extends CountDownTimer {
        a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            C0844f.this.m6313i();
            C0982s.m7374d("FloatWindowSmallView", "onFinish: view.getX()=" + C0844f.this.f4972l.getX() + ",view.getRotation()=" + C0844f.this.f4972l.getRotation());
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.f$b */
    class b extends CountDownTimer {
        b(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (C0844f.this.f4972l != null) {
                C0844f.this.f4972l.setAlpha(0.6f);
                if (C0844f.this.f4975o) {
                    C0844f.this.f4980t.start();
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.f$c */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0844f.this.f4972l.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.f$d */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0844f.this.f4972l.setX(C0844f.this.f4972l.getX() + (C0844f.this.f4972l.getWidth() / 5.0f));
        }
    }

    public C0844f(Context context) {
        super(context);
        this.f4970j = 0;
        this.f4971k = 0;
        this.f4976p = false;
        this.f4980t = new a(1500L, 500L);
        this.f4981u = new b(1500L, 500L);
    }

    /* JADX INFO: renamed from: g */
    private void m6312g(Context context, boolean z) {
        try {
            this.f4977q = C0698h.m5225b(getResources(), 2131230902, null);
        } catch (Error | Exception unused) {
            this.f4977q = C0242a.m1699d(context, 2131230902);
        }
        try {
            this.f4978r = C0698h.m5225b(getResources(), 2131230890, null);
        } catch (Error | Exception unused2) {
            this.f4978r = C0242a.m1699d(context, 2131230890);
        }
        this.f4973m = context.getResources().getBoolean(2131034127);
        this.f4975o = context.getResources().getBoolean(2131034129);
        this.f4974n = context.getResources().getBoolean(2131034130);
        this.f4962b = (WindowManager) context.getSystemService("window");
        LayoutInflater.from(context).inflate(2131492927, this);
        ImageView imageView = (ImageView) findViewById(2131296785);
        this.f4972l = imageView;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            this.f4962b.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            this.f4962b.getDefaultDisplay().getMetrics(displayMetrics);
        }
        this.f4970j = displayMetrics.widthPixels;
        this.f4971k = displayMetrics.heightPixels;
        C0982s.m7374d("FloatWindowSmallView", "FloatWindowSmallView: " + layoutParams.width + "x" + layoutParams.height + "," + this.f4970j + " " + displayMetrics.densityDpi);
        int iMin = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        int iSqrt = (int) Math.sqrt((double) (((float) (iMin * iMin)) * 0.018f));
        if (iSqrt > 0) {
            layoutParams.width = iSqrt;
            layoutParams.height = iSqrt;
        }
        C0982s.m7374d("FloatWindowSmallView", "FloatWindowSmallView: " + layoutParams.width + "x" + layoutParams.height + ",minimize=" + z);
        this.f4972l.setLayoutParams(layoutParams);
        f4960v = layoutParams.width;
        f4961w = layoutParams.height;
        getCurrentPosition();
        if (z) {
            m6313i();
        } else {
            this.f4972l.setImageDrawable(this.f4977q);
            this.f4981u.start();
        }
        C0973j.m7257c().m7260e("FloatWindowShow", 500L, new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i */
    public void m6313i() {
        this.f4976p = true;
        this.f4972l.setAlpha(0.6f);
        this.f4972l.setImageDrawable(this.f4978r);
        if (this.f4974n) {
            if (!this.f4979s) {
                this.f4972l.setRotation(CropImageView.DEFAULT_ASPECT_RATIO);
                ImageView imageView = this.f4972l;
                imageView.setX(-((imageView.getWidth() == 0 ? f4960v : this.f4972l.getWidth()) / 5.0f));
            } else {
                this.f4972l.setRotation(180.0f);
                ImageView imageView2 = this.f4972l;
                imageView2.setX(imageView2.getX() + (this.f4972l.getWidth() / 5.0f));
                if (this.f4972l.getWidth() == 0) {
                    this.f4972l.post(new d());
                }
            }
        }
    }

    /* JADX INFO: renamed from: l */
    private void m6314l() {
        int iM7046j0 = (C0995e.m7430C() && C0733d.m5574G()) ? 0 : C0953u.m7001z().m7046j0();
        int iM7048k0 = C0953u.m7001z().m7048k0();
        WindowManager.LayoutParams layoutParams = this.f4963c;
        int i = ((int) (this.f4964d - this.f4968h)) - iM7046j0;
        layoutParams.x = i;
        int i2 = (int) (this.f4965e - this.f4969i);
        layoutParams.y = i2;
        layoutParams.y = i2 - iM7048k0;
        if (i < 0) {
            layoutParams.x = 0;
        }
        WindowManager.LayoutParams layoutParams2 = this.f4963c;
        if (layoutParams2.y < 0) {
            layoutParams2.y = 0;
        }
        this.f4962b.updateViewLayout(this, this.f4963c);
        this.f4980t.cancel();
        this.f4981u.cancel();
        if (this.f4972l.getAlpha() < 1.0f) {
            this.f4972l.setAlpha(1.0f);
            this.f4972l.setImageDrawable(this.f4977q);
        }
    }

    /* JADX INFO: renamed from: e */
    public WindowManager.LayoutParams m6315e() {
        Point currentPosition = getCurrentPosition();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f4963c = layoutParams;
        layoutParams.x = currentPosition.x;
        layoutParams.y = currentPosition.y;
        return layoutParams;
    }

    /* JADX INFO: renamed from: f */
    public void m6316f(Context context, WindowManager.LayoutParams layoutParams, boolean z) {
        this.f4963c = layoutParams;
        m6312g(context, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Point getCurrentPosition() {
        boolean z;
        int iM7046j0 = (C0995e.m7430C() && C0733d.m5574G()) ? 0 : C0953u.m7001z().m7046j0();
        boolean z2 = C0995e.m7430C() && getResources().getInteger(2131361802) == 1;
        boolean z3 = C0953u.m7001z().m7047k() == 1;
        Rect rectM6294e = C0843e.m6289g().m6294e();
        Point point = new Point();
        WindowManager.LayoutParams layoutParams = this.f4963c;
        if (layoutParams == null) {
            z = getResources().getBoolean(2131034131) || z3;
            int i = this.f4971k;
            if (i == 0) {
                i = C0925p.f5875l;
            }
            point.y = (i / 2) - 50;
        } else {
            int i2 = layoutParams.x;
            point.x = i2;
            point.y = layoutParams.y;
            if (rectM6294e == null) {
                int i3 = C0925p.f5862I;
                z = i2 - i3 > (this.f4970j - i3) / 2;
            } else if ((i2 - rectM6294e.left) + iM7046j0 > rectM6294e.width() / 2) {
            }
        }
        if (rectM6294e != null) {
            if (z) {
                point.x = rectM6294e.right - f4960v;
            } else {
                point.x = rectM6294e.left;
            }
            if (point.y < 0) {
                point.y = (rectM6294e.height() / 2) - 50;
            }
        } else if (z) {
            point.x = this.f4970j;
        } else {
            point.x = C0925p.f5862I;
        }
        if (!z2 && !z3 && !z && getResources().getInteger(2131361802) == 1) {
            point.x = 0;
        }
        if (!z2 && z3 && z) {
            point.x = this.f4970j;
        }
        if ("hozon-EP36-vnd_mars-11(30)".equals(C0953u.m7001z().m7064y()) && point.y == 0) {
            point.y = 30;
        }
        point.x -= iM7046j0;
        this.f4979s = z;
        return point;
    }

    /* JADX INFO: renamed from: h */
    public boolean m6317h() {
        return this.f4976p;
    }

    /* JADX INFO: renamed from: j */
    public void m6318j() {
        CountDownTimer countDownTimer = this.f4980t;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.f4981u;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
    }

    /* JADX INFO: renamed from: k */
    public void m6319k() {
        if (this.f4963c != null) {
            if (Build.VERSION.SDK_INT < 19 || isAttachedToWindow()) {
                Point currentPosition = getCurrentPosition();
                WindowManager.LayoutParams layoutParams = this.f4963c;
                layoutParams.x = currentPosition.x;
                layoutParams.y = currentPosition.y;
                this.f4962b.updateViewLayout(this, layoutParams);
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public void m6320m() {
        if (!this.f4973m) {
            Point currentPosition = getCurrentPosition();
            WindowManager.LayoutParams layoutParams = this.f4963c;
            layoutParams.x = currentPosition.x;
            layoutParams.y = currentPosition.y;
            this.f4962b.updateViewLayout(this, layoutParams);
            C0982s.m7374d("FloatWindowSmallView", "updateViewPositionEnd: C mParams.x=" + this.f4963c.x);
            C0843e.m6289g().m6307v();
        }
        this.f4981u.start();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f4968h = motionEvent.getX();
            this.f4969i = motionEvent.getY();
            this.f4966f = motionEvent.getRawX();
            this.f4967g = motionEvent.getRawY();
            this.f4964d = motionEvent.getRawX();
            this.f4965e = motionEvent.getRawY();
            if (this.f4974n) {
                float f = this.f4964d;
                int i = this.f4970j;
                if (f > i / 2.0f || this.f4963c.x > i / 2.0f) {
                    this.f4972l.setX(CropImageView.DEFAULT_ASPECT_RATIO);
                } else {
                    this.f4972l.setX(CropImageView.DEFAULT_ASPECT_RATIO);
                }
            }
            this.f4972l.setImageDrawable(this.f4977q);
        } else if (action != 1) {
            if (action == 2) {
                this.f4964d = motionEvent.getRawX();
                this.f4965e = motionEvent.getRawY();
                m6314l();
            }
        } else if (Math.abs(this.f4966f - this.f4964d) >= 10.0f || Math.abs(this.f4967g - this.f4965e) >= 10.0f) {
            m6320m();
        } else {
            C0843e.m6289g().m6304s(getContext());
        }
        return true;
    }
}
