package p016c.p017a.p024o;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import p016c.p017a.p024o.AbstractC0512b;

/* JADX INFO: renamed from: c.a.o.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0515e extends AbstractC0512b implements C0101g.a {

    /* JADX INFO: renamed from: d */
    private Context f3168d;

    /* JADX INFO: renamed from: e */
    private ActionBarContextView f3169e;

    /* JADX INFO: renamed from: f */
    private AbstractC0512b.a f3170f;

    /* JADX INFO: renamed from: g */
    private WeakReference<View> f3171g;

    /* JADX INFO: renamed from: h */
    private boolean f3172h;

    /* JADX INFO: renamed from: i */
    private C0101g f3173i;

    public C0515e(Context context, ActionBarContextView actionBarContextView, AbstractC0512b.a aVar, boolean z) {
        this.f3168d = context;
        this.f3169e = actionBarContextView;
        this.f3170f = aVar;
        C0101g c0101g = new C0101g(actionBarContextView.getContext());
        c0101g.m742S(1);
        this.f3173i = c0101g;
        c0101g.mo741R(this);
    }

    @Override // androidx.appcompat.view.menu.C0101g.a
    /* JADX INFO: renamed from: a */
    public boolean mo511a(C0101g c0101g, MenuItem menuItem) {
        return this.f3170f.mo535b(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0101g.a
    /* JADX INFO: renamed from: b */
    public void mo513b(C0101g c0101g) {
        mo633k();
        this.f3169e.m842l();
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: c */
    public void mo627c() {
        if (this.f3172h) {
            return;
        }
        this.f3172h = true;
        this.f3169e.sendAccessibilityEvent(32);
        this.f3170f.mo537d(this);
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: d */
    public View mo628d() {
        WeakReference<View> weakReference = this.f3171g;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: e */
    public Menu mo629e() {
        return this.f3173i;
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: f */
    public MenuInflater mo630f() {
        return new C0517g(this.f3169e.getContext());
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: g */
    public CharSequence mo631g() {
        return this.f3169e.getSubtitle();
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: i */
    public CharSequence mo632i() {
        return this.f3169e.getTitle();
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: k */
    public void mo633k() {
        this.f3170f.mo534a(this, this.f3173i);
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: l */
    public boolean mo634l() {
        return this.f3169e.m840j();
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: m */
    public void mo635m(View view) {
        this.f3169e.setCustomView(view);
        this.f3171g = view != null ? new WeakReference<>(view) : null;
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: n */
    public void mo636n(int i) {
        mo637o(this.f3168d.getString(i));
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: o */
    public void mo637o(CharSequence charSequence) {
        this.f3169e.setSubtitle(charSequence);
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: q */
    public void mo638q(int i) {
        mo639r(this.f3168d.getString(i));
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: r */
    public void mo639r(CharSequence charSequence) {
        this.f3169e.setTitle(charSequence);
    }

    @Override // p016c.p017a.p024o.AbstractC0512b
    /* JADX INFO: renamed from: s */
    public void mo640s(boolean z) {
        super.mo640s(z);
        this.f3169e.setTitleOptional(z);
    }
}
