package p016c.p017a.p024o;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuC0109o;
import androidx.appcompat.view.menu.MenuItemC0104j;
import java.util.ArrayList;
import p016c.p017a.p024o.AbstractC0512b;
import p016c.p032d.C0540g;
import p016c.p041g.p043e.p044a.InterfaceMenuC0599a;
import p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b;

/* JADX INFO: renamed from: c.a.o.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0516f extends ActionMode {

    /* JADX INFO: renamed from: a */
    final Context f3174a;

    /* JADX INFO: renamed from: b */
    final AbstractC0512b f3175b;

    /* JADX INFO: renamed from: c.a.o.f$a */
    public static class a implements AbstractC0512b.a {

        /* JADX INFO: renamed from: a */
        final ActionMode.Callback f3176a;

        /* JADX INFO: renamed from: b */
        final Context f3177b;

        /* JADX INFO: renamed from: c */
        final ArrayList<C0516f> f3178c = new ArrayList<>();

        /* JADX INFO: renamed from: d */
        final C0540g<Menu, Menu> f3179d = new C0540g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f3177b = context;
            this.f3176a = callback;
        }

        /* JADX INFO: renamed from: f */
        private Menu m4135f(Menu menu) {
            Menu menu2 = this.f3179d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            MenuC0109o menuC0109o = new MenuC0109o(this.f3177b, (InterfaceMenuC0599a) menu);
            this.f3179d.put(menu, menuC0109o);
            return menuC0109o;
        }

        @Override // p016c.p017a.p024o.AbstractC0512b.a
        /* JADX INFO: renamed from: a */
        public boolean mo534a(AbstractC0512b abstractC0512b, Menu menu) {
            return this.f3176a.onPrepareActionMode(m4136e(abstractC0512b), m4135f(menu));
        }

        @Override // p016c.p017a.p024o.AbstractC0512b.a
        /* JADX INFO: renamed from: b */
        public boolean mo535b(AbstractC0512b abstractC0512b, MenuItem menuItem) {
            return this.f3176a.onActionItemClicked(m4136e(abstractC0512b), new MenuItemC0104j(this.f3177b, (InterfaceMenuItemC0600b) menuItem));
        }

        @Override // p016c.p017a.p024o.AbstractC0512b.a
        /* JADX INFO: renamed from: c */
        public boolean mo536c(AbstractC0512b abstractC0512b, Menu menu) {
            return this.f3176a.onCreateActionMode(m4136e(abstractC0512b), m4135f(menu));
        }

        @Override // p016c.p017a.p024o.AbstractC0512b.a
        /* JADX INFO: renamed from: d */
        public void mo537d(AbstractC0512b abstractC0512b) {
            this.f3176a.onDestroyActionMode(m4136e(abstractC0512b));
        }

        /* JADX INFO: renamed from: e */
        public ActionMode m4136e(AbstractC0512b abstractC0512b) {
            int size = this.f3178c.size();
            for (int i = 0; i < size; i++) {
                C0516f c0516f = this.f3178c.get(i);
                if (c0516f != null && c0516f.f3175b == abstractC0512b) {
                    return c0516f;
                }
            }
            C0516f c0516f2 = new C0516f(this.f3177b, abstractC0512b);
            this.f3178c.add(c0516f2);
            return c0516f2;
        }
    }

    public C0516f(Context context, AbstractC0512b abstractC0512b) {
        this.f3174a = context;
        this.f3175b = abstractC0512b;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f3175b.mo627c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f3175b.mo628d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuC0109o(this.f3174a, (InterfaceMenuC0599a) this.f3175b.mo629e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f3175b.mo630f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f3175b.mo631g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f3175b.m4127h();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f3175b.mo632i();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f3175b.m4128j();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f3175b.mo633k();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f3175b.mo634l();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f3175b.mo635m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f3175b.mo637o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f3175b.m4129p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f3175b.mo639r(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f3175b.mo640s(z);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f3175b.mo636n(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f3175b.mo638q(i);
    }
}
