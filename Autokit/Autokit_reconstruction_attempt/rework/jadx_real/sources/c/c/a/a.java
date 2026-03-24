package c.c.a;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a extends FrameLayout {
    private static final f f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Rect f1063d;
    private final e e;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f = new c();
        } else if (i >= 17) {
            f = new b();
        } else {
            f = new d();
        }
        f.m();
    }

    public ColorStateList getCardBackgroundColor() {
        return f.f(this.e);
    }

    public float getCardElevation() {
        return f.k(this.e);
    }

    public int getContentPaddingBottom() {
        return this.f1063d.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f1063d.left;
    }

    public int getContentPaddingRight() {
        return this.f1063d.right;
    }

    public int getContentPaddingTop() {
        return this.f1063d.top;
    }

    public float getMaxCardElevation() {
        return f.a(this.e);
    }

    public boolean getPreventCornerOverlap() {
        return this.f1062c;
    }

    public float getRadius() {
        return f.b(this.e);
    }

    public boolean getUseCompatPadding() {
        return this.f1061b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (f instanceof c) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f.d(this.e)), View.MeasureSpec.getSize(i)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f.c(this.e)), View.MeasureSpec.getSize(i2)), mode2);
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        f.j(this.e, ColorStateList.valueOf(i));
    }

    public void setCardElevation(float f2) {
        f.g(this.e, f2);
    }

    public void setMaxCardElevation(float f2) {
        f.l(this.e, f2);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f1062c) {
            this.f1062c = z;
            f.i(this.e);
        }
    }

    public void setRadius(float f2) {
        f.h(this.e, f2);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f1061b != z) {
            this.f1061b = z;
            f.e(this.e);
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f.j(this.e, colorStateList);
    }
}
