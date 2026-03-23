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
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.j0;
import androidx.core.view.v;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class q extends k implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, m, View.OnKeyListener {
    private static final int w = c.a.g.abc_popup_menu_item_layout;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g f231d;
    private final f e;
    private final boolean f;
    private final int g;
    private final int h;
    private final int i;
    final j0 j;
    private PopupWindow.OnDismissListener m;
    private View n;
    View o;
    private m.a p;
    ViewTreeObserver q;
    private boolean r;
    private boolean s;
    private int t;
    private boolean v;
    final ViewTreeObserver.OnGlobalLayoutListener k = new a();
    private final View.OnAttachStateChangeListener l = new b();
    private int u = 0;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!q.this.b() || q.this.j.B()) {
                return;
            }
            View view = q.this.o;
            if (view == null || !view.isShown()) {
                q.this.dismiss();
            } else {
                q.this.j.g();
            }
        }
    }

    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = q.this.q;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    q.this.q = view.getViewTreeObserver();
                }
                q qVar = q.this;
                qVar.q.removeGlobalOnLayoutListener(qVar.k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public q(Context context, g gVar, View view, int i, int i2, boolean z) {
        this.f230c = context;
        this.f231d = gVar;
        this.f = z;
        this.e = new f(gVar, LayoutInflater.from(context), this.f, w);
        this.h = i;
        this.i = i2;
        Resources resources = context.getResources();
        this.g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(c.a.d.abc_config_prefDialogWidth));
        this.n = view;
        this.j = new j0(this.f230c, null, this.h, this.i);
        gVar.c(this, context);
    }

    private boolean z() {
        View view;
        if (b()) {
            return true;
        }
        if (this.r || (view = this.n) == null) {
            return false;
        }
        this.o = view;
        this.j.K(this);
        this.j.L(this);
        this.j.J(true);
        View view2 = this.o;
        boolean z = this.q == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.q = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.k);
        }
        view2.addOnAttachStateChangeListener(this.l);
        this.j.D(view2);
        this.j.G(this.u);
        if (!this.s) {
            this.t = k.o(this.e, null, this.f230c, this.g);
            this.s = true;
        }
        this.j.F(this.t);
        this.j.I(2);
        this.j.H(n());
        this.j.g();
        ListView listViewL = this.j.l();
        listViewL.setOnKeyListener(this);
        if (this.v && this.f231d.x() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f230c).inflate(c.a.g.abc_popup_menu_header_item_layout, (ViewGroup) listViewL, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f231d.x());
            }
            frameLayout.setEnabled(false);
            listViewL.addHeaderView(frameLayout, null, false);
        }
        this.j.o(this.e);
        this.j.g();
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(g gVar, boolean z) {
        if (gVar != this.f231d) {
            return;
        }
        dismiss();
        m.a aVar = this.p;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean b() {
        return !this.r && this.j.b();
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        if (b()) {
            this.j.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public void g() {
        if (!z()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(m.a aVar) {
        this.p = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean i(r rVar) {
        if (rVar.hasVisibleItems()) {
            l lVar = new l(this.f230c, rVar, this.o, this.f, this.h, this.i);
            lVar.j(this.p);
            lVar.g(k.x(rVar));
            lVar.i(this.m);
            this.m = null;
            this.f231d.e(false);
            int iE = this.j.e();
            int iH = this.j.h();
            if ((Gravity.getAbsoluteGravity(this.u, v.C(this.n)) & 7) == 5) {
                iE += this.n.getWidth();
            }
            if (lVar.n(iE, iH)) {
                m.a aVar = this.p;
                if (aVar == null) {
                    return true;
                }
                aVar.b(rVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void j(boolean z) {
        this.s = false;
        f fVar = this.e;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void k(g gVar) {
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView l() {
        return this.j.l();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.r = true;
        this.f231d.close();
        ViewTreeObserver viewTreeObserver = this.q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.q = this.o.getViewTreeObserver();
            }
            this.q.removeGlobalOnLayoutListener(this.k);
            this.q = null;
        }
        this.o.removeOnAttachStateChangeListener(this.l);
        PopupWindow.OnDismissListener onDismissListener = this.m;
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

    @Override // androidx.appcompat.view.menu.k
    public void p(View view) {
        this.n = view;
    }

    @Override // androidx.appcompat.view.menu.k
    public void r(boolean z) {
        this.e.d(z);
    }

    @Override // androidx.appcompat.view.menu.k
    public void s(int i) {
        this.u = i;
    }

    @Override // androidx.appcompat.view.menu.k
    public void t(int i) {
        this.j.d(i);
    }

    @Override // androidx.appcompat.view.menu.k
    public void u(PopupWindow.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void v(boolean z) {
        this.v = z;
    }

    @Override // androidx.appcompat.view.menu.k
    public void w(int i) {
        this.j.n(i);
    }
}
