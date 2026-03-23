package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.C1082h;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import p093d.p099c.p100a.p101a.C1223h;
import p093d.p099c.p100a.p101a.C1224i;

/* JADX INFO: renamed from: com.google.android.material.datepicker.t */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1094t extends RecyclerView.AbstractC0434f<b> {

    /* JADX INFO: renamed from: c */
    private final C1082h<?> f6972c;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.t$a */
    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f6973b;

        a(int i) {
            this.f6973b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C1094t.this.f6972c.m8404z2(C1094t.this.f6972c.m8399r2().m8350n(C1086l.m8430k(this.f6973b, C1094t.this.f6972c.m8401t2().f6946c)));
            C1094t.this.f6972c.m8396A2(C1082h.k.DAY);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.t$b */
    public static class b extends RecyclerView.AbstractC0431c0 {

        /* JADX INFO: renamed from: t */
        final TextView f6975t;

        b(TextView textView) {
            super(textView);
            this.f6975t = textView;
        }
    }

    C1094t(C1082h<?> c1082h) {
        this.f6972c = c1082h;
    }

    /* JADX INFO: renamed from: v */
    private View.OnClickListener m8481v(int i) {
        return new a(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: c */
    public int mo3407c() {
        return this.f6972c.m8399r2().m8356t();
    }

    /* JADX INFO: renamed from: w */
    int m8482w(int i) {
        return i - this.f6972c.m8399r2().m8355s().f6947d;
    }

    /* JADX INFO: renamed from: x */
    int m8483x(int i) {
        return this.f6972c.m8399r2().m8355s().f6947d + i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void mo3414j(b bVar, int i) {
        int iM8483x = m8483x(i);
        String string = bVar.f6975t.getContext().getString(C1224i.mtrl_picker_navigate_to_year_description);
        bVar.f6975t.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(iM8483x)));
        bVar.f6975t.setContentDescription(String.format(string, Integer.valueOf(iM8483x)));
        C1077c c1077cM8400s2 = this.f6972c.m8400s2();
        Calendar calendarM8475i = C1093s.m8475i();
        C1076b c1076b = calendarM8475i.get(1) == iM8483x ? c1077cM8400s2.f6875f : c1077cM8400s2.f6873d;
        Iterator<Long> it = this.f6972c.m8402u2().m8373i().iterator();
        while (it.hasNext()) {
            calendarM8475i.setTimeInMillis(it.next().longValue());
            if (calendarM8475i.get(1) == iM8483x) {
                c1076b = c1077cM8400s2.f6874e;
            }
        }
        c1076b.m8365d(bVar.f6975t);
        bVar.f6975t.setOnClickListener(m8481v(iM8483x));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public b mo3416l(ViewGroup viewGroup, int i) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C1223h.mtrl_calendar_year, viewGroup, false));
    }
}
