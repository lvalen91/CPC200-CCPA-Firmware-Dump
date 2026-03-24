package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.v;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.h;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class n extends RecyclerView.f<b> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f2112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.material.datepicker.a f2113d;
    private final d<?> e;
    private final h.l f;
    private final int g;

    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MaterialCalendarGridView f2114b;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.f2114b = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.f2114b.getAdapter().n(i)) {
                n.this.f.a(this.f2114b.getAdapter().getItem(i).longValue());
            }
        }
    }

    public static class b extends RecyclerView.c0 {
        final TextView t;
        final MaterialCalendarGridView u;

        b(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(d.c.a.a.f.month_title);
            this.t = textView;
            v.p0(textView, true);
            this.u = (MaterialCalendarGridView) linearLayout.findViewById(d.c.a.a.f.month_grid);
            if (z) {
                return;
            }
            this.t.setVisibility(8);
        }
    }

    n(Context context, d<?> dVar, com.google.android.material.datepicker.a aVar, h.l lVar) {
        l lVarS = aVar.s();
        l lVarP = aVar.p();
        l lVarR = aVar.r();
        if (lVarS.compareTo(lVarR) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (lVarR.compareTo(lVarP) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int iV2 = m.g * h.v2(context);
        int iV22 = i.K2(context) ? h.v2(context) : 0;
        this.f2112c = context;
        this.g = iV2 + iV22;
        this.f2113d = aVar;
        this.e = dVar;
        this.f = lVar;
        s(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public int c() {
        return this.f2113d.q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public long d(int i) {
        return this.f2113d.s().s(i).r();
    }

    l v(int i) {
        return this.f2113d.s().s(i);
    }

    CharSequence w(int i) {
        return v(i).q(this.f2112c);
    }

    int x(l lVar) {
        return this.f2113d.s().t(lVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void j(b bVar, int i) {
        l lVarS = this.f2113d.s().s(i);
        bVar.t.setText(lVarS.q(bVar.a.getContext()));
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.u.findViewById(d.c.a.a.f.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !lVarS.equals(materialCalendarGridView.getAdapter().f2109b)) {
            m mVar = new m(lVarS, this.e, this.f2113d);
            materialCalendarGridView.setNumColumns(lVarS.e);
            materialCalendarGridView.setAdapter((ListAdapter) mVar);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().m(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public b l(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(d.c.a.a.h.mtrl_calendar_month_labeled, viewGroup, false);
        if (!i.K2(viewGroup.getContext())) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.o(-1, this.g));
        return new b(linearLayout, true);
    }
}
