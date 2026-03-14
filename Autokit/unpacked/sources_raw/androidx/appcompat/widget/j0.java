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
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class j0 extends h0 implements i0 {
    private static Method K;
    private i0 J;

    public static class a extends d0 {
        final int p;
        final int q;
        private i0 r;
        private MenuItem s;

        public a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.p = 22;
                this.q = 21;
            } else {
                this.p = 21;
                this.q = 22;
            }
        }

        @Override // androidx.appcompat.widget.d0, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int headersCount;
            androidx.appcompat.view.menu.f fVar;
            int iPointToPosition;
            int i;
            if (this.r != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    fVar = (androidx.appcompat.view.menu.f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    headersCount = 0;
                    fVar = (androidx.appcompat.view.menu.f) adapter;
                }
                androidx.appcompat.view.menu.i item = null;
                if (motionEvent.getAction() != 10 && (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i = iPointToPosition - headersCount) >= 0 && i < fVar.getCount()) {
                    item = fVar.getItem(i);
                }
                MenuItem menuItem = this.s;
                if (menuItem != item) {
                    androidx.appcompat.view.menu.g gVarB = fVar.b();
                    if (menuItem != null) {
                        this.r.i(gVarB, menuItem);
                    }
                    this.s = item;
                    if (item != null) {
                        this.r.a(gVarB, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.p) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i != this.q) {
                return super.onKeyDown(i, keyEvent);
            }
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (androidx.appcompat.view.menu.f) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (androidx.appcompat.view.menu.f) adapter).b().e(false);
            return true;
        }

        public void setHoverListener(i0 i0Var) {
            this.r = i0Var;
        }

        @Override // androidx.appcompat.widget.d0, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                K = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public j0(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void R(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.F.setEnterTransition((Transition) obj);
        }
    }

    public void S(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.F.setExitTransition((Transition) obj);
        }
    }

    public void T(i0 i0Var) {
        this.J = i0Var;
    }

    public void U(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.F.setTouchModal(z);
            return;
        }
        Method method = K;
        if (method != null) {
            try {
                method.invoke(this.F, Boolean.valueOf(z));
            } catch (Exception unused) {
            }
        }
    }

    @Override // androidx.appcompat.widget.i0
    public void a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        i0 i0Var = this.J;
        if (i0Var != null) {
            i0Var.a(gVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.i0
    public void i(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        i0 i0Var = this.J;
        if (i0Var != null) {
            i0Var.i(gVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.h0
    d0 s(Context context, boolean z) {
        a aVar = new a(context, z);
        aVar.setHoverListener(this);
        return aVar;
    }
}
