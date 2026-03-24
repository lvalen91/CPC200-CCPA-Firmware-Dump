package c.a.o;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.o;
import c.a.o.b;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class f extends ActionMode {
    final Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f1029b;

    public static class a implements b.a {
        final ActionMode.Callback a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Context f1030b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList<f> f1031c = new ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final c.d.g<Menu, Menu> f1032d = new c.d.g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f1030b = context;
            this.a = callback;
        }

        private Menu f(Menu menu) {
            Menu menu2 = this.f1032d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            o oVar = new o(this.f1030b, (c.g.e.a.a) menu);
            this.f1032d.put(menu, oVar);
            return oVar;
        }

        @Override // c.a.o.b.a
        public boolean a(b bVar, Menu menu) {
            return this.a.onPrepareActionMode(e(bVar), f(menu));
        }

        @Override // c.a.o.b.a
        public boolean b(b bVar, MenuItem menuItem) {
            return this.a.onActionItemClicked(e(bVar), new j(this.f1030b, (c.g.e.a.b) menuItem));
        }

        @Override // c.a.o.b.a
        public boolean c(b bVar, Menu menu) {
            return this.a.onCreateActionMode(e(bVar), f(menu));
        }

        @Override // c.a.o.b.a
        public void d(b bVar) {
            this.a.onDestroyActionMode(e(bVar));
        }

        public ActionMode e(b bVar) {
            int size = this.f1031c.size();
            for (int i = 0; i < size; i++) {
                f fVar = this.f1031c.get(i);
                if (fVar != null && fVar.f1029b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f1030b, bVar);
            this.f1031c.add(fVar2);
            return fVar2;
        }
    }

    public f(Context context, b bVar) {
        this.a = context;
        this.f1029b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f1029b.c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f1029b.d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new o(this.a, (c.g.e.a.a) this.f1029b.e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f1029b.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f1029b.g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f1029b.h();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f1029b.i();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f1029b.j();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f1029b.k();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f1029b.l();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f1029b.m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f1029b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f1029b.p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f1029b.r(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f1029b.s(z);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f1029b.n(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f1029b.q(i);
    }
}
