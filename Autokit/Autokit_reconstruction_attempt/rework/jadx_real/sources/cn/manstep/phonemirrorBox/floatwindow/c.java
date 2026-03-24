package cn.manstep.phonemirrorBox.floatwindow;

import android.content.Context;
import android.graphics.Rect;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.q;
import cn.manstep.phonemirrorBox.util.s;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c extends LinearLayout implements View.OnClickListener, View.OnTouchListener {
    public static int q;
    public static int r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WeakReference<Context> f1640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1642d;
    private Rect e;
    private CustomImageView f;
    private CustomImageView g;
    private CustomImageView h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private cn.manstep.phonemirrorBox.floatwindow.a n;
    private final CountDownTimer o;
    private int p;

    class a extends CountDownTimer {
        a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            c.this.f1641c = false;
            c.this.c(cn.manstep.phonemirrorBox.v0.a.t().y());
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public c(Context context, int i) {
        super(context);
        this.f1640b = new WeakReference<>(null);
        this.f1641c = false;
        this.f1642d = true;
        this.i = 0;
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.o = new a(220L, 20L);
        this.f1640b = new WeakReference<>(context);
        this.n = new d();
        this.p = i;
        if (i != 8388613 || d()) {
            LayoutInflater.from(context).inflate(2131492925, this);
        } else {
            LayoutInflater.from(context).inflate(2131492926, this);
        }
        this.m = this.n.c(i == 8388613 && !d());
        this.i = 2131230934;
        this.j = 2131230933;
        this.k = 2131230886;
        this.l = 2131230909;
        View viewFindViewById = findViewById(2131296363);
        this.n.d(viewFindViewById);
        q = viewFindViewById.getLayoutParams().width;
        r = viewFindViewById.getLayoutParams().height;
        CustomImageView customImageView = (CustomImageView) findViewById(2131296529);
        this.g = customImageView;
        customImageView.setOnClickListener(this);
        CustomImageView customImageView2 = (CustomImageView) findViewById(2131296711);
        this.f = customImageView2;
        customImageView2.setOnClickListener(this);
        ((CustomImageView) findViewById(2131296686)).setOnClickListener(this);
        ((CustomImageView) findViewById(2131296723)).setOnClickListener(this);
        CustomImageView customImageView3 = (CustomImageView) findViewById(2131296461);
        this.h = customImageView3;
        customImageView3.setOnClickListener(this);
        setOnTouchListener(this);
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            this.h.setImageResource(2131230874);
        } else {
            this.h.setImageResource(2131230862);
        }
        Rect rect = new Rect();
        this.e = rect;
        getGlobalVisibleRect(rect);
        if (cn.manstep.phonemirrorBox.BoxInterface.a.j) {
            c(true);
        } else {
            c(false);
        }
    }

    private void f() {
        if (this.f1640b.get() == null) {
            return;
        }
        s.d("FloatWindowBigView", "onClickHome: bGoHome=" + this.f1642d);
        if (this.f1642d) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(4, 0);
        } else {
            cn.manstep.phonemirrorBox.u0.c.h().j(this.f1640b.get());
        }
        e.g().u(getContext());
    }

    private void g() {
        s.c("FloatWindowBigView,onClickPause: bMediaPlaying=" + cn.manstep.phonemirrorBox.BoxInterface.a.j);
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            if (cn.manstep.phonemirrorBox.v0.a.t().y()) {
                cn.manstep.phonemirrorBox.v0.e.H(202);
                c(false);
            } else {
                cn.manstep.phonemirrorBox.v0.e.H(201);
                c(true);
            }
        }
    }

    public void b(boolean z) {
        boolean zG = !q.g().k() ? false : MyApplication.b().g();
        s.d("FloatWindowBigView", "changeHomeIcon: b=" + zG);
        if (zG) {
            this.f1642d = true;
            this.g.setImageResource(this.k);
            this.n.b(true);
        } else {
            this.f1642d = false;
            this.g.setImageResource(this.l);
            this.n.b(false);
        }
    }

    public void c(boolean z) {
        if (this.f1641c) {
            return;
        }
        if (cn.manstep.phonemirrorBox.v0.a.t().w() || cn.manstep.phonemirrorBox.v0.a.t().v()) {
            z = false;
        }
        if (z) {
            this.f.setImageResource(this.j);
            this.n.a(false);
        } else {
            this.f.setImageResource(this.i);
            this.n.a(true);
        }
    }

    public boolean d() {
        return this.n.e();
    }

    public void e() {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 25);
            cn.manstep.phonemirrorBox.BoxInterface.d.l.b1();
            c(false);
            this.h.setImageResource(2131230862);
        } else {
            f();
        }
        e.g().u(getContext());
    }

    @Override // android.widget.LinearLayout
    public int getGravity() {
        return this.p;
    }

    public int getWindowAnimationStyle() {
        return this.m;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296529) {
            f();
            return;
        }
        if (id == 2131296723) {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                this.f1641c = true;
                this.o.cancel();
                this.o.start();
                cn.manstep.phonemirrorBox.v0.e.H(205);
                return;
            }
            return;
        }
        if (id == 2131296686) {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                this.f1641c = true;
                this.o.cancel();
                this.o.start();
                cn.manstep.phonemirrorBox.v0.e.H(204);
                return;
            }
            return;
        }
        if (id == 2131296711) {
            g();
        } else if (id == 2131296461) {
            e();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 4) {
            return true;
        }
        e.g().u(getContext());
        return true;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                this.h.setImageResource(2131230874);
            } else {
                this.h.setImageResource(2131230862);
            }
        }
    }
}
