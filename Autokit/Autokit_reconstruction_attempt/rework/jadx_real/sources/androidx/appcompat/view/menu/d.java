package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.i0;
import androidx.appcompat.widget.j0;
import androidx.core.view.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class d extends k implements m, View.OnKeyListener, PopupWindow.OnDismissListener {
    private static final int C = c.a.g.abc_cascading_menu_item_layout;
    private PopupWindow.OnDismissListener A;
    boolean B;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f191d;
    private final int e;
    private final int f;
    private final boolean g;
    final Handler h;
    private View p;
    View q;
    private boolean s;
    private boolean t;
    private int u;
    private int v;
    private boolean x;
    private m.a y;
    ViewTreeObserver z;
    private final List<g> i = new ArrayList();
    final List<C0011d> j = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener k = new a();
    private final View.OnAttachStateChangeListener l = new b();
    private final i0 m = new c();
    private int n = 0;
    private int o = 0;
    private boolean w = false;
    private int r = D();

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!d.this.b() || d.this.j.size() <= 0 || d.this.j.get(0).a.B()) {
                return;
            }
            View view = d.this.q;
            if (view == null || !view.isShown()) {
                d.this.dismiss();
                return;
            }
            Iterator<C0011d> it = d.this.j.iterator();
            while (it.hasNext()) {
                it.next().a.g();
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
            ViewTreeObserver viewTreeObserver = d.this.z;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    d.this.z = view.getViewTreeObserver();
                }
                d dVar = d.this;
                dVar.z.removeGlobalOnLayoutListener(dVar.k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    class c implements i0 {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ C0011d f195b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ MenuItem f196c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ g f197d;

            a(C0011d c0011d, MenuItem menuItem, g gVar) {
                this.f195b = c0011d;
                this.f196c = menuItem;
                this.f197d = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0011d c0011d = this.f195b;
                if (c0011d != null) {
                    d.this.B = true;
                    c0011d.f198b.e(false);
                    d.this.B = false;
                }
                if (this.f196c.isEnabled() && this.f196c.hasSubMenu()) {
                    this.f197d.L(this.f196c, 4);
                }
            }
        }

        c() {
        }

        @Override // androidx.appcompat.widget.i0
        public void a(g gVar, MenuItem menuItem) {
            d.this.h.removeCallbacksAndMessages(null);
            int size = d.this.j.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (gVar == d.this.j.get(i).f198b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            d.this.h.postAtTime(new a(i2 < d.this.j.size() ? d.this.j.get(i2) : null, menuItem, gVar), gVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.i0
        public void i(g gVar, MenuItem menuItem) {
            d.this.h.removeCallbacksAndMessages(gVar);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.d$d, reason: collision with other inner class name */
    private static class C0011d {
        public final j0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g f198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f199c;

        public C0011d(j0 j0Var, g gVar, int i) {
            this.a = j0Var;
            this.f198b = gVar;
            this.f199c = i;
        }

        public ListView a() {
            return this.a.l();
        }
    }

    public d(Context context, View view, int i, int i2, boolean z) {
        this.f190c = context;
        this.p = view;
        this.e = i;
        this.f = i2;
        this.g = z;
        Resources resources = context.getResources();
        this.f191d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(c.a.d.abc_config_prefDialogWidth));
        this.h = new Handler();
    }

    private int A(g gVar) {
        int size = this.j.size();
        for (int i = 0; i < size; i++) {
            if (gVar == this.j.get(i).f198b) {
                return i;
            }
        }
        return -1;
    }

    private MenuItem B(g gVar, g gVar2) {
        int size = gVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = gVar.getItem(i);
            if (item.hasSubMenu() && gVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View C(C0011d c0011d, g gVar) {
        f fVar;
        int headersCount;
        int firstVisiblePosition;
        MenuItem menuItemB = B(c0011d.f198b, gVar);
        if (menuItemB == null) {
            return null;
        }
        ListView listViewA = c0011d.a();
        ListAdapter adapter = listViewA.getAdapter();
        int i = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            fVar = (f) headerViewListAdapter.getWrappedAdapter();
        } else {
            fVar = (f) adapter;
            headersCount = 0;
        }
        int count = fVar.getCount();
        while (true) {
            if (i >= count) {
                i = -1;
                break;
            }
            if (menuItemB == fVar.getItem(i)) {
                break;
            }
            i++;
        }
        if (i != -1 && (firstVisiblePosition = (i + headersCount) - listViewA.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewA.getChildCount()) {
            return listViewA.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    private int D() {
        return v.C(this.p) == 1 ? 0 : 1;
    }

    private int E(int i) {
        List<C0011d> list = this.j;
        ListView listViewA = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        listViewA.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.q.getWindowVisibleDisplayFrame(rect);
        return this.r == 1 ? (iArr[0] + listViewA.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    private void F(g gVar) {
        C0011d c0011d;
        View viewC;
        int i;
        int i2;
        int i3;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f190c);
        f fVar = new f(gVar, layoutInflaterFrom, this.g, C);
        if (!b() && this.w) {
            fVar.d(true);
        } else if (b()) {
            fVar.d(k.x(gVar));
        }
        int iO = k.o(fVar, null, this.f190c, this.f191d);
        j0 j0VarZ = z();
        j0VarZ.o(fVar);
        j0VarZ.F(iO);
        j0VarZ.G(this.o);
        if (this.j.size() > 0) {
            List<C0011d> list = this.j;
            c0011d = list.get(list.size() - 1);
            viewC = C(c0011d, gVar);
        } else {
            c0011d = null;
            viewC = null;
        }
        if (viewC != null) {
            j0VarZ.U(false);
            j0VarZ.R(null);
            int iE = E(iO);
            boolean z = iE == 1;
            this.r = iE;
            if (Build.VERSION.SDK_INT >= 26) {
                j0VarZ.D(viewC);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.p.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewC.getLocationOnScreen(iArr2);
                if ((this.o & 7) == 5) {
                    iArr[0] = iArr[0] + this.p.getWidth();
                    iArr2[0] = iArr2[0] + viewC.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.o & 5) == 5) {
                if (!z) {
                    iO = viewC.getWidth();
                    i3 = i - iO;
                }
                i3 = i + iO;
            } else {
                if (z) {
                    iO = viewC.getWidth();
                    i3 = i + iO;
                }
                i3 = i - iO;
            }
            j0VarZ.d(i3);
            j0VarZ.M(true);
            j0VarZ.n(i2);
        } else {
            if (this.s) {
                j0VarZ.d(this.u);
            }
            if (this.t) {
                j0VarZ.n(this.v);
            }
            j0VarZ.H(n());
        }
        this.j.add(new C0011d(j0VarZ, gVar, this.r));
        j0VarZ.g();
        ListView listViewL = j0VarZ.l();
        listViewL.setOnKeyListener(this);
        if (c0011d == null && this.x && gVar.x() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(c.a.g.abc_popup_menu_header_item_layout, (ViewGroup) listViewL, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(gVar.x());
            listViewL.addHeaderView(frameLayout, null, false);
            j0VarZ.g();
        }
    }

    private j0 z() {
        j0 j0Var = new j0(this.f190c, null, this.e, this.f);
        j0Var.T(this.m);
        j0Var.L(this);
        j0Var.K(this);
        j0Var.D(this.p);
        j0Var.G(this.o);
        j0Var.J(true);
        j0Var.I(2);
        return j0Var;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(g gVar, boolean z) {
        int iA = A(gVar);
        if (iA < 0) {
            return;
        }
        int i = iA + 1;
        if (i < this.j.size()) {
            this.j.get(i).f198b.e(false);
        }
        C0011d c0011dRemove = this.j.remove(iA);
        c0011dRemove.f198b.O(this);
        if (this.B) {
            c0011dRemove.a.S(null);
            c0011dRemove.a.E(0);
        }
        c0011dRemove.a.dismiss();
        int size = this.j.size();
        if (size > 0) {
            this.r = this.j.get(size - 1).f199c;
        } else {
            this.r = D();
        }
        if (size != 0) {
            if (z) {
                this.j.get(0).f198b.e(false);
                return;
            }
            return;
        }
        dismiss();
        m.a aVar = this.y;
        if (aVar != null) {
            aVar.a(gVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.z;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.z.removeGlobalOnLayoutListener(this.k);
            }
            this.z = null;
        }
        this.q.removeOnAttachStateChangeListener(this.l);
        this.A.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean b() {
        return this.j.size() > 0 && this.j.get(0).a.b();
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        int size = this.j.size();
        if (size > 0) {
            C0011d[] c0011dArr = (C0011d[]) this.j.toArray(new C0011d[size]);
            for (int i = size - 1; i >= 0; i--) {
                C0011d c0011d = c0011dArr[i];
                if (c0011d.a.b()) {
                    c0011d.a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public void g() {
        if (b()) {
            return;
        }
        Iterator<g> it = this.i.iterator();
        while (it.hasNext()) {
            F(it.next());
        }
        this.i.clear();
        View view = this.p;
        this.q = view;
        if (view != null) {
            boolean z = this.z == null;
            ViewTreeObserver viewTreeObserver = this.q.getViewTreeObserver();
            this.z = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.k);
            }
            this.q.addOnAttachStateChangeListener(this.l);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(m.a aVar) {
        this.y = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean i(r rVar) {
        for (C0011d c0011d : this.j) {
            if (rVar == c0011d.f198b) {
                c0011d.a().requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        k(rVar);
        m.a aVar = this.y;
        if (aVar != null) {
            aVar.b(rVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void j(boolean z) {
        Iterator<C0011d> it = this.j.iterator();
        while (it.hasNext()) {
            k.y(it.next().a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void k(g gVar) {
        gVar.c(this, this.f190c);
        if (b()) {
            F(gVar);
        } else {
            this.i.add(gVar);
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView l() {
        if (this.j.isEmpty()) {
            return null;
        }
        return this.j.get(r0.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.k
    protected boolean m() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0011d c0011d;
        int size = this.j.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0011d = null;
                break;
            }
            c0011d = this.j.get(i);
            if (!c0011d.a.b()) {
                break;
            } else {
                i++;
            }
        }
        if (c0011d != null) {
            c0011d.f198b.e(false);
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
        if (this.p != view) {
            this.p = view;
            this.o = androidx.core.view.e.b(this.n, v.C(view));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void r(boolean z) {
        this.w = z;
    }

    @Override // androidx.appcompat.view.menu.k
    public void s(int i) {
        if (this.n != i) {
            this.n = i;
            this.o = androidx.core.view.e.b(i, v.C(this.p));
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void t(int i) {
        this.s = true;
        this.u = i;
    }

    @Override // androidx.appcompat.view.menu.k
    public void u(PopupWindow.OnDismissListener onDismissListener) {
        this.A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void v(boolean z) {
        this.x = z;
    }

    @Override // androidx.appcompat.view.menu.k
    public void w(int i) {
        this.t = true;
        this.v = i;
    }
}
