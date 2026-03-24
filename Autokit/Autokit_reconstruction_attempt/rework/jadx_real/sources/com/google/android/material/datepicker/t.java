package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.h;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class t extends RecyclerView.f<b> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h<?> f2118c;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f2119b;

        a(int i) {
            this.f2119b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t.this.f2118c.z2(t.this.f2118c.r2().n(l.k(this.f2119b, t.this.f2118c.t2().f2107c)));
            t.this.f2118c.A2(h.k.DAY);
        }
    }

    public static class b extends RecyclerView.c0 {
        final TextView t;

        b(TextView textView) {
            super(textView);
            this.t = textView;
        }
    }

    t(h<?> hVar) {
        this.f2118c = hVar;
    }

    private View.OnClickListener v(int i) {
        return new a(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public int c() {
        return this.f2118c.r2().t();
    }

    int w(int i) {
        return i - this.f2118c.r2().s().f2108d;
    }

    int x(int i) {
        return this.f2118c.r2().s().f2108d + i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void j(b bVar, int i) {
        int iX = x(i);
        String string = bVar.t.getContext().getString(d.c.a.a.i.mtrl_picker_navigate_to_year_description);
        bVar.t.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(iX)));
        bVar.t.setContentDescription(String.format(string, Integer.valueOf(iX)));
        c cVarS2 = this.f2118c.s2();
        Calendar calendarI = s.i();
        com.google.android.material.datepicker.b bVar2 = calendarI.get(1) == iX ? cVarS2.f : cVarS2.f2083d;
        Iterator<Long> it = this.f2118c.u2().i().iterator();
        while (it.hasNext()) {
            calendarI.setTimeInMillis(it.next().longValue());
            if (calendarI.get(1) == iX) {
                bVar2 = cVarS2.e;
            }
        }
        bVar2.d(bVar.t);
        bVar.t.setOnClickListener(v(iX));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public b l(ViewGroup viewGroup, int i) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(d.c.a.a.h.mtrl_calendar_year, viewGroup, false));
    }
}
