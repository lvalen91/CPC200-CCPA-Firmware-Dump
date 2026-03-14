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
import androidx.constraintlayout.widget.C0212d;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.view.CropImageView;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1223h;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1210i;

/* JADX INFO: renamed from: com.google.android.material.timepicker.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1163a extends ConstraintLayout {

    /* JADX INFO: renamed from: u */
    private final Runnable f7473u;

    /* JADX INFO: renamed from: v */
    private int f7474v;

    /* JADX INFO: renamed from: w */
    private C1208g f7475w;

    /* JADX INFO: renamed from: com.google.android.material.timepicker.a$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1163a.this.m8994y();
        }
    }

    public C1163a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: renamed from: u */
    private Drawable m8990u() {
        C1208g c1208g = new C1208g();
        this.f7475w = c1208g;
        c1208g.m9182U(new C1210i(0.5f));
        this.f7475w.m9184W(ColorStateList.valueOf(-1));
        return this.f7475w;
    }

    /* JADX INFO: renamed from: x */
    private static boolean m8991x(View view) {
        return "skip".equals(view.getTag());
    }

    /* JADX INFO: renamed from: z */
    private void m8992z() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f7473u);
            handler.post(this.f7473u);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(C0292v.m2096k());
        }
        m8992z();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        m8994y();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        m8992z();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f7475w.m9184W(ColorStateList.valueOf(i));
    }

    /* JADX INFO: renamed from: v */
    public int m8993v() {
        return this.f7474v;
    }

    /* JADX INFO: renamed from: w */
    public void mo8966w(int i) {
        this.f7474v = i;
        m8994y();
    }

    /* JADX INFO: renamed from: y */
    protected void m8994y() {
        int childCount = getChildCount();
        int i = 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            if (m8991x(getChildAt(i2))) {
                i++;
            }
        }
        C0212d c0212d = new C0212d();
        c0212d.m1499g(this);
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getId() != C1221f.circle_center && !m8991x(childAt)) {
                c0212d.m1501i(childAt.getId(), C1221f.circle_center, this.f7474v, f);
                f += 360.0f / (childCount - i);
            }
        }
        c0212d.m1495c(this);
    }

    public C1163a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(C1223h.material_radial_view_group, this);
        C0292v.m2111r0(this, m8990u());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.RadialViewGroup, i, 0);
        this.f7474v = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.RadialViewGroup_materialCircleRadius, 0);
        this.f7473u = new a();
        typedArrayObtainStyledAttributes.recycle();
    }
}
