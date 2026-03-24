package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.v;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.j;
import d.c.a.a.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class ClockHandView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ValueAnimator f2229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f2231d;
    private float e;
    private boolean f;
    private int g;
    private final List<d> h;
    private final int i;
    private final float j;
    private final Paint k;
    private final RectF l;
    private final int m;
    private float n;
    private boolean o;
    private c p;
    private double q;
    private int r;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ClockHandView.this.m(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
        }
    }

    class b extends AnimatorListenerAdapter {
        b(ClockHandView clockHandView) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface c {
        void a(float f, boolean z);
    }

    public interface d {
        void a(float f, boolean z);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.c.a.a.b.materialClockStyle);
    }

    private void c(Canvas canvas) {
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float fCos = (this.r * ((float) Math.cos(this.q))) + width;
        float f = height;
        float fSin = (this.r * ((float) Math.sin(this.q))) + f;
        this.k.setStrokeWidth(CropImageView.DEFAULT_ASPECT_RATIO);
        canvas.drawCircle(fCos, fSin, this.i, this.k);
        double dSin = Math.sin(this.q);
        double dCos = Math.cos(this.q);
        Double.isNaN(d);
        Double.isNaN(d);
        this.k.setStrokeWidth(this.m);
        canvas.drawLine(width, f, r1 + ((int) (dCos * d)), height + ((int) (d * dSin)), this.k);
        canvas.drawCircle(width, f, this.j, this.k);
    }

    private int e(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    private Pair<Float, Float> h(float f) {
        float f2 = f();
        if (Math.abs(f2 - f) > 180.0f) {
            if (f2 > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (f2 < 180.0f && f > 180.0f) {
                f2 += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(f2), Float.valueOf(f));
    }

    private boolean i(float f, float f2, boolean z, boolean z2, boolean z3) {
        float fE = e(f, f2);
        boolean z4 = false;
        boolean z5 = f() != fE;
        if (z2 && z5) {
            return true;
        }
        if (!z5 && !z) {
            return false;
        }
        if (z3 && this.f2230c) {
            z4 = true;
        }
        l(fE, z4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(float f, boolean z) {
        float f2 = f % 360.0f;
        this.n = f2;
        this.q = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.r * ((float) Math.cos(this.q)));
        float fSin = height + (this.r * ((float) Math.sin(this.q)));
        RectF rectF = this.l;
        int i = this.i;
        rectF.set(width - i, fSin - i, width + i, fSin + i);
        Iterator<d> it = this.h.iterator();
        while (it.hasNext()) {
            it.next().a(f2, z);
        }
        invalidate();
    }

    public void b(d dVar) {
        this.h.add(dVar);
    }

    public RectF d() {
        return this.l;
    }

    public float f() {
        return this.n;
    }

    public int g() {
        return this.i;
    }

    public void j(int i) {
        this.r = i;
        invalidate();
    }

    public void k(float f) {
        l(f, false);
    }

    public void l(float f, boolean z) {
        ValueAnimator valueAnimator = this.f2229b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            m(f, false);
            return;
        }
        Pair<Float, Float> pairH = h(f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) pairH.first).floatValue(), ((Float) pairH.second).floatValue());
        this.f2229b = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.f2229b.addUpdateListener(new a());
        this.f2229b.addListener(new b(this));
        this.f2229b.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        k(f());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        c cVar;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.f2231d);
                int i2 = (int) (y - this.e);
                this.f = (i * i) + (i2 * i2) > this.g;
                boolean z4 = this.o;
                z = actionMasked == 1;
                z2 = z4;
            } else {
                z = false;
                z2 = false;
            }
            z3 = false;
        } else {
            this.f2231d = x;
            this.e = y;
            this.f = true;
            this.o = false;
            z = false;
            z2 = false;
            z3 = true;
        }
        boolean zI = i(x, y, z2, z3, z) | this.o;
        this.o = zI;
        if (zI && z && (cVar = this.p) != null) {
            cVar.a(e(x, y), this.f);
        }
        return true;
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = new ArrayList();
        this.k = new Paint();
        this.l = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.ClockHandView, i, j.Widget_MaterialComponents_TimePicker_Clock);
        this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.ClockHandView_materialCircleRadius, 0);
        this.i = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.ClockHandView_selectorSize, 0);
        this.m = getResources().getDimensionPixelSize(d.c.a.a.d.material_clock_hand_stroke_width);
        this.j = r5.getDimensionPixelSize(d.c.a.a.d.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(k.ClockHandView_clockHandColor, 0);
        this.k.setAntiAlias(true);
        this.k.setColor(color);
        k(CropImageView.DEFAULT_ASPECT_RATIO);
        this.g = ViewConfiguration.get(context).getScaledTouchSlop();
        v.x0(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
