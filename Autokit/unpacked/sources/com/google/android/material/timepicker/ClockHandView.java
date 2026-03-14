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
import androidx.core.view.C0292v;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class ClockHandView extends View {

    /* JADX INFO: renamed from: b */
    private ValueAnimator f7444b;

    /* JADX INFO: renamed from: c */
    private boolean f7445c;

    /* JADX INFO: renamed from: d */
    private float f7446d;

    /* JADX INFO: renamed from: e */
    private float f7447e;

    /* JADX INFO: renamed from: f */
    private boolean f7448f;

    /* JADX INFO: renamed from: g */
    private int f7449g;

    /* JADX INFO: renamed from: h */
    private final List<InterfaceC1155d> f7450h;

    /* JADX INFO: renamed from: i */
    private final int f7451i;

    /* JADX INFO: renamed from: j */
    private final float f7452j;

    /* JADX INFO: renamed from: k */
    private final Paint f7453k;

    /* JADX INFO: renamed from: l */
    private final RectF f7454l;

    /* JADX INFO: renamed from: m */
    private final int f7455m;

    /* JADX INFO: renamed from: n */
    private float f7456n;

    /* JADX INFO: renamed from: o */
    private boolean f7457o;

    /* JADX INFO: renamed from: p */
    private InterfaceC1154c f7458p;

    /* JADX INFO: renamed from: q */
    private double f7459q;

    /* JADX INFO: renamed from: r */
    private int f7460r;

    /* JADX INFO: renamed from: com.google.android.material.timepicker.ClockHandView$a */
    class C1152a implements ValueAnimator.AnimatorUpdateListener {
        C1152a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ClockHandView.this.m8972m(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.ClockHandView$b */
    class C1153b extends AnimatorListenerAdapter {
        C1153b(ClockHandView clockHandView) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.ClockHandView$c */
    public interface InterfaceC1154c {
        /* JADX INFO: renamed from: a */
        void m8980a(float f, boolean z);
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.ClockHandView$d */
    public interface InterfaceC1155d {
        /* JADX INFO: renamed from: a */
        void mo8965a(float f, boolean z);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.materialClockStyle);
    }

    /* JADX INFO: renamed from: c */
    private void m8968c(Canvas canvas) {
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float fCos = (this.f7460r * ((float) Math.cos(this.f7459q))) + width;
        float f = height;
        float fSin = (this.f7460r * ((float) Math.sin(this.f7459q))) + f;
        this.f7453k.setStrokeWidth(CropImageView.DEFAULT_ASPECT_RATIO);
        canvas.drawCircle(fCos, fSin, this.f7451i, this.f7453k);
        double dSin = Math.sin(this.f7459q);
        double dCos = Math.cos(this.f7459q);
        Double.isNaN(d);
        Double.isNaN(d);
        this.f7453k.setStrokeWidth(this.f7455m);
        canvas.drawLine(width, f, r1 + ((int) (dCos * d)), height + ((int) (d * dSin)), this.f7453k);
        canvas.drawCircle(width, f, this.f7452j, this.f7453k);
    }

    /* JADX INFO: renamed from: e */
    private int m8969e(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    /* JADX INFO: renamed from: h */
    private Pair<Float, Float> m8970h(float f) {
        float fM8975f = m8975f();
        if (Math.abs(fM8975f - f) > 180.0f) {
            if (fM8975f > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (fM8975f < 180.0f && f > 180.0f) {
                fM8975f += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(fM8975f), Float.valueOf(f));
    }

    /* JADX INFO: renamed from: i */
    private boolean m8971i(float f, float f2, boolean z, boolean z2, boolean z3) {
        float fM8969e = m8969e(f, f2);
        boolean z4 = false;
        boolean z5 = m8975f() != fM8969e;
        if (z2 && z5) {
            return true;
        }
        if (!z5 && !z) {
            return false;
        }
        if (z3 && this.f7445c) {
            z4 = true;
        }
        m8979l(fM8969e, z4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m */
    public void m8972m(float f, boolean z) {
        float f2 = f % 360.0f;
        this.f7456n = f2;
        this.f7459q = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.f7460r * ((float) Math.cos(this.f7459q)));
        float fSin = height + (this.f7460r * ((float) Math.sin(this.f7459q)));
        RectF rectF = this.f7454l;
        int i = this.f7451i;
        rectF.set(width - i, fSin - i, width + i, fSin + i);
        Iterator<InterfaceC1155d> it = this.f7450h.iterator();
        while (it.hasNext()) {
            it.next().mo8965a(f2, z);
        }
        invalidate();
    }

    /* JADX INFO: renamed from: b */
    public void m8973b(InterfaceC1155d interfaceC1155d) {
        this.f7450h.add(interfaceC1155d);
    }

    /* JADX INFO: renamed from: d */
    public RectF m8974d() {
        return this.f7454l;
    }

    /* JADX INFO: renamed from: f */
    public float m8975f() {
        return this.f7456n;
    }

    /* JADX INFO: renamed from: g */
    public int m8976g() {
        return this.f7451i;
    }

    /* JADX INFO: renamed from: j */
    public void m8977j(int i) {
        this.f7460r = i;
        invalidate();
    }

    /* JADX INFO: renamed from: k */
    public void m8978k(float f) {
        m8979l(f, false);
    }

    /* JADX INFO: renamed from: l */
    public void m8979l(float f, boolean z) {
        ValueAnimator valueAnimator = this.f7444b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            m8972m(f, false);
            return;
        }
        Pair<Float, Float> pairM8970h = m8970h(f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) pairM8970h.first).floatValue(), ((Float) pairM8970h.second).floatValue());
        this.f7444b = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.f7444b.addUpdateListener(new C1152a());
        this.f7444b.addListener(new C1153b(this));
        this.f7444b.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m8968c(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m8978k(m8975f());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        InterfaceC1154c interfaceC1154c;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.f7446d);
                int i2 = (int) (y - this.f7447e);
                this.f7448f = (i * i) + (i2 * i2) > this.f7449g;
                boolean z4 = this.f7457o;
                z = actionMasked == 1;
                z2 = z4;
            } else {
                z = false;
                z2 = false;
            }
            z3 = false;
        } else {
            this.f7446d = x;
            this.f7447e = y;
            this.f7448f = true;
            this.f7457o = false;
            z = false;
            z2 = false;
            z3 = true;
        }
        boolean zM8971i = m8971i(x, y, z2, z3, z) | this.f7457o;
        this.f7457o = zM8971i;
        if (zM8971i && z && (interfaceC1154c = this.f7458p) != null) {
            interfaceC1154c.m8980a(m8969e(x, y), this.f7448f);
        }
        return true;
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7450h = new ArrayList();
        this.f7453k = new Paint();
        this.f7454l = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.ClockHandView, i, C1225j.Widget_MaterialComponents_TimePicker_Clock);
        this.f7460r = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.ClockHandView_materialCircleRadius, 0);
        this.f7451i = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.ClockHandView_selectorSize, 0);
        this.f7455m = getResources().getDimensionPixelSize(C1219d.material_clock_hand_stroke_width);
        this.f7452j = r5.getDimensionPixelSize(C1219d.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(C1226k.ClockHandView_clockHandColor, 0);
        this.f7453k.setAntiAlias(true);
        this.f7453k.setColor(color);
        m8978k(CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7449g = ViewConfiguration.get(context).getScaledTouchSlop();
        C0292v.m2123x0(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
