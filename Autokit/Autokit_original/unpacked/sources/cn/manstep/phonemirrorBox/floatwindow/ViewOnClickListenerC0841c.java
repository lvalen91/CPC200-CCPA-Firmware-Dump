package cn.manstep.phonemirrorBox.floatwindow;

import android.content.Context;
import android.graphics.Rect;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import cn.manstep.phonemirrorBox.BoxInterface.C0730a;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0930q;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ViewOnClickListenerC0841c extends LinearLayout implements View.OnClickListener, View.OnTouchListener {

    /* JADX INFO: renamed from: q */
    public static int f4931q;

    /* JADX INFO: renamed from: r */
    public static int f4932r;

    /* JADX INFO: renamed from: b */
    public WeakReference<Context> f4933b;

    /* JADX INFO: renamed from: c */
    private boolean f4934c;

    /* JADX INFO: renamed from: d */
    private boolean f4935d;

    /* JADX INFO: renamed from: e */
    private Rect f4936e;

    /* JADX INFO: renamed from: f */
    private CustomImageView f4937f;

    /* JADX INFO: renamed from: g */
    private CustomImageView f4938g;

    /* JADX INFO: renamed from: h */
    private CustomImageView f4939h;

    /* JADX INFO: renamed from: i */
    private int f4940i;

    /* JADX INFO: renamed from: j */
    private int f4941j;

    /* JADX INFO: renamed from: k */
    private int f4942k;

    /* JADX INFO: renamed from: l */
    private int f4943l;

    /* JADX INFO: renamed from: m */
    private int f4944m;

    /* JADX INFO: renamed from: n */
    private AbstractC0839a f4945n;

    /* JADX INFO: renamed from: o */
    private final CountDownTimer f4946o;

    /* JADX INFO: renamed from: p */
    private int f4947p;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.c$a */
    class a extends CountDownTimer {
        a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            ViewOnClickListenerC0841c.this.f4934c = false;
            ViewOnClickListenerC0841c.this.m6283c(C0991a.m7412t().m7425y());
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public ViewOnClickListenerC0841c(Context context, int i) {
        super(context);
        this.f4933b = new WeakReference<>(null);
        this.f4934c = false;
        this.f4935d = true;
        this.f4940i = 0;
        this.f4941j = 0;
        this.f4942k = 0;
        this.f4943l = 0;
        this.f4944m = 0;
        this.f4946o = new a(220L, 20L);
        this.f4933b = new WeakReference<>(context);
        this.f4945n = new C0842d();
        this.f4947p = i;
        if (i != 8388613 || m6284d()) {
            LayoutInflater.from(context).inflate(2131492925, this);
        } else {
            LayoutInflater.from(context).inflate(2131492926, this);
        }
        this.f4944m = this.f4945n.m6273c(i == 8388613 && !m6284d());
        this.f4940i = 2131230934;
        this.f4941j = 2131230933;
        this.f4942k = 2131230886;
        this.f4943l = 2131230909;
        View viewFindViewById = findViewById(2131296363);
        this.f4945n.mo6274d(viewFindViewById);
        f4931q = viewFindViewById.getLayoutParams().width;
        f4932r = viewFindViewById.getLayoutParams().height;
        CustomImageView customImageView = (CustomImageView) findViewById(2131296529);
        this.f4938g = customImageView;
        customImageView.setOnClickListener(this);
        CustomImageView customImageView2 = (CustomImageView) findViewById(2131296711);
        this.f4937f = customImageView2;
        customImageView2.setOnClickListener(this);
        ((CustomImageView) findViewById(2131296686)).setOnClickListener(this);
        ((CustomImageView) findViewById(2131296723)).setOnClickListener(this);
        CustomImageView customImageView3 = (CustomImageView) findViewById(2131296461);
        this.f4939h = customImageView3;
        customImageView3.setOnClickListener(this);
        setOnTouchListener(this);
        if (C0733d.m5574G()) {
            this.f4939h.setImageResource(2131230874);
        } else {
            this.f4939h.setImageResource(2131230862);
        }
        Rect rect = new Rect();
        this.f4936e = rect;
        getGlobalVisibleRect(rect);
        if (C0730a.f4324j) {
            m6283c(true);
        } else {
            m6283c(false);
        }
    }

    /* JADX INFO: renamed from: f */
    private void m6280f() {
        if (this.f4933b.get() == null) {
            return;
        }
        C0982s.m7374d("FloatWindowBigView", "onClickHome: bGoHome=" + this.f4935d);
        if (this.f4935d) {
            C0733d.m5579O(4, 0);
        } else {
            C0956c.m7100h().m7116j(this.f4933b.get());
        }
        C0843e.m6289g().m6306u(getContext());
    }

    /* JADX INFO: renamed from: g */
    private void m6281g() {
        C0982s.m7373c("FloatWindowBigView,onClickPause: bMediaPlaying=" + C0730a.f4324j);
        if (C0733d.m5574G()) {
            if (C0991a.m7412t().m7425y()) {
                C0995e.m7435H(202);
                m6283c(false);
            } else {
                C0995e.m7435H(201);
                m6283c(true);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public void m6282b(boolean z) {
        boolean zM6004g = !C0930q.m6906g().m6915k() ? false : MyApplication.m5997b().m6004g();
        C0982s.m7374d("FloatWindowBigView", "changeHomeIcon: b=" + zM6004g);
        if (zM6004g) {
            this.f4935d = true;
            this.f4938g.setImageResource(this.f4942k);
            this.f4945n.mo6272b(true);
        } else {
            this.f4935d = false;
            this.f4938g.setImageResource(this.f4943l);
            this.f4945n.mo6272b(false);
        }
    }

    /* JADX INFO: renamed from: c */
    public void m6283c(boolean z) {
        if (this.f4934c) {
            return;
        }
        if (C0991a.m7412t().m7423w() || C0991a.m7412t().m7422v()) {
            z = false;
        }
        if (z) {
            this.f4937f.setImageResource(this.f4941j);
            this.f4945n.mo6271a(false);
        } else {
            this.f4937f.setImageResource(this.f4940i);
            this.f4945n.mo6271a(true);
        }
    }

    /* JADX INFO: renamed from: d */
    public boolean m6284d() {
        return this.f4945n.m6275e();
    }

    /* JADX INFO: renamed from: e */
    public void m6285e() {
        if (C0733d.m5574G()) {
            C0733d.m5579O(1, 25);
            C0733d.f4428l.m5713b1();
            m6283c(false);
            this.f4939h.setImageResource(2131230862);
        } else {
            m6280f();
        }
        C0843e.m6289g().m6306u(getContext());
    }

    @Override // android.widget.LinearLayout
    public int getGravity() {
        return this.f4947p;
    }

    public int getWindowAnimationStyle() {
        return this.f4944m;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296529) {
            m6280f();
            return;
        }
        if (id == 2131296723) {
            if (C0733d.m5574G()) {
                this.f4934c = true;
                this.f4946o.cancel();
                this.f4946o.start();
                C0995e.m7435H(205);
                return;
            }
            return;
        }
        if (id == 2131296686) {
            if (C0733d.m5574G()) {
                this.f4934c = true;
                this.f4946o.cancel();
                this.f4946o.start();
                C0995e.m7435H(204);
                return;
            }
            return;
        }
        if (id == 2131296711) {
            m6281g();
        } else if (id == 2131296461) {
            m6285e();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 4) {
            return true;
        }
        C0843e.m6289g().m6306u(getContext());
        return true;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            if (C0733d.m5574G()) {
                this.f4939h.setImageResource(2131230874);
            } else {
                this.f4939h.setImageResource(2131230862);
            }
        }
    }
}
