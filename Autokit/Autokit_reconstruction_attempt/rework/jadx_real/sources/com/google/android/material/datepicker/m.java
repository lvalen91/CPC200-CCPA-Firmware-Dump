package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class m extends BaseAdapter {
    static final int g = s.k().getMaximum(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final l f2109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final d<?> f2110c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Collection<Long> f2111d;
    c e;
    final a f;

    m(l lVar, d<?> dVar, a aVar) {
        this.f2109b = lVar;
        this.f2110c = dVar;
        this.f = aVar;
        this.f2111d = dVar.i();
    }

    private void e(Context context) {
        if (this.e == null) {
            this.e = new c(context);
        }
    }

    private boolean h(long j) {
        Iterator<Long> it = this.f2110c.i().iterator();
        while (it.hasNext()) {
            if (s.a(j) == s.a(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    private void k(TextView textView, long j) {
        b bVar;
        if (textView == null) {
            return;
        }
        if (this.f.o().e(j)) {
            textView.setEnabled(true);
            bVar = h(j) ? this.e.f2081b : s.i().getTimeInMillis() == j ? this.e.f2082c : this.e.a;
        } else {
            textView.setEnabled(false);
            bVar = this.e.g;
        }
        bVar.d(textView);
    }

    private void l(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (l.l(j).equals(this.f2109b)) {
            k((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(this.f2109b.p(j)) - materialCalendarGridView.getFirstVisiblePosition()), j);
        }
    }

    int a(int i) {
        return b() + (i - 1);
    }

    int b() {
        return this.f2109b.n();
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i) {
        if (i < this.f2109b.n() || i > i()) {
            return null;
        }
        return Long.valueOf(this.f2109b.o(j(i)));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextView getView(int i, View view, ViewGroup viewGroup) {
        e(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(d.c.a.a.h.mtrl_calendar_day, viewGroup, false);
        }
        int iB = i - b();
        if (iB >= 0) {
            l lVar = this.f2109b;
            if (iB >= lVar.f) {
                textView.setVisibility(8);
                textView.setEnabled(false);
            } else {
                int i2 = iB + 1;
                textView.setTag(lVar);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(i2)));
                long jO = this.f2109b.o(i2);
                if (this.f2109b.f2108d == l.m().f2108d) {
                    textView.setContentDescription(e.a(jO));
                } else {
                    textView.setContentDescription(e.d(jO));
                }
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        }
        Long item = getItem(i);
        if (item == null) {
            return textView;
        }
        k(textView, item.longValue());
        return textView;
    }

    boolean f(int i) {
        return i % this.f2109b.e == 0;
    }

    boolean g(int i) {
        return (i + 1) % this.f2109b.e == 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f2109b.f + b();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f2109b.e;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    int i() {
        return (this.f2109b.n() + this.f2109b.f) - 1;
    }

    int j(int i) {
        return (i - this.f2109b.n()) + 1;
    }

    public void m(MaterialCalendarGridView materialCalendarGridView) {
        Iterator<Long> it = this.f2111d.iterator();
        while (it.hasNext()) {
            l(materialCalendarGridView, it.next().longValue());
        }
        d<?> dVar = this.f2110c;
        if (dVar != null) {
            Iterator<Long> it2 = dVar.i().iterator();
            while (it2.hasNext()) {
                l(materialCalendarGridView, it2.next().longValue());
            }
            this.f2111d = this.f2110c.i();
        }
    }

    boolean n(int i) {
        return i >= b() && i <= i();
    }
}
