package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.C0292v;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.C1082h;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1223h;

/* JADX INFO: renamed from: com.google.android.material.datepicker.n */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1088n extends RecyclerView.AbstractC0434f<b> {

    /* JADX INFO: renamed from: c */
    private final Context f6958c;

    /* JADX INFO: renamed from: d */
    private final C1075a f6959d;

    /* JADX INFO: renamed from: e */
    private final InterfaceC1078d<?> f6960e;

    /* JADX INFO: renamed from: f */
    private final C1082h.l f6961f;

    /* JADX INFO: renamed from: g */
    private final int f6962g;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.n$a */
    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ MaterialCalendarGridView f6963b;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.f6963b = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.f6963b.getAdapter().m8456n(i)) {
                C1088n.this.f6961f.mo8405a(this.f6963b.getAdapter().getItem(i).longValue());
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.n$b */
    public static class b extends RecyclerView.AbstractC0431c0 {

        /* JADX INFO: renamed from: t */
        final TextView f6965t;

        /* JADX INFO: renamed from: u */
        final MaterialCalendarGridView f6966u;

        b(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(C1221f.month_title);
            this.f6965t = textView;
            C0292v.m2107p0(textView, true);
            this.f6966u = (MaterialCalendarGridView) linearLayout.findViewById(C1221f.month_grid);
            if (z) {
                return;
            }
            this.f6965t.setVisibility(8);
        }
    }

    C1088n(Context context, InterfaceC1078d<?> interfaceC1078d, C1075a c1075a, C1082h.l lVar) {
        C1086l c1086lM8355s = c1075a.m8355s();
        C1086l c1086lM8352p = c1075a.m8352p();
        C1086l c1086lM8354r = c1075a.m8354r();
        if (c1086lM8355s.compareTo(c1086lM8354r) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (c1086lM8354r.compareTo(c1086lM8352p) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int iM8393v2 = C1087m.f6952g * C1082h.m8393v2(context);
        int iM8393v22 = C1083i.m8414K2(context) ? C1082h.m8393v2(context) : 0;
        this.f6958c = context;
        this.f6962g = iM8393v2 + iM8393v22;
        this.f6959d = c1075a;
        this.f6960e = interfaceC1078d;
        this.f6961f = lVar;
        m3423s(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: c */
    public int mo3407c() {
        return this.f6959d.m8353q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: d */
    public long mo3408d(int i) {
        return this.f6959d.m8355s().m8439s(i).m8438r();
    }

    /* JADX INFO: renamed from: v */
    C1086l m8458v(int i) {
        return this.f6959d.m8355s().m8439s(i);
    }

    /* JADX INFO: renamed from: w */
    CharSequence m8459w(int i) {
        return m8458v(i).m8437q(this.f6958c);
    }

    /* JADX INFO: renamed from: x */
    int m8460x(C1086l c1086l) {
        return this.f6959d.m8355s().m8440t(c1086l);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void mo3414j(b bVar, int i) {
        C1086l c1086lM8439s = this.f6959d.m8355s().m8439s(i);
        bVar.f6965t.setText(c1086lM8439s.m8437q(bVar.f2721a.getContext()));
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.f6966u.findViewById(C1221f.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !c1086lM8439s.equals(materialCalendarGridView.getAdapter().f6953b)) {
            C1087m c1087m = new C1087m(c1086lM8439s, this.f6960e, this.f6959d);
            materialCalendarGridView.setNumColumns(c1086lM8439s.f6948e);
            materialCalendarGridView.setAdapter((ListAdapter) c1087m);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().m8455m(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public b mo3416l(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(C1223h.mtrl_calendar_month_labeled, viewGroup, false);
        if (!C1083i.m8414K2(viewGroup.getContext())) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.C0443o(-1, this.f6962g));
        return new b(linearLayout, true);
    }
}
