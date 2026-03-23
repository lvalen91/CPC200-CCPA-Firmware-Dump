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
import androidx.core.view.e0.c;
import androidx.core.view.v;
import com.google.android.material.timepicker.ClockHandView;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.d;
import d.c.a.a.f;
import d.c.a.a.h;
import d.c.a.a.j;
import d.c.a.a.k;
import java.util.Arrays;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class ClockFaceView extends com.google.android.material.timepicker.a implements ClockHandView.d {
    private final SparseArray<TextView> A;
    private final androidx.core.view.a B;
    private final int[] C;
    private final float[] D;
    private final int E;
    private final int F;
    private final int G;
    private final int H;
    private String[] I;
    private float J;
    private final ColorStateList K;
    private final ClockHandView x;
    private final Rect y;
    private final RectF z;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.w(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.x.g()) - ClockFaceView.this.E);
            return true;
        }
    }

    class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public void g(View view, c cVar) {
            super.g(view, cVar);
            int iIntValue = ((Integer) view.getTag(f.material_value_index)).intValue();
            if (iIntValue > 0) {
                cVar.s0((View) ClockFaceView.this.A.get(iIntValue - 1));
            }
            cVar.Z(c.C0024c.a(0, 1, iIntValue, 1, false, view.isSelected()));
        }
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.c.a.a.b.materialClockStyle);
    }

    private void D() {
        RectF rectFD = this.x.d();
        for (int i = 0; i < this.A.size(); i++) {
            TextView textView = this.A.get(i);
            if (textView != null) {
                textView.getDrawingRect(this.y);
                this.y.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.y);
                this.z.set(this.y);
                textView.getPaint().setShader(E(rectFD, this.z));
                textView.invalidate();
            }
        }
    }

    private RadialGradient E(RectF rectF, RectF rectF2) {
        if (RectF.intersects(rectF, rectF2)) {
            return new RadialGradient(rectF.centerX() - this.z.left, rectF.centerY() - this.z.top, rectF.width() * 0.5f, this.C, this.D, Shader.TileMode.CLAMP);
        }
        return null;
    }

    private static float F(float f, float f2, float f3) {
        return Math.max(Math.max(f, f2), f3);
    }

    private void H(int i) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.A.size();
        for (int i2 = 0; i2 < Math.max(this.I.length, size); i2++) {
            TextView textView = this.A.get(i2);
            if (i2 >= this.I.length) {
                removeView(textView);
                this.A.remove(i2);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(h.material_clockface_textview, (ViewGroup) this, false);
                    this.A.put(i2, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.I[i2]);
                textView.setTag(f.material_value_index, Integer.valueOf(i2));
                v.o0(textView, this.B);
                textView.setTextColor(this.K);
                if (i != 0) {
                    textView.setContentDescription(getResources().getString(i, this.I[i2]));
                }
            }
        }
    }

    public void G(String[] strArr, int i) {
        this.I = strArr;
        H(i);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.d
    public void a(float f, boolean z) {
        if (Math.abs(this.J - f) > 0.001f) {
            this.J = f;
            D();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        c.v0(accessibilityNodeInfo).Y(c.b.a(1, this.I.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        D();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iF = (int) (this.H / F(this.F / displayMetrics.heightPixels, this.G / displayMetrics.widthPixels, 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iF, 1073741824);
        setMeasuredDimension(iF, iF);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    @Override // com.google.android.material.timepicker.a
    public void w(int i) {
        if (i != v()) {
            super.w(i);
            this.x.j(v());
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.y = new Rect();
        this.z = new RectF();
        this.A = new SparseArray<>();
        this.D = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.ClockFaceView, i, j.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        this.K = d.c.a.a.x.c.a(context, typedArrayObtainStyledAttributes, k.ClockFaceView_clockNumberTextColor);
        LayoutInflater.from(context).inflate(h.material_clockface_view, (ViewGroup) this, true);
        this.x = (ClockHandView) findViewById(f.material_clock_hand);
        this.E = resources.getDimensionPixelSize(d.material_clock_hand_padding);
        ColorStateList colorStateList = this.K;
        int colorForState = colorStateList.getColorForState(new int[]{R.attr.state_selected}, colorStateList.getDefaultColor());
        this.C = new int[]{colorForState, colorForState, this.K.getDefaultColor()};
        this.x.b(this);
        int defaultColor = c.a.k.a.a.c(context, d.c.a.a.c.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListA = d.c.a.a.x.c.a(context, typedArrayObtainStyledAttributes, k.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateListA != null ? colorStateListA.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.B = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, BuildConfig.FLAVOR);
        G(strArr, 0);
        this.F = resources.getDimensionPixelSize(d.material_time_picker_minimum_screen_height);
        this.G = resources.getDimensionPixelSize(d.material_time_picker_minimum_screen_width);
        this.H = resources.getDimensionPixelSize(d.material_clock_size);
    }
}
