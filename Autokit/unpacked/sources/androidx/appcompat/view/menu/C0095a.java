package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.content.C0242a;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.AbstractC0260b;
import p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0095a implements InterfaceMenuItemC0600b {

    /* JADX INFO: renamed from: a */
    private final int f553a;

    /* JADX INFO: renamed from: b */
    private final int f554b;

    /* JADX INFO: renamed from: c */
    private final int f555c;

    /* JADX INFO: renamed from: d */
    private CharSequence f556d;

    /* JADX INFO: renamed from: e */
    private CharSequence f557e;

    /* JADX INFO: renamed from: f */
    private Intent f558f;

    /* JADX INFO: renamed from: g */
    private char f559g;

    /* JADX INFO: renamed from: i */
    private char f561i;

    /* JADX INFO: renamed from: k */
    private Drawable f563k;

    /* JADX INFO: renamed from: l */
    private Context f564l;

    /* JADX INFO: renamed from: m */
    private CharSequence f565m;

    /* JADX INFO: renamed from: n */
    private CharSequence f566n;

    /* JADX INFO: renamed from: h */
    private int f560h = 4096;

    /* JADX INFO: renamed from: j */
    private int f562j = 4096;

    /* JADX INFO: renamed from: o */
    private ColorStateList f567o = null;

    /* JADX INFO: renamed from: p */
    private PorterDuff.Mode f568p = null;

    /* JADX INFO: renamed from: q */
    private boolean f569q = false;

    /* JADX INFO: renamed from: r */
    private boolean f570r = false;

    /* JADX INFO: renamed from: s */
    private int f571s = 16;

    public C0095a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f564l = context;
        this.f553a = i2;
        this.f554b = i;
        this.f555c = i4;
        this.f556d = charSequence;
    }

    /* JADX INFO: renamed from: c */
    private void m660c() {
        if (this.f563k != null) {
            if (this.f569q || this.f570r) {
                Drawable drawableM1797r = C0251a.m1797r(this.f563k);
                this.f563k = drawableM1797r;
                Drawable drawableMutate = drawableM1797r.mutate();
                this.f563k = drawableMutate;
                if (this.f569q) {
                    C0251a.m1794o(drawableMutate, this.f567o);
                }
                if (this.f570r) {
                    C0251a.m1795p(this.f563k, this.f568p);
                }
            }
        }
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b
    /* JADX INFO: renamed from: a */
    public InterfaceMenuItemC0600b mo661a(AbstractC0260b abstractC0260b) {
        throw new UnsupportedOperationException();
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b
    /* JADX INFO: renamed from: b */
    public AbstractC0260b mo662b() {
        return null;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    /* JADX INFO: renamed from: d */
    public InterfaceMenuItemC0600b m663d(int i) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: renamed from: e */
    public InterfaceMenuItemC0600b m664e(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    /* JADX INFO: renamed from: f */
    public InterfaceMenuItemC0600b m665f(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f562j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f561i;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f565m;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f554b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f563k;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f567o;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f568p;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f558f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f553a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f560h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f559g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f555c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f556d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f557e;
        return charSequence != null ? charSequence : this.f556d;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f566n;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f571s & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f571s & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f571s & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f571s & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(int i) {
        m663d(i);
        throw null;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        this.f561i = Character.toLowerCase(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f571s = (z ? 1 : 0) | (this.f571s & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f571s = (z ? 2 : 0) | (this.f571s & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f571s = (z ? 16 : 0) | (this.f571s & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f563k = drawable;
        m660c();
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f567o = colorStateList;
        this.f569q = true;
        m660c();
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f568p = mode;
        this.f570r = true;
        m660c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f558f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        this.f559g = c2;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.f559g = c2;
        this.f561i = Character.toLowerCase(c3);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        m665f(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f556d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f557e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.f571s = (this.f571s & 8) | (z ? 0 : 8);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        m664e(view);
        throw null;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i) {
        this.f561i = Character.toLowerCase(c2);
        this.f562j = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public InterfaceMenuItemC0600b setContentDescription(CharSequence charSequence) {
        this.f565m = charSequence;
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i) {
        this.f559g = c2;
        this.f560h = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f556d = this.f564l.getResources().getString(i);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public InterfaceMenuItemC0600b setTooltipText(CharSequence charSequence) {
        this.f566n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f563k = C0242a.m1699d(this.f564l, i);
        m660c();
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.f559g = c2;
        this.f560h = KeyEvent.normalizeMetaState(i);
        this.f561i = Character.toLowerCase(c3);
        this.f562j = KeyEvent.normalizeMetaState(i2);
        return this;
    }
}
