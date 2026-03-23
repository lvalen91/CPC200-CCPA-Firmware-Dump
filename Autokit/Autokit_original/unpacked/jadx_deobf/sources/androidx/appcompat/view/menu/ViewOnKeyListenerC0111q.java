package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.appcompat.widget.C0173j0;
import androidx.core.view.C0292v;
import p016c.p017a.C0496d;
import p016c.p017a.C0499g;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.q */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class ViewOnKeyListenerC0111q extends AbstractC0105k implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, InterfaceC0107m, View.OnKeyListener {

    /* JADX INFO: renamed from: w */
    private static final int f725w = C0499g.abc_popup_menu_item_layout;

    /* JADX INFO: renamed from: c */
    private final Context f726c;

    /* JADX INFO: renamed from: d */
    private final C0101g f727d;

    /* JADX INFO: renamed from: e */
    private final C0100f f728e;

    /* JADX INFO: renamed from: f */
    private final boolean f729f;

    /* JADX INFO: renamed from: g */
    private final int f730g;

    /* JADX INFO: renamed from: h */
    private final int f731h;

    /* JADX INFO: renamed from: i */
    private final int f732i;

    /* JADX INFO: renamed from: j */
    final C0173j0 f733j;

    /* JADX INFO: renamed from: m */
    private PopupWindow.OnDismissListener f736m;

    /* JADX INFO: renamed from: n */
    private View f737n;

    /* JADX INFO: renamed from: o */
    View f738o;

    /* JADX INFO: renamed from: p */
    private InterfaceC0107m.a f739p;

    /* JADX INFO: renamed from: q */
    ViewTreeObserver f740q;

    /* JADX INFO: renamed from: r */
    private boolean f741r;

    /* JADX INFO: renamed from: s */
    private boolean f742s;

    /* JADX INFO: renamed from: t */
    private int f743t;

    /* JADX INFO: renamed from: v */
    private boolean f745v;

    /* JADX INFO: renamed from: k */
    final ViewTreeObserver.OnGlobalLayoutListener f734k = new a();

    /* JADX INFO: renamed from: l */
    private final View.OnAttachStateChangeListener f735l = new b();

    /* JADX INFO: renamed from: u */
    private int f744u = 0;

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.q$a */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!ViewOnKeyListenerC0111q.this.mo694b() || ViewOnKeyListenerC0111q.this.f733j.m1138B()) {
                return;
            }
            View view = ViewOnKeyListenerC0111q.this.f738o;
            if (view == null || !view.isShown()) {
                ViewOnKeyListenerC0111q.this.dismiss();
            } else {
                ViewOnKeyListenerC0111q.this.f733j.mo696g();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.q$b */
    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = ViewOnKeyListenerC0111q.this.f740q;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    ViewOnKeyListenerC0111q.this.f740q = view.getViewTreeObserver();
                }
                ViewOnKeyListenerC0111q viewOnKeyListenerC0111q = ViewOnKeyListenerC0111q.this;
                viewOnKeyListenerC0111q.f740q.removeGlobalOnLayoutListener(viewOnKeyListenerC0111q.f734k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public ViewOnKeyListenerC0111q(Context context, C0101g c0101g, View view, int i, int i2, boolean z) {
        this.f726c = context;
        this.f727d = c0101g;
        this.f729f = z;
        this.f728e = new C0100f(c0101g, LayoutInflater.from(context), this.f729f, f725w);
        this.f731h = i;
        this.f732i = i2;
        Resources resources = context.getResources();
        this.f730g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0496d.abc_config_prefDialogWidth));
        this.f737n = view;
        this.f733j = new C0173j0(this.f726c, null, this.f731h, this.f732i);
        c0101g.m752c(this, context);
    }

    /* JADX INFO: renamed from: z */
    private boolean m833z() {
        View view;
        if (mo694b()) {
            return true;
        }
        if (this.f741r || (view = this.f737n) == null) {
            return false;
        }
        this.f738o = view;
        this.f733j.m1146K(this);
        this.f733j.m1147L(this);
        this.f733j.m1145J(true);
        View view2 = this.f738o;
        boolean z = this.f740q == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f740q = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f734k);
        }
        view2.addOnAttachStateChangeListener(this.f735l);
        this.f733j.m1139D(view2);
        this.f733j.m1142G(this.f744u);
        if (!this.f742s) {
            this.f743t = AbstractC0105k.m814o(this.f728e, null, this.f726c, this.f730g);
            this.f742s = true;
        }
        this.f733j.m1141F(this.f743t);
        this.f733j.m1144I(2);
        this.f733j.m1143H(m817n());
        this.f733j.mo696g();
        ListView listViewMo698l = this.f733j.mo698l();
        listViewMo698l.setOnKeyListener(this);
        if (this.f745v && this.f727d.m771x() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f726c).inflate(C0499g.abc_popup_menu_header_item_layout, (ViewGroup) listViewMo698l, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f727d.m771x());
            }
            frameLayout.setEnabled(false);
            listViewMo698l.addHeaderView(frameLayout, null, false);
        }
        this.f733j.mo1158o(this.f728e);
        this.f733j.mo696g();
        return true;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: a */
    public void mo666a(C0101g c0101g, boolean z) {
        if (c0101g != this.f727d) {
            return;
        }
        dismiss();
        InterfaceC0107m.a aVar = this.f739p;
        if (aVar != null) {
            aVar.mo532a(c0101g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    /* JADX INFO: renamed from: b */
    public boolean mo694b() {
        return !this.f741r && this.f733j.mo694b();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: c */
    public boolean mo695c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    public void dismiss() {
        if (mo694b()) {
            this.f733j.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    /* JADX INFO: renamed from: g */
    public void mo696g() {
        if (!m833z()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: h */
    public void mo672h(InterfaceC0107m.a aVar) {
        this.f739p = aVar;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: i */
    public boolean mo673i(SubMenuC0112r subMenuC0112r) {
        if (subMenuC0112r.hasVisibleItems()) {
            C0106l c0106l = new C0106l(this.f726c, subMenuC0112r, this.f738o, this.f729f, this.f731h, this.f732i);
            c0106l.m829j(this.f739p);
            c0106l.m826g(AbstractC0105k.m815x(subMenuC0112r));
            c0106l.m828i(this.f736m);
            this.f736m = null;
            this.f727d.m756e(false);
            int iM1154e = this.f733j.m1154e();
            int iM1155h = this.f733j.m1155h();
            if ((Gravity.getAbsoluteGravity(this.f744u, C0292v.m2046C(this.f737n)) & 7) == 5) {
                iM1154e += this.f737n.getWidth();
            }
            if (c0106l.m832n(iM1154e, iM1155h)) {
                InterfaceC0107m.a aVar = this.f739p;
                if (aVar == null) {
                    return true;
                }
                aVar.mo533b(subMenuC0112r);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: j */
    public void mo674j(boolean z) {
        this.f742s = false;
        C0100f c0100f = this.f728e;
        if (c0100f != null) {
            c0100f.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: k */
    public void mo697k(C0101g c0101g) {
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    /* JADX INFO: renamed from: l */
    public ListView mo698l() {
        return this.f733j.mo698l();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f741r = true;
        this.f727d.close();
        ViewTreeObserver viewTreeObserver = this.f740q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f740q = this.f738o.getViewTreeObserver();
            }
            this.f740q.removeGlobalOnLayoutListener(this.f734k);
            this.f740q = null;
        }
        this.f738o.removeOnAttachStateChangeListener(this.f735l);
        PopupWindow.OnDismissListener onDismissListener = this.f736m;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: p */
    public void mo700p(View view) {
        this.f737n = view;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: r */
    public void mo701r(boolean z) {
        this.f728e.m717d(z);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: s */
    public void mo702s(int i) {
        this.f744u = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: t */
    public void mo703t(int i) {
        this.f733j.m1153d(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: u */
    public void mo704u(PopupWindow.OnDismissListener onDismissListener) {
        this.f736m = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: v */
    public void mo705v(boolean z) {
        this.f745v = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: w */
    public void mo706w(int i) {
        this.f733j.m1157n(i);
    }
}
