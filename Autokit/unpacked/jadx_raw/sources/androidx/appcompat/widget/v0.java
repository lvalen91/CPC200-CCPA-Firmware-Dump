package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class v0 implements b0 {
    Toolbar a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f409c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f410d;
    private Drawable e;
    private Drawable f;
    private Drawable g;
    private boolean h;
    CharSequence i;
    private CharSequence j;
    private CharSequence k;
    Window.Callback l;
    boolean m;
    private c n;
    private int o;
    private int p;
    private Drawable q;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final androidx.appcompat.view.menu.a f411b;

        a() {
            this.f411b = new androidx.appcompat.view.menu.a(v0.this.a.getContext(), 0, R.id.home, 0, 0, v0.this.i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v0 v0Var = v0.this;
            Window.Callback callback = v0Var.l;
            if (callback == null || !v0Var.m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f411b);
        }
    }

    class b extends androidx.core.view.b0 {
        private boolean a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f413b;

        b(int i) {
            this.f413b = i;
        }

        @Override // androidx.core.view.a0
        public void a(View view) {
            if (this.a) {
                return;
            }
            v0.this.a.setVisibility(this.f413b);
        }

        @Override // androidx.core.view.b0, androidx.core.view.a0
        public void b(View view) {
            v0.this.a.setVisibility(0);
        }

        @Override // androidx.core.view.b0, androidx.core.view.a0
        public void c(View view) {
            this.a = true;
        }
    }

    public v0(Toolbar toolbar, boolean z) {
        this(toolbar, z, c.a.h.abc_action_bar_up_description, c.a.e.abc_ic_ab_back_material);
    }

    private void H(CharSequence charSequence) {
        this.i = charSequence;
        if ((this.f408b & 8) != 0) {
            this.a.setTitle(charSequence);
        }
    }

    private void I() {
        if ((this.f408b & 4) != 0) {
            if (TextUtils.isEmpty(this.k)) {
                this.a.setNavigationContentDescription(this.p);
            } else {
                this.a.setNavigationContentDescription(this.k);
            }
        }
    }

    private void J() {
        if ((this.f408b & 4) == 0) {
            this.a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.a;
        Drawable drawable = this.g;
        if (drawable == null) {
            drawable = this.q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    private void K() {
        Drawable drawable;
        int i = this.f408b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) == 0 || (drawable = this.f) == null) {
            drawable = this.e;
        }
        this.a.setLogo(drawable);
    }

    private int y() {
        if (this.a.getNavigationIcon() == null) {
            return 11;
        }
        this.q = this.a.getNavigationIcon();
        return 15;
    }

    public void A(int i) {
        if (i == this.p) {
            return;
        }
        this.p = i;
        if (TextUtils.isEmpty(this.a.getNavigationContentDescription())) {
            C(this.p);
        }
    }

    public void B(Drawable drawable) {
        this.f = drawable;
        K();
    }

    public void C(int i) {
        D(i == 0 ? null : q().getString(i));
    }

    public void D(CharSequence charSequence) {
        this.k = charSequence;
        I();
    }

    public void E(Drawable drawable) {
        this.g = drawable;
        J();
    }

    public void F(CharSequence charSequence) {
        this.j = charSequence;
        if ((this.f408b & 8) != 0) {
            this.a.setSubtitle(charSequence);
        }
    }

    public void G(CharSequence charSequence) {
        this.h = true;
        H(charSequence);
    }

    @Override // androidx.appcompat.widget.b0
    public void a(Menu menu, m.a aVar) {
        if (this.n == null) {
            c cVar = new c(this.a.getContext());
            this.n = cVar;
            cVar.p(c.a.f.action_menu_presenter);
        }
        this.n.h(aVar);
        this.a.I((androidx.appcompat.view.menu.g) menu, this.n);
    }

    @Override // androidx.appcompat.widget.b0
    public boolean b() {
        return this.a.z();
    }

    @Override // androidx.appcompat.widget.b0
    public boolean c() {
        return this.a.A();
    }

    @Override // androidx.appcompat.widget.b0
    public void collapseActionView() {
        this.a.e();
    }

    @Override // androidx.appcompat.widget.b0
    public boolean d() {
        return this.a.w();
    }

    @Override // androidx.appcompat.widget.b0
    public boolean e() {
        return this.a.O();
    }

    @Override // androidx.appcompat.widget.b0
    public void f() {
        this.m = true;
    }

    @Override // androidx.appcompat.widget.b0
    public boolean g() {
        return this.a.d();
    }

    @Override // androidx.appcompat.widget.b0
    public CharSequence getTitle() {
        return this.a.getTitle();
    }

    @Override // androidx.appcompat.widget.b0
    public void h() {
        this.a.f();
    }

    @Override // androidx.appcompat.widget.b0
    public void i(m.a aVar, g.a aVar2) {
        this.a.J(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.b0
    public int j() {
        return this.f408b;
    }

    @Override // androidx.appcompat.widget.b0
    public void k(int i) {
        this.a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.b0
    public Menu l() {
        return this.a.getMenu();
    }

    @Override // androidx.appcompat.widget.b0
    public void m(int i) {
        B(i != 0 ? c.a.k.a.a.d(q(), i) : null);
    }

    @Override // androidx.appcompat.widget.b0
    public void n(n0 n0Var) {
        View view = this.f409c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.a;
            if (parent == toolbar) {
                toolbar.removeView(this.f409c);
            }
        }
        this.f409c = n0Var;
        if (n0Var == null || this.o != 2) {
            return;
        }
        this.a.addView(n0Var, 0);
        Toolbar.e eVar = (Toolbar.e) this.f409c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) eVar).width = -2;
        ((ViewGroup.MarginLayoutParams) eVar).height = -2;
        eVar.a = 8388691;
        n0Var.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.b0
    public ViewGroup o() {
        return this.a;
    }

    @Override // androidx.appcompat.widget.b0
    public void p(boolean z) {
    }

    @Override // androidx.appcompat.widget.b0
    public Context q() {
        return this.a.getContext();
    }

    @Override // androidx.appcompat.widget.b0
    public int r() {
        return this.o;
    }

    @Override // androidx.appcompat.widget.b0
    public androidx.core.view.z s(int i, long j) {
        androidx.core.view.z zVarD = androidx.core.view.v.d(this.a);
        zVarD.a(i == 0 ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
        zVarD.d(j);
        zVarD.f(new b(i));
        return zVarD;
    }

    @Override // androidx.appcompat.widget.b0
    public void setIcon(int i) {
        setIcon(i != 0 ? c.a.k.a.a.d(q(), i) : null);
    }

    @Override // androidx.appcompat.widget.b0
    public void setWindowCallback(Window.Callback callback) {
        this.l = callback;
    }

    @Override // androidx.appcompat.widget.b0
    public void setWindowTitle(CharSequence charSequence) {
        if (this.h) {
            return;
        }
        H(charSequence);
    }

    @Override // androidx.appcompat.widget.b0
    public void t() {
    }

    @Override // androidx.appcompat.widget.b0
    public boolean u() {
        return this.a.v();
    }

    @Override // androidx.appcompat.widget.b0
    public void v() {
    }

    @Override // androidx.appcompat.widget.b0
    public void w(boolean z) {
        this.a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.b0
    public void x(int i) {
        View view;
        int i2 = this.f408b ^ i;
        this.f408b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    I();
                }
                J();
            }
            if ((i2 & 3) != 0) {
                K();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.a.setTitle(this.i);
                    this.a.setSubtitle(this.j);
                } else {
                    this.a.setTitle((CharSequence) null);
                    this.a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f410d) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.a.addView(view);
            } else {
                this.a.removeView(view);
            }
        }
    }

    public void z(View view) {
        View view2 = this.f410d;
        if (view2 != null && (this.f408b & 16) != 0) {
            this.a.removeView(view2);
        }
        this.f410d = view;
        if (view == null || (this.f408b & 16) == 0) {
            return;
        }
        this.a.addView(view);
    }

    public v0(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.o = 0;
        this.p = 0;
        this.a = toolbar;
        this.i = toolbar.getTitle();
        this.j = toolbar.getSubtitle();
        this.h = this.i != null;
        this.g = toolbar.getNavigationIcon();
        u0 u0VarV = u0.v(toolbar.getContext(), null, c.a.j.ActionBar, c.a.a.actionBarStyle, 0);
        this.q = u0VarV.g(c.a.j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence charSequenceP = u0VarV.p(c.a.j.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceP)) {
                G(charSequenceP);
            }
            CharSequence charSequenceP2 = u0VarV.p(c.a.j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceP2)) {
                F(charSequenceP2);
            }
            Drawable drawableG = u0VarV.g(c.a.j.ActionBar_logo);
            if (drawableG != null) {
                B(drawableG);
            }
            Drawable drawableG2 = u0VarV.g(c.a.j.ActionBar_icon);
            if (drawableG2 != null) {
                setIcon(drawableG2);
            }
            if (this.g == null && (drawable = this.q) != null) {
                E(drawable);
            }
            x(u0VarV.k(c.a.j.ActionBar_displayOptions, 0));
            int iN = u0VarV.n(c.a.j.ActionBar_customNavigationLayout, 0);
            if (iN != 0) {
                z(LayoutInflater.from(this.a.getContext()).inflate(iN, (ViewGroup) this.a, false));
                x(this.f408b | 16);
            }
            int iM = u0VarV.m(c.a.j.ActionBar_height, 0);
            if (iM > 0) {
                ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
                layoutParams.height = iM;
                this.a.setLayoutParams(layoutParams);
            }
            int iE = u0VarV.e(c.a.j.ActionBar_contentInsetStart, -1);
            int iE2 = u0VarV.e(c.a.j.ActionBar_contentInsetEnd, -1);
            if (iE >= 0 || iE2 >= 0) {
                this.a.H(Math.max(iE, 0), Math.max(iE2, 0));
            }
            int iN2 = u0VarV.n(c.a.j.ActionBar_titleTextStyle, 0);
            if (iN2 != 0) {
                Toolbar toolbar2 = this.a;
                toolbar2.L(toolbar2.getContext(), iN2);
            }
            int iN3 = u0VarV.n(c.a.j.ActionBar_subtitleTextStyle, 0);
            if (iN3 != 0) {
                Toolbar toolbar3 = this.a;
                toolbar3.K(toolbar3.getContext(), iN3);
            }
            int iN4 = u0VarV.n(c.a.j.ActionBar_popupTheme, 0);
            if (iN4 != 0) {
                this.a.setPopupTheme(iN4);
            }
        } else {
            this.f408b = y();
        }
        u0VarV.w();
        A(i);
        this.k = this.a.getNavigationContentDescription();
        this.a.setNavigationOnClickListener(new a());
    }

    @Override // androidx.appcompat.widget.b0
    public void setIcon(Drawable drawable) {
        this.e = drawable;
        K();
    }
}
