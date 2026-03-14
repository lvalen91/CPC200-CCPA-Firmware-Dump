package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.InterfaceC0411y;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: androidx.fragment.app.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0361i {

    /* JADX INFO: renamed from: a */
    private final AbstractC0363k<?> f2268a;

    private C0361i(AbstractC0363k<?> abstractC0363k) {
        this.f2268a = abstractC0363k;
    }

    /* JADX INFO: renamed from: b */
    public static C0361i m2630b(AbstractC0363k<?> abstractC0363k) {
        C0626h.m4856f(abstractC0363k, "callbacks == null");
        return new C0361i(abstractC0363k);
    }

    /* JADX INFO: renamed from: a */
    public void m2631a(Fragment fragment) {
        AbstractC0363k<?> abstractC0363k = this.f2268a;
        abstractC0363k.f2273e.m2771j(abstractC0363k, abstractC0363k, fragment);
    }

    /* JADX INFO: renamed from: c */
    public void m2632c() {
        this.f2268a.f2273e.m2792y();
    }

    /* JADX INFO: renamed from: d */
    public void m2633d(Configuration configuration) {
        this.f2268a.f2273e.m2712A(configuration);
    }

    /* JADX INFO: renamed from: e */
    public boolean m2634e(MenuItem menuItem) {
        return this.f2268a.f2273e.m2714B(menuItem);
    }

    /* JADX INFO: renamed from: f */
    public void m2635f() {
        this.f2268a.f2273e.m2716C();
    }

    /* JADX INFO: renamed from: g */
    public boolean m2636g(Menu menu, MenuInflater menuInflater) {
        return this.f2268a.f2273e.m2718D(menu, menuInflater);
    }

    /* JADX INFO: renamed from: h */
    public void m2637h() {
        this.f2268a.f2273e.m2720E();
    }

    /* JADX INFO: renamed from: i */
    public void m2638i() {
        this.f2268a.f2273e.m2722G();
    }

    /* JADX INFO: renamed from: j */
    public void m2639j(boolean z) {
        this.f2268a.f2273e.m2724H(z);
    }

    /* JADX INFO: renamed from: k */
    public boolean m2640k(MenuItem menuItem) {
        return this.f2268a.f2273e.m2728J(menuItem);
    }

    /* JADX INFO: renamed from: l */
    public void m2641l(Menu menu) {
        this.f2268a.f2273e.m2730K(menu);
    }

    /* JADX INFO: renamed from: m */
    public void m2642m() {
        this.f2268a.f2273e.m2733M();
    }

    /* JADX INFO: renamed from: n */
    public void m2643n(boolean z) {
        this.f2268a.f2273e.m2734N(z);
    }

    /* JADX INFO: renamed from: o */
    public boolean m2644o(Menu menu) {
        return this.f2268a.f2273e.m2736O(menu);
    }

    /* JADX INFO: renamed from: p */
    public void m2645p() {
        this.f2268a.f2273e.m2740Q();
    }

    /* JADX INFO: renamed from: q */
    public void m2646q() {
        this.f2268a.f2273e.m2742R();
    }

    /* JADX INFO: renamed from: r */
    public void m2647r() {
        this.f2268a.f2273e.m2745T();
    }

    /* JADX INFO: renamed from: s */
    public boolean m2648s() {
        return this.f2268a.f2273e.m2754a0(true);
    }

    /* JADX INFO: renamed from: t */
    public AbstractC0366n m2649t() {
        return this.f2268a.f2273e;
    }

    /* JADX INFO: renamed from: u */
    public void m2650u() {
        this.f2268a.f2273e.m2743R0();
    }

    /* JADX INFO: renamed from: v */
    public View m2651v(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2268a.f2273e.m2785t0().onCreateView(view, str, context, attributeSet);
    }

    /* JADX INFO: renamed from: w */
    public void m2652w(Parcelable parcelable) {
        AbstractC0363k<?> abstractC0363k = this.f2268a;
        if (!(abstractC0363k instanceof InterfaceC0411y)) {
            throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
        }
        abstractC0363k.f2273e.m2757d1(parcelable);
    }

    /* JADX INFO: renamed from: x */
    public Parcelable m2653x() {
        return this.f2268a.f2273e.m2761f1();
    }
}
