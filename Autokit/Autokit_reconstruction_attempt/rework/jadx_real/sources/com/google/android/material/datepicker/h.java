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
import androidx.core.view.v;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class h<S> extends p<S> {
    static final Object l0 = "MONTHS_VIEW_GROUP_TAG";
    static final Object m0 = "NAVIGATION_PREV_TAG";
    static final Object n0 = "NAVIGATION_NEXT_TAG";
    static final Object o0 = "SELECTOR_TOGGLE_TAG";
    private int b0;
    private com.google.android.material.datepicker.d<S> c0;
    private com.google.android.material.datepicker.a d0;
    private com.google.android.material.datepicker.l e0;
    private k f0;
    private com.google.android.material.datepicker.c g0;
    private RecyclerView h0;
    private RecyclerView i0;
    private View j0;
    private View k0;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f2088b;

        a(int i) {
            this.f2088b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.i0.o1(this.f2088b);
        }
    }

    class b extends androidx.core.view.a {
        b(h hVar) {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.e0.c cVar) {
            super.g(view, cVar);
            cVar.Y(null);
        }
    }

    class c extends q {
        final /* synthetic */ int I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            this.I = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void M1(RecyclerView.z zVar, int[] iArr) {
            if (this.I == 0) {
                iArr[0] = h.this.i0.getWidth();
                iArr[1] = h.this.i0.getWidth();
            } else {
                iArr[0] = h.this.i0.getHeight();
                iArr[1] = h.this.i0.getHeight();
            }
        }
    }

    class d implements l {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.datepicker.h.l
        public void a(long j) {
            if (h.this.d0.o().e(j)) {
                h.this.c0.g(j);
                Iterator<o<S>> it = h.this.a0.iterator();
                while (it.hasNext()) {
                    it.next().a(h.this.c0.a());
                }
                h.this.i0.getAdapter().h();
                if (h.this.h0 != null) {
                    h.this.h0.getAdapter().h();
                }
            }
        }
    }

    class e extends RecyclerView.m {
        private final Calendar a = s.k();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Calendar f2090b = s.k();

        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public void g(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
            if ((recyclerView.getAdapter() instanceof t) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                t tVar = (t) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (c.g.j.d<Long, Long> dVar : h.this.c0.d()) {
                    Long l = dVar.a;
                    if (l != null && dVar.f1237b != null) {
                        this.a.setTimeInMillis(l.longValue());
                        this.f2090b.setTimeInMillis(dVar.f1237b.longValue());
                        int iW = tVar.w(this.a.get(1));
                        int iW2 = tVar.w(this.f2090b.get(1));
                        View viewC = gridLayoutManager.C(iW);
                        View viewC2 = gridLayoutManager.C(iW2);
                        int iX2 = iW / gridLayoutManager.X2();
                        int iX22 = iW2 / gridLayoutManager.X2();
                        int i = iX2;
                        while (i <= iX22) {
                            if (gridLayoutManager.C(gridLayoutManager.X2() * i) != null) {
                                canvas.drawRect(i == iX2 ? viewC.getLeft() + (viewC.getWidth() / 2) : 0, r9.getTop() + h.this.g0.f2083d.c(), i == iX22 ? viewC2.getLeft() + (viewC2.getWidth() / 2) : recyclerView.getWidth(), r9.getBottom() - h.this.g0.f2083d.b(), h.this.g0.h);
                            }
                            i++;
                        }
                    }
                }
            }
        }
    }

    class f extends androidx.core.view.a {
        f() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.e0.c cVar) {
            super.g(view, cVar);
            cVar.g0(h.this.k0.getVisibility() == 0 ? h.this.j0(d.c.a.a.i.mtrl_picker_toggle_to_year_selection) : h.this.j0(d.c.a.a.i.mtrl_picker_toggle_to_day_selection));
        }
    }

    class g extends RecyclerView.s {
        final /* synthetic */ n a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MaterialButton f2093b;

        g(n nVar, MaterialButton materialButton) {
            this.a = nVar;
            this.f2093b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void a(RecyclerView recyclerView, int i) {
            if (i == 0) {
                CharSequence text = this.f2093b.getText();
                if (Build.VERSION.SDK_INT >= 16) {
                    recyclerView.announceForAccessibility(text);
                } else {
                    recyclerView.sendAccessibilityEvent(2048);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void b(RecyclerView recyclerView, int i, int i2) {
            int iZ1 = i < 0 ? h.this.w2().Z1() : h.this.w2().c2();
            h.this.e0 = this.a.v(iZ1);
            this.f2093b.setText(this.a.w(iZ1));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.h$h, reason: collision with other inner class name */
    class ViewOnClickListenerC0110h implements View.OnClickListener {
        ViewOnClickListenerC0110h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h.this.B2();
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n f2096b;

        i(n nVar) {
            this.f2096b = nVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iZ1 = h.this.w2().Z1() + 1;
            if (iZ1 < h.this.i0.getAdapter().c()) {
                h.this.z2(this.f2096b.v(iZ1));
            }
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n f2098b;

        j(n nVar) {
            this.f2098b = nVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iC2 = h.this.w2().c2() - 1;
            if (iC2 >= 0) {
                h.this.z2(this.f2098b.v(iC2));
            }
        }
    }

    enum k {
        DAY,
        YEAR
    }

    interface l {
        void a(long j);
    }

    private void p2(View view, n nVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(d.c.a.a.f.month_navigation_fragment_toggle);
        materialButton.setTag(o0);
        v.o0(materialButton, new f());
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(d.c.a.a.f.month_navigation_previous);
        materialButton2.setTag(m0);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(d.c.a.a.f.month_navigation_next);
        materialButton3.setTag(n0);
        this.j0 = view.findViewById(d.c.a.a.f.mtrl_calendar_year_selector_frame);
        this.k0 = view.findViewById(d.c.a.a.f.mtrl_calendar_day_selector_frame);
        A2(k.DAY);
        materialButton.setText(this.e0.q(view.getContext()));
        this.i0.k(new g(nVar, materialButton));
        materialButton.setOnClickListener(new ViewOnClickListenerC0110h());
        materialButton3.setOnClickListener(new i(nVar));
        materialButton2.setOnClickListener(new j(nVar));
    }

    private RecyclerView.m q2() {
        return new e();
    }

    static int v2(Context context) {
        return context.getResources().getDimensionPixelSize(d.c.a.a.d.mtrl_calendar_day_height);
    }

    public static <T> h<T> x2(com.google.android.material.datepicker.d<T> dVar, int i2, com.google.android.material.datepicker.a aVar) {
        h<T> hVar = new h<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i2);
        bundle.putParcelable("GRID_SELECTOR_KEY", dVar);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar);
        bundle.putParcelable("CURRENT_MONTH_KEY", aVar.r());
        hVar.S1(bundle);
        return hVar;
    }

    private void y2(int i2) {
        this.i0.post(new a(i2));
    }

    void A2(k kVar) {
        this.f0 = kVar;
        if (kVar == k.YEAR) {
            this.h0.getLayoutManager().x1(((t) this.h0.getAdapter()).w(this.e0.f2108d));
            this.j0.setVisibility(0);
            this.k0.setVisibility(8);
        } else if (kVar == k.DAY) {
            this.j0.setVisibility(8);
            this.k0.setVisibility(0);
            z2(this.e0);
        }
    }

    void B2() {
        k kVar = this.f0;
        if (kVar == k.YEAR) {
            A2(k.DAY);
        } else if (kVar == k.DAY) {
            A2(k.YEAR);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void H0(Bundle bundle) {
        super.H0(bundle);
        if (bundle == null) {
            bundle = I();
        }
        this.b0 = bundle.getInt("THEME_RES_ID_KEY");
        this.c0 = (com.google.android.material.datepicker.d) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.d0 = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.e0 = (com.google.android.material.datepicker.l) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        int i3;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(K(), this.b0);
        this.g0 = new com.google.android.material.datepicker.c(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        com.google.android.material.datepicker.l lVarS = this.d0.s();
        if (com.google.android.material.datepicker.i.K2(contextThemeWrapper)) {
            i2 = d.c.a.a.h.mtrl_calendar_vertical;
            i3 = 1;
        } else {
            i2 = d.c.a.a.h.mtrl_calendar_horizontal;
            i3 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) viewInflate.findViewById(d.c.a.a.f.mtrl_calendar_days_of_week);
        v.o0(gridView, new b(this));
        gridView.setAdapter((ListAdapter) new com.google.android.material.datepicker.g());
        gridView.setNumColumns(lVarS.e);
        gridView.setEnabled(false);
        this.i0 = (RecyclerView) viewInflate.findViewById(d.c.a.a.f.mtrl_calendar_months);
        this.i0.setLayoutManager(new c(K(), i3, false, i3));
        this.i0.setTag(l0);
        n nVar = new n(contextThemeWrapper, this.c0, this.d0, new d());
        this.i0.setAdapter(nVar);
        int integer = contextThemeWrapper.getResources().getInteger(d.c.a.a.g.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(d.c.a.a.f.mtrl_calendar_year_selector_frame);
        this.h0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.h0.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.h0.setAdapter(new t(this));
            this.h0.h(q2());
        }
        if (viewInflate.findViewById(d.c.a.a.f.month_navigation_fragment_toggle) != null) {
            p2(viewInflate, nVar);
        }
        if (!com.google.android.material.datepicker.i.K2(contextThemeWrapper)) {
            new androidx.recyclerview.widget.j().b(this.i0);
        }
        this.i0.g1(nVar.x(this.e0));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void d1(Bundle bundle) {
        super.d1(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.b0);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.c0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.d0);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.e0);
    }

    @Override // com.google.android.material.datepicker.p
    public boolean g2(o<S> oVar) {
        return super.g2(oVar);
    }

    com.google.android.material.datepicker.a r2() {
        return this.d0;
    }

    com.google.android.material.datepicker.c s2() {
        return this.g0;
    }

    com.google.android.material.datepicker.l t2() {
        return this.e0;
    }

    public com.google.android.material.datepicker.d<S> u2() {
        return this.c0;
    }

    LinearLayoutManager w2() {
        return (LinearLayoutManager) this.i0.getLayoutManager();
    }

    void z2(com.google.android.material.datepicker.l lVar) {
        n nVar = (n) this.i0.getAdapter();
        int iX = nVar.x(lVar);
        int iX2 = iX - nVar.x(this.e0);
        boolean z = Math.abs(iX2) > 3;
        boolean z2 = iX2 > 0;
        this.e0 = lVar;
        if (z && z2) {
            this.i0.g1(iX - 3);
            y2(iX);
        } else if (!z) {
            y2(iX);
        } else {
            this.i0.g1(iX + 3);
            y2(iX);
        }
    }
}
