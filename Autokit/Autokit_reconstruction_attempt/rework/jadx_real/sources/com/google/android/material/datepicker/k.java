package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class k<S> extends p<S> {
    private int b0;
    private d<S> c0;
    private com.google.android.material.datepicker.a d0;

    class a extends o<S> {
        a() {
        }

        @Override // com.google.android.material.datepicker.o
        public void a(S s) {
            Iterator<o<S>> it = k.this.a0.iterator();
            while (it.hasNext()) {
                it.next().a(s);
            }
        }
    }

    static <T> k<T> i2(d<T> dVar, int i, com.google.android.material.datepicker.a aVar) {
        k<T> kVar = new k<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("DATE_SELECTOR_KEY", dVar);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar);
        kVar.S1(bundle);
        return kVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void H0(Bundle bundle) {
        super.H0(bundle);
        if (bundle == null) {
            bundle = I();
        }
        this.b0 = bundle.getInt("THEME_RES_ID_KEY");
        this.c0 = (d) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.d0 = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.c0.h(layoutInflater.cloneInContext(new ContextThemeWrapper(K(), this.b0)), viewGroup, bundle, this.d0, new a());
    }

    @Override // androidx.fragment.app.Fragment
    public void d1(Bundle bundle) {
        super.d1(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.b0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.c0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.d0);
    }
}
