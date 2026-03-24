package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.b0;
import androidx.appcompat.widget.n0;
import androidx.core.view.a0;
import androidx.core.view.c0;
import androidx.core.view.v;
import androidx.core.view.z;
import c.a.o.b;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class o extends androidx.appcompat.app.a implements ActionBarOverlayLayout.d {
    private static final Interpolator B = new AccelerateInterpolator();
    private static final Interpolator C = new DecelerateInterpolator();
    final c0 A;
    Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ActionBarOverlayLayout f173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ActionBarContainer f174d;
    b0 e;
    ActionBarContextView f;
    View g;
    n0 h;
    private boolean i;
    d j;
    c.a.o.b k;
    b.a l;
    private boolean m;
    private ArrayList<a.b> n;
    private boolean o;
    private int p;
    boolean q;
    boolean r;
    boolean s;
    private boolean t;
    private boolean u;
    c.a.o.h v;
    private boolean w;
    boolean x;
    final a0 y;
    final a0 z;

    class a extends androidx.core.view.b0 {
        a() {
        }

        @Override // androidx.core.view.a0
        public void a(View view) {
            View view2;
            o oVar = o.this;
            if (oVar.q && (view2 = oVar.g) != null) {
                view2.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
                o.this.f174d.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            }
            o.this.f174d.setVisibility(8);
            o.this.f174d.setTransitioning(false);
            o oVar2 = o.this;
            oVar2.v = null;
            oVar2.z();
            ActionBarOverlayLayout actionBarOverlayLayout = o.this.f173c;
            if (actionBarOverlayLayout != null) {
                v.l0(actionBarOverlayLayout);
            }
        }
    }

    class b extends androidx.core.view.b0 {
        b() {
        }

        @Override // androidx.core.view.a0
        public void a(View view) {
            o oVar = o.this;
            oVar.v = null;
            oVar.f174d.requestLayout();
        }
    }

    class c implements c0 {
        c() {
        }

        @Override // androidx.core.view.c0
        public void a(View view) {
            ((View) o.this.f174d.getParent()).invalidate();
        }
    }

    public class d extends c.a.o.b implements g.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Context f175d;
        private final androidx.appcompat.view.menu.g e;
        private b.a f;
        private WeakReference<View> g;

        public d(Context context, b.a aVar) {
            this.f175d = context;
            this.f = aVar;
            androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
            gVar.S(1);
            this.e = gVar;
            gVar.R(this);
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            b.a aVar = this.f;
            if (aVar != null) {
                return aVar.b(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(androidx.appcompat.view.menu.g gVar) {
            if (this.f == null) {
                return;
            }
            k();
            o.this.f.l();
        }

        @Override // c.a.o.b
        public void c() {
            o oVar = o.this;
            if (oVar.j != this) {
                return;
            }
            if (o.y(oVar.r, oVar.s, false)) {
                this.f.d(this);
            } else {
                o oVar2 = o.this;
                oVar2.k = this;
                oVar2.l = this.f;
            }
            this.f = null;
            o.this.x(false);
            o.this.f.g();
            o.this.e.o().sendAccessibilityEvent(32);
            o oVar3 = o.this;
            oVar3.f173c.setHideOnContentScrollEnabled(oVar3.x);
            o.this.j = null;
        }

        @Override // c.a.o.b
        public View d() {
            WeakReference<View> weakReference = this.g;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // c.a.o.b
        public Menu e() {
            return this.e;
        }

        @Override // c.a.o.b
        public MenuInflater f() {
            return new c.a.o.g(this.f175d);
        }

        @Override // c.a.o.b
        public CharSequence g() {
            return o.this.f.getSubtitle();
        }

        @Override // c.a.o.b
        public CharSequence i() {
            return o.this.f.getTitle();
        }

        @Override // c.a.o.b
        public void k() {
            if (o.this.j != this) {
                return;
            }
            this.e.d0();
            try {
                this.f.a(this, this.e);
            } finally {
                this.e.c0();
            }
        }

        @Override // c.a.o.b
        public boolean l() {
            return o.this.f.j();
        }

        @Override // c.a.o.b
        public void m(View view) {
            o.this.f.setCustomView(view);
            this.g = new WeakReference<>(view);
        }

        @Override // c.a.o.b
        public void n(int i) {
            o(o.this.a.getResources().getString(i));
        }

        @Override // c.a.o.b
        public void o(CharSequence charSequence) {
            o.this.f.setSubtitle(charSequence);
        }

        @Override // c.a.o.b
        public void q(int i) {
            r(o.this.a.getResources().getString(i));
        }

        @Override // c.a.o.b
        public void r(CharSequence charSequence) {
            o.this.f.setTitle(charSequence);
        }

        @Override // c.a.o.b
        public void s(boolean z) {
            super.s(z);
            o.this.f.setTitleOptional(z);
        }

        public boolean t() {
            this.e.d0();
            try {
                return this.f.c(this, this.e);
            } finally {
                this.e.c0();
            }
        }
    }

    public o(Activity activity, boolean z) {
        new ArrayList();
        this.n = new ArrayList<>();
        this.p = 0;
        this.q = true;
        this.u = true;
        this.y = new a();
        this.z = new b();
        this.A = new c();
        View decorView = activity.getWindow().getDecorView();
        F(decorView);
        if (z) {
            return;
        }
        this.g = decorView.findViewById(R.id.content);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private b0 C(View view) {
        if (view instanceof b0) {
            return (b0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    private void E() {
        if (this.t) {
            this.t = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f173c;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            O(false);
        }
    }

    private void F(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(c.a.f.decor_content_parent);
        this.f173c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.e = C(view.findViewById(c.a.f.action_bar));
        this.f = (ActionBarContextView) view.findViewById(c.a.f.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(c.a.f.action_bar_container);
        this.f174d = actionBarContainer;
        b0 b0Var = this.e;
        if (b0Var == null || this.f == null || actionBarContainer == null) {
            throw new IllegalStateException(o.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.a = b0Var.q();
        boolean z = (this.e.j() & 4) != 0;
        if (z) {
            this.i = true;
        }
        c.a.o.a aVarB = c.a.o.a.b(this.a);
        L(aVarB.a() || z);
        J(aVarB.g());
        TypedArray typedArrayObtainStyledAttributes = this.a.obtainStyledAttributes(null, c.a.j.ActionBar, c.a.a.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(c.a.j.ActionBar_hideOnContentScroll, false)) {
            K(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(c.a.j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            I(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void J(boolean z) {
        this.o = z;
        if (z) {
            this.f174d.setTabContainer(null);
            this.e.n(this.h);
        } else {
            this.e.n(null);
            this.f174d.setTabContainer(this.h);
        }
        boolean z2 = D() == 2;
        n0 n0Var = this.h;
        if (n0Var != null) {
            if (z2) {
                n0Var.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f173c;
                if (actionBarOverlayLayout != null) {
                    v.l0(actionBarOverlayLayout);
                }
            } else {
                n0Var.setVisibility(8);
            }
        }
        this.e.w(!this.o && z2);
        this.f173c.setHasNonEmbeddedTabs(!this.o && z2);
    }

    private boolean M() {
        return v.T(this.f174d);
    }

    private void N() {
        if (this.t) {
            return;
        }
        this.t = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f173c;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        O(false);
    }

    private void O(boolean z) {
        if (y(this.r, this.s, this.t)) {
            if (this.u) {
                return;
            }
            this.u = true;
            B(z);
            return;
        }
        if (this.u) {
            this.u = false;
            A(z);
        }
    }

    static boolean y(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    public void A(boolean z) {
        View view;
        c.a.o.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
        }
        if (this.p != 0 || (!this.w && !z)) {
            this.y.a(null);
            return;
        }
        this.f174d.setAlpha(1.0f);
        this.f174d.setTransitioning(true);
        c.a.o.h hVar2 = new c.a.o.h();
        float f = -this.f174d.getHeight();
        if (z) {
            this.f174d.getLocationInWindow(new int[]{0, 0});
            f -= r5[1];
        }
        z zVarD = v.d(this.f174d);
        zVarD.k(f);
        zVarD.i(this.A);
        hVar2.c(zVarD);
        if (this.q && (view = this.g) != null) {
            z zVarD2 = v.d(view);
            zVarD2.k(f);
            hVar2.c(zVarD2);
        }
        hVar2.f(B);
        hVar2.e(250L);
        hVar2.g(this.y);
        this.v = hVar2;
        hVar2.h();
    }

    public void B(boolean z) {
        View view;
        View view2;
        c.a.o.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
        }
        this.f174d.setVisibility(0);
        if (this.p == 0 && (this.w || z)) {
            this.f174d.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            float f = -this.f174d.getHeight();
            if (z) {
                this.f174d.getLocationInWindow(new int[]{0, 0});
                f -= r5[1];
            }
            this.f174d.setTranslationY(f);
            c.a.o.h hVar2 = new c.a.o.h();
            z zVarD = v.d(this.f174d);
            zVarD.k(CropImageView.DEFAULT_ASPECT_RATIO);
            zVarD.i(this.A);
            hVar2.c(zVarD);
            if (this.q && (view2 = this.g) != null) {
                view2.setTranslationY(f);
                z zVarD2 = v.d(this.g);
                zVarD2.k(CropImageView.DEFAULT_ASPECT_RATIO);
                hVar2.c(zVarD2);
            }
            hVar2.f(C);
            hVar2.e(250L);
            hVar2.g(this.z);
            this.v = hVar2;
            hVar2.h();
        } else {
            this.f174d.setAlpha(1.0f);
            this.f174d.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            if (this.q && (view = this.g) != null) {
                view.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            }
            this.z.a(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f173c;
        if (actionBarOverlayLayout != null) {
            v.l0(actionBarOverlayLayout);
        }
    }

    public int D() {
        return this.e.r();
    }

    public void G(boolean z) {
        H(z ? 4 : 0, 4);
    }

    public void H(int i, int i2) {
        int iJ = this.e.j();
        if ((i2 & 4) != 0) {
            this.i = true;
        }
        this.e.x((i & i2) | ((i2 ^ (-1)) & iJ));
    }

    public void I(float f) {
        v.v0(this.f174d, f);
    }

    public void K(boolean z) {
        if (z && !this.f173c.w()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.x = z;
        this.f173c.setHideOnContentScrollEnabled(z);
    }

    public void L(boolean z) {
        this.e.p(z);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a(boolean z) {
        this.q = z;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void b() {
        if (this.s) {
            this.s = false;
            O(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void c() {
        c.a.o.h hVar = this.v;
        if (hVar != null) {
            hVar.a();
            this.v = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void d(int i) {
        this.p = i;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void e() {
        if (this.s) {
            return;
        }
        this.s = true;
        O(true);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void f() {
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        b0 b0Var = this.e;
        if (b0Var == null || !b0Var.u()) {
            return false;
        }
        this.e.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z) {
        if (z == this.m) {
            return;
        }
        this.m = z;
        int size = this.n.size();
        for (int i = 0; i < size; i++) {
            this.n.get(i).a(z);
        }
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.e.j();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        if (this.f172b == null) {
            TypedValue typedValue = new TypedValue();
            this.a.getTheme().resolveAttribute(c.a.a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f172b = new ContextThemeWrapper(this.a, i);
            } else {
                this.f172b = this.a;
            }
        }
        return this.f172b;
    }

    @Override // androidx.appcompat.app.a
    public void l() {
        if (this.r) {
            return;
        }
        this.r = true;
        O(false);
    }

    @Override // androidx.appcompat.app.a
    public void n(Configuration configuration) {
        J(c.a.o.a.b(this.a).g());
    }

    @Override // androidx.appcompat.app.a
    public boolean p(int i, KeyEvent keyEvent) {
        Menu menuE;
        d dVar = this.j;
        if (dVar == null || (menuE = dVar.e()) == null) {
            return false;
        }
        menuE.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuE.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z) {
        if (this.i) {
            return;
        }
        G(z);
    }

    @Override // androidx.appcompat.app.a
    public void t(boolean z) {
        H(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.a
    public void u(boolean z) {
        c.a.o.h hVar;
        this.w = z;
        if (z || (hVar = this.v) == null) {
            return;
        }
        hVar.a();
    }

    @Override // androidx.appcompat.app.a
    public void v(CharSequence charSequence) {
        this.e.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public c.a.o.b w(b.a aVar) {
        d dVar = this.j;
        if (dVar != null) {
            dVar.c();
        }
        this.f173c.setHideOnContentScrollEnabled(false);
        this.f.k();
        d dVar2 = new d(this.f.getContext(), aVar);
        if (!dVar2.t()) {
            return null;
        }
        this.j = dVar2;
        dVar2.k();
        this.f.h(dVar2);
        x(true);
        this.f.sendAccessibilityEvent(32);
        return dVar2;
    }

    public void x(boolean z) {
        z zVarS;
        z zVarF;
        if (z) {
            N();
        } else {
            E();
        }
        if (!M()) {
            if (z) {
                this.e.k(4);
                this.f.setVisibility(0);
                return;
            } else {
                this.e.k(0);
                this.f.setVisibility(8);
                return;
            }
        }
        if (z) {
            zVarF = this.e.s(4, 100L);
            zVarS = this.f.f(0, 200L);
        } else {
            zVarS = this.e.s(0, 200L);
            zVarF = this.f.f(8, 100L);
        }
        c.a.o.h hVar = new c.a.o.h();
        hVar.d(zVarF, zVarS);
        hVar.h();
    }

    void z() {
        b.a aVar = this.l;
        if (aVar != null) {
            aVar.d(this.k);
            this.k = null;
            this.l = null;
        }
    }

    public o(Dialog dialog) {
        new ArrayList();
        this.n = new ArrayList<>();
        this.p = 0;
        this.q = true;
        this.u = true;
        this.y = new a();
        this.z = new b();
        this.A = new c();
        F(dialog.getWindow().getDecorView());
    }
}
