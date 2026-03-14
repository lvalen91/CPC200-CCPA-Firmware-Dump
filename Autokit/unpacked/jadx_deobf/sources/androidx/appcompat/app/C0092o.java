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
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.C0181n0;
import androidx.appcompat.widget.InterfaceC0156b0;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.C0261b0;
import androidx.core.view.C0292v;
import androidx.core.view.C0296z;
import androidx.core.view.InterfaceC0259a0;
import androidx.core.view.InterfaceC0263c0;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p016c.p017a.C0493a;
import p016c.p017a.C0498f;
import p016c.p017a.C0502j;
import p016c.p017a.p024o.AbstractC0512b;
import p016c.p017a.p024o.C0511a;
import p016c.p017a.p024o.C0517g;
import p016c.p017a.p024o.C0518h;

/* JADX INFO: renamed from: androidx.appcompat.app.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0092o extends AbstractC0078a implements ActionBarOverlayLayout.InterfaceC0118d {

    /* JADX INFO: renamed from: B */
    private static final Interpolator f484B = new AccelerateInterpolator();

    /* JADX INFO: renamed from: C */
    private static final Interpolator f485C = new DecelerateInterpolator();

    /* JADX INFO: renamed from: A */
    final InterfaceC0263c0 f486A;

    /* JADX INFO: renamed from: a */
    Context f487a;

    /* JADX INFO: renamed from: b */
    private Context f488b;

    /* JADX INFO: renamed from: c */
    ActionBarOverlayLayout f489c;

    /* JADX INFO: renamed from: d */
    ActionBarContainer f490d;

    /* JADX INFO: renamed from: e */
    InterfaceC0156b0 f491e;

    /* JADX INFO: renamed from: f */
    ActionBarContextView f492f;

    /* JADX INFO: renamed from: g */
    View f493g;

    /* JADX INFO: renamed from: h */
    C0181n0 f494h;

    /* JADX INFO: renamed from: i */
    private boolean f495i;

    /* JADX INFO: renamed from: j */
    d f496j;

    /* JADX INFO: renamed from: k */
    AbstractC0512b f497k;

    /* JADX INFO: renamed from: l */
    AbstractC0512b.a f498l;

    /* JADX INFO: renamed from: m */
    private boolean f499m;

    /* JADX INFO: renamed from: n */
    private ArrayList<AbstractC0078a.b> f500n;

    /* JADX INFO: renamed from: o */
    private boolean f501o;

    /* JADX INFO: renamed from: p */
    private int f502p;

    /* JADX INFO: renamed from: q */
    boolean f503q;

    /* JADX INFO: renamed from: r */
    boolean f504r;

    /* JADX INFO: renamed from: s */
    boolean f505s;

    /* JADX INFO: renamed from: t */
    private boolean f506t;

    /* JADX INFO: renamed from: u */
    private boolean f507u;

    /* JADX INFO: renamed from: v */
    C0518h f508v;

    /* JADX INFO: renamed from: w */
    private boolean f509w;

    /* JADX INFO: renamed from: x */
    boolean f510x;

    /* JADX INFO: renamed from: y */
    final InterfaceC0259a0 f511y;

    /* JADX INFO: renamed from: z */
    final InterfaceC0259a0 f512z;

    /* JADX INFO: renamed from: androidx.appcompat.app.o$a */
    class a extends C0261b0 {
        a() {
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: a */
        public void mo530a(View view) {
            View view2;
            C0092o c0092o = C0092o.this;
            if (c0092o.f503q && (view2 = c0092o.f493g) != null) {
                view2.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
                C0092o.this.f490d.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            }
            C0092o.this.f490d.setVisibility(8);
            C0092o.this.f490d.setTransitioning(false);
            C0092o c0092o2 = C0092o.this;
            c0092o2.f508v = null;
            c0092o2.m625z();
            ActionBarOverlayLayout actionBarOverlayLayout = C0092o.this.f489c;
            if (actionBarOverlayLayout != null) {
                C0292v.m2099l0(actionBarOverlayLayout);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.o$b */
    class b extends C0261b0 {
        b() {
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: a */
        public void mo530a(View view) {
            C0092o c0092o = C0092o.this;
            c0092o.f508v = null;
            c0092o.f490d.requestLayout();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.o$c */
    class c implements InterfaceC0263c0 {
        c() {
        }

        @Override // androidx.core.view.InterfaceC0263c0
        /* JADX INFO: renamed from: a */
        public void mo626a(View view) {
            ((View) C0092o.this.f490d.getParent()).invalidate();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.o$d */
    public class d extends AbstractC0512b implements C0101g.a {

        /* JADX INFO: renamed from: d */
        private final Context f516d;

        /* JADX INFO: renamed from: e */
        private final C0101g f517e;

        /* JADX INFO: renamed from: f */
        private AbstractC0512b.a f518f;

        /* JADX INFO: renamed from: g */
        private WeakReference<View> f519g;

        public d(Context context, AbstractC0512b.a aVar) {
            this.f516d = context;
            this.f518f = aVar;
            C0101g c0101g = new C0101g(context);
            c0101g.m742S(1);
            this.f517e = c0101g;
            c0101g.mo741R(this);
        }

        @Override // androidx.appcompat.view.menu.C0101g.a
        /* JADX INFO: renamed from: a */
        public boolean mo511a(C0101g c0101g, MenuItem menuItem) {
            AbstractC0512b.a aVar = this.f518f;
            if (aVar != null) {
                return aVar.mo535b(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0101g.a
        /* JADX INFO: renamed from: b */
        public void mo513b(C0101g c0101g) {
            if (this.f518f == null) {
                return;
            }
            mo633k();
            C0092o.this.f492f.m842l();
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: c */
        public void mo627c() {
            C0092o c0092o = C0092o.this;
            if (c0092o.f496j != this) {
                return;
            }
            if (C0092o.m609y(c0092o.f504r, c0092o.f505s, false)) {
                this.f518f.mo537d(this);
            } else {
                C0092o c0092o2 = C0092o.this;
                c0092o2.f497k = this;
                c0092o2.f498l = this.f518f;
            }
            this.f518f = null;
            C0092o.this.m624x(false);
            C0092o.this.f492f.m838g();
            C0092o.this.f491e.mo1038o().sendAccessibilityEvent(32);
            C0092o c0092o3 = C0092o.this;
            c0092o3.f489c.setHideOnContentScrollEnabled(c0092o3.f510x);
            C0092o.this.f496j = null;
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: d */
        public View mo628d() {
            WeakReference<View> weakReference = this.f519g;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: e */
        public Menu mo629e() {
            return this.f517e;
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: f */
        public MenuInflater mo630f() {
            return new C0517g(this.f516d);
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: g */
        public CharSequence mo631g() {
            return C0092o.this.f492f.getSubtitle();
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: i */
        public CharSequence mo632i() {
            return C0092o.this.f492f.getTitle();
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: k */
        public void mo633k() {
            if (C0092o.this.f496j != this) {
                return;
            }
            this.f517e.m755d0();
            try {
                this.f518f.mo534a(this, this.f517e);
            } finally {
                this.f517e.m753c0();
            }
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: l */
        public boolean mo634l() {
            return C0092o.this.f492f.m840j();
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: m */
        public void mo635m(View view) {
            C0092o.this.f492f.setCustomView(view);
            this.f519g = new WeakReference<>(view);
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: n */
        public void mo636n(int i) {
            mo637o(C0092o.this.f487a.getResources().getString(i));
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: o */
        public void mo637o(CharSequence charSequence) {
            C0092o.this.f492f.setSubtitle(charSequence);
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: q */
        public void mo638q(int i) {
            mo639r(C0092o.this.f487a.getResources().getString(i));
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: r */
        public void mo639r(CharSequence charSequence) {
            C0092o.this.f492f.setTitle(charSequence);
        }

        @Override // p016c.p017a.p024o.AbstractC0512b
        /* JADX INFO: renamed from: s */
        public void mo640s(boolean z) {
            super.mo640s(z);
            C0092o.this.f492f.setTitleOptional(z);
        }

        /* JADX INFO: renamed from: t */
        public boolean m641t() {
            this.f517e.m755d0();
            try {
                return this.f518f.mo536c(this, this.f517e);
            } finally {
                this.f517e.m753c0();
            }
        }
    }

    public C0092o(Activity activity, boolean z) {
        new ArrayList();
        this.f500n = new ArrayList<>();
        this.f502p = 0;
        this.f503q = true;
        this.f507u = true;
        this.f511y = new a();
        this.f512z = new b();
        this.f486A = new c();
        View decorView = activity.getWindow().getDecorView();
        m604F(decorView);
        if (z) {
            return;
        }
        this.f493g = decorView.findViewById(R.id.content);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: C */
    private InterfaceC0156b0 m602C(View view) {
        if (view instanceof InterfaceC0156b0) {
            return (InterfaceC0156b0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    /* JADX INFO: renamed from: E */
    private void m603E() {
        if (this.f506t) {
            this.f506t = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f489c;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m608O(false);
        }
    }

    /* JADX INFO: renamed from: F */
    private void m604F(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(C0498f.decor_content_parent);
        this.f489c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f491e = m602C(view.findViewById(C0498f.action_bar));
        this.f492f = (ActionBarContextView) view.findViewById(C0498f.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(C0498f.action_bar_container);
        this.f490d = actionBarContainer;
        InterfaceC0156b0 interfaceC0156b0 = this.f491e;
        if (interfaceC0156b0 == null || this.f492f == null || actionBarContainer == null) {
            throw new IllegalStateException(C0092o.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f487a = interfaceC0156b0.mo1040q();
        boolean z = (this.f491e.mo1033j() & 4) != 0;
        if (z) {
            this.f495i = true;
        }
        C0511a c0511aM4119b = C0511a.m4119b(this.f487a);
        m617L(c0511aM4119b.m4120a() || z);
        m605J(c0511aM4119b.m4125g());
        TypedArray typedArrayObtainStyledAttributes = this.f487a.obtainStyledAttributes(null, C0502j.ActionBar, C0493a.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(C0502j.ActionBar_hideOnContentScroll, false)) {
            m616K(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C0502j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            m615I(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: renamed from: J */
    private void m605J(boolean z) {
        this.f501o = z;
        if (z) {
            this.f490d.setTabContainer(null);
            this.f491e.mo1037n(this.f494h);
        } else {
            this.f491e.mo1037n(null);
            this.f490d.setTabContainer(this.f494h);
        }
        boolean z2 = m612D() == 2;
        C0181n0 c0181n0 = this.f494h;
        if (c0181n0 != null) {
            if (z2) {
                c0181n0.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f489c;
                if (actionBarOverlayLayout != null) {
                    C0292v.m2099l0(actionBarOverlayLayout);
                }
            } else {
                c0181n0.setVisibility(8);
            }
        }
        this.f491e.mo1046w(!this.f501o && z2);
        this.f489c.setHasNonEmbeddedTabs(!this.f501o && z2);
    }

    /* JADX INFO: renamed from: M */
    private boolean m606M() {
        return C0292v.m2069T(this.f490d);
    }

    /* JADX INFO: renamed from: N */
    private void m607N() {
        if (this.f506t) {
            return;
        }
        this.f506t = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f489c;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        m608O(false);
    }

    /* JADX INFO: renamed from: O */
    private void m608O(boolean z) {
        if (m609y(this.f504r, this.f505s, this.f506t)) {
            if (this.f507u) {
                return;
            }
            this.f507u = true;
            m611B(z);
            return;
        }
        if (this.f507u) {
            this.f507u = false;
            m610A(z);
        }
    }

    /* JADX INFO: renamed from: y */
    static boolean m609y(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    /* JADX INFO: renamed from: A */
    public void m610A(boolean z) {
        View view;
        C0518h c0518h = this.f508v;
        if (c0518h != null) {
            c0518h.m4149a();
        }
        if (this.f502p != 0 || (!this.f509w && !z)) {
            this.f511y.mo530a(null);
            return;
        }
        this.f490d.setAlpha(1.0f);
        this.f490d.setTransitioning(true);
        C0518h c0518h2 = new C0518h();
        float f = -this.f490d.getHeight();
        if (z) {
            this.f490d.getLocationInWindow(new int[]{0, 0});
            f -= r5[1];
        }
        C0296z c0296zM2082d = C0292v.m2082d(this.f490d);
        c0296zM2082d.m2188k(f);
        c0296zM2082d.m2186i(this.f486A);
        c0518h2.m4151c(c0296zM2082d);
        if (this.f503q && (view = this.f493g) != null) {
            C0296z c0296zM2082d2 = C0292v.m2082d(view);
            c0296zM2082d2.m2188k(f);
            c0518h2.m4151c(c0296zM2082d2);
        }
        c0518h2.m4154f(f484B);
        c0518h2.m4153e(250L);
        c0518h2.m4155g(this.f511y);
        this.f508v = c0518h2;
        c0518h2.m4156h();
    }

    /* JADX INFO: renamed from: B */
    public void m611B(boolean z) {
        View view;
        View view2;
        C0518h c0518h = this.f508v;
        if (c0518h != null) {
            c0518h.m4149a();
        }
        this.f490d.setVisibility(0);
        if (this.f502p == 0 && (this.f509w || z)) {
            this.f490d.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            float f = -this.f490d.getHeight();
            if (z) {
                this.f490d.getLocationInWindow(new int[]{0, 0});
                f -= r5[1];
            }
            this.f490d.setTranslationY(f);
            C0518h c0518h2 = new C0518h();
            C0296z c0296zM2082d = C0292v.m2082d(this.f490d);
            c0296zM2082d.m2188k(CropImageView.DEFAULT_ASPECT_RATIO);
            c0296zM2082d.m2186i(this.f486A);
            c0518h2.m4151c(c0296zM2082d);
            if (this.f503q && (view2 = this.f493g) != null) {
                view2.setTranslationY(f);
                C0296z c0296zM2082d2 = C0292v.m2082d(this.f493g);
                c0296zM2082d2.m2188k(CropImageView.DEFAULT_ASPECT_RATIO);
                c0518h2.m4151c(c0296zM2082d2);
            }
            c0518h2.m4154f(f485C);
            c0518h2.m4153e(250L);
            c0518h2.m4155g(this.f512z);
            this.f508v = c0518h2;
            c0518h2.m4156h();
        } else {
            this.f490d.setAlpha(1.0f);
            this.f490d.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            if (this.f503q && (view = this.f493g) != null) {
                view.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
            }
            this.f512z.mo530a(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f489c;
        if (actionBarOverlayLayout != null) {
            C0292v.m2099l0(actionBarOverlayLayout);
        }
    }

    /* JADX INFO: renamed from: D */
    public int m612D() {
        return this.f491e.mo1041r();
    }

    /* JADX INFO: renamed from: G */
    public void m613G(boolean z) {
        m614H(z ? 4 : 0, 4);
    }

    /* JADX INFO: renamed from: H */
    public void m614H(int i, int i2) {
        int iMo1033j = this.f491e.mo1033j();
        if ((i2 & 4) != 0) {
            this.f495i = true;
        }
        this.f491e.mo1047x((i & i2) | ((i2 ^ (-1)) & iMo1033j));
    }

    /* JADX INFO: renamed from: I */
    public void m615I(float f) {
        C0292v.m2119v0(this.f490d, f);
    }

    /* JADX INFO: renamed from: K */
    public void m616K(boolean z) {
        if (z && !this.f489c.m869w()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.f510x = z;
        this.f489c.setHideOnContentScrollEnabled(z);
    }

    /* JADX INFO: renamed from: L */
    public void m617L(boolean z) {
        this.f491e.mo1039p(z);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0118d
    /* JADX INFO: renamed from: a */
    public void mo618a(boolean z) {
        this.f503q = z;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0118d
    /* JADX INFO: renamed from: b */
    public void mo619b() {
        if (this.f505s) {
            this.f505s = false;
            m608O(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0118d
    /* JADX INFO: renamed from: c */
    public void mo620c() {
        C0518h c0518h = this.f508v;
        if (c0518h != null) {
            c0518h.m4149a();
            this.f508v = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0118d
    /* JADX INFO: renamed from: d */
    public void mo621d(int i) {
        this.f502p = i;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0118d
    /* JADX INFO: renamed from: e */
    public void mo622e() {
        if (this.f505s) {
            return;
        }
        this.f505s = true;
        m608O(true);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.InterfaceC0118d
    /* JADX INFO: renamed from: f */
    public void mo623f() {
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: h */
    public boolean mo397h() {
        InterfaceC0156b0 interfaceC0156b0 = this.f491e;
        if (interfaceC0156b0 == null || !interfaceC0156b0.mo1044u()) {
            return false;
        }
        this.f491e.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: i */
    public void mo398i(boolean z) {
        if (z == this.f499m) {
            return;
        }
        this.f499m = z;
        int size = this.f500n.size();
        for (int i = 0; i < size; i++) {
            this.f500n.get(i).m413a(z);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: j */
    public int mo399j() {
        return this.f491e.mo1033j();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: k */
    public Context mo400k() {
        if (this.f488b == null) {
            TypedValue typedValue = new TypedValue();
            this.f487a.getTheme().resolveAttribute(C0493a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f488b = new ContextThemeWrapper(this.f487a, i);
            } else {
                this.f488b = this.f487a;
            }
        }
        return this.f488b;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: l */
    public void mo401l() {
        if (this.f504r) {
            return;
        }
        this.f504r = true;
        m608O(false);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: n */
    public void mo403n(Configuration configuration) {
        m605J(C0511a.m4119b(this.f487a).m4125g());
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: p */
    public boolean mo405p(int i, KeyEvent keyEvent) {
        Menu menuMo629e;
        d dVar = this.f496j;
        if (dVar == null || (menuMo629e = dVar.mo629e()) == null) {
            return false;
        }
        menuMo629e.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuMo629e.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: s */
    public void mo408s(boolean z) {
        if (this.f495i) {
            return;
        }
        m613G(z);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: t */
    public void mo409t(boolean z) {
        m614H(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: u */
    public void mo410u(boolean z) {
        C0518h c0518h;
        this.f509w = z;
        if (z || (c0518h = this.f508v) == null) {
            return;
        }
        c0518h.m4149a();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: v */
    public void mo411v(CharSequence charSequence) {
        this.f491e.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* JADX INFO: renamed from: w */
    public AbstractC0512b mo412w(AbstractC0512b.a aVar) {
        d dVar = this.f496j;
        if (dVar != null) {
            dVar.mo627c();
        }
        this.f489c.setHideOnContentScrollEnabled(false);
        this.f492f.m841k();
        d dVar2 = new d(this.f492f.getContext(), aVar);
        if (!dVar2.m641t()) {
            return null;
        }
        this.f496j = dVar2;
        dVar2.mo633k();
        this.f492f.m839h(dVar2);
        m624x(true);
        this.f492f.sendAccessibilityEvent(32);
        return dVar2;
    }

    /* JADX INFO: renamed from: x */
    public void m624x(boolean z) {
        C0296z c0296zMo1042s;
        C0296z c0296zF;
        if (z) {
            m607N();
        } else {
            m603E();
        }
        if (!m606M()) {
            if (z) {
                this.f491e.mo1034k(4);
                this.f492f.setVisibility(0);
                return;
            } else {
                this.f491e.mo1034k(0);
                this.f492f.setVisibility(8);
                return;
            }
        }
        if (z) {
            c0296zF = this.f491e.mo1042s(4, 100L);
            c0296zMo1042s = this.f492f.m1018f(0, 200L);
        } else {
            c0296zMo1042s = this.f491e.mo1042s(0, 200L);
            c0296zF = this.f492f.m1018f(8, 100L);
        }
        C0518h c0518h = new C0518h();
        c0518h.m4152d(c0296zF, c0296zMo1042s);
        c0518h.m4156h();
    }

    /* JADX INFO: renamed from: z */
    void m625z() {
        AbstractC0512b.a aVar = this.f498l;
        if (aVar != null) {
            aVar.mo537d(this.f497k);
            this.f497k = null;
            this.f498l = null;
        }
    }

    public C0092o(Dialog dialog) {
        new ArrayList();
        this.f500n = new ArrayList<>();
        this.f502p = 0;
        this.f503q = true;
        this.f507u = true;
        this.f511y = new a();
        this.f512z = new b();
        this.f486A = new c();
        m604F(dialog.getWindow().getDecorView());
    }
}
