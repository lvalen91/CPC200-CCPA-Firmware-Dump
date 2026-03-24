package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.b0;
import androidx.appcompat.widget.v0;
import androidx.core.view.v;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class l extends androidx.appcompat.app.a {
    b0 a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Window.Callback f156c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f157d;
    private boolean e;
    private ArrayList<a.b> f = new ArrayList<>();
    private final Runnable g = new a();
    private final Toolbar.f h = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.z();
        }
    }

    class b implements Toolbar.f {
        b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.f
        public boolean onMenuItemClick(MenuItem menuItem) {
            return l.this.f156c.onMenuItemSelected(0, menuItem);
        }
    }

    private final class c implements m.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f159b;

        c() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
            if (this.f159b) {
                return;
            }
            this.f159b = true;
            l.this.a.h();
            Window.Callback callback = l.this.f156c;
            if (callback != null) {
                callback.onPanelClosed(108, gVar);
            }
            this.f159b = false;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean b(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callback = l.this.f156c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, gVar);
            return true;
        }
    }

    private final class d implements g.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(androidx.appcompat.view.menu.g gVar) {
            l lVar = l.this;
            if (lVar.f156c != null) {
                if (lVar.a.c()) {
                    l.this.f156c.onPanelClosed(108, gVar);
                } else if (l.this.f156c.onPreparePanel(0, null, gVar)) {
                    l.this.f156c.onMenuOpened(108, gVar);
                }
            }
        }
    }

    private class e extends c.a.o.i {
        public e(Window.Callback callback) {
            super(callback);
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            return i == 0 ? new View(l.this.a.q()) : super.onCreatePanelView(i);
        }

        @Override // c.a.o.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
            if (zOnPreparePanel) {
                l lVar = l.this;
                if (!lVar.f155b) {
                    lVar.a.f();
                    l.this.f155b = true;
                }
            }
            return zOnPreparePanel;
        }
    }

    l(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.a = new v0(toolbar, false);
        e eVar = new e(callback);
        this.f156c = eVar;
        this.a.setWindowCallback(eVar);
        toolbar.setOnMenuItemClickListener(this.h);
        this.a.setWindowTitle(charSequence);
    }

    private Menu x() {
        if (!this.f157d) {
            this.a.i(new c(), new d());
            this.f157d = true;
        }
        return this.a.l();
    }

    public void A(int i, int i2) {
        this.a.x((i & i2) | ((i2 ^ (-1)) & this.a.j()));
    }

    @Override // androidx.appcompat.app.a
    public boolean g() {
        return this.a.d();
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        if (!this.a.u()) {
            return false;
        }
        this.a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z) {
        if (z == this.e) {
            return;
        }
        this.e = z;
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            this.f.get(i).a(z);
        }
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.a.j();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        return this.a.q();
    }

    @Override // androidx.appcompat.app.a
    public void l() {
        this.a.k(8);
    }

    @Override // androidx.appcompat.app.a
    public boolean m() {
        this.a.o().removeCallbacks(this.g);
        v.g0(this.a.o(), this.g);
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void n(Configuration configuration) {
        super.n(configuration);
    }

    @Override // androidx.appcompat.app.a
    void o() {
        this.a.o().removeCallbacks(this.g);
    }

    @Override // androidx.appcompat.app.a
    public boolean p(int i, KeyEvent keyEvent) {
        Menu menuX = x();
        if (menuX == null) {
            return false;
        }
        menuX.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuX.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public boolean q(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            r();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean r() {
        return this.a.e();
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void t(boolean z) {
        A(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.a
    public void u(boolean z) {
    }

    @Override // androidx.appcompat.app.a
    public void v(CharSequence charSequence) {
        this.a.setWindowTitle(charSequence);
    }

    public Window.Callback y() {
        return this.f156c;
    }

    void z() {
        Menu menuX = x();
        androidx.appcompat.view.menu.g gVar = menuX instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) menuX : null;
        if (gVar != null) {
            gVar.d0();
        }
        try {
            menuX.clear();
            if (!this.f156c.onCreatePanelMenu(0, menuX) || !this.f156c.onPreparePanel(0, null, menuX)) {
                menuX.clear();
            }
        } finally {
            if (gVar != null) {
                gVar.c0();
            }
        }
    }
}
