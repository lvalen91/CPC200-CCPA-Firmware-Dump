package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.InterfaceC0108n;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.AbstractC0260b;
import com.yalantis.ucrop.BuildConfig;
import p016c.p017a.C0500h;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0103i implements InterfaceMenuItemC0600b {

    /* JADX INFO: renamed from: A */
    private View f668A;

    /* JADX INFO: renamed from: B */
    private AbstractC0260b f669B;

    /* JADX INFO: renamed from: C */
    private MenuItem.OnActionExpandListener f670C;

    /* JADX INFO: renamed from: E */
    private ContextMenu.ContextMenuInfo f672E;

    /* JADX INFO: renamed from: a */
    private final int f673a;

    /* JADX INFO: renamed from: b */
    private final int f674b;

    /* JADX INFO: renamed from: c */
    private final int f675c;

    /* JADX INFO: renamed from: d */
    private final int f676d;

    /* JADX INFO: renamed from: e */
    private CharSequence f677e;

    /* JADX INFO: renamed from: f */
    private CharSequence f678f;

    /* JADX INFO: renamed from: g */
    private Intent f679g;

    /* JADX INFO: renamed from: h */
    private char f680h;

    /* JADX INFO: renamed from: j */
    private char f682j;

    /* JADX INFO: renamed from: l */
    private Drawable f684l;

    /* JADX INFO: renamed from: n */
    C0101g f686n;

    /* JADX INFO: renamed from: o */
    private SubMenuC0112r f687o;

    /* JADX INFO: renamed from: p */
    private Runnable f688p;

    /* JADX INFO: renamed from: q */
    private MenuItem.OnMenuItemClickListener f689q;

    /* JADX INFO: renamed from: r */
    private CharSequence f690r;

    /* JADX INFO: renamed from: s */
    private CharSequence f691s;

    /* JADX INFO: renamed from: z */
    private int f698z;

    /* JADX INFO: renamed from: i */
    private int f681i = 4096;

    /* JADX INFO: renamed from: k */
    private int f683k = 4096;

    /* JADX INFO: renamed from: m */
    private int f685m = 0;

    /* JADX INFO: renamed from: t */
    private ColorStateList f692t = null;

    /* JADX INFO: renamed from: u */
    private PorterDuff.Mode f693u = null;

    /* JADX INFO: renamed from: v */
    private boolean f694v = false;

    /* JADX INFO: renamed from: w */
    private boolean f695w = false;

    /* JADX INFO: renamed from: x */
    private boolean f696x = false;

    /* JADX INFO: renamed from: y */
    private int f697y = 16;

    /* JADX INFO: renamed from: D */
    private boolean f671D = false;

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.i$a */
    class a implements AbstractC0260b.b {
        a() {
        }

        @Override // androidx.core.view.AbstractC0260b.b
        public void onActionProviderVisibilityChanged(boolean z) {
            C0103i c0103i = C0103i.this;
            c0103i.f686n.m734J(c0103i);
        }
    }

    C0103i(C0101g c0101g, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f698z = 0;
        this.f686n = c0101g;
        this.f673a = i2;
        this.f674b = i;
        this.f675c = i3;
        this.f676d = i4;
        this.f677e = charSequence;
        this.f698z = i5;
    }

    /* JADX INFO: renamed from: d */
    private static void m776d(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    /* JADX INFO: renamed from: e */
    private Drawable m777e(Drawable drawable) {
        if (drawable != null && this.f696x && (this.f694v || this.f695w)) {
            drawable = C0251a.m1797r(drawable).mutate();
            if (this.f694v) {
                C0251a.m1794o(drawable, this.f692t);
            }
            if (this.f695w) {
                C0251a.m1795p(drawable, this.f693u);
            }
            this.f696x = false;
        }
        return drawable;
    }

    /* JADX INFO: renamed from: A */
    boolean m778A() {
        return this.f686n.mo732H() && m782g() != 0;
    }

    /* JADX INFO: renamed from: B */
    public boolean m779B() {
        return (this.f698z & 4) == 4;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b
    /* JADX INFO: renamed from: a */
    public InterfaceMenuItemC0600b mo661a(AbstractC0260b abstractC0260b) {
        AbstractC0260b abstractC0260b2 = this.f669B;
        if (abstractC0260b2 != null) {
            abstractC0260b2.m1819h();
        }
        this.f668A = null;
        this.f669B = abstractC0260b;
        this.f686n.m735K(true);
        AbstractC0260b abstractC0260b3 = this.f669B;
        if (abstractC0260b3 != null) {
            abstractC0260b3.mo810j(new a());
        }
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b
    /* JADX INFO: renamed from: b */
    public AbstractC0260b mo662b() {
        return this.f669B;
    }

    /* JADX INFO: renamed from: c */
    public void m780c() {
        this.f686n.m733I(this);
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f698z & 8) == 0) {
            return false;
        }
        if (this.f668A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f670C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f686n.mo757f(this);
        }
        return false;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public boolean expandActionView() {
        if (!m785j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f670C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f686n.mo759k(this);
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public int m781f() {
        return this.f676d;
    }

    /* JADX INFO: renamed from: g */
    char m782g() {
        return this.f686n.mo731G() ? this.f682j : this.f680h;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public View getActionView() {
        View view = this.f668A;
        if (view != null) {
            return view;
        }
        AbstractC0260b abstractC0260b = this.f669B;
        if (abstractC0260b == null) {
            return null;
        }
        View viewMo808d = abstractC0260b.mo808d(this);
        this.f668A = viewMo808d;
        return viewMo808d;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f683k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f682j;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f690r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f674b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f684l;
        if (drawable != null) {
            return m777e(drawable);
        }
        if (this.f685m == 0) {
            return null;
        }
        Drawable drawableM4047d = C0503a.m4047d(this.f686n.m768u(), this.f685m);
        this.f685m = 0;
        this.f684l = drawableM4047d;
        return m777e(drawableM4047d);
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f692t;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f693u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f679g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f673a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f672E;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f681i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f680h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f675c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f687o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f677e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f678f;
        if (charSequence == null) {
            charSequence = this.f677e;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f691s;
    }

    /* JADX INFO: renamed from: h */
    String m783h() {
        char cM782g = m782g();
        if (cM782g == 0) {
            return BuildConfig.FLAVOR;
        }
        Resources resources = this.f686n.m768u().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f686n.m768u()).hasPermanentMenuKey()) {
            sb.append(resources.getString(C0500h.abc_prepend_shortcut_label));
        }
        int i = this.f686n.mo731G() ? this.f683k : this.f681i;
        m776d(sb, i, 65536, resources.getString(C0500h.abc_menu_meta_shortcut_label));
        m776d(sb, i, 4096, resources.getString(C0500h.abc_menu_ctrl_shortcut_label));
        m776d(sb, i, 2, resources.getString(C0500h.abc_menu_alt_shortcut_label));
        m776d(sb, i, 1, resources.getString(C0500h.abc_menu_shift_shortcut_label));
        m776d(sb, i, 4, resources.getString(C0500h.abc_menu_sym_shortcut_label));
        m776d(sb, i, 8, resources.getString(C0500h.abc_menu_function_shortcut_label));
        if (cM782g == '\b') {
            sb.append(resources.getString(C0500h.abc_menu_delete_shortcut_label));
        } else if (cM782g == '\n') {
            sb.append(resources.getString(C0500h.abc_menu_enter_shortcut_label));
        } else if (cM782g != ' ') {
            sb.append(cM782g);
        } else {
            sb.append(resources.getString(C0500h.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f687o != null;
    }

    /* JADX INFO: renamed from: i */
    CharSequence m784i(InterfaceC0108n.a aVar) {
        return (aVar == null || !aVar.mo646e()) ? getTitle() : getTitleCondensed();
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f671D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f697y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f697y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f697y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        AbstractC0260b abstractC0260b = this.f669B;
        return (abstractC0260b == null || !abstractC0260b.mo809g()) ? (this.f697y & 8) == 0 : (this.f697y & 8) == 0 && this.f669B.mo807b();
    }

    /* JADX INFO: renamed from: j */
    public boolean m785j() {
        AbstractC0260b abstractC0260b;
        if ((this.f698z & 8) == 0) {
            return false;
        }
        if (this.f668A == null && (abstractC0260b = this.f669B) != null) {
            this.f668A = abstractC0260b.mo808d(this);
        }
        return this.f668A != null;
    }

    /* JADX INFO: renamed from: k */
    public boolean m786k() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f689q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        C0101g c0101g = this.f686n;
        if (c0101g.mo758h(c0101g, this)) {
            return true;
        }
        Runnable runnable = this.f688p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f679g != null) {
            try {
                this.f686n.m768u().startActivity(this.f679g);
                return true;
            } catch (ActivityNotFoundException unused) {
            }
        }
        AbstractC0260b abstractC0260b = this.f669B;
        return abstractC0260b != null && abstractC0260b.mo805e();
    }

    /* JADX INFO: renamed from: l */
    public boolean m787l() {
        return (this.f697y & 32) == 32;
    }

    /* JADX INFO: renamed from: m */
    public boolean m788m() {
        return (this.f697y & 4) != 0;
    }

    /* JADX INFO: renamed from: n */
    public boolean m789n() {
        return (this.f698z & 1) == 1;
    }

    /* JADX INFO: renamed from: o */
    public boolean m790o() {
        return (this.f698z & 2) == 2;
    }

    /* JADX INFO: renamed from: p */
    public InterfaceMenuItemC0600b m791p(int i) {
        Context contextM768u = this.f686n.m768u();
        m792q(LayoutInflater.from(contextM768u).inflate(i, (ViewGroup) new LinearLayout(contextM768u), false));
        return this;
    }

    /* JADX INFO: renamed from: q */
    public InterfaceMenuItemC0600b m792q(View view) {
        int i;
        this.f668A = view;
        this.f669B = null;
        if (view != null && view.getId() == -1 && (i = this.f673a) > 0) {
            view.setId(i);
        }
        this.f686n.m733I(this);
        return this;
    }

    /* JADX INFO: renamed from: r */
    public void m793r(boolean z) {
        this.f671D = z;
        this.f686n.m735K(false);
    }

    /* JADX INFO: renamed from: s */
    void m794s(boolean z) {
        int i = this.f697y;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.f697y = i2;
        if (i != i2) {
            this.f686n.m735K(false);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(int i) {
        m791p(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        if (this.f682j == c2) {
            return this;
        }
        this.f682j = Character.toLowerCase(c2);
        this.f686n.m735K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f697y;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f697y = i2;
        if (i != i2) {
            this.f686n.m735K(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f697y & 4) != 0) {
            this.f686n.m743T(this);
        } else {
            m794s(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f697y |= 16;
        } else {
            this.f697y &= -17;
        }
        this.f686n.m735K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f685m = 0;
        this.f684l = drawable;
        this.f696x = true;
        this.f686n.m735K(false);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f692t = colorStateList;
        this.f694v = true;
        this.f696x = true;
        this.f686n.m735K(false);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f693u = mode;
        this.f695w = true;
        this.f696x = true;
        this.f686n.m735K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f679g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        if (this.f680h == c2) {
            return this;
        }
        this.f680h = c2;
        this.f686n.m735K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f670C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f689q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        this.f680h = c2;
        this.f682j = Character.toLowerCase(c3);
        this.f686n.m735K(false);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f698z = i;
        this.f686n.m733I(this);
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setShowAsActionFlags(int i) {
        m798w(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f677e = charSequence;
        this.f686n.m735K(false);
        SubMenuC0112r subMenuC0112r = this.f687o;
        if (subMenuC0112r != null) {
            subMenuC0112r.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f678f = charSequence;
        this.f686n.m735K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m800y(z)) {
            this.f686n.m734J(this);
        }
        return this;
    }

    /* JADX INFO: renamed from: t */
    public void m795t(boolean z) {
        this.f697y = (z ? 4 : 0) | (this.f697y & (-5));
    }

    public String toString() {
        CharSequence charSequence = this.f677e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    /* JADX INFO: renamed from: u */
    public void m796u(boolean z) {
        if (z) {
            this.f697y |= 32;
        } else {
            this.f697y &= -33;
        }
    }

    /* JADX INFO: renamed from: v */
    void m797v(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f672E = contextMenuInfo;
    }

    /* JADX INFO: renamed from: w */
    public InterfaceMenuItemC0600b m798w(int i) {
        setShowAsAction(i);
        return this;
    }

    /* JADX INFO: renamed from: x */
    public void m799x(SubMenuC0112r subMenuC0112r) {
        this.f687o = subMenuC0112r;
        subMenuC0112r.setHeaderTitle(getTitle());
    }

    /* JADX INFO: renamed from: y */
    boolean m800y(boolean z) {
        int i = this.f697y;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f697y = i2;
        return i != i2;
    }

    /* JADX INFO: renamed from: z */
    public boolean m801z() {
        return this.f686n.m726A();
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public /* bridge */ /* synthetic */ MenuItem setActionView(View view) {
        m792q(view);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public InterfaceMenuItemC0600b setContentDescription(CharSequence charSequence) {
        this.f690r = charSequence;
        this.f686n.m735K(false);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public InterfaceMenuItemC0600b setTooltipText(CharSequence charSequence) {
        this.f691s = charSequence;
        this.f686n.m735K(false);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2, int i) {
        if (this.f682j == c2 && this.f683k == i) {
            return this;
        }
        this.f682j = Character.toLowerCase(c2);
        this.f683k = KeyEvent.normalizeMetaState(i);
        this.f686n.m735K(false);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c2, int i) {
        if (this.f680h == c2 && this.f681i == i) {
            return this;
        }
        this.f680h = c2;
        this.f681i = KeyEvent.normalizeMetaState(i);
        this.f686n.m735K(false);
        return this;
    }

    @Override // p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b, android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.f680h = c2;
        this.f681i = KeyEvent.normalizeMetaState(i);
        this.f682j = Character.toLowerCase(c3);
        this.f683k = KeyEvent.normalizeMetaState(i2);
        this.f686n.m735K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f684l = null;
        this.f685m = i;
        this.f696x = true;
        this.f686n.m735K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        setTitle(this.f686n.m768u().getString(i));
        return this;
    }
}
