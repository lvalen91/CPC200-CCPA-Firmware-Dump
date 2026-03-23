package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.widget.C0167g0;
import p016c.p017a.C0493a;
import p016c.p017a.p024o.C0511a;

/* JADX INFO: renamed from: androidx.appcompat.widget.n0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0181n0 extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b */
    Runnable f1213b;

    /* JADX INFO: renamed from: c */
    private c f1214c;

    /* JADX INFO: renamed from: d */
    C0167g0 f1215d;

    /* JADX INFO: renamed from: e */
    private Spinner f1216e;

    /* JADX INFO: renamed from: f */
    private boolean f1217f;

    /* JADX INFO: renamed from: g */
    int f1218g;

    /* JADX INFO: renamed from: h */
    int f1219h;

    /* JADX INFO: renamed from: i */
    private int f1220i;

    /* JADX INFO: renamed from: j */
    private int f1221j;

    /* JADX INFO: renamed from: androidx.appcompat.widget.n0$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f1222b;

        a(View view) {
            this.f1222b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0181n0.this.smoothScrollTo(this.f1222b.getLeft() - ((C0181n0.this.getWidth() - this.f1222b.getWidth()) / 2), 0);
            C0181n0.this.f1213b = null;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.n0$b */
    private class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return C0181n0.this.f1215d.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((d) C0181n0.this.f1215d.getChildAt(i)).m1247b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return C0181n0.this.m1245c((AbstractC0078a.c) getItem(i), true);
            }
            ((d) view).m1246a((AbstractC0078a.c) getItem(i));
            return view;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.n0$c */
    private class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((d) view).m1247b().m418e();
            int childCount = C0181n0.this.f1215d.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = C0181n0.this.f1215d.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.n0$d */
    private class d extends LinearLayout {

        /* JADX INFO: renamed from: b */
        private final int[] f1226b;

        /* JADX INFO: renamed from: c */
        private AbstractC0078a.c f1227c;

        /* JADX INFO: renamed from: d */
        private TextView f1228d;

        /* JADX INFO: renamed from: e */
        private ImageView f1229e;

        /* JADX INFO: renamed from: f */
        private View f1230f;

        public d(Context context, AbstractC0078a.c cVar, boolean z) {
            super(context, null, C0493a.actionBarTabStyle);
            int[] iArr = {R.attr.background};
            this.f1226b = iArr;
            this.f1227c = cVar;
            C0195u0 c0195u0M1321v = C0195u0.m1321v(context, null, iArr, C0493a.actionBarTabStyle, 0);
            if (c0195u0M1321v.m1340s(0)) {
                setBackgroundDrawable(c0195u0M1321v.m1328g(0));
            }
            c0195u0M1321v.m1341w();
            if (z) {
                setGravity(8388627);
            }
            m1248c();
        }

        /* JADX INFO: renamed from: a */
        public void m1246a(AbstractC0078a.c cVar) {
            this.f1227c = cVar;
            m1248c();
        }

        /* JADX INFO: renamed from: b */
        public AbstractC0078a.c m1247b() {
            return this.f1227c;
        }

        /* JADX INFO: renamed from: c */
        public void m1248c() {
            AbstractC0078a.c cVar = this.f1227c;
            View viewM415b = cVar.m415b();
            if (viewM415b != null) {
                ViewParent parent = viewM415b.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewM415b);
                    }
                    addView(viewM415b);
                }
                this.f1230f = viewM415b;
                TextView textView = this.f1228d;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1229e;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1229e.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1230f;
            if (view != null) {
                removeView(view);
                this.f1230f = null;
            }
            Drawable drawableM416c = cVar.m416c();
            CharSequence charSequenceM417d = cVar.m417d();
            if (drawableM416c != null) {
                if (this.f1229e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1229e = appCompatImageView;
                }
                this.f1229e.setImageDrawable(drawableM416c);
                this.f1229e.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1229e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1229e.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequenceM417d);
            if (z) {
                if (this.f1228d == null) {
                    C0200x c0200x = new C0200x(getContext(), null, C0493a.actionBarTabTextStyle);
                    c0200x.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    c0200x.setLayoutParams(layoutParams2);
                    addView(c0200x);
                    this.f1228d = c0200x;
                }
                this.f1228d.setText(charSequenceM417d);
                this.f1228d.setVisibility(0);
            } else {
                TextView textView2 = this.f1228d;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1228d.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1229e;
            if (imageView3 != null) {
                imageView3.setContentDescription(cVar.m414a());
            }
            C0199w0.m1388a(this, z ? null : cVar.m414a());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (C0181n0.this.f1218g > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = C0181n0.this.f1218g;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    static {
        new DecelerateInterpolator();
    }

    /* JADX INFO: renamed from: b */
    private Spinner m1240b() {
        C0194u c0194u = new C0194u(getContext(), null, C0493a.actionDropDownStyle);
        c0194u.setLayoutParams(new C0167g0.a(-2, -1));
        c0194u.setOnItemSelectedListener(this);
        return c0194u;
    }

    /* JADX INFO: renamed from: d */
    private boolean m1241d() {
        Spinner spinner = this.f1216e;
        return spinner != null && spinner.getParent() == this;
    }

    /* JADX INFO: renamed from: e */
    private void m1242e() {
        if (m1241d()) {
            return;
        }
        if (this.f1216e == null) {
            this.f1216e = m1240b();
        }
        removeView(this.f1215d);
        addView(this.f1216e, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1216e.getAdapter() == null) {
            this.f1216e.setAdapter((SpinnerAdapter) new b());
        }
        Runnable runnable = this.f1213b;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1213b = null;
        }
        this.f1216e.setSelection(this.f1221j);
    }

    /* JADX INFO: renamed from: f */
    private boolean m1243f() {
        if (!m1241d()) {
            return false;
        }
        removeView(this.f1216e);
        addView(this.f1215d, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1216e.getSelectedItemPosition());
        return false;
    }

    /* JADX INFO: renamed from: a */
    public void m1244a(int i) {
        View childAt = this.f1215d.getChildAt(i);
        Runnable runnable = this.f1213b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        a aVar = new a(childAt);
        this.f1213b = aVar;
        post(aVar);
    }

    /* JADX INFO: renamed from: c */
    d m1245c(AbstractC0078a.c cVar, boolean z) {
        d dVar = new d(getContext(), cVar, z);
        if (z) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1220i));
        } else {
            dVar.setFocusable(true);
            if (this.f1214c == null) {
                this.f1214c = new c();
            }
            dVar.setOnClickListener(this.f1214c);
        }
        return dVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1213b;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0511a c0511aM4119b = C0511a.m4119b(getContext());
        setContentHeight(c0511aM4119b.m4124f());
        this.f1219h = c0511aM4119b.m4123e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1213b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((d) view).m1247b().m418e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f1215d.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1218g = -1;
        } else {
            if (childCount > 2) {
                this.f1218g = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.f1218g = View.MeasureSpec.getSize(i) / 2;
            }
            this.f1218g = Math.min(this.f1218g, this.f1219h);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1220i, 1073741824);
        if (!z && this.f1217f) {
            this.f1215d.measure(0, iMakeMeasureSpec);
            if (this.f1215d.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                m1242e();
            } else {
                m1243f();
            }
        } else {
            m1243f();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1221j);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f1217f = z;
    }

    public void setContentHeight(int i) {
        this.f1220i = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f1221j = i;
        int childCount = this.f1215d.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f1215d.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                m1244a(i);
            }
            i2++;
        }
        Spinner spinner = this.f1216e;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }
}
