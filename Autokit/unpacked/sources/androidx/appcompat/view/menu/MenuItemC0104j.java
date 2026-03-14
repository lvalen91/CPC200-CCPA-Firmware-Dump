package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.AbstractC0260b;
import java.lang.reflect.Method;
import p016c.p017a.p024o.InterfaceC0513c;
import p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MenuItemC0104j extends AbstractC0097c implements MenuItem {

    /* JADX INFO: renamed from: d */
    private final InterfaceMenuItemC0600b f700d;

    /* JADX INFO: renamed from: e */
    private Method f701e;

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.j$a */
    private class a extends AbstractC0260b {

        /* JADX INFO: renamed from: b */
        final ActionProvider f702b;

        a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f702b = actionProvider;
        }

        @Override // androidx.core.view.AbstractC0260b
        /* JADX INFO: renamed from: a */
        public boolean mo803a() {
            return this.f702b.hasSubMenu();
        }

        @Override // androidx.core.view.AbstractC0260b
        /* JADX INFO: renamed from: c */
        public View mo804c() {
            return this.f702b.onCreateActionView();
        }

        @Override // androidx.core.view.AbstractC0260b
        /* JADX INFO: renamed from: e */
        public boolean mo805e() {
            return this.f702b.onPerformDefaultAction();
        }

        @Override // androidx.core.view.AbstractC0260b
        /* JADX INFO: renamed from: f */
        public void mo806f(SubMenu subMenu) {
            this.f702b.onPrepareSubMenu(MenuItemC0104j.this.m683d(subMenu));
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.j$b */
    private class b extends a implements ActionProvider.VisibilityListener {

        /* JADX INFO: renamed from: d */
        private AbstractC0260b.b f704d;

        b(MenuItemC0104j menuItemC0104j, Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // androidx.core.view.AbstractC0260b
        /* JADX INFO: renamed from: b */
        public boolean mo807b() {
            return this.f702b.isVisible();
        }

        @Override // androidx.core.view.AbstractC0260b
        /* JADX INFO: renamed from: d */
        public View mo808d(MenuItem menuItem) {
            return this.f702b.onCreateActionView(menuItem);
        }

        @Override // androidx.core.view.AbstractC0260b
        /* JADX INFO: renamed from: g */
        public boolean mo809g() {
            return this.f702b.overridesItemVisibility();
        }

        @Override // androidx.core.view.AbstractC0260b
        /* JADX INFO: renamed from: j */
        public void mo810j(AbstractC0260b.b bVar) {
            this.f704d = bVar;
            this.f702b.setVisibilityListener(bVar != null ? this : null);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            AbstractC0260b.b bVar = this.f704d;
            if (bVar != null) {
                bVar.onActionProviderVisibilityChanged(z);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.j$c */
    static class c extends FrameLayout implements InterfaceC0513c {

        /* JADX INFO: renamed from: b */
        final CollapsibleActionView f705b;

        /* JADX WARN: Multi-variable type inference failed */
        c(View view) {
            super(view.getContext());
            this.f705b = (CollapsibleActionView) view;
            addView(view);
        }

        /* JADX INFO: renamed from: a */
        View m811a() {
            return (View) this.f705b;
        }

        @Override // p016c.p017a.p024o.InterfaceC0513c
        /* JADX INFO: renamed from: c */
        public void mo812c() {
            this.f705b.onActionViewExpanded();
        }

        @Override // p016c.p017a.p024o.InterfaceC0513c
        /* JADX INFO: renamed from: d */
        public void mo813d() {
            this.f705b.onActionViewCollapsed();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.j$d */
    private class d implements MenuItem.OnActionExpandListener {

        /* JADX INFO: renamed from: a */
        private final MenuItem.OnActionExpandListener f706a;

        d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f706a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f706a.onMenuItemActionCollapse(MenuItemC0104j.this.m682c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f706a.onMenuItemActionExpand(MenuItemC0104j.this.m682c(menuItem));
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.j$e */
    private class e implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: a */
        private final MenuItem.OnMenuItemClickListener f708a;

        e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f708a = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f708a.onMenuItemClick(MenuItemC0104j.this.m682c(menuItem));
        }
    }

    public MenuItemC0104j(Context context, InterfaceMenuItemC0600b interfaceMenuItemC0600b) {
        super(context);
        if (interfaceMenuItemC0600b == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f700d = interfaceMenuItemC0600b;
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f700d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f700d.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        AbstractC0260b abstractC0260bMo662b = this.f700d.mo662b();
        if (abstractC0260bMo662b instanceof a) {
            return ((a) abstractC0260bMo662b).f702b;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f700d.getActionView();
        return actionView instanceof c ? ((c) actionView).m811a() : actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f700d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f700d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f700d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f700d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f700d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f700d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f700d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f700d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f700d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f700d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f700d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f700d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f700d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return m683d(this.f700d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f700d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f700d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f700d.getTooltipText();
    }

    /* JADX INFO: renamed from: h */
    public void m802h(boolean z) {
        try {
            if (this.f701e == null) {
                this.f701e = this.f700d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f701e.invoke(this.f700d, Boolean.valueOf(z));
        } catch (Exception unused) {
        }
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f700d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f700d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f700d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f700d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f700d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f700d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        AbstractC0260b bVar = Build.VERSION.SDK_INT >= 16 ? new b(this, this.f580a, actionProvider) : new a(this.f580a, actionProvider);
        InterfaceMenuItemC0600b interfaceMenuItemC0600b = this.f700d;
        if (actionProvider == null) {
            bVar = null;
        }
        interfaceMenuItemC0600b.mo661a(bVar);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new c(view);
        }
        this.f700d.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        this.f700d.setAlphabeticShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f700d.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f700d.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f700d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f700d.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f700d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f700d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f700d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f700d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        this.f700d.setNumericShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f700d.setOnActionExpandListener(onActionExpandListener != null ? new d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f700d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.f700d.setShortcut(c2, c3);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f700d.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        this.f700d.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f700d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f700d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f700d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return this.f700d.setVisible(z);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i) {
        this.f700d.setAlphabeticShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f700d.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i) {
        this.f700d.setNumericShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.f700d.setShortcut(c2, c3, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f700d.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        this.f700d.setActionView(i);
        View actionView = this.f700d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f700d.setActionView(new c(actionView));
        }
        return this;
    }
}
