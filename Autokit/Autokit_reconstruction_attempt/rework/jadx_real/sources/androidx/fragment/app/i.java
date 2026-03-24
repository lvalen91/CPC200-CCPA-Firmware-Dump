package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class i {
    private final k<?> a;

    private i(k<?> kVar) {
        this.a = kVar;
    }

    public static i b(k<?> kVar) {
        c.g.j.h.f(kVar, "callbacks == null");
        return new i(kVar);
    }

    public void a(Fragment fragment) {
        k<?> kVar = this.a;
        kVar.e.j(kVar, kVar, fragment);
    }

    public void c() {
        this.a.e.y();
    }

    public void d(Configuration configuration) {
        this.a.e.A(configuration);
    }

    public boolean e(MenuItem menuItem) {
        return this.a.e.B(menuItem);
    }

    public void f() {
        this.a.e.C();
    }

    public boolean g(Menu menu, MenuInflater menuInflater) {
        return this.a.e.D(menu, menuInflater);
    }

    public void h() {
        this.a.e.E();
    }

    public void i() {
        this.a.e.G();
    }

    public void j(boolean z) {
        this.a.e.H(z);
    }

    public boolean k(MenuItem menuItem) {
        return this.a.e.J(menuItem);
    }

    public void l(Menu menu) {
        this.a.e.K(menu);
    }

    public void m() {
        this.a.e.M();
    }

    public void n(boolean z) {
        this.a.e.N(z);
    }

    public boolean o(Menu menu) {
        return this.a.e.O(menu);
    }

    public void p() {
        this.a.e.Q();
    }

    public void q() {
        this.a.e.R();
    }

    public void r() {
        this.a.e.T();
    }

    public boolean s() {
        return this.a.e.a0(true);
    }

    public n t() {
        return this.a.e;
    }

    public void u() {
        this.a.e.R0();
    }

    public View v(View view, String str, Context context, AttributeSet attributeSet) {
        return this.a.e.t0().onCreateView(view, str, context, attributeSet);
    }

    public void w(Parcelable parcelable) {
        k<?> kVar = this.a;
        if (!(kVar instanceof androidx.lifecycle.y)) {
            throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
        }
        kVar.e.d1(parcelable);
    }

    public Parcelable x() {
        return this.a.e.f1();
    }
}
