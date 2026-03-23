package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.C0258a;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import androidx.recyclerview.widget.C0470j;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
import p016c.p041g.p049j.C0622d;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1222g;
import p093d.p099c.p100a.p101a.C1223h;
import p093d.p099c.p100a.p101a.C1224i;

/* JADX INFO: renamed from: com.google.android.material.datepicker.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1082h<S> extends AbstractC1090p<S> {

    /* JADX INFO: renamed from: l0 */
    static final Object f6883l0 = "MONTHS_VIEW_GROUP_TAG";

    /* JADX INFO: renamed from: m0 */
    static final Object f6884m0 = "NAVIGATION_PREV_TAG";

    /* JADX INFO: renamed from: n0 */
    static final Object f6885n0 = "NAVIGATION_NEXT_TAG";

    /* JADX INFO: renamed from: o0 */
    static final Object f6886o0 = "SELECTOR_TOGGLE_TAG";

    /* JADX INFO: renamed from: b0 */
    private int f6887b0;

    /* JADX INFO: renamed from: c0 */
    private InterfaceC1078d<S> f6888c0;

    /* JADX INFO: renamed from: d0 */
    private C1075a f6889d0;

    /* JADX INFO: renamed from: e0 */
    private C1086l f6890e0;

    /* JADX INFO: renamed from: f0 */
    private k f6891f0;

    /* JADX INFO: renamed from: g0 */
    private C1077c f6892g0;

    /* JADX INFO: renamed from: h0 */
    private RecyclerView f6893h0;

    /* JADX INFO: renamed from: i0 */
    private RecyclerView f6894i0;

    /* JADX INFO: renamed from: j0 */
    private View f6895j0;

    /* JADX INFO: renamed from: k0 */
    private View f6896k0;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f6897b;

        a(int i) {
            this.f6897b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1082h.this.f6894i0.m3312o1(this.f6897b);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$b */
    class b extends C0258a {
        b(C1082h c1082h) {
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            super.mo1813g(view, c0269c);
            c0269c.m1921Y(null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$c */
    class c extends C1091q {

        /* JADX INFO: renamed from: I */
        final /* synthetic */ int f6899I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            this.f6899I = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        /* JADX INFO: renamed from: M1 */
        protected void mo3166M1(RecyclerView.C0454z c0454z, int[] iArr) {
            if (this.f6899I == 0) {
                iArr[0] = C1082h.this.f6894i0.getWidth();
                iArr[1] = C1082h.this.f6894i0.getWidth();
            } else {
                iArr[0] = C1082h.this.f6894i0.getHeight();
                iArr[1] = C1082h.this.f6894i0.getHeight();
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$d */
    class d implements l {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.datepicker.C1082h.l
        /* JADX INFO: renamed from: a */
        public void mo8405a(long j) {
            if (C1082h.this.f6889d0.m8351o().mo8361e(j)) {
                C1082h.this.f6888c0.m8371g(j);
                Iterator<AbstractC1089o<S>> it = C1082h.this.f6967a0.iterator();
                while (it.hasNext()) {
                    it.next().mo8427a(C1082h.this.f6888c0.m8366a());
                }
                C1082h.this.f6894i0.getAdapter().m3412h();
                if (C1082h.this.f6893h0 != null) {
                    C1082h.this.f6893h0.getAdapter().m3412h();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$e */
    class e extends RecyclerView.AbstractC0441m {

        /* JADX INFO: renamed from: a */
        private final Calendar f6902a = C1093s.m8477k();

        /* JADX INFO: renamed from: b */
        private final Calendar f6903b = C1093s.m8477k();

        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0441m
        /* JADX INFO: renamed from: g */
        public void mo3459g(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0454z c0454z) {
            if ((recyclerView.getAdapter() instanceof C1094t) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                C1094t c1094t = (C1094t) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (C0622d<Long, Long> c0622d : C1082h.this.f6888c0.m8369d()) {
                    Long l = c0622d.f3812a;
                    if (l != null && c0622d.f3813b != null) {
                        this.f6902a.setTimeInMillis(l.longValue());
                        this.f6903b.setTimeInMillis(c0622d.f3813b.longValue());
                        int iM8482w = c1094t.m8482w(this.f6902a.get(1));
                        int iM8482w2 = c1094t.m8482w(this.f6903b.get(1));
                        View viewMo3159C = gridLayoutManager.mo3159C(iM8482w);
                        View viewMo3159C2 = gridLayoutManager.mo3159C(iM8482w2);
                        int iM3105X2 = iM8482w / gridLayoutManager.m3105X2();
                        int iM3105X22 = iM8482w2 / gridLayoutManager.m3105X2();
                        int i = iM3105X2;
                        while (i <= iM3105X22) {
                            if (gridLayoutManager.mo3159C(gridLayoutManager.m3105X2() * i) != null) {
                                canvas.drawRect(i == iM3105X2 ? viewMo3159C.getLeft() + (viewMo3159C.getWidth() / 2) : 0, r9.getTop() + C1082h.this.f6892g0.f6873d.m8364c(), i == iM3105X22 ? viewMo3159C2.getLeft() + (viewMo3159C2.getWidth() / 2) : recyclerView.getWidth(), r9.getBottom() - C1082h.this.f6892g0.f6873d.m8363b(), C1082h.this.f6892g0.f6877h);
                            }
                            i++;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$f */
    class f extends C0258a {
        f() {
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            super.mo1813g(view, c0269c);
            c0269c.m1933g0(C1082h.this.f6896k0.getVisibility() == 0 ? C1082h.this.m2474j0(C1224i.mtrl_picker_toggle_to_year_selection) : C1082h.this.m2474j0(C1224i.mtrl_picker_toggle_to_day_selection));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$g */
    class g extends RecyclerView.AbstractC0447s {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ C1088n f6906a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ MaterialButton f6907b;

        g(C1088n c1088n, MaterialButton materialButton) {
            this.f6906a = c1088n;
            this.f6907b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0447s
        /* JADX INFO: renamed from: a */
        public void mo3580a(RecyclerView recyclerView, int i) {
            if (i == 0) {
                CharSequence text = this.f6907b.getText();
                if (Build.VERSION.SDK_INT >= 16) {
                    recyclerView.announceForAccessibility(text);
                } else {
                    recyclerView.sendAccessibilityEvent(2048);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0447s
        /* JADX INFO: renamed from: b */
        public void mo3581b(RecyclerView recyclerView, int i, int i2) {
            int iM3173Z1 = i < 0 ? C1082h.this.m8403w2().m3173Z1() : C1082h.this.m8403w2().m3176c2();
            C1082h.this.f6890e0 = this.f6906a.m8458v(iM3173Z1);
            this.f6907b.setText(this.f6906a.m8459w(iM3173Z1));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$h */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C1082h.this.m8397B2();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$i */
    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ C1088n f6910b;

        i(C1088n c1088n) {
            this.f6910b = c1088n;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iM3173Z1 = C1082h.this.m8403w2().m3173Z1() + 1;
            if (iM3173Z1 < C1082h.this.f6894i0.getAdapter().mo3407c()) {
                C1082h.this.m8404z2(this.f6910b.m8458v(iM3173Z1));
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$j */
    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ C1088n f6912b;

        j(C1088n c1088n) {
            this.f6912b = c1088n;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iM3176c2 = C1082h.this.m8403w2().m3176c2() - 1;
            if (iM3176c2 >= 0) {
                C1082h.this.m8404z2(this.f6912b.m8458v(iM3176c2));
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$k */
    enum k {
        DAY,
        YEAR
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$l */
    interface l {
        /* JADX INFO: renamed from: a */
        void mo8405a(long j);
    }

    /* JADX INFO: renamed from: p2 */
    private void m8391p2(View view, C1088n c1088n) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(C1221f.month_navigation_fragment_toggle);
        materialButton.setTag(f6886o0);
        C0292v.m2105o0(materialButton, new f());
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(C1221f.month_navigation_previous);
        materialButton2.setTag(f6884m0);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(C1221f.month_navigation_next);
        materialButton3.setTag(f6885n0);
        this.f6895j0 = view.findViewById(C1221f.mtrl_calendar_year_selector_frame);
        this.f6896k0 = view.findViewById(C1221f.mtrl_calendar_day_selector_frame);
        m8396A2(k.DAY);
        materialButton.setText(this.f6890e0.m8437q(view.getContext()));
        this.f6894i0.m3302k(new g(c1088n, materialButton));
        materialButton.setOnClickListener(new h());
        materialButton3.setOnClickListener(new i(c1088n));
        materialButton2.setOnClickListener(new j(c1088n));
    }

    /* JADX INFO: renamed from: q2 */
    private RecyclerView.AbstractC0441m m8392q2() {
        return new e();
    }

    /* JADX INFO: renamed from: v2 */
    static int m8393v2(Context context) {
        return context.getResources().getDimensionPixelSize(C1219d.mtrl_calendar_day_height);
    }

    /* JADX INFO: renamed from: x2 */
    public static <T> C1082h<T> m8394x2(InterfaceC1078d<T> interfaceC1078d, int i2, C1075a c1075a) {
        C1082h<T> c1082h = new C1082h<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i2);
        bundle.putParcelable("GRID_SELECTOR_KEY", interfaceC1078d);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c1075a);
        bundle.putParcelable("CURRENT_MONTH_KEY", c1075a.m8354r());
        c1082h.m2429S1(bundle);
        return c1082h;
    }

    /* JADX INFO: renamed from: y2 */
    private void m8395y2(int i2) {
        this.f6894i0.post(new a(i2));
    }

    /* JADX INFO: renamed from: A2 */
    void m8396A2(k kVar) {
        this.f6891f0 = kVar;
        if (kVar == k.YEAR) {
            this.f6893h0.getLayoutManager().mo3192x1(((C1094t) this.f6893h0.getAdapter()).m8482w(this.f6890e0.f6947d));
            this.f6895j0.setVisibility(0);
            this.f6896k0.setVisibility(8);
        } else if (kVar == k.DAY) {
            this.f6895j0.setVisibility(8);
            this.f6896k0.setVisibility(0);
            m8404z2(this.f6890e0);
        }
    }

    /* JADX INFO: renamed from: B2 */
    void m8397B2() {
        k kVar = this.f6891f0;
        if (kVar == k.YEAR) {
            m8396A2(k.DAY);
        } else if (kVar == k.DAY) {
            m8396A2(k.YEAR);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: H0 */
    public void mo2397H0(Bundle bundle) {
        super.mo2397H0(bundle);
        if (bundle == null) {
            bundle = m2399I();
        }
        this.f6887b0 = bundle.getInt("THEME_RES_ID_KEY");
        this.f6888c0 = (InterfaceC1078d) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.f6889d0 = (C1075a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f6890e0 = (C1086l) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        int i3;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(m2404K(), this.f6887b0);
        this.f6892g0 = new C1077c(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        C1086l c1086lM8355s = this.f6889d0.m8355s();
        if (C1083i.m8414K2(contextThemeWrapper)) {
            i2 = C1223h.mtrl_calendar_vertical;
            i3 = 1;
        } else {
            i2 = C1223h.mtrl_calendar_horizontal;
            i3 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) viewInflate.findViewById(C1221f.mtrl_calendar_days_of_week);
        C0292v.m2105o0(gridView, new b(this));
        gridView.setAdapter((ListAdapter) new C1081g());
        gridView.setNumColumns(c1086lM8355s.f6948e);
        gridView.setEnabled(false);
        this.f6894i0 = (RecyclerView) viewInflate.findViewById(C1221f.mtrl_calendar_months);
        this.f6894i0.setLayoutManager(new c(m2404K(), i3, false, i3));
        this.f6894i0.setTag(f6883l0);
        C1088n c1088n = new C1088n(contextThemeWrapper, this.f6888c0, this.f6889d0, new d());
        this.f6894i0.setAdapter(c1088n);
        int integer = contextThemeWrapper.getResources().getInteger(C1222g.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(C1221f.mtrl_calendar_year_selector_frame);
        this.f6893h0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f6893h0.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f6893h0.setAdapter(new C1094t(this));
            this.f6893h0.m3296h(m8392q2());
        }
        if (viewInflate.findViewById(C1221f.month_navigation_fragment_toggle) != null) {
            m8391p2(viewInflate, c1088n);
        }
        if (!C1083i.m8414K2(contextThemeWrapper)) {
            new C0470j().m3952b(this.f6894i0);
        }
        this.f6894i0.m3295g1(c1088n.m8460x(this.f6890e0));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: d1 */
    public void mo2460d1(Bundle bundle) {
        super.mo2460d1(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f6887b0);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f6888c0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f6889d0);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f6890e0);
    }

    @Override // com.google.android.material.datepicker.AbstractC1090p
    /* JADX INFO: renamed from: g2 */
    public boolean mo8398g2(AbstractC1089o<S> abstractC1089o) {
        return super.mo8398g2(abstractC1089o);
    }

    /* JADX INFO: renamed from: r2 */
    C1075a m8399r2() {
        return this.f6889d0;
    }

    /* JADX INFO: renamed from: s2 */
    C1077c m8400s2() {
        return this.f6892g0;
    }

    /* JADX INFO: renamed from: t2 */
    C1086l m8401t2() {
        return this.f6890e0;
    }

    /* JADX INFO: renamed from: u2 */
    public InterfaceC1078d<S> m8402u2() {
        return this.f6888c0;
    }

    /* JADX INFO: renamed from: w2 */
    LinearLayoutManager m8403w2() {
        return (LinearLayoutManager) this.f6894i0.getLayoutManager();
    }

    /* JADX INFO: renamed from: z2 */
    void m8404z2(C1086l c1086l) {
        C1088n c1088n = (C1088n) this.f6894i0.getAdapter();
        int iM8460x = c1088n.m8460x(c1086l);
        int iM8460x2 = iM8460x - c1088n.m8460x(this.f6890e0);
        boolean z = Math.abs(iM8460x2) > 3;
        boolean z2 = iM8460x2 > 0;
        this.f6890e0 = c1086l;
        if (z && z2) {
            this.f6894i0.m3295g1(iM8460x - 3);
            m8395y2(iM8460x);
        } else if (!z) {
            m8395y2(iM8460x);
        } else {
            this.f6894i0.m3295g1(iM8460x + 3);
            m8395y2(iM8460x);
        }
    }
}
