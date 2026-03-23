package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.C0292v;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ContentFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: b */
    private TypedValue f837b;

    /* JADX INFO: renamed from: c */
    private TypedValue f838c;

    /* JADX INFO: renamed from: d */
    private TypedValue f839d;

    /* JADX INFO: renamed from: e */
    private TypedValue f840e;

    /* JADX INFO: renamed from: f */
    private TypedValue f841f;

    /* JADX INFO: renamed from: g */
    private TypedValue f842g;

    /* JADX INFO: renamed from: h */
    private final Rect f843h;

    /* JADX INFO: renamed from: i */
    private InterfaceC0125a f844i;

    /* JADX INFO: renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    public interface InterfaceC0125a {
        /* JADX INFO: renamed from: a */
        void mo529a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    /* JADX INFO: renamed from: a */
    public void m895a(Rect rect) {
        fitSystemWindows(rect);
    }

    /* JADX INFO: renamed from: b */
    public void m896b(int i, int i2, int i3, int i4) {
        this.f843h.set(i, i2, i3, i4);
        if (C0292v.m2069T(this)) {
            requestLayout();
        }
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f841f == null) {
            this.f841f = new TypedValue();
        }
        return this.f841f;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f842g == null) {
            this.f842g = new TypedValue();
        }
        return this.f842g;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f839d == null) {
            this.f839d = new TypedValue();
        }
        return this.f839d;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f840e == null) {
            this.f840e = new TypedValue();
        }
        return this.f840e;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f837b == null) {
            this.f837b = new TypedValue();
        }
        return this.f837b;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f838c == null) {
            this.f838c = new TypedValue();
        }
        return this.f838c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        InterfaceC0125a interfaceC0125a = this.f844i;
        if (interfaceC0125a != null) {
            interfaceC0125a.mo529a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC0125a interfaceC0125a = this.f844i;
        if (interfaceC0125a != null) {
            interfaceC0125a.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00db  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        float fraction;
        int i5;
        int i6;
        float fraction2;
        int i7;
        int i8;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z2 = true;
        boolean z3 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE) {
            z = false;
        } else {
            TypedValue typedValue = z3 ? this.f840e : this.f839d;
            if (typedValue != null && (i7 = typedValue.type) != 0) {
                if (i7 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else if (i7 == 6) {
                    int i9 = displayMetrics.widthPixels;
                    fraction3 = typedValue.getFraction(i9, i9);
                } else {
                    i8 = 0;
                    if (i8 <= 0) {
                        Rect rect = this.f843h;
                        i = View.MeasureSpec.makeMeasureSpec(Math.min(i8 - (rect.left + rect.right), View.MeasureSpec.getSize(i)), 1073741824);
                        z = true;
                    }
                }
                i8 = (int) fraction3;
                if (i8 <= 0) {
                }
            }
        }
        if (mode2 == Integer.MIN_VALUE) {
            TypedValue typedValue2 = z3 ? this.f841f : this.f842g;
            if (typedValue2 != null && (i5 = typedValue2.type) != 0) {
                if (i5 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else if (i5 == 6) {
                    int i10 = displayMetrics.heightPixels;
                    fraction2 = typedValue2.getFraction(i10, i10);
                } else {
                    i6 = 0;
                    if (i6 > 0) {
                        Rect rect2 = this.f843h;
                        i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i6 - (rect2.top + rect2.bottom), View.MeasureSpec.getSize(i2)), 1073741824);
                    }
                }
                i6 = (int) fraction2;
                if (i6 > 0) {
                }
            }
        }
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (z || mode != Integer.MIN_VALUE) {
            z2 = false;
        } else {
            TypedValue typedValue3 = z3 ? this.f838c : this.f837b;
            if (typedValue3 != null && (i3 = typedValue3.type) != 0) {
                if (i3 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else if (i3 == 6) {
                    int i11 = displayMetrics.widthPixels;
                    fraction = typedValue3.getFraction(i11, i11);
                } else {
                    i4 = 0;
                    if (i4 > 0) {
                        Rect rect3 = this.f843h;
                        i4 -= rect3.left + rect3.right;
                    }
                    if (measuredWidth >= i4) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                    }
                }
                i4 = (int) fraction;
                if (i4 > 0) {
                }
                if (measuredWidth >= i4) {
                }
            }
        }
        if (z2) {
            super.onMeasure(iMakeMeasureSpec, i2);
        }
    }

    public void setAttachListener(InterfaceC0125a interfaceC0125a) {
        this.f844i = interfaceC0125a;
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f843h = new Rect();
    }
}
