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
import androidx.appcompat.view.menu.C0095a;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.C0261b0;
import androidx.core.view.C0292v;
import androidx.core.view.C0296z;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p017a.C0493a;
import p016c.p017a.C0497e;
import p016c.p017a.C0498f;
import p016c.p017a.C0500h;
import p016c.p017a.C0502j;
import p016c.p017a.p018k.p019a.C0503a;

/* JADX INFO: renamed from: androidx.appcompat.widget.v0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0197v0 implements InterfaceC0156b0 {

    /* JADX INFO: renamed from: a */
    Toolbar f1316a;

    /* JADX INFO: renamed from: b */
    private int f1317b;

    /* JADX INFO: renamed from: c */
    private View f1318c;

    /* JADX INFO: renamed from: d */
    private View f1319d;

    /* JADX INFO: renamed from: e */
    private Drawable f1320e;

    /* JADX INFO: renamed from: f */
    private Drawable f1321f;

    /* JADX INFO: renamed from: g */
    private Drawable f1322g;

    /* JADX INFO: renamed from: h */
    private boolean f1323h;

    /* JADX INFO: renamed from: i */
    CharSequence f1324i;

    /* JADX INFO: renamed from: j */
    private CharSequence f1325j;

    /* JADX INFO: renamed from: k */
    private CharSequence f1326k;

    /* JADX INFO: renamed from: l */
    Window.Callback f1327l;

    /* JADX INFO: renamed from: m */
    boolean f1328m;

    /* JADX INFO: renamed from: n */
    private C0158c f1329n;

    /* JADX INFO: renamed from: o */
    private int f1330o;

    /* JADX INFO: renamed from: p */
    private int f1331p;

    /* JADX INFO: renamed from: q */
    private Drawable f1332q;

    /* JADX INFO: renamed from: androidx.appcompat.widget.v0$a */
    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final C0095a f1333b;

        a() {
            this.f1333b = new C0095a(C0197v0.this.f1316a.getContext(), 0, R.id.home, 0, 0, C0197v0.this.f1324i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0197v0 c0197v0 = C0197v0.this;
            Window.Callback callback = c0197v0.f1327l;
            if (callback == null || !c0197v0.f1328m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f1333b);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.v0$b */
    class b extends C0261b0 {

        /* JADX INFO: renamed from: a */
        private boolean f1335a = false;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f1336b;

        b(int i) {
            this.f1336b = i;
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: a */
        public void mo530a(View view) {
            if (this.f1335a) {
                return;
            }
            C0197v0.this.f1316a.setVisibility(this.f1336b);
        }

        @Override // androidx.core.view.C0261b0, androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: b */
        public void mo531b(View view) {
            C0197v0.this.f1316a.setVisibility(0);
        }

        @Override // androidx.core.view.C0261b0, androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: c */
        public void mo1019c(View view) {
            this.f1335a = true;
        }
    }

    public C0197v0(Toolbar toolbar, boolean z) {
        this(toolbar, z, C0500h.abc_action_bar_up_description, C0497e.abc_ic_ab_back_material);
    }

    /* JADX INFO: renamed from: H */
    private void m1344H(CharSequence charSequence) {
        this.f1324i = charSequence;
        if ((this.f1317b & 8) != 0) {
            this.f1316a.setTitle(charSequence);
        }
    }

    /* JADX INFO: renamed from: I */
    private void m1345I() {
        if ((this.f1317b & 4) != 0) {
            if (TextUtils.isEmpty(this.f1326k)) {
                this.f1316a.setNavigationContentDescription(this.f1331p);
            } else {
                this.f1316a.setNavigationContentDescription(this.f1326k);
            }
        }
    }

    /* JADX INFO: renamed from: J */
    private void m1346J() {
        if ((this.f1317b & 4) == 0) {
            this.f1316a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f1316a;
        Drawable drawable = this.f1322g;
        if (drawable == null) {
            drawable = this.f1332q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    /* JADX INFO: renamed from: K */
    private void m1347K() {
        Drawable drawable;
        int i = this.f1317b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) == 0 || (drawable = this.f1321f) == null) {
            drawable = this.f1320e;
        }
        this.f1316a.setLogo(drawable);
    }

    /* JADX INFO: renamed from: y */
    private int m1348y() {
        if (this.f1316a.getNavigationIcon() == null) {
            return 11;
        }
        this.f1332q = this.f1316a.getNavigationIcon();
        return 15;
    }

    /* JADX INFO: renamed from: A */
    public void m1349A(int i) {
        if (i == this.f1331p) {
            return;
        }
        this.f1331p = i;
        if (TextUtils.isEmpty(this.f1316a.getNavigationContentDescription())) {
            m1351C(this.f1331p);
        }
    }

    /* JADX INFO: renamed from: B */
    public void m1350B(Drawable drawable) {
        this.f1321f = drawable;
        m1347K();
    }

    /* JADX INFO: renamed from: C */
    public void m1351C(int i) {
        m1352D(i == 0 ? null : mo1040q().getString(i));
    }

    /* JADX INFO: renamed from: D */
    public void m1352D(CharSequence charSequence) {
        this.f1326k = charSequence;
        m1345I();
    }

    /* JADX INFO: renamed from: E */
    public void m1353E(Drawable drawable) {
        this.f1322g = drawable;
        m1346J();
    }

    /* JADX INFO: renamed from: F */
    public void m1354F(CharSequence charSequence) {
        this.f1325j = charSequence;
        if ((this.f1317b & 8) != 0) {
            this.f1316a.setSubtitle(charSequence);
        }
    }

    /* JADX INFO: renamed from: G */
    public void m1355G(CharSequence charSequence) {
        this.f1323h = true;
        m1344H(charSequence);
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: a */
    public void mo1024a(Menu menu, InterfaceC0107m.a aVar) {
        if (this.f1329n == null) {
            C0158c c0158c = new C0158c(this.f1316a.getContext());
            this.f1329n = c0158c;
            c0158c.m680p(C0498f.action_menu_presenter);
        }
        this.f1329n.mo672h(aVar);
        this.f1316a.m990I((C0101g) menu, this.f1329n);
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: b */
    public boolean mo1025b() {
        return this.f1316a.m1006z();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: c */
    public boolean mo1026c() {
        return this.f1316a.m987A();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    public void collapseActionView() {
        this.f1316a.m997e();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: d */
    public boolean mo1027d() {
        return this.f1316a.m1004w();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: e */
    public boolean mo1028e() {
        return this.f1316a.m994O();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: f */
    public void mo1029f() {
        this.f1328m = true;
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: g */
    public boolean mo1030g() {
        return this.f1316a.m996d();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    public CharSequence getTitle() {
        return this.f1316a.getTitle();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: h */
    public void mo1031h() {
        this.f1316a.m998f();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: i */
    public void mo1032i(InterfaceC0107m.a aVar, C0101g.a aVar2) {
        this.f1316a.m991J(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: j */
    public int mo1033j() {
        return this.f1317b;
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: k */
    public void mo1034k(int i) {
        this.f1316a.setVisibility(i);
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: l */
    public Menu mo1035l() {
        return this.f1316a.getMenu();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: m */
    public void mo1036m(int i) {
        m1350B(i != 0 ? C0503a.m4047d(mo1040q(), i) : null);
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: n */
    public void mo1037n(C0181n0 c0181n0) {
        View view = this.f1318c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1316a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1318c);
            }
        }
        this.f1318c = c0181n0;
        if (c0181n0 == null || this.f1330o != 2) {
            return;
        }
        this.f1316a.addView(c0181n0, 0);
        Toolbar.C0148e c0148e = (Toolbar.C0148e) this.f1318c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) c0148e).width = -2;
        ((ViewGroup.MarginLayoutParams) c0148e).height = -2;
        c0148e.f329a = 8388691;
        c0181n0.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: o */
    public ViewGroup mo1038o() {
        return this.f1316a;
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: p */
    public void mo1039p(boolean z) {
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: q */
    public Context mo1040q() {
        return this.f1316a.getContext();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: r */
    public int mo1041r() {
        return this.f1330o;
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: s */
    public C0296z mo1042s(int i, long j) {
        C0296z c0296zM2082d = C0292v.m2082d(this.f1316a);
        c0296zM2082d.m2179a(i == 0 ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
        c0296zM2082d.m2182d(j);
        c0296zM2082d.m2184f(new b(i));
        return c0296zM2082d;
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    public void setIcon(int i) {
        setIcon(i != 0 ? C0503a.m4047d(mo1040q(), i) : null);
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    public void setWindowCallback(Window.Callback callback) {
        this.f1327l = callback;
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f1323h) {
            return;
        }
        m1344H(charSequence);
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: t */
    public void mo1043t() {
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: u */
    public boolean mo1044u() {
        return this.f1316a.m1003v();
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: v */
    public void mo1045v() {
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: w */
    public void mo1046w(boolean z) {
        this.f1316a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    /* JADX INFO: renamed from: x */
    public void mo1047x(int i) {
        View view;
        int i2 = this.f1317b ^ i;
        this.f1317b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m1345I();
                }
                m1346J();
            }
            if ((i2 & 3) != 0) {
                m1347K();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.f1316a.setTitle(this.f1324i);
                    this.f1316a.setSubtitle(this.f1325j);
                } else {
                    this.f1316a.setTitle((CharSequence) null);
                    this.f1316a.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f1319d) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.f1316a.addView(view);
            } else {
                this.f1316a.removeView(view);
            }
        }
    }

    /* JADX INFO: renamed from: z */
    public void m1356z(View view) {
        View view2 = this.f1319d;
        if (view2 != null && (this.f1317b & 16) != 0) {
            this.f1316a.removeView(view2);
        }
        this.f1319d = view;
        if (view == null || (this.f1317b & 16) == 0) {
            return;
        }
        this.f1316a.addView(view);
    }

    public C0197v0(Toolbar toolbar, boolean z, int i, int i2) {
        Drawable drawable;
        this.f1330o = 0;
        this.f1331p = 0;
        this.f1316a = toolbar;
        this.f1324i = toolbar.getTitle();
        this.f1325j = toolbar.getSubtitle();
        this.f1323h = this.f1324i != null;
        this.f1322g = toolbar.getNavigationIcon();
        C0195u0 c0195u0M1321v = C0195u0.m1321v(toolbar.getContext(), null, C0502j.ActionBar, C0493a.actionBarStyle, 0);
        this.f1332q = c0195u0M1321v.m1328g(C0502j.ActionBar_homeAsUpIndicator);
        if (z) {
            CharSequence charSequenceM1337p = c0195u0M1321v.m1337p(C0502j.ActionBar_title);
            if (!TextUtils.isEmpty(charSequenceM1337p)) {
                m1355G(charSequenceM1337p);
            }
            CharSequence charSequenceM1337p2 = c0195u0M1321v.m1337p(C0502j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(charSequenceM1337p2)) {
                m1354F(charSequenceM1337p2);
            }
            Drawable drawableM1328g = c0195u0M1321v.m1328g(C0502j.ActionBar_logo);
            if (drawableM1328g != null) {
                m1350B(drawableM1328g);
            }
            Drawable drawableM1328g2 = c0195u0M1321v.m1328g(C0502j.ActionBar_icon);
            if (drawableM1328g2 != null) {
                setIcon(drawableM1328g2);
            }
            if (this.f1322g == null && (drawable = this.f1332q) != null) {
                m1353E(drawable);
            }
            mo1047x(c0195u0M1321v.m1332k(C0502j.ActionBar_displayOptions, 0));
            int iM1335n = c0195u0M1321v.m1335n(C0502j.ActionBar_customNavigationLayout, 0);
            if (iM1335n != 0) {
                m1356z(LayoutInflater.from(this.f1316a.getContext()).inflate(iM1335n, (ViewGroup) this.f1316a, false));
                mo1047x(this.f1317b | 16);
            }
            int iM1334m = c0195u0M1321v.m1334m(C0502j.ActionBar_height, 0);
            if (iM1334m > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1316a.getLayoutParams();
                layoutParams.height = iM1334m;
                this.f1316a.setLayoutParams(layoutParams);
            }
            int iM1326e = c0195u0M1321v.m1326e(C0502j.ActionBar_contentInsetStart, -1);
            int iM1326e2 = c0195u0M1321v.m1326e(C0502j.ActionBar_contentInsetEnd, -1);
            if (iM1326e >= 0 || iM1326e2 >= 0) {
                this.f1316a.m989H(Math.max(iM1326e, 0), Math.max(iM1326e2, 0));
            }
            int iM1335n2 = c0195u0M1321v.m1335n(C0502j.ActionBar_titleTextStyle, 0);
            if (iM1335n2 != 0) {
                Toolbar toolbar2 = this.f1316a;
                toolbar2.m993L(toolbar2.getContext(), iM1335n2);
            }
            int iM1335n3 = c0195u0M1321v.m1335n(C0502j.ActionBar_subtitleTextStyle, 0);
            if (iM1335n3 != 0) {
                Toolbar toolbar3 = this.f1316a;
                toolbar3.m992K(toolbar3.getContext(), iM1335n3);
            }
            int iM1335n4 = c0195u0M1321v.m1335n(C0502j.ActionBar_popupTheme, 0);
            if (iM1335n4 != 0) {
                this.f1316a.setPopupTheme(iM1335n4);
            }
        } else {
            this.f1317b = m1348y();
        }
        c0195u0M1321v.m1341w();
        m1349A(i);
        this.f1326k = this.f1316a.getNavigationContentDescription();
        this.f1316a.setNavigationOnClickListener(new a());
    }

    @Override // androidx.appcompat.widget.InterfaceC0156b0
    public void setIcon(Drawable drawable) {
        this.f1320e = drawable;
        m1347K();
    }
}
