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
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.appcompat.widget.C0173j0;
import androidx.appcompat.widget.InterfaceC0171i0;
import androidx.core.view.C0266e;
import androidx.core.view.C0292v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p016c.p017a.C0496d;
import p016c.p017a.C0499g;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class ViewOnKeyListenerC0098d extends AbstractC0105k implements InterfaceC0107m, View.OnKeyListener, PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: C */
    private static final int f583C = C0499g.abc_cascading_menu_item_layout;

    /* JADX INFO: renamed from: A */
    private PopupWindow.OnDismissListener f584A;

    /* JADX INFO: renamed from: B */
    boolean f585B;

    /* JADX INFO: renamed from: c */
    private final Context f586c;

    /* JADX INFO: renamed from: d */
    private final int f587d;

    /* JADX INFO: renamed from: e */
    private final int f588e;

    /* JADX INFO: renamed from: f */
    private final int f589f;

    /* JADX INFO: renamed from: g */
    private final boolean f590g;

    /* JADX INFO: renamed from: h */
    final Handler f591h;

    /* JADX INFO: renamed from: p */
    private View f599p;

    /* JADX INFO: renamed from: q */
    View f600q;

    /* JADX INFO: renamed from: s */
    private boolean f602s;

    /* JADX INFO: renamed from: t */
    private boolean f603t;

    /* JADX INFO: renamed from: u */
    private int f604u;

    /* JADX INFO: renamed from: v */
    private int f605v;

    /* JADX INFO: renamed from: x */
    private boolean f607x;

    /* JADX INFO: renamed from: y */
    private InterfaceC0107m.a f608y;

    /* JADX INFO: renamed from: z */
    ViewTreeObserver f609z;

    /* JADX INFO: renamed from: i */
    private final List<C0101g> f592i = new ArrayList();

    /* JADX INFO: renamed from: j */
    final List<d> f593j = new ArrayList();

    /* JADX INFO: renamed from: k */
    final ViewTreeObserver.OnGlobalLayoutListener f594k = new a();

    /* JADX INFO: renamed from: l */
    private final View.OnAttachStateChangeListener f595l = new b();

    /* JADX INFO: renamed from: m */
    private final InterfaceC0171i0 f596m = new c();

    /* JADX INFO: renamed from: n */
    private int f597n = 0;

    /* JADX INFO: renamed from: o */
    private int f598o = 0;

    /* JADX INFO: renamed from: w */
    private boolean f606w = false;

    /* JADX INFO: renamed from: r */
    private int f601r = m690D();

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.d$a */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!ViewOnKeyListenerC0098d.this.mo694b() || ViewOnKeyListenerC0098d.this.f593j.size() <= 0 || ViewOnKeyListenerC0098d.this.f593j.get(0).f617a.m1138B()) {
                return;
            }
            View view = ViewOnKeyListenerC0098d.this.f600q;
            if (view == null || !view.isShown()) {
                ViewOnKeyListenerC0098d.this.dismiss();
                return;
            }
            Iterator<d> it = ViewOnKeyListenerC0098d.this.f593j.iterator();
            while (it.hasNext()) {
                it.next().f617a.mo696g();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.d$b */
    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = ViewOnKeyListenerC0098d.this.f609z;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    ViewOnKeyListenerC0098d.this.f609z = view.getViewTreeObserver();
                }
                ViewOnKeyListenerC0098d viewOnKeyListenerC0098d = ViewOnKeyListenerC0098d.this;
                viewOnKeyListenerC0098d.f609z.removeGlobalOnLayoutListener(viewOnKeyListenerC0098d.f594k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.d$c */
    class c implements InterfaceC0171i0 {

        /* JADX INFO: renamed from: androidx.appcompat.view.menu.d$c$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ d f613b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ MenuItem f614c;

            /* JADX INFO: renamed from: d */
            final /* synthetic */ C0101g f615d;

            a(d dVar, MenuItem menuItem, C0101g c0101g) {
                this.f613b = dVar;
                this.f614c = menuItem;
                this.f615d = c0101g;
            }

            @Override // java.lang.Runnable
            public void run() {
                d dVar = this.f613b;
                if (dVar != null) {
                    ViewOnKeyListenerC0098d.this.f585B = true;
                    dVar.f618b.m756e(false);
                    ViewOnKeyListenerC0098d.this.f585B = false;
                }
                if (this.f614c.isEnabled() && this.f614c.hasSubMenu()) {
                    this.f615d.m736L(this.f614c, 4);
                }
            }
        }

        c() {
        }

        @Override // androidx.appcompat.widget.InterfaceC0171i0
        /* JADX INFO: renamed from: a */
        public void mo707a(C0101g c0101g, MenuItem menuItem) {
            ViewOnKeyListenerC0098d.this.f591h.removeCallbacksAndMessages(null);
            int size = ViewOnKeyListenerC0098d.this.f593j.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (c0101g == ViewOnKeyListenerC0098d.this.f593j.get(i).f618b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            ViewOnKeyListenerC0098d.this.f591h.postAtTime(new a(i2 < ViewOnKeyListenerC0098d.this.f593j.size() ? ViewOnKeyListenerC0098d.this.f593j.get(i2) : null, menuItem, c0101g), c0101g, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.InterfaceC0171i0
        /* JADX INFO: renamed from: i */
        public void mo708i(C0101g c0101g, MenuItem menuItem) {
            ViewOnKeyListenerC0098d.this.f591h.removeCallbacksAndMessages(c0101g);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.d$d */
    private static class d {

        /* JADX INFO: renamed from: a */
        public final C0173j0 f617a;

        /* JADX INFO: renamed from: b */
        public final C0101g f618b;

        /* JADX INFO: renamed from: c */
        public final int f619c;

        public d(C0173j0 c0173j0, C0101g c0101g, int i) {
            this.f617a = c0173j0;
            this.f618b = c0101g;
            this.f619c = i;
        }

        /* JADX INFO: renamed from: a */
        public ListView m709a() {
            return this.f617a.mo698l();
        }
    }

    public ViewOnKeyListenerC0098d(Context context, View view, int i, int i2, boolean z) {
        this.f586c = context;
        this.f599p = view;
        this.f588e = i;
        this.f589f = i2;
        this.f590g = z;
        Resources resources = context.getResources();
        this.f587d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0496d.abc_config_prefDialogWidth));
        this.f591h = new Handler();
    }

    /* JADX INFO: renamed from: A */
    private int m687A(C0101g c0101g) {
        int size = this.f593j.size();
        for (int i = 0; i < size; i++) {
            if (c0101g == this.f593j.get(i).f618b) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: renamed from: B */
    private MenuItem m688B(C0101g c0101g, C0101g c0101g2) {
        int size = c0101g.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0101g.getItem(i);
            if (item.hasSubMenu() && c0101g2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: C */
    private View m689C(d dVar, C0101g c0101g) {
        C0100f c0100f;
        int headersCount;
        int firstVisiblePosition;
        MenuItem menuItemM688B = m688B(dVar.f618b, c0101g);
        if (menuItemM688B == null) {
            return null;
        }
        ListView listViewM709a = dVar.m709a();
        ListAdapter adapter = listViewM709a.getAdapter();
        int i = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            headersCount = headerViewListAdapter.getHeadersCount();
            c0100f = (C0100f) headerViewListAdapter.getWrappedAdapter();
        } else {
            c0100f = (C0100f) adapter;
            headersCount = 0;
        }
        int count = c0100f.getCount();
        while (true) {
            if (i >= count) {
                i = -1;
                break;
            }
            if (menuItemM688B == c0100f.getItem(i)) {
                break;
            }
            i++;
        }
        if (i != -1 && (firstVisiblePosition = (i + headersCount) - listViewM709a.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listViewM709a.getChildCount()) {
            return listViewM709a.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    /* JADX INFO: renamed from: D */
    private int m690D() {
        return C0292v.m2046C(this.f599p) == 1 ? 0 : 1;
    }

    /* JADX INFO: renamed from: E */
    private int m691E(int i) {
        List<d> list = this.f593j;
        ListView listViewM709a = list.get(list.size() - 1).m709a();
        int[] iArr = new int[2];
        listViewM709a.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f600q.getWindowVisibleDisplayFrame(rect);
        return this.f601r == 1 ? (iArr[0] + listViewM709a.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    /* JADX INFO: renamed from: F */
    private void m692F(C0101g c0101g) {
        d dVar;
        View viewM689C;
        int i;
        int i2;
        int i3;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f586c);
        C0100f c0100f = new C0100f(c0101g, layoutInflaterFrom, this.f590g, f583C);
        if (!mo694b() && this.f606w) {
            c0100f.m717d(true);
        } else if (mo694b()) {
            c0100f.m717d(AbstractC0105k.m815x(c0101g));
        }
        int iM814o = AbstractC0105k.m814o(c0100f, null, this.f586c, this.f587d);
        C0173j0 c0173j0M693z = m693z();
        c0173j0M693z.mo1158o(c0100f);
        c0173j0M693z.m1141F(iM814o);
        c0173j0M693z.m1142G(this.f598o);
        if (this.f593j.size() > 0) {
            List<d> list = this.f593j;
            dVar = list.get(list.size() - 1);
            viewM689C = m689C(dVar, c0101g);
        } else {
            dVar = null;
            viewM689C = null;
        }
        if (viewM689C != null) {
            c0173j0M693z.m1193U(false);
            c0173j0M693z.m1190R(null);
            int iM691E = m691E(iM814o);
            boolean z = iM691E == 1;
            this.f601r = iM691E;
            if (Build.VERSION.SDK_INT >= 26) {
                c0173j0M693z.m1139D(viewM689C);
                i2 = 0;
                i = 0;
            } else {
                int[] iArr = new int[2];
                this.f599p.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                viewM689C.getLocationOnScreen(iArr2);
                if ((this.f598o & 7) == 5) {
                    iArr[0] = iArr[0] + this.f599p.getWidth();
                    iArr2[0] = iArr2[0] + viewM689C.getWidth();
                }
                i = iArr2[0] - iArr[0];
                i2 = iArr2[1] - iArr[1];
            }
            if ((this.f598o & 5) == 5) {
                if (!z) {
                    iM814o = viewM689C.getWidth();
                    i3 = i - iM814o;
                }
                i3 = i + iM814o;
            } else {
                if (z) {
                    iM814o = viewM689C.getWidth();
                    i3 = i + iM814o;
                }
                i3 = i - iM814o;
            }
            c0173j0M693z.m1153d(i3);
            c0173j0M693z.m1148M(true);
            c0173j0M693z.m1157n(i2);
        } else {
            if (this.f602s) {
                c0173j0M693z.m1153d(this.f604u);
            }
            if (this.f603t) {
                c0173j0M693z.m1157n(this.f605v);
            }
            c0173j0M693z.m1143H(m817n());
        }
        this.f593j.add(new d(c0173j0M693z, c0101g, this.f601r));
        c0173j0M693z.mo696g();
        ListView listViewMo698l = c0173j0M693z.mo698l();
        listViewMo698l.setOnKeyListener(this);
        if (dVar == null && this.f607x && c0101g.m771x() != null) {
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(C0499g.abc_popup_menu_header_item_layout, (ViewGroup) listViewMo698l, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(c0101g.m771x());
            listViewMo698l.addHeaderView(frameLayout, null, false);
            c0173j0M693z.mo696g();
        }
    }

    /* JADX INFO: renamed from: z */
    private C0173j0 m693z() {
        C0173j0 c0173j0 = new C0173j0(this.f586c, null, this.f588e, this.f589f);
        c0173j0.m1192T(this.f596m);
        c0173j0.m1147L(this);
        c0173j0.m1146K(this);
        c0173j0.m1139D(this.f599p);
        c0173j0.m1142G(this.f598o);
        c0173j0.m1145J(true);
        c0173j0.m1144I(2);
        return c0173j0;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: a */
    public void mo666a(C0101g c0101g, boolean z) {
        int iM687A = m687A(c0101g);
        if (iM687A < 0) {
            return;
        }
        int i = iM687A + 1;
        if (i < this.f593j.size()) {
            this.f593j.get(i).f618b.m756e(false);
        }
        d dVarRemove = this.f593j.remove(iM687A);
        dVarRemove.f618b.m738O(this);
        if (this.f585B) {
            dVarRemove.f617a.m1191S(null);
            dVarRemove.f617a.m1140E(0);
        }
        dVarRemove.f617a.dismiss();
        int size = this.f593j.size();
        if (size > 0) {
            this.f601r = this.f593j.get(size - 1).f619c;
        } else {
            this.f601r = m690D();
        }
        if (size != 0) {
            if (z) {
                this.f593j.get(0).f618b.m756e(false);
                return;
            }
            return;
        }
        dismiss();
        InterfaceC0107m.a aVar = this.f608y;
        if (aVar != null) {
            aVar.mo532a(c0101g, true);
        }
        ViewTreeObserver viewTreeObserver = this.f609z;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f609z.removeGlobalOnLayoutListener(this.f594k);
            }
            this.f609z = null;
        }
        this.f600q.removeOnAttachStateChangeListener(this.f595l);
        this.f584A.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    /* JADX INFO: renamed from: b */
    public boolean mo694b() {
        return this.f593j.size() > 0 && this.f593j.get(0).f617a.mo694b();
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: c */
    public boolean mo695c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    public void dismiss() {
        int size = this.f593j.size();
        if (size > 0) {
            d[] dVarArr = (d[]) this.f593j.toArray(new d[size]);
            for (int i = size - 1; i >= 0; i--) {
                d dVar = dVarArr[i];
                if (dVar.f617a.mo694b()) {
                    dVar.f617a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    /* JADX INFO: renamed from: g */
    public void mo696g() {
        if (mo694b()) {
            return;
        }
        Iterator<C0101g> it = this.f592i.iterator();
        while (it.hasNext()) {
            m692F(it.next());
        }
        this.f592i.clear();
        View view = this.f599p;
        this.f600q = view;
        if (view != null) {
            boolean z = this.f609z == null;
            ViewTreeObserver viewTreeObserver = this.f600q.getViewTreeObserver();
            this.f609z = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f594k);
            }
            this.f600q.addOnAttachStateChangeListener(this.f595l);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: h */
    public void mo672h(InterfaceC0107m.a aVar) {
        this.f608y = aVar;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: i */
    public boolean mo673i(SubMenuC0112r subMenuC0112r) {
        for (d dVar : this.f593j) {
            if (subMenuC0112r == dVar.f618b) {
                dVar.m709a().requestFocus();
                return true;
            }
        }
        if (!subMenuC0112r.hasVisibleItems()) {
            return false;
        }
        mo697k(subMenuC0112r);
        InterfaceC0107m.a aVar = this.f608y;
        if (aVar != null) {
            aVar.mo533b(subMenuC0112r);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: j */
    public void mo674j(boolean z) {
        Iterator<d> it = this.f593j.iterator();
        while (it.hasNext()) {
            AbstractC0105k.m816y(it.next().m709a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: k */
    public void mo697k(C0101g c0101g) {
        c0101g.m752c(this, this.f586c);
        if (mo694b()) {
            m692F(c0101g);
        } else {
            this.f592i.add(c0101g);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0110p
    /* JADX INFO: renamed from: l */
    public ListView mo698l() {
        if (this.f593j.isEmpty()) {
            return null;
        }
        return this.f593j.get(r0.size() - 1).m709a();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: m */
    protected boolean mo699m() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        d dVar;
        int size = this.f593j.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                dVar = null;
                break;
            }
            dVar = this.f593j.get(i);
            if (!dVar.f617a.mo694b()) {
                break;
            } else {
                i++;
            }
        }
        if (dVar != null) {
            dVar.f618b.m756e(false);
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
        if (this.f599p != view) {
            this.f599p = view;
            this.f598o = C0266e.m1883b(this.f597n, C0292v.m2046C(view));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: r */
    public void mo701r(boolean z) {
        this.f606w = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: s */
    public void mo702s(int i) {
        if (this.f597n != i) {
            this.f597n = i;
            this.f598o = C0266e.m1883b(i, C0292v.m2046C(this.f599p));
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: t */
    public void mo703t(int i) {
        this.f602s = true;
        this.f604u = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: u */
    public void mo704u(PopupWindow.OnDismissListener onDismissListener) {
        this.f584A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: v */
    public void mo705v(boolean z) {
        this.f607x = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0105k
    /* JADX INFO: renamed from: w */
    public void mo706w(int i) {
        this.f603t = true;
        this.f605v = i;
    }
}
