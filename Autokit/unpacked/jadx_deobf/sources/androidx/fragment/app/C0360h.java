package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.core.view.C0265d0;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.BuildConfig;
import java.util.ArrayList;
import p016c.p055j.C0636c;

/* JADX INFO: renamed from: androidx.fragment.app.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0360h extends FrameLayout {

    /* JADX INFO: renamed from: b */
    private ArrayList<View> f2264b;

    /* JADX INFO: renamed from: c */
    private ArrayList<View> f2265c;

    /* JADX INFO: renamed from: d */
    private View.OnApplyWindowInsetsListener f2266d;

    /* JADX INFO: renamed from: e */
    private boolean f2267e;

    C0360h(Context context, AttributeSet attributeSet, AbstractC0366n abstractC0366n) {
        String str;
        super(context, attributeSet);
        this.f2267e = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0636c.FragmentContainerView);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(C0636c.FragmentContainerView_android_name) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(C0636c.FragmentContainerView_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        Fragment fragmentM2763g0 = abstractC0366n.m2763g0(id);
        if (classAttribute != null && fragmentM2763g0 == null) {
            if (id <= 0) {
                if (string != null) {
                    str = " with tag " + string;
                } else {
                    str = BuildConfig.FLAVOR;
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str);
            }
            Fragment fragmentMo2657a = abstractC0366n.m2779p0().mo2657a(context.getClassLoader(), classAttribute);
            fragmentMo2657a.m2431T0(context, attributeSet, null);
            AbstractC0375w abstractC0375wM2774l = abstractC0366n.m2774l();
            abstractC0375wM2774l.m2896s(true);
            abstractC0375wM2774l.m2888d(this, fragmentMo2657a, string);
            abstractC0375wM2774l.mo2529k();
        }
        abstractC0366n.m2744S0(this);
    }

    /* JADX INFO: renamed from: a */
    private void m2629a(View view) {
        ArrayList<View> arrayList = this.f2265c;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f2264b == null) {
            this.f2264b = new ArrayList<>();
        }
        this.f2264b.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (AbstractC0366n.m2711y0(view) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (AbstractC0366n.m2711y0(view) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        C0265d0 c0265d0M1832s = C0265d0.m1832s(windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f2266d;
        C0265d0 c0265d0M1832s2 = onApplyWindowInsetsListener != null ? C0265d0.m1832s(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : C0292v.m2077a0(this, c0265d0M1832s);
        if (!c0265d0M1832s2.m1844l()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                C0292v.m2090h(getChildAt(i), c0265d0M1832s2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f2267e && this.f2264b != null) {
            for (int i = 0; i < this.f2264b.size(); i++) {
                super.drawChild(canvas, this.f2264b.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.f2267e || (arrayList = this.f2264b) == null || arrayList.size() <= 0 || !this.f2264b.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f2265c;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f2264b;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f2267e = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            m2629a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        if (z) {
            m2629a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        m2629a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        m2629a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        m2629a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m2629a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m2629a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    void setDrawDisappearingViewsLast(boolean z) {
        this.f2267e = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT >= 18) {
            throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
        }
        super.setLayoutTransition(layoutTransition);
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f2266d = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f2265c == null) {
                this.f2265c = new ArrayList<>();
            }
            this.f2265c.add(view);
        }
        super.startViewTransition(view);
    }
}
