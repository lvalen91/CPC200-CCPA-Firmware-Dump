package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.C0100f;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.view.menu.C0103i;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: androidx.appcompat.widget.j0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0173j0 extends C0169h0 implements InterfaceC0171i0 {

    /* JADX INFO: renamed from: K */
    private static Method f1179K;

    /* JADX INFO: renamed from: J */
    private InterfaceC0171i0 f1180J;

    /* JADX INFO: renamed from: androidx.appcompat.widget.j0$a */
    public static class a extends C0161d0 {

        /* JADX INFO: renamed from: p */
        final int f1181p;

        /* JADX INFO: renamed from: q */
        final int f1182q;

        /* JADX INFO: renamed from: r */
        private InterfaceC0171i0 f1183r;

        /* JADX INFO: renamed from: s */
        private MenuItem f1184s;

        public a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.f1181p = 22;
                this.f1182q = 21;
            } else {
                this.f1181p = 21;
                this.f1182q = 22;
            }
        }

        @Override // androidx.appcompat.widget.C0161d0, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int headersCount;
            C0100f c0100f;
            int iPointToPosition;
            int i;
            if (this.f1183r != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    c0100f = (C0100f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    headersCount = 0;
                    c0100f = (C0100f) adapter;
                }
                C0103i item = null;
                if (motionEvent.getAction() != 10 && (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i = iPointToPosition - headersCount) >= 0 && i < c0100f.getCount()) {
                    item = c0100f.getItem(i);
                }
                MenuItem menuItem = this.f1184s;
                if (menuItem != item) {
                    C0101g c0101gM715b = c0100f.m715b();
                    if (menuItem != null) {
                        this.f1183r.mo708i(c0101gM715b, menuItem);
                    }
                    this.f1184s = item;
                    if (item != null) {
                        this.f1183r.mo707a(c0101gM715b, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.f1181p) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i != this.f1182q) {
                return super.onKeyDown(i, keyEvent);
            }
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (C0100f) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (C0100f) adapter).m715b().m756e(false);
            return true;
        }

        public void setHoverListener(InterfaceC0171i0 interfaceC0171i0) {
            this.f1183r = interfaceC0171i0;
        }

        @Override // androidx.appcompat.widget.C0161d0, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f1179K = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public C0173j0(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* JADX INFO: renamed from: R */
    public void m1190R(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1134F.setEnterTransition((Transition) obj);
        }
    }

    /* JADX INFO: renamed from: S */
    public void m1191S(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1134F.setExitTransition((Transition) obj);
        }
    }

    /* JADX INFO: renamed from: T */
    public void m1192T(InterfaceC0171i0 interfaceC0171i0) {
        this.f1180J = interfaceC0171i0;
    }

    /* JADX INFO: renamed from: U */
    public void m1193U(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.f1134F.setTouchModal(z);
            return;
        }
        Method method = f1179K;
        if (method != null) {
            try {
                method.invoke(this.f1134F, Boolean.valueOf(z));
            } catch (Exception unused) {
            }
        }
    }

    @Override // androidx.appcompat.widget.InterfaceC0171i0
    /* JADX INFO: renamed from: a */
    public void mo707a(C0101g c0101g, MenuItem menuItem) {
        InterfaceC0171i0 interfaceC0171i0 = this.f1180J;
        if (interfaceC0171i0 != null) {
            interfaceC0171i0.mo707a(c0101g, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.InterfaceC0171i0
    /* JADX INFO: renamed from: i */
    public void mo708i(C0101g c0101g, MenuItem menuItem) {
        InterfaceC0171i0 interfaceC0171i0 = this.f1180J;
        if (interfaceC0171i0 != null) {
            interfaceC0171i0.mo708i(c0101g, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.C0169h0
    /* JADX INFO: renamed from: s */
    C0161d0 mo1160s(Context context, boolean z) {
        a aVar = new a(context, z);
        aVar.setHoverListener(this);
        return aVar;
    }
}
