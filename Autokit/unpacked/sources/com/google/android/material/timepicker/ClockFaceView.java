package com.google.android.material.timepicker;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.core.view.C0258a;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import com.google.android.material.timepicker.ClockHandView;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;
import p016c.p017a.p018k.p019a.C0503a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1218c;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1223h;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class ClockFaceView extends C1163a implements ClockHandView.InterfaceC1155d {

    /* JADX INFO: renamed from: A */
    private final SparseArray<TextView> f7428A;

    /* JADX INFO: renamed from: B */
    private final C0258a f7429B;

    /* JADX INFO: renamed from: C */
    private final int[] f7430C;

    /* JADX INFO: renamed from: D */
    private final float[] f7431D;

    /* JADX INFO: renamed from: E */
    private final int f7432E;

    /* JADX INFO: renamed from: F */
    private final int f7433F;

    /* JADX INFO: renamed from: G */
    private final int f7434G;

    /* JADX INFO: renamed from: H */
    private final int f7435H;

    /* JADX INFO: renamed from: I */
    private String[] f7436I;

    /* JADX INFO: renamed from: J */
    private float f7437J;

    /* JADX INFO: renamed from: K */
    private final ColorStateList f7438K;

    /* JADX INFO: renamed from: x */
    private final ClockHandView f7439x;

    /* JADX INFO: renamed from: y */
    private final Rect f7440y;

    /* JADX INFO: renamed from: z */
    private final RectF f7441z;

    /* JADX INFO: renamed from: com.google.android.material.timepicker.ClockFaceView$a */
    class ViewTreeObserverOnPreDrawListenerC1150a implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserverOnPreDrawListenerC1150a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.mo8966w(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.f7439x.m8976g()) - ClockFaceView.this.f7432E);
            return true;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.ClockFaceView$b */
    class C1151b extends C0258a {
        C1151b() {
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            super.mo1813g(view, c0269c);
            int iIntValue = ((Integer) view.getTag(C1221f.material_value_index)).intValue();
            if (iIntValue > 0) {
                c0269c.m1953s0((View) ClockFaceView.this.f7428A.get(iIntValue - 1));
            }
            c0269c.m1922Z(C0269c.c.m1965a(0, 1, iIntValue, 1, false, view.isSelected()));
        }
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.materialClockStyle);
    }

    /* JADX INFO: renamed from: D */
    private void m8960D() {
        RectF rectFM8974d = this.f7439x.m8974d();
        for (int i = 0; i < this.f7428A.size(); i++) {
            TextView textView = this.f7428A.get(i);
            if (textView != null) {
                textView.getDrawingRect(this.f7440y);
                this.f7440y.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.f7440y);
                this.f7441z.set(this.f7440y);
                textView.getPaint().setShader(m8961E(rectFM8974d, this.f7441z));
                textView.invalidate();
            }
        }
    }

    /* JADX INFO: renamed from: E */
    private RadialGradient m8961E(RectF rectF, RectF rectF2) {
        if (RectF.intersects(rectF, rectF2)) {
            return new RadialGradient(rectF.centerX() - this.f7441z.left, rectF.centerY() - this.f7441z.top, rectF.width() * 0.5f, this.f7430C, this.f7431D, Shader.TileMode.CLAMP);
        }
        return null;
    }

    /* JADX INFO: renamed from: F */
    private static float m8962F(float f, float f2, float f3) {
        return Math.max(Math.max(f, f2), f3);
    }

    /* JADX INFO: renamed from: H */
    private void m8963H(int i) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.f7428A.size();
        for (int i2 = 0; i2 < Math.max(this.f7436I.length, size); i2++) {
            TextView textView = this.f7428A.get(i2);
            if (i2 >= this.f7436I.length) {
                removeView(textView);
                this.f7428A.remove(i2);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(C1223h.material_clockface_textview, (ViewGroup) this, false);
                    this.f7428A.put(i2, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.f7436I[i2]);
                textView.setTag(C1221f.material_value_index, Integer.valueOf(i2));
                C0292v.m2105o0(textView, this.f7429B);
                textView.setTextColor(this.f7438K);
                if (i != 0) {
                    textView.setContentDescription(getResources().getString(i, this.f7436I[i2]));
                }
            }
        }
    }

    /* JADX INFO: renamed from: G */
    public void m8964G(String[] strArr, int i) {
        this.f7436I = strArr;
        m8963H(i);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.InterfaceC1155d
    /* JADX INFO: renamed from: a */
    public void mo8965a(float f, boolean z) {
        if (Math.abs(this.f7437J - f) > 0.001f) {
            this.f7437J = f;
            m8960D();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C0269c.m1899v0(accessibilityNodeInfo).m1921Y(C0269c.b.m1964a(1, this.f7436I.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m8960D();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iM8962F = (int) (this.f7435H / m8962F(this.f7433F / displayMetrics.heightPixels, this.f7434G / displayMetrics.widthPixels, 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iM8962F, 1073741824);
        setMeasuredDimension(iM8962F, iM8962F);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    @Override // com.google.android.material.timepicker.C1163a
    /* JADX INFO: renamed from: w */
    public void mo8966w(int i) {
        if (i != m8993v()) {
            super.mo8966w(i);
            this.f7439x.m8977j(m8993v());
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7440y = new Rect();
        this.f7441z = new RectF();
        this.f7428A = new SparseArray<>();
        this.f7431D = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.ClockFaceView, i, C1225j.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        this.f7438K = C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.ClockFaceView_clockNumberTextColor);
        LayoutInflater.from(context).inflate(C1223h.material_clockface_view, (ViewGroup) this, true);
        this.f7439x = (ClockHandView) findViewById(C1221f.material_clock_hand);
        this.f7432E = resources.getDimensionPixelSize(C1219d.material_clock_hand_padding);
        ColorStateList colorStateList = this.f7438K;
        int colorForState = colorStateList.getColorForState(new int[]{R.attr.state_selected}, colorStateList.getDefaultColor());
        this.f7430C = new int[]{colorForState, colorForState, this.f7438K.getDefaultColor()};
        this.f7439x.m8973b(this);
        int defaultColor = C0503a.m4046c(context, C1218c.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListM9454a = C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateListM9454a != null ? colorStateListM9454a.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC1150a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.f7429B = new C1151b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, BuildConfig.FLAVOR);
        m8964G(strArr, 0);
        this.f7433F = resources.getDimensionPixelSize(C1219d.material_time_picker_minimum_screen_height);
        this.f7434G = resources.getDimensionPixelSize(C1219d.material_time_picker_minimum_screen_width);
        this.f7435H = resources.getDimensionPixelSize(C1219d.material_clock_size);
    }
}
