package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.material.datepicker.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1085k<S> extends AbstractC1090p<S> {

    /* JADX INFO: renamed from: b0 */
    private int f6941b0;

    /* JADX INFO: renamed from: c0 */
    private InterfaceC1078d<S> f6942c0;

    /* JADX INFO: renamed from: d0 */
    private C1075a f6943d0;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.k$a */
    class a extends AbstractC1089o<S> {
        a() {
        }

        @Override // com.google.android.material.datepicker.AbstractC1089o
        /* JADX INFO: renamed from: a */
        public void mo8427a(S s) {
            Iterator<AbstractC1089o<S>> it = C1085k.this.f6967a0.iterator();
            while (it.hasNext()) {
                it.next().mo8427a(s);
            }
        }
    }

    /* JADX INFO: renamed from: i2 */
    static <T> C1085k<T> m8429i2(InterfaceC1078d<T> interfaceC1078d, int i, C1075a c1075a) {
        C1085k<T> c1085k = new C1085k<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("DATE_SELECTOR_KEY", interfaceC1078d);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c1075a);
        c1085k.m2429S1(bundle);
        return c1085k;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: H0 */
    public void mo2397H0(Bundle bundle) {
        super.mo2397H0(bundle);
        if (bundle == null) {
            bundle = m2399I();
        }
        this.f6941b0 = bundle.getInt("THEME_RES_ID_KEY");
        this.f6942c0 = (InterfaceC1078d) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f6943d0 = (C1075a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f6942c0.m8372h(layoutInflater.cloneInContext(new ContextThemeWrapper(m2404K(), this.f6941b0)), viewGroup, bundle, this.f6943d0, new a());
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: d1 */
    public void mo2460d1(Bundle bundle) {
        super.mo2460d1(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f6941b0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f6942c0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f6943d0);
    }
}
