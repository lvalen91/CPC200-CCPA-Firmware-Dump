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
import com.yalantis.ucrop.BuildConfig;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class h extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<View> f726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<View> f727c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View.OnApplyWindowInsetsListener f728d;
    private boolean e;

    h(Context context, AttributeSet attributeSet, n nVar) {
        String str;
        super(context, attributeSet);
        this.e = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.j.c.FragmentContainerView);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(c.j.c.FragmentContainerView_android_name) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(c.j.c.FragmentContainerView_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        Fragment fragmentG0 = nVar.g0(id);
        if (classAttribute != null && fragmentG0 == null) {
            if (id <= 0) {
                if (string != null) {
                    str = " with tag " + string;
                } else {
                    str = BuildConfig.FLAVOR;
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str);
            }
            Fragment fragmentA = nVar.p0().a(context.getClassLoader(), classAttribute);
            fragmentA.T0(context, attributeSet, null);
            w wVarL = nVar.l();
            wVarL.s(true);
            wVarL.d(this, fragmentA, string);
            wVarL.k();
        }
        nVar.S0(this);
    }

    private void a(View view) {
        ArrayList<View> arrayList = this.f727c;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f726b == null) {
            this.f726b = new ArrayList<>();
        }
        this.f726b.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (n.y0(view) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (n.y0(view) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        androidx.core.view.d0 d0VarS = androidx.core.view.d0.s(windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f728d;
        androidx.core.view.d0 d0VarS2 = onApplyWindowInsetsListener != null ? androidx.core.view.d0.s(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets)) : androidx.core.view.v.a0(this, d0VarS);
        if (!d0VarS2.l()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                androidx.core.view.v.h(getChildAt(i), d0VarS2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.e && this.f726b != null) {
            for (int i = 0; i < this.f726b.size(); i++) {
                super.drawChild(canvas, this.f726b.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.e || (arrayList = this.f726b) == null || arrayList.size() <= 0 || !this.f726b.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f727c;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f726b;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.e = true;
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
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        if (z) {
            a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    void setDrawDisappearingViewsLast(boolean z) {
        this.e = z;
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
        this.f728d = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f727c == null) {
                this.f727c = new ArrayList<>();
            }
            this.f727c.add(view);
        }
        super.startViewTransition(view);
    }
}
