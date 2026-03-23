package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.d;
import androidx.core.view.v;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.g;
import d.c.a.a.a0.i;
import d.c.a.a.f;
import d.c.a.a.h;
import d.c.a.a.k;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class a extends ConstraintLayout {
    private final Runnable u;
    private int v;
    private g w;

    /* JADX INFO: renamed from: com.google.android.material.timepicker.a$a, reason: collision with other inner class name */
    class RunnableC0117a implements Runnable {
        RunnableC0117a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.y();
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private Drawable u() {
        g gVar = new g();
        this.w = gVar;
        gVar.U(new i(0.5f));
        this.w.W(ColorStateList.valueOf(-1));
        return this.w;
    }

    private static boolean x(View view) {
        return "skip".equals(view.getTag());
    }

    private void z() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.u);
            handler.post(this.u);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(v.k());
        }
        z();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        y();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        z();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.w.W(ColorStateList.valueOf(i));
    }

    public int v() {
        return this.v;
    }

    public void w(int i) {
        this.v = i;
        y();
    }

    protected void y() {
        int childCount = getChildCount();
        int i = 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            if (x(getChildAt(i2))) {
                i++;
            }
        }
        d dVar = new d();
        dVar.g(this);
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getId() != f.circle_center && !x(childAt)) {
                dVar.i(childAt.getId(), f.circle_center, this.v, f);
                f += 360.0f / (childCount - i);
            }
        }
        dVar.c(this);
    }

    public a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(h.material_radial_view_group, this);
        v.r0(this, u());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.RadialViewGroup, i, 0);
        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.RadialViewGroup_materialCircleRadius, 0);
        this.u = new RunnableC0117a();
        typedArrayObtainStyledAttributes.recycle();
    }
}
