package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.view.menu.C0103i;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.appcompat.view.menu.SubMenuC0112r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.C0266e;
import androidx.core.view.C0278h;
import androidx.core.view.C0292v;
import java.util.ArrayList;
import java.util.List;
import p016c.p017a.C0493a;
import p016c.p017a.C0502j;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p017a.p024o.C0517g;
import p016c.p017a.p024o.InterfaceC0513c;
import p016c.p052i.p053a.AbstractC0630a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Toolbar extends ViewGroup {

    /* JADX INFO: renamed from: A */
    private ColorStateList f964A;

    /* JADX INFO: renamed from: B */
    private ColorStateList f965B;

    /* JADX INFO: renamed from: C */
    private boolean f966C;

    /* JADX INFO: renamed from: D */
    private boolean f967D;

    /* JADX INFO: renamed from: E */
    private final ArrayList<View> f968E;

    /* JADX INFO: renamed from: F */
    private final ArrayList<View> f969F;

    /* JADX INFO: renamed from: G */
    private final int[] f970G;

    /* JADX INFO: renamed from: H */
    InterfaceC0149f f971H;

    /* JADX INFO: renamed from: I */
    private final ActionMenuView.InterfaceC0124e f972I;

    /* JADX INFO: renamed from: J */
    private C0197v0 f973J;

    /* JADX INFO: renamed from: K */
    private C0158c f974K;

    /* JADX INFO: renamed from: L */
    private C0147d f975L;

    /* JADX INFO: renamed from: M */
    private InterfaceC0107m.a f976M;

    /* JADX INFO: renamed from: N */
    private C0101g.a f977N;

    /* JADX INFO: renamed from: O */
    private boolean f978O;

    /* JADX INFO: renamed from: P */
    private final Runnable f979P;

    /* JADX INFO: renamed from: b */
    private ActionMenuView f980b;

    /* JADX INFO: renamed from: c */
    private TextView f981c;

    /* JADX INFO: renamed from: d */
    private TextView f982d;

    /* JADX INFO: renamed from: e */
    private ImageButton f983e;

    /* JADX INFO: renamed from: f */
    private ImageView f984f;

    /* JADX INFO: renamed from: g */
    private Drawable f985g;

    /* JADX INFO: renamed from: h */
    private CharSequence f986h;

    /* JADX INFO: renamed from: i */
    ImageButton f987i;

    /* JADX INFO: renamed from: j */
    View f988j;

    /* JADX INFO: renamed from: k */
    private Context f989k;

    /* JADX INFO: renamed from: l */
    private int f990l;

    /* JADX INFO: renamed from: m */
    private int f991m;

    /* JADX INFO: renamed from: n */
    private int f992n;

    /* JADX INFO: renamed from: o */
    int f993o;

    /* JADX INFO: renamed from: p */
    private int f994p;

    /* JADX INFO: renamed from: q */
    private int f995q;

    /* JADX INFO: renamed from: r */
    private int f996r;

    /* JADX INFO: renamed from: s */
    private int f997s;

    /* JADX INFO: renamed from: t */
    private int f998t;

    /* JADX INFO: renamed from: u */
    private C0179m0 f999u;

    /* JADX INFO: renamed from: v */
    private int f1000v;

    /* JADX INFO: renamed from: w */
    private int f1001w;

    /* JADX INFO: renamed from: x */
    private int f1002x;

    /* JADX INFO: renamed from: y */
    private CharSequence f1003y;

    /* JADX INFO: renamed from: z */
    private CharSequence f1004z;

    /* JADX INFO: renamed from: androidx.appcompat.widget.Toolbar$a */
    class C0144a implements ActionMenuView.InterfaceC0124e {
        C0144a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.InterfaceC0124e
        public boolean onMenuItemClick(MenuItem menuItem) {
            InterfaceC0149f interfaceC0149f = Toolbar.this.f971H;
            if (interfaceC0149f != null) {
                return interfaceC0149f.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.Toolbar$b */
    class RunnableC0145b implements Runnable {
        RunnableC0145b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.m994O();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.Toolbar$c */
    class ViewOnClickListenerC0146c implements View.OnClickListener {
        ViewOnClickListenerC0146c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.m997e();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.Toolbar$d */
    private class C0147d implements InterfaceC0107m {

        /* JADX INFO: renamed from: b */
        C0101g f1008b;

        /* JADX INFO: renamed from: c */
        C0103i f1009c;

        C0147d() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m
        /* JADX INFO: renamed from: a */
        public void mo666a(C0101g c0101g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m
        /* JADX INFO: renamed from: c */
        public boolean mo695c() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m
        /* JADX INFO: renamed from: d */
        public void mo668d(Context context, C0101g c0101g) {
            C0103i c0103i;
            C0101g c0101g2 = this.f1008b;
            if (c0101g2 != null && (c0103i = this.f1009c) != null) {
                c0101g2.mo757f(c0103i);
            }
            this.f1008b = c0101g;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m
        /* JADX INFO: renamed from: e */
        public boolean mo669e(C0101g c0101g, C0103i c0103i) {
            KeyEvent.Callback callback = Toolbar.this.f988j;
            if (callback instanceof InterfaceC0513c) {
                ((InterfaceC0513c) callback).mo813d();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f988j);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f987i);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f988j = null;
            toolbar3.m995a();
            this.f1009c = null;
            Toolbar.this.requestLayout();
            c0103i.m793r(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m
        /* JADX INFO: renamed from: f */
        public boolean mo670f(C0101g c0101g, C0103i c0103i) {
            Toolbar.this.m999g();
            ViewParent parent = Toolbar.this.f987i.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f987i);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f987i);
            }
            Toolbar.this.f988j = c0103i.getActionView();
            this.f1009c = c0103i;
            ViewParent parent2 = Toolbar.this.f988j.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f988j);
                }
                C0148e c0148eGenerateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                c0148eGenerateDefaultLayoutParams.f329a = 8388611 | (toolbar4.f993o & 112);
                c0148eGenerateDefaultLayoutParams.f1011b = 2;
                toolbar4.f988j.setLayoutParams(c0148eGenerateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f988j);
            }
            Toolbar.this.m988G();
            Toolbar.this.requestLayout();
            c0103i.m793r(true);
            KeyEvent.Callback callback = Toolbar.this.f988j;
            if (callback instanceof InterfaceC0513c) {
                ((InterfaceC0513c) callback).mo812c();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m
        /* JADX INFO: renamed from: h */
        public void mo672h(InterfaceC0107m.a aVar) {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m
        /* JADX INFO: renamed from: i */
        public boolean mo673i(SubMenuC0112r subMenuC0112r) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m
        /* JADX INFO: renamed from: j */
        public void mo674j(boolean z) {
            if (this.f1009c != null) {
                C0101g c0101g = this.f1008b;
                boolean z2 = false;
                if (c0101g != null) {
                    int size = c0101g.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.f1008b.getItem(i) == this.f1009c) {
                            z2 = true;
                            break;
                        }
                        i++;
                    }
                }
                if (z2) {
                    return;
                }
                mo669e(this.f1008b, this.f1009c);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.Toolbar$f */
    public interface InterfaceC0149f {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.toolbarStyle);
    }

    /* JADX INFO: renamed from: B */
    private int m966B(View view, int i, int[] iArr, int i2) {
        C0148e c0148e = (C0148e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0148e).leftMargin - iArr[0];
        int iMax = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int iM981q = m981q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iM981q, iMax + measuredWidth, view.getMeasuredHeight() + iM981q);
        return iMax + measuredWidth + ((ViewGroup.MarginLayoutParams) c0148e).rightMargin;
    }

    /* JADX INFO: renamed from: C */
    private int m967C(View view, int i, int[] iArr, int i2) {
        C0148e c0148e = (C0148e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c0148e).rightMargin - iArr[1];
        int iMax = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int iM981q = m981q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iM981q, iMax, view.getMeasuredHeight() + iM981q);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) c0148e).leftMargin);
    }

    /* JADX INFO: renamed from: D */
    private int m968D(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + iMax + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    /* JADX INFO: renamed from: E */
    private void m969E(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    /* JADX INFO: renamed from: F */
    private void m970F() {
        removeCallbacks(this.f979P);
        post(this.f979P);
    }

    /* JADX INFO: renamed from: M */
    private boolean m971M() {
        if (!this.f978O) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m972N(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: N */
    private boolean m972N(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* JADX INFO: renamed from: b */
    private void m973b(List<View> list, int i) {
        boolean z = C0292v.m2046C(this) == 1;
        int childCount = getChildCount();
        int iM1883b = C0266e.m1883b(i, C0292v.m2046C(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                C0148e c0148e = (C0148e) childAt.getLayoutParams();
                if (c0148e.f1011b == 0 && m972N(childAt) && m980p(c0148e.f329a) == iM1883b) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            C0148e c0148e2 = (C0148e) childAt2.getLayoutParams();
            if (c0148e2.f1011b == 0 && m972N(childAt2) && m980p(c0148e2.f329a) == iM1883b) {
                list.add(childAt2);
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private void m974c(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        C0148e c0148eGenerateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (C0148e) layoutParams;
        c0148eGenerateDefaultLayoutParams.f1011b = 1;
        if (!z || this.f988j == null) {
            addView(view, c0148eGenerateDefaultLayoutParams);
        } else {
            view.setLayoutParams(c0148eGenerateDefaultLayoutParams);
            this.f969F.add(view);
        }
    }

    private MenuInflater getMenuInflater() {
        return new C0517g(getContext());
    }

    /* JADX INFO: renamed from: h */
    private void m975h() {
        if (this.f999u == null) {
            this.f999u = new C0179m0();
        }
    }

    /* JADX INFO: renamed from: i */
    private void m976i() {
        if (this.f984f == null) {
            this.f984f = new AppCompatImageView(getContext());
        }
    }

    /* JADX INFO: renamed from: j */
    private void m977j() {
        m978k();
        if (this.f980b.m883N() == null) {
            C0101g c0101g = (C0101g) this.f980b.getMenu();
            if (this.f975L == null) {
                this.f975L = new C0147d();
            }
            this.f980b.setExpandedActionViewsExclusive(true);
            c0101g.m752c(this.f975L, this.f989k);
        }
    }

    /* JADX INFO: renamed from: k */
    private void m978k() {
        if (this.f980b == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f980b = actionMenuView;
            actionMenuView.setPopupTheme(this.f990l);
            this.f980b.setOnMenuItemClickListener(this.f972I);
            this.f980b.m884O(this.f976M, this.f977N);
            C0148e c0148eGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            c0148eGenerateDefaultLayoutParams.f329a = 8388613 | (this.f993o & 112);
            this.f980b.setLayoutParams(c0148eGenerateDefaultLayoutParams);
            m974c(this.f980b, false);
        }
    }

    /* JADX INFO: renamed from: l */
    private void m979l() {
        if (this.f983e == null) {
            this.f983e = new C0176l(getContext(), null, C0493a.toolbarNavigationButtonStyle);
            C0148e c0148eGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            c0148eGenerateDefaultLayoutParams.f329a = 8388611 | (this.f993o & 112);
            this.f983e.setLayoutParams(c0148eGenerateDefaultLayoutParams);
        }
    }

    /* JADX INFO: renamed from: p */
    private int m980p(int i) {
        int iM2046C = C0292v.m2046C(this);
        int iM1883b = C0266e.m1883b(i, iM2046C) & 7;
        return (iM1883b == 1 || iM1883b == 3 || iM1883b == 5) ? iM1883b : iM2046C == 1 ? 5 : 3;
    }

    /* JADX INFO: renamed from: q */
    private int m981q(View view, int i) {
        C0148e c0148e = (C0148e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int iM982r = m982r(c0148e.f329a);
        if (iM982r == 48) {
            return getPaddingTop() - i2;
        }
        if (iM982r == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0148e).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i3 = ((ViewGroup.MarginLayoutParams) c0148e).topMargin;
        if (iMax < i3) {
            iMax = i3;
        } else {
            int i4 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i5 = ((ViewGroup.MarginLayoutParams) c0148e).bottomMargin;
            if (i4 < i5) {
                iMax = Math.max(0, iMax - (i5 - i4));
            }
        }
        return paddingTop + iMax;
    }

    /* JADX INFO: renamed from: r */
    private int m982r(int i) {
        int i2 = i & 112;
        return (i2 == 16 || i2 == 48 || i2 == 80) ? i2 : this.f1002x & 112;
    }

    /* JADX INFO: renamed from: s */
    private int m983s(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return C0278h.m2006b(marginLayoutParams) + C0278h.m2005a(marginLayoutParams);
    }

    /* JADX INFO: renamed from: t */
    private int m984t(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* JADX INFO: renamed from: u */
    private int m985u(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int measuredWidth = 0;
        while (i3 < size) {
            View view = list.get(i3);
            C0148e c0148e = (C0148e) view.getLayoutParams();
            int i4 = ((ViewGroup.MarginLayoutParams) c0148e).leftMargin - i;
            int i5 = ((ViewGroup.MarginLayoutParams) c0148e).rightMargin - i2;
            int iMax = Math.max(0, i4);
            int iMax2 = Math.max(0, i5);
            int iMax3 = Math.max(0, -i4);
            int iMax4 = Math.max(0, -i5);
            measuredWidth += iMax + view.getMeasuredWidth() + iMax2;
            i3++;
            i2 = iMax4;
            i = iMax3;
        }
        return measuredWidth;
    }

    /* JADX INFO: renamed from: y */
    private boolean m986y(View view) {
        return view.getParent() == this || this.f969F.contains(view);
    }

    /* JADX INFO: renamed from: A */
    public boolean m987A() {
        ActionMenuView actionMenuView = this.f980b;
        return actionMenuView != null && actionMenuView.m881J();
    }

    /* JADX INFO: renamed from: G */
    void m988G() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((C0148e) childAt.getLayoutParams()).f1011b != 2 && childAt != this.f980b) {
                removeViewAt(childCount);
                this.f969F.add(childAt);
            }
        }
    }

    /* JADX INFO: renamed from: H */
    public void m989H(int i, int i2) {
        m975h();
        this.f999u.m1239g(i, i2);
    }

    /* JADX INFO: renamed from: I */
    public void m990I(C0101g c0101g, C0158c c0158c) {
        if (c0101g == null && this.f980b == null) {
            return;
        }
        m978k();
        C0101g c0101gM883N = this.f980b.m883N();
        if (c0101gM883N == c0101g) {
            return;
        }
        if (c0101gM883N != null) {
            c0101gM883N.m738O(this.f974K);
            c0101gM883N.m738O(this.f975L);
        }
        if (this.f975L == null) {
            this.f975L = new C0147d();
        }
        c0158c.m1063G(true);
        if (c0101g != null) {
            c0101g.m752c(c0158c, this.f989k);
            c0101g.m752c(this.f975L, this.f989k);
        } else {
            c0158c.mo668d(this.f989k, null);
            this.f975L.mo668d(this.f989k, null);
            c0158c.mo674j(true);
            this.f975L.mo674j(true);
        }
        this.f980b.setPopupTheme(this.f990l);
        this.f980b.setPresenter(c0158c);
        this.f974K = c0158c;
    }

    /* JADX INFO: renamed from: J */
    public void m991J(InterfaceC0107m.a aVar, C0101g.a aVar2) {
        this.f976M = aVar;
        this.f977N = aVar2;
        ActionMenuView actionMenuView = this.f980b;
        if (actionMenuView != null) {
            actionMenuView.m884O(aVar, aVar2);
        }
    }

    /* JADX INFO: renamed from: K */
    public void m992K(Context context, int i) {
        this.f992n = i;
        TextView textView = this.f982d;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* JADX INFO: renamed from: L */
    public void m993L(Context context, int i) {
        this.f991m = i;
        TextView textView = this.f981c;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* JADX INFO: renamed from: O */
    public boolean m994O() {
        ActionMenuView actionMenuView = this.f980b;
        return actionMenuView != null && actionMenuView.m885P();
    }

    /* JADX INFO: renamed from: a */
    void m995a() {
        for (int size = this.f969F.size() - 1; size >= 0; size--) {
            addView(this.f969F.get(size));
        }
        this.f969F.clear();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0148e);
    }

    /* JADX INFO: renamed from: d */
    public boolean m996d() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f980b) != null && actionMenuView.m882K();
    }

    /* JADX INFO: renamed from: e */
    public void m997e() {
        C0147d c0147d = this.f975L;
        C0103i c0103i = c0147d == null ? null : c0147d.f1009c;
        if (c0103i != null) {
            c0103i.collapseActionView();
        }
    }

    /* JADX INFO: renamed from: f */
    public void m998f() {
        ActionMenuView actionMenuView = this.f980b;
        if (actionMenuView != null) {
            actionMenuView.m873B();
        }
    }

    /* JADX INFO: renamed from: g */
    void m999g() {
        if (this.f987i == null) {
            C0176l c0176l = new C0176l(getContext(), null, C0493a.toolbarNavigationButtonStyle);
            this.f987i = c0176l;
            c0176l.setImageDrawable(this.f985g);
            this.f987i.setContentDescription(this.f986h);
            C0148e c0148eGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            c0148eGenerateDefaultLayoutParams.f329a = 8388611 | (this.f993o & 112);
            c0148eGenerateDefaultLayoutParams.f1011b = 2;
            this.f987i.setLayoutParams(c0148eGenerateDefaultLayoutParams);
            this.f987i.setOnClickListener(new ViewOnClickListenerC0146c());
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f987i;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f987i;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        C0179m0 c0179m0 = this.f999u;
        if (c0179m0 != null) {
            return c0179m0.m1233a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f1001w;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        C0179m0 c0179m0 = this.f999u;
        if (c0179m0 != null) {
            return c0179m0.m1234b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        C0179m0 c0179m0 = this.f999u;
        if (c0179m0 != null) {
            return c0179m0.m1235c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        C0179m0 c0179m0 = this.f999u;
        if (c0179m0 != null) {
            return c0179m0.m1236d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f1000v;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        C0101g c0101gM883N;
        ActionMenuView actionMenuView = this.f980b;
        return actionMenuView != null && (c0101gM883N = actionMenuView.m883N()) != null && c0101gM883N.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.f1001w, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return C0292v.m2046C(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return C0292v.m2046C(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f1000v, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f984f;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f984f;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        m977j();
        return this.f980b.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f983e;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f983e;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    C0158c getOuterActionMenuPresenter() {
        return this.f974K;
    }

    public Drawable getOverflowIcon() {
        m977j();
        return this.f980b.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f989k;
    }

    public int getPopupTheme() {
        return this.f990l;
    }

    public CharSequence getSubtitle() {
        return this.f1004z;
    }

    final TextView getSubtitleTextView() {
        return this.f982d;
    }

    public CharSequence getTitle() {
        return this.f1003y;
    }

    public int getTitleMarginBottom() {
        return this.f998t;
    }

    public int getTitleMarginEnd() {
        return this.f996r;
    }

    public int getTitleMarginStart() {
        return this.f995q;
    }

    public int getTitleMarginTop() {
        return this.f997s;
    }

    final TextView getTitleTextView() {
        return this.f981c;
    }

    public InterfaceC0156b0 getWrapper() {
        if (this.f973J == null) {
            this.f973J = new C0197v0(this, true);
        }
        return this.f973J;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public C0148e generateDefaultLayoutParams() {
        return new C0148e(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public C0148e generateLayoutParams(AttributeSet attributeSet) {
        return new C0148e(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public C0148e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0148e ? new C0148e((C0148e) layoutParams) : layoutParams instanceof AbstractC0078a.a ? new C0148e((AbstractC0078a.a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0148e((ViewGroup.MarginLayoutParams) layoutParams) : new C0148e(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f979P);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f967D = false;
        }
        if (!this.f967D) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f967D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f967D = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x02a3 A[LOOP:0: B:104:0x02a1->B:105:0x02a3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02c5 A[LOOP:1: B:107:0x02c3->B:108:0x02c5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02fe A[LOOP:2: B:116:0x02fc->B:117:0x02fe, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0229  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iM966B;
        int iM967C;
        int iMax;
        boolean zM972N;
        boolean zM972N2;
        int i5;
        int measuredHeight;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int paddingTop;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int size;
        int i17;
        int size2;
        int i18;
        int i19;
        int size3;
        boolean z2 = C0292v.m2046C(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i20 = width - paddingRight;
        int[] iArr = this.f970G;
        iArr[1] = 0;
        iArr[0] = 0;
        int iM2048D = C0292v.m2048D(this);
        int iMin = iM2048D >= 0 ? Math.min(iM2048D, i4 - i2) : 0;
        if (!m972N(this.f983e)) {
            iM966B = paddingLeft;
        } else {
            if (z2) {
                iM967C = m967C(this.f983e, i20, iArr, iMin);
                iM966B = paddingLeft;
                if (m972N(this.f987i)) {
                    if (z2) {
                        iM967C = m967C(this.f987i, iM967C, iArr, iMin);
                    } else {
                        iM966B = m966B(this.f987i, iM966B, iArr, iMin);
                    }
                }
                if (m972N(this.f980b)) {
                    if (z2) {
                        iM966B = m966B(this.f980b, iM966B, iArr, iMin);
                    } else {
                        iM967C = m967C(this.f980b, iM967C, iArr, iMin);
                    }
                }
                int currentContentInsetLeft = getCurrentContentInsetLeft();
                int currentContentInsetRight = getCurrentContentInsetRight();
                iArr[0] = Math.max(0, currentContentInsetLeft - iM966B);
                iArr[1] = Math.max(0, currentContentInsetRight - (i20 - iM967C));
                iMax = Math.max(iM966B, currentContentInsetLeft);
                int iMin2 = Math.min(iM967C, i20 - currentContentInsetRight);
                if (m972N(this.f988j)) {
                    if (z2) {
                        iMin2 = m967C(this.f988j, iMin2, iArr, iMin);
                    } else {
                        iMax = m966B(this.f988j, iMax, iArr, iMin);
                    }
                }
                if (m972N(this.f984f)) {
                    if (z2) {
                        iMin2 = m967C(this.f984f, iMin2, iArr, iMin);
                    } else {
                        iMax = m966B(this.f984f, iMax, iArr, iMin);
                    }
                }
                zM972N = m972N(this.f981c);
                zM972N2 = m972N(this.f982d);
                if (zM972N) {
                    i5 = paddingRight;
                    measuredHeight = 0;
                } else {
                    C0148e c0148e = (C0148e) this.f981c.getLayoutParams();
                    i5 = paddingRight;
                    measuredHeight = ((ViewGroup.MarginLayoutParams) c0148e).topMargin + this.f981c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0148e).bottomMargin + 0;
                }
                if (zM972N2) {
                    i6 = width;
                } else {
                    C0148e c0148e2 = (C0148e) this.f982d.getLayoutParams();
                    i6 = width;
                    measuredHeight += ((ViewGroup.MarginLayoutParams) c0148e2).topMargin + this.f982d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0148e2).bottomMargin;
                }
                if (!zM972N || zM972N2) {
                    TextView textView = !zM972N ? this.f981c : this.f982d;
                    TextView textView2 = !zM972N2 ? this.f982d : this.f981c;
                    C0148e c0148e3 = (C0148e) textView.getLayoutParams();
                    C0148e c0148e4 = (C0148e) textView2.getLayoutParams();
                    boolean z3 = (zM972N && this.f981c.getMeasuredWidth() > 0) || (zM972N2 && this.f982d.getMeasuredWidth() > 0);
                    i7 = this.f1002x & 112;
                    i8 = paddingLeft;
                    if (i7 == 48) {
                        i9 = iMax;
                        i10 = iMin;
                        paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0148e3).topMargin + this.f997s;
                    } else if (i7 != 80) {
                        int iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                        int i21 = ((ViewGroup.MarginLayoutParams) c0148e3).topMargin;
                        i10 = iMin;
                        int i22 = this.f997s;
                        i9 = iMax;
                        if (iMax2 < i21 + i22) {
                            iMax2 = i21 + i22;
                        } else {
                            int i23 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                            int i24 = ((ViewGroup.MarginLayoutParams) c0148e3).bottomMargin;
                            int i25 = this.f998t;
                            if (i23 < i24 + i25) {
                                iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) c0148e4).bottomMargin + i25) - i23));
                            }
                        }
                        paddingTop = paddingTop2 + iMax2;
                    } else {
                        i9 = iMax;
                        i10 = iMin;
                        paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) c0148e4).bottomMargin) - this.f998t) - measuredHeight;
                    }
                    if (!z2) {
                        if (z3) {
                            i12 = this.f995q;
                            i11 = 0;
                        } else {
                            i11 = 0;
                            i12 = 0;
                        }
                        int i26 = i12 - iArr[i11];
                        iMax = i9 + Math.max(i11, i26);
                        iArr[i11] = Math.max(i11, -i26);
                        if (zM972N) {
                            C0148e c0148e5 = (C0148e) this.f981c.getLayoutParams();
                            int measuredWidth = this.f981c.getMeasuredWidth() + iMax;
                            int measuredHeight2 = this.f981c.getMeasuredHeight() + paddingTop;
                            this.f981c.layout(iMax, paddingTop, measuredWidth, measuredHeight2);
                            i13 = measuredWidth + this.f996r;
                            paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) c0148e5).bottomMargin;
                        } else {
                            i13 = iMax;
                        }
                        if (zM972N2) {
                            C0148e c0148e6 = (C0148e) this.f982d.getLayoutParams();
                            int i27 = paddingTop + ((ViewGroup.MarginLayoutParams) c0148e6).topMargin;
                            int measuredWidth2 = this.f982d.getMeasuredWidth() + iMax;
                            this.f982d.layout(iMax, i27, measuredWidth2, this.f982d.getMeasuredHeight() + i27);
                            i14 = measuredWidth2 + this.f996r;
                            int i28 = ((ViewGroup.MarginLayoutParams) c0148e6).bottomMargin;
                        } else {
                            i14 = iMax;
                        }
                        if (z3) {
                            iMax = Math.max(i13, i14);
                        }
                        m973b(this.f968E, 3);
                        size = this.f968E.size();
                        for (i17 = 0; i17 < size; i17++) {
                            iMax = m966B(this.f968E.get(i17), iMax, iArr, i10);
                        }
                        int i29 = i10;
                        m973b(this.f968E, 5);
                        size2 = this.f968E.size();
                        for (i18 = 0; i18 < size2; i18++) {
                            iMin2 = m967C(this.f968E.get(i18), iMin2, iArr, i29);
                        }
                        m973b(this.f968E, 1);
                        int iM985u = m985u(this.f968E, iArr);
                        i19 = (i8 + (((i6 - i8) - i5) / 2)) - (iM985u / 2);
                        int i30 = iM985u + i19;
                        if (i19 >= iMax) {
                            iMax = i30 > iMin2 ? i19 - (i30 - iMin2) : i19;
                        }
                        size3 = this.f968E.size();
                        while (i11 < size3) {
                            iMax = m966B(this.f968E.get(i11), iMax, iArr, i29);
                            i11++;
                        }
                        this.f968E.clear();
                    }
                    int i31 = (z3 ? this.f995q : 0) - iArr[1];
                    iMin2 -= Math.max(0, i31);
                    iArr[1] = Math.max(0, -i31);
                    if (zM972N) {
                        C0148e c0148e7 = (C0148e) this.f981c.getLayoutParams();
                        int measuredWidth3 = iMin2 - this.f981c.getMeasuredWidth();
                        int measuredHeight3 = this.f981c.getMeasuredHeight() + paddingTop;
                        this.f981c.layout(measuredWidth3, paddingTop, iMin2, measuredHeight3);
                        i15 = measuredWidth3 - this.f996r;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) c0148e7).bottomMargin;
                    } else {
                        i15 = iMin2;
                    }
                    if (zM972N2) {
                        C0148e c0148e8 = (C0148e) this.f982d.getLayoutParams();
                        int i32 = paddingTop + ((ViewGroup.MarginLayoutParams) c0148e8).topMargin;
                        this.f982d.layout(iMin2 - this.f982d.getMeasuredWidth(), i32, iMin2, this.f982d.getMeasuredHeight() + i32);
                        i16 = iMin2 - this.f996r;
                        int i33 = ((ViewGroup.MarginLayoutParams) c0148e8).bottomMargin;
                    } else {
                        i16 = iMin2;
                    }
                    if (z3) {
                        iMin2 = Math.min(i15, i16);
                    }
                    iMax = i9;
                } else {
                    i8 = paddingLeft;
                    i10 = iMin;
                }
                i11 = 0;
                m973b(this.f968E, 3);
                size = this.f968E.size();
                while (i17 < size) {
                }
                int i292 = i10;
                m973b(this.f968E, 5);
                size2 = this.f968E.size();
                while (i18 < size2) {
                }
                m973b(this.f968E, 1);
                int iM985u2 = m985u(this.f968E, iArr);
                i19 = (i8 + (((i6 - i8) - i5) / 2)) - (iM985u2 / 2);
                int i302 = iM985u2 + i19;
                if (i19 >= iMax) {
                }
                size3 = this.f968E.size();
                while (i11 < size3) {
                }
                this.f968E.clear();
            }
            iM966B = m966B(this.f983e, paddingLeft, iArr, iMin);
        }
        iM967C = i20;
        if (m972N(this.f987i)) {
        }
        if (m972N(this.f980b)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iM966B);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i20 - iM967C));
        iMax = Math.max(iM966B, currentContentInsetLeft2);
        int iMin22 = Math.min(iM967C, i20 - currentContentInsetRight2);
        if (m972N(this.f988j)) {
        }
        if (m972N(this.f984f)) {
        }
        zM972N = m972N(this.f981c);
        zM972N2 = m972N(this.f982d);
        if (zM972N) {
        }
        if (zM972N2) {
        }
        if (zM972N) {
            if (!zM972N) {
            }
            if (!zM972N2) {
            }
            C0148e c0148e32 = (C0148e) textView.getLayoutParams();
            C0148e c0148e42 = (C0148e) textView2.getLayoutParams();
            if (zM972N) {
                i7 = this.f1002x & 112;
                i8 = paddingLeft;
                if (i7 == 48) {
                }
                if (!z2) {
                }
            } else {
                i7 = this.f1002x & 112;
                i8 = paddingLeft;
                if (i7 == 48) {
                }
                if (!z2) {
                }
            }
        }
        m973b(this.f968E, 3);
        size = this.f968E.size();
        while (i17 < size) {
        }
        int i2922 = i10;
        m973b(this.f968E, 5);
        size2 = this.f968E.size();
        while (i18 < size2) {
        }
        m973b(this.f968E, 1);
        int iM985u22 = m985u(this.f968E, iArr);
        i19 = (i8 + (((i6 - i8) - i5) / 2)) - (iM985u22 / 2);
        int i3022 = iM985u22 + i19;
        if (i19 >= iMax) {
        }
        size3 = this.f968E.size();
        while (i11 < size3) {
        }
        this.f968E.clear();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        char c2;
        char c3;
        int measuredWidth;
        int iMax;
        int iCombineMeasuredStates;
        int measuredWidth2;
        int iCombineMeasuredStates2;
        int iMax2;
        int measuredHeight;
        int[] iArr = this.f970G;
        if (C0154a1.m1022b(this)) {
            c2 = 1;
            c3 = 0;
        } else {
            c2 = 0;
            c3 = 1;
        }
        if (m972N(this.f983e)) {
            m969E(this.f983e, i, 0, i2, 0, this.f994p);
            measuredWidth = this.f983e.getMeasuredWidth() + m983s(this.f983e);
            iMax = Math.max(0, this.f983e.getMeasuredHeight() + m984t(this.f983e));
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f983e.getMeasuredState());
        } else {
            measuredWidth = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (m972N(this.f987i)) {
            m969E(this.f987i, i, 0, i2, 0, this.f994p);
            measuredWidth = this.f987i.getMeasuredWidth() + m983s(this.f987i);
            iMax = Math.max(iMax, this.f987i.getMeasuredHeight() + m984t(this.f987i));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f987i.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = 0 + Math.max(currentContentInsetStart, measuredWidth);
        iArr[c2] = Math.max(0, currentContentInsetStart - measuredWidth);
        if (m972N(this.f980b)) {
            m969E(this.f980b, i, iMax3, i2, 0, this.f994p);
            measuredWidth2 = this.f980b.getMeasuredWidth() + m983s(this.f980b);
            iMax = Math.max(iMax, this.f980b.getMeasuredHeight() + m984t(this.f980b));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f980b.getMeasuredState());
        } else {
            measuredWidth2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = iMax3 + Math.max(currentContentInsetEnd, measuredWidth2);
        iArr[c3] = Math.max(0, currentContentInsetEnd - measuredWidth2);
        if (m972N(this.f988j)) {
            iMax4 += m968D(this.f988j, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, this.f988j.getMeasuredHeight() + m984t(this.f988j));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f988j.getMeasuredState());
        }
        if (m972N(this.f984f)) {
            iMax4 += m968D(this.f984f, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, this.f984f.getMeasuredHeight() + m984t(this.f984f));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f984f.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (((C0148e) childAt.getLayoutParams()).f1011b == 0 && m972N(childAt)) {
                iMax4 += m968D(childAt, i, iMax4, i2, 0, iArr);
                iMax = Math.max(iMax, childAt.getMeasuredHeight() + m984t(childAt));
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i4 = this.f997s + this.f998t;
        int i5 = this.f995q + this.f996r;
        if (m972N(this.f981c)) {
            m968D(this.f981c, i, iMax4 + i5, i2, i4, iArr);
            int measuredWidth3 = this.f981c.getMeasuredWidth() + m983s(this.f981c);
            measuredHeight = this.f981c.getMeasuredHeight() + m984t(this.f981c);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f981c.getMeasuredState());
            iMax2 = measuredWidth3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            measuredHeight = 0;
        }
        if (m972N(this.f982d)) {
            iMax2 = Math.max(iMax2, m968D(this.f982d, i, iMax4 + i5, i2, measuredHeight + i4, iArr));
            measuredHeight += this.f982d.getMeasuredHeight() + m984t(this.f982d);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f982d.getMeasuredState());
        }
        int iMax5 = Math.max(iMax, measuredHeight);
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax4 + iMax2 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, (-16777216) & iCombineMeasuredStates2), m971M() ? 0 : View.resolveSizeAndState(Math.max(iMax5 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof C0150g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0150g c0150g = (C0150g) parcelable;
        super.onRestoreInstanceState(c0150g.m4862j());
        ActionMenuView actionMenuView = this.f980b;
        C0101g c0101gM883N = actionMenuView != null ? actionMenuView.m883N() : null;
        int i = c0150g.f1012d;
        if (i != 0 && this.f975L != null && c0101gM883N != null && (menuItemFindItem = c0101gM883N.findItem(i)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (c0150g.f1013e) {
            m970F();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m975h();
        this.f999u.m1238f(i == 1);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C0103i c0103i;
        C0150g c0150g = new C0150g(super.onSaveInstanceState());
        C0147d c0147d = this.f975L;
        if (c0147d != null && (c0103i = c0147d.f1009c) != null) {
            c0150g.f1012d = c0103i.getItemId();
        }
        c0150g.f1013e = m987A();
        return c0150g;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f966C = false;
        }
        if (!this.f966C) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f966C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f966C = false;
        }
        return true;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C0503a.m4047d(getContext(), i));
    }

    public void setCollapsible(boolean z) {
        this.f978O = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f1001w) {
            this.f1001w = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f1000v) {
            this.f1000v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i) {
        setLogo(C0503a.m4047d(getContext(), i));
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C0503a.m4047d(getContext(), i));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m979l();
        this.f983e.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(InterfaceC0149f interfaceC0149f) {
        this.f971H = interfaceC0149f;
    }

    public void setOverflowIcon(Drawable drawable) {
        m977j();
        this.f980b.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f990l != i) {
            this.f990l = i;
            if (i == 0) {
                this.f989k = getContext();
            } else {
                this.f989k = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitleMarginBottom(int i) {
        this.f998t = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f996r = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f995q = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f997s = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    /* JADX INFO: renamed from: v */
    public boolean m1003v() {
        C0147d c0147d = this.f975L;
        return (c0147d == null || c0147d.f1009c == null) ? false : true;
    }

    /* JADX INFO: renamed from: w */
    public boolean m1004w() {
        ActionMenuView actionMenuView = this.f980b;
        return actionMenuView != null && actionMenuView.m879H();
    }

    /* JADX INFO: renamed from: x */
    public void m1005x(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    /* JADX INFO: renamed from: z */
    public boolean m1006z() {
        ActionMenuView actionMenuView = this.f980b;
        return actionMenuView != null && actionMenuView.m880I();
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.Toolbar$e */
    public static class C0148e extends AbstractC0078a.a {

        /* JADX INFO: renamed from: b */
        int f1011b;

        public C0148e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1011b = 0;
        }

        /* JADX INFO: renamed from: a */
        void m1007a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public C0148e(int i, int i2) {
            super(i, i2);
            this.f1011b = 0;
            this.f329a = 8388627;
        }

        public C0148e(C0148e c0148e) {
            super((AbstractC0078a.a) c0148e);
            this.f1011b = 0;
            this.f1011b = c0148e.f1011b;
        }

        public C0148e(AbstractC0078a.a aVar) {
            super(aVar);
            this.f1011b = 0;
        }

        public C0148e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1011b = 0;
            m1007a(marginLayoutParams);
        }

        public C0148e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1011b = 0;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1002x = 8388627;
        this.f968E = new ArrayList<>();
        this.f969F = new ArrayList<>();
        this.f970G = new int[2];
        this.f972I = new C0144a();
        this.f979P = new RunnableC0145b();
        C0195u0 c0195u0M1321v = C0195u0.m1321v(getContext(), attributeSet, C0502j.Toolbar, i, 0);
        C0292v.m2101m0(this, context, C0502j.Toolbar, attributeSet, c0195u0M1321v.m1339r(), i, 0);
        this.f991m = c0195u0M1321v.m1335n(C0502j.Toolbar_titleTextAppearance, 0);
        this.f992n = c0195u0M1321v.m1335n(C0502j.Toolbar_subtitleTextAppearance, 0);
        this.f1002x = c0195u0M1321v.m1333l(C0502j.Toolbar_android_gravity, this.f1002x);
        this.f993o = c0195u0M1321v.m1333l(C0502j.Toolbar_buttonGravity, 48);
        int iM1326e = c0195u0M1321v.m1326e(C0502j.Toolbar_titleMargin, 0);
        iM1326e = c0195u0M1321v.m1340s(C0502j.Toolbar_titleMargins) ? c0195u0M1321v.m1326e(C0502j.Toolbar_titleMargins, iM1326e) : iM1326e;
        this.f998t = iM1326e;
        this.f997s = iM1326e;
        this.f996r = iM1326e;
        this.f995q = iM1326e;
        int iM1326e2 = c0195u0M1321v.m1326e(C0502j.Toolbar_titleMarginStart, -1);
        if (iM1326e2 >= 0) {
            this.f995q = iM1326e2;
        }
        int iM1326e3 = c0195u0M1321v.m1326e(C0502j.Toolbar_titleMarginEnd, -1);
        if (iM1326e3 >= 0) {
            this.f996r = iM1326e3;
        }
        int iM1326e4 = c0195u0M1321v.m1326e(C0502j.Toolbar_titleMarginTop, -1);
        if (iM1326e4 >= 0) {
            this.f997s = iM1326e4;
        }
        int iM1326e5 = c0195u0M1321v.m1326e(C0502j.Toolbar_titleMarginBottom, -1);
        if (iM1326e5 >= 0) {
            this.f998t = iM1326e5;
        }
        this.f994p = c0195u0M1321v.m1327f(C0502j.Toolbar_maxButtonHeight, -1);
        int iM1326e6 = c0195u0M1321v.m1326e(C0502j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int iM1326e7 = c0195u0M1321v.m1326e(C0502j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int iM1327f = c0195u0M1321v.m1327f(C0502j.Toolbar_contentInsetLeft, 0);
        int iM1327f2 = c0195u0M1321v.m1327f(C0502j.Toolbar_contentInsetRight, 0);
        m975h();
        this.f999u.m1237e(iM1327f, iM1327f2);
        if (iM1326e6 != Integer.MIN_VALUE || iM1326e7 != Integer.MIN_VALUE) {
            this.f999u.m1239g(iM1326e6, iM1326e7);
        }
        this.f1000v = c0195u0M1321v.m1326e(C0502j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f1001w = c0195u0M1321v.m1326e(C0502j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f985g = c0195u0M1321v.m1328g(C0502j.Toolbar_collapseIcon);
        this.f986h = c0195u0M1321v.m1337p(C0502j.Toolbar_collapseContentDescription);
        CharSequence charSequenceM1337p = c0195u0M1321v.m1337p(C0502j.Toolbar_title);
        if (!TextUtils.isEmpty(charSequenceM1337p)) {
            setTitle(charSequenceM1337p);
        }
        CharSequence charSequenceM1337p2 = c0195u0M1321v.m1337p(C0502j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(charSequenceM1337p2)) {
            setSubtitle(charSequenceM1337p2);
        }
        this.f989k = getContext();
        setPopupTheme(c0195u0M1321v.m1335n(C0502j.Toolbar_popupTheme, 0));
        Drawable drawableM1328g = c0195u0M1321v.m1328g(C0502j.Toolbar_navigationIcon);
        if (drawableM1328g != null) {
            setNavigationIcon(drawableM1328g);
        }
        CharSequence charSequenceM1337p3 = c0195u0M1321v.m1337p(C0502j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(charSequenceM1337p3)) {
            setNavigationContentDescription(charSequenceM1337p3);
        }
        Drawable drawableM1328g2 = c0195u0M1321v.m1328g(C0502j.Toolbar_logo);
        if (drawableM1328g2 != null) {
            setLogo(drawableM1328g2);
        }
        CharSequence charSequenceM1337p4 = c0195u0M1321v.m1337p(C0502j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(charSequenceM1337p4)) {
            setLogoDescription(charSequenceM1337p4);
        }
        if (c0195u0M1321v.m1340s(C0502j.Toolbar_titleTextColor)) {
            setTitleTextColor(c0195u0M1321v.m1324c(C0502j.Toolbar_titleTextColor));
        }
        if (c0195u0M1321v.m1340s(C0502j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(c0195u0M1321v.m1324c(C0502j.Toolbar_subtitleTextColor));
        }
        if (c0195u0M1321v.m1340s(C0502j.Toolbar_menu)) {
            m1005x(c0195u0M1321v.m1335n(C0502j.Toolbar_menu, 0));
        }
        c0195u0M1321v.m1341w();
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m999g();
        }
        ImageButton imageButton = this.f987i;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m999g();
            this.f987i.setImageDrawable(drawable);
        } else {
            ImageButton imageButton = this.f987i;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.f985g);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m976i();
            if (!m986y(this.f984f)) {
                m974c(this.f984f, true);
            }
        } else {
            ImageView imageView = this.f984f;
            if (imageView != null && m986y(imageView)) {
                removeView(this.f984f);
                this.f969F.remove(this.f984f);
            }
        }
        ImageView imageView2 = this.f984f;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m976i();
        }
        ImageView imageView = this.f984f;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m979l();
        }
        ImageButton imageButton = this.f983e;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m979l();
            if (!m986y(this.f983e)) {
                m974c(this.f983e, true);
            }
        } else {
            ImageButton imageButton = this.f983e;
            if (imageButton != null && m986y(imageButton)) {
                removeView(this.f983e);
                this.f969F.remove(this.f983e);
            }
        }
        ImageButton imageButton2 = this.f983e;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f982d;
            if (textView != null && m986y(textView)) {
                removeView(this.f982d);
                this.f969F.remove(this.f982d);
            }
        } else {
            if (this.f982d == null) {
                Context context = getContext();
                C0200x c0200x = new C0200x(context);
                this.f982d = c0200x;
                c0200x.setSingleLine();
                this.f982d.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f992n;
                if (i != 0) {
                    this.f982d.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f965B;
                if (colorStateList != null) {
                    this.f982d.setTextColor(colorStateList);
                }
            }
            if (!m986y(this.f982d)) {
                m974c(this.f982d, true);
            }
        }
        TextView textView2 = this.f982d;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1004z = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f965B = colorStateList;
        TextView textView = this.f982d;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f981c;
            if (textView != null && m986y(textView)) {
                removeView(this.f981c);
                this.f969F.remove(this.f981c);
            }
        } else {
            if (this.f981c == null) {
                Context context = getContext();
                C0200x c0200x = new C0200x(context);
                this.f981c = c0200x;
                c0200x.setSingleLine();
                this.f981c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f991m;
                if (i != 0) {
                    this.f981c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f964A;
                if (colorStateList != null) {
                    this.f981c.setTextColor(colorStateList);
                }
            }
            if (!m986y(this.f981c)) {
                m974c(this.f981c, true);
            }
        }
        TextView textView2 = this.f981c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1003y = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f964A = colorStateList;
        TextView textView = this.f981c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.Toolbar$g */
    public static class C0150g extends AbstractC0630a {
        public static final Parcelable.Creator<C0150g> CREATOR = new a();

        /* JADX INFO: renamed from: d */
        int f1012d;

        /* JADX INFO: renamed from: e */
        boolean f1013e;

        /* JADX INFO: renamed from: androidx.appcompat.widget.Toolbar$g$a */
        class a implements Parcelable.ClassLoaderCreator<C0150g> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0150g createFromParcel(Parcel parcel) {
                return new C0150g(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C0150g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0150g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public C0150g[] newArray(int i) {
                return new C0150g[i];
            }
        }

        public C0150g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1012d = parcel.readInt();
            this.f1013e = parcel.readInt() != 0;
        }

        @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1012d);
            parcel.writeInt(this.f1013e ? 1 : 0);
        }

        public C0150g(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
