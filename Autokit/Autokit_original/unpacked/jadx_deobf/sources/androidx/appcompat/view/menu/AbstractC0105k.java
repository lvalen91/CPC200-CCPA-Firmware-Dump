package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: renamed from: androidx.appcompat.view.menu.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0105k implements InterfaceC0110p, InterfaceC0107m, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b */
    private Rect f710b;

    AbstractC0105k() {
    }

    /* JADX INFO: renamed from: o */
    protected static int m814o(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        View view = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < count; i4++) {
            int itemViewType = listAdapter.getItemViewType(i4);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (viewGroup == null) {
                viewGroup = new FrameLayout(context);
            }
            view = listAdapter.getView(i4, view, viewGroup);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        return i2;
    }

    /* JADX INFO: renamed from: x */
    protected static boolean m815x(C0101g c0101g) {
        int size = c0101g.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = c0101g.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: y */
    protected static C0100f m816y(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (C0100f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0100f) listAdapter;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: d */
    public void mo668d(Context context, C0101g c0101g) {
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: e */
    public boolean mo669e(C0101g c0101g, C0103i c0103i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: f */
    public boolean mo670f(C0101g c0101g, C0103i c0103i) {
        return false;
    }

    /* JADX INFO: renamed from: k */
    public abstract void mo697k(C0101g c0101g);

    /* JADX INFO: renamed from: m */
    protected boolean mo699m() {
        return true;
    }

    /* JADX INFO: renamed from: n */
    public Rect m817n() {
        return this.f710b;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        m816y(listAdapter).f631b.m737M((MenuItem) listAdapter.getItem(i), this, mo699m() ? 0 : 4);
    }

    /* JADX INFO: renamed from: p */
    public abstract void mo700p(View view);

    /* JADX INFO: renamed from: q */
    public void m818q(Rect rect) {
        this.f710b = rect;
    }

    /* JADX INFO: renamed from: r */
    public abstract void mo701r(boolean z);

    /* JADX INFO: renamed from: s */
    public abstract void mo702s(int i);

    /* JADX INFO: renamed from: t */
    public abstract void mo703t(int i);

    /* JADX INFO: renamed from: u */
    public abstract void mo704u(PopupWindow.OnDismissListener onDismissListener);

    /* JADX INFO: renamed from: v */
    public abstract void mo705v(boolean z);

    /* JADX INFO: renamed from: w */
    public abstract void mo706w(int i);
}
