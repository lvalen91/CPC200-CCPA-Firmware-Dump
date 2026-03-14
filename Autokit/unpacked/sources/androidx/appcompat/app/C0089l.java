package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.appcompat.widget.C0197v0;
import androidx.appcompat.widget.InterfaceC0156b0;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.C0292v;
import java.util.ArrayList;
import p016c.p017a.p024o.WindowCallbackC0519i;

/* JADX INFO: renamed from: androidx.appcompat.app.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0089l extends AbstractC0078a {

    /* JADX INFO: renamed from: a */
    InterfaceC0156b0 f456a;

    /* JADX INFO: renamed from: b */
    boolean f457b;

    /* JADX INFO: renamed from: c */
    Window.Callback f458c;

    /* JADX INFO: renamed from: d */
    private boolean f459d;

    /* JADX INFO: renamed from: e */
    private boolean f460e;

    /* JADX INFO: renamed from: f */
    private ArrayList<AbstractC0078a.b> f461f = new ArrayList<>();

    /* JADX INFO: renamed from: g */
    private final Runnable f462g = new a();

    /* JADX INFO: renamed from: h */
    private final Toolbar.InterfaceC0149f f463h = new b();

    /* JADX INFO: renamed from: androidx.appcompat.app.l$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0089l.this.m593z();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.l$b */
    class b implements Toolbar.InterfaceC0149f {
        b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.InterfaceC0149f
        public boolean onMenuItemClick(MenuItem menuItem) {
            return C0089l.this.f458c.onMenuItemSelected(0, menuItem);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.l$c */
    private final class c implements InterfaceC0107m.a {

        /* JADX INFO: renamed from: b */
        private boolean f466b;

        c() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
        /* JADX INFO: renamed from: a */
        public void mo532a(C0101g c0101g, boolean z) {
            if (this.f466b) {
                return;
            }
            this.f466b = true;
            C0089l.this.f456a.mo1031h();
            Window.Callback callback = C0089l.this.f458c;
            if (callback != null) {
                callback.onPanelClosed(108, c0101g);
            }
            this.f466b = false;
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
        /* JADX INFO: renamed from: b */
        public boolean mo533b(C0101g c0101g) {
            Window.Callback callback = C0089l.this.f458c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, c0101g);
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.l$d */
    private final class d implements C0101g.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.C0101g.a
        /* JADX INFO: renamed from: a */
        public boolean mo511a(C0101g c0101g, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0101g.a
        /* JADX INFO: renamed from: b */
        public void mo513b(C0101g c0101g) {
            C0089l c0089l = C0089l.this;
            if (c0089l.f458c != null) {
                if (c0089l.f456a.mo1026c()) {
                    C0089l.this.f458c.onPanelClosed(108, c0101g);
                } else if (C0089l.this.f458c.onPreparePanel(0, null, c0101g)) {
                    C0089l.this.f458c.onMenuOpened(108, c0101g);
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.l$e */
    private class e extends WindowCallbackC0519i {
        public e(Window.Callback callback) {
            super(callback);
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            return i == 0 ? new View(C0089l.this.f456a.mo1040q()) : super.onCreatePanelView(i);
        }

        @Override // p016c.p017a.p024o.WindowCallbackC0519i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (zOnPreparePanel) {
                C0089l c0089l = C0089l.this;
                if (!c0089l.f457b) {
                    c0089l.f456a.mo1029f();
                    C0089l.this.f457b = true;
                }
            }
            return zOnPreparePanel;
        }
    }

    C0089l(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f456a = new C0197v0(toolbar, false);
        e eVar = new e(callback);
        this.f458c = eVar;
        this.f456a.setWindowCallback(eVar);
        toolbar.setOnMenuItemClickListener(this.f463h);
        this.f456a.setWindowTitle(charSequence);
    }

    /* JADX INFO: renamed from: x */
    private Menu m590x() {
        if (!this.f459d) {
            this.f456a.mo1032i(new c(), new d());
            this.f459d = true;
        }
        return this.f456a.mo1035l();
    }

    /* JADX INFO: renamed from: A */
    public void m591A(int i, int i2) {
        this.f456a.mo1047x((i & i2) | ((i2 ^ (-1)) & this.f456a.mo1033j()));
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: g */
    public boolean mo396g() {
        return this.f456a.mo1027d();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: h */
    public boolean mo397h() {
        if (!this.f456a.mo1044u()) {
            return false;
        }
        this.f456a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: i */
    public void mo398i(boolean z) {
        if (z == this.f460e) {
            return;
        }
        this.f460e = z;
        int size = this.f461f.size();
        for (int i = 0; i < size; i++) {
            this.f461f.get(i).m413a(z);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: j */
    public int mo399j() {
        return this.f456a.mo1033j();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: k */
    public Context mo400k() {
        return this.f456a.mo1040q();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: l */
    public void mo401l() {
        this.f456a.mo1034k(8);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: m */
    public boolean mo402m() {
        this.f456a.mo1038o().removeCallbacks(this.f462g);
        C0292v.m2089g0(this.f456a.mo1038o(), this.f462g);
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: n */
    public void mo403n(Configuration configuration) {
        super.mo403n(configuration);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: o */
    void mo404o() {
        this.f456a.mo1038o().removeCallbacks(this.f462g);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: p */
    public boolean mo405p(int i, KeyEvent keyEvent) {
        Menu menuM590x = m590x();
        if (menuM590x == null) {
            return false;
        }
        menuM590x.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuM590x.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: q */
    public boolean mo406q(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            mo407r();
        }
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: r */
    public boolean mo407r() {
        return this.f456a.mo1028e();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: s */
    public void mo408s(boolean z) {
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: t */
    public void mo409t(boolean z) {
        m591A(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: u */
    public void mo410u(boolean z) {
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: v */
    public void mo411v(CharSequence charSequence) {
        this.f456a.setWindowTitle(charSequence);
    }

    /* JADX INFO: renamed from: y */
    public Window.Callback m592y() {
        return this.f458c;
    }

    /* JADX INFO: renamed from: z */
    void m593z() {
        Menu menuM590x = m590x();
        C0101g c0101g = menuM590x instanceof C0101g ? (C0101g) menuM590x : null;
        if (c0101g != null) {
            c0101g.m755d0();
        }
        try {
            menuM590x.clear();
            if (!this.f458c.onCreatePanelMenu(0, menuM590x) || !this.f458c.onPreparePanel(0, null, menuM590x)) {
                menuM590x.clear();
            }
        } finally {
            if (c0101g != null) {
                c0101g.m753c0();
            }
        }
    }
}
