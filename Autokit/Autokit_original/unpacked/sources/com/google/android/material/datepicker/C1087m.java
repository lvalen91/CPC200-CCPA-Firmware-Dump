package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Collection;
import java.util.Iterator;
import p093d.p099c.p100a.p101a.C1223h;

/* JADX INFO: renamed from: com.google.android.material.datepicker.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1087m extends BaseAdapter {

    /* JADX INFO: renamed from: g */
    static final int f6952g = C1093s.m8477k().getMaximum(4);

    /* JADX INFO: renamed from: b */
    final C1086l f6953b;

    /* JADX INFO: renamed from: c */
    final InterfaceC1078d<?> f6954c;

    /* JADX INFO: renamed from: d */
    private Collection<Long> f6955d;

    /* JADX INFO: renamed from: e */
    C1077c f6956e;

    /* JADX INFO: renamed from: f */
    final C1075a f6957f;

    C1087m(C1086l c1086l, InterfaceC1078d<?> interfaceC1078d, C1075a c1075a) {
        this.f6953b = c1086l;
        this.f6954c = interfaceC1078d;
        this.f6957f = c1075a;
        this.f6955d = interfaceC1078d.m8373i();
    }

    /* JADX INFO: renamed from: e */
    private void m8443e(Context context) {
        if (this.f6956e == null) {
            this.f6956e = new C1077c(context);
        }
    }

    /* JADX INFO: renamed from: h */
    private boolean m8444h(long j) {
        Iterator<Long> it = this.f6954c.m8373i().iterator();
        while (it.hasNext()) {
            if (C1093s.m8467a(j) == C1093s.m8467a(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: k */
    private void m8445k(TextView textView, long j) {
        C1076b c1076b;
        if (textView == null) {
            return;
        }
        if (this.f6957f.m8351o().mo8361e(j)) {
            textView.setEnabled(true);
            c1076b = m8444h(j) ? this.f6956e.f6871b : C1093s.m8475i().getTimeInMillis() == j ? this.f6956e.f6872c : this.f6956e.f6870a;
        } else {
            textView.setEnabled(false);
            c1076b = this.f6956e.f6876g;
        }
        c1076b.m8365d(textView);
    }

    /* JADX INFO: renamed from: l */
    private void m8446l(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (C1086l.m8431l(j).equals(this.f6953b)) {
            m8445k((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().m8447a(this.f6953b.m8436p(j)) - materialCalendarGridView.getFirstVisiblePosition()), j);
        }
    }

    /* JADX INFO: renamed from: a */
    int m8447a(int i) {
        return m8448b() + (i - 1);
    }

    /* JADX INFO: renamed from: b */
    int m8448b() {
        return this.f6953b.m8434n();
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i) {
        if (i < this.f6953b.m8434n() || i > m8453i()) {
            return null;
        }
        return Long.valueOf(this.f6953b.m8435o(m8454j(i)));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextView getView(int i, View view, ViewGroup viewGroup) {
        m8443e(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C1223h.mtrl_calendar_day, viewGroup, false);
        }
        int iM8448b = i - m8448b();
        if (iM8448b >= 0) {
            C1086l c1086l = this.f6953b;
            if (iM8448b >= c1086l.f6949f) {
                textView.setVisibility(8);
                textView.setEnabled(false);
            } else {
                int i2 = iM8448b + 1;
                textView.setTag(c1086l);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(i2)));
                long jM8435o = this.f6953b.m8435o(i2);
                if (this.f6953b.f6947d == C1086l.m8432m().f6947d) {
                    textView.setContentDescription(C1079e.m8374a(jM8435o));
                } else {
                    textView.setContentDescription(C1079e.m8377d(jM8435o));
                }
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        }
        Long item = getItem(i);
        if (item == null) {
            return textView;
        }
        m8445k(textView, item.longValue());
        return textView;
    }

    /* JADX INFO: renamed from: f */
    boolean m8451f(int i) {
        return i % this.f6953b.f6948e == 0;
    }

    /* JADX INFO: renamed from: g */
    boolean m8452g(int i) {
        return (i + 1) % this.f6953b.f6948e == 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f6953b.f6949f + m8448b();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f6953b.f6948e;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    /* JADX INFO: renamed from: i */
    int m8453i() {
        return (this.f6953b.m8434n() + this.f6953b.f6949f) - 1;
    }

    /* JADX INFO: renamed from: j */
    int m8454j(int i) {
        return (i - this.f6953b.m8434n()) + 1;
    }

    /* JADX INFO: renamed from: m */
    public void m8455m(MaterialCalendarGridView materialCalendarGridView) {
        Iterator<Long> it = this.f6955d.iterator();
        while (it.hasNext()) {
            m8446l(materialCalendarGridView, it.next().longValue());
        }
        InterfaceC1078d<?> interfaceC1078d = this.f6954c;
        if (interfaceC1078d != null) {
            Iterator<Long> it2 = interfaceC1078d.m8373i().iterator();
            while (it2.hasNext()) {
                m8446l(materialCalendarGridView, it2.next().longValue());
            }
            this.f6955d = this.f6954c.m8373i();
        }
    }

    /* JADX INFO: renamed from: n */
    boolean m8456n(int i) {
        return i >= m8448b() && i <= m8453i();
    }
}
