package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.u0;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class ExpandedMenuView extends ListView implements g.b, n, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f176d = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f178c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // androidx.appcompat.view.menu.g.b
    public boolean a(i iVar) {
        return this.f177b.L(iVar, 0);
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(g gVar) {
        this.f177b = gVar;
    }

    public int getWindowAnimations() {
        return this.f178c;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        a((i) getAdapter().getItem(i));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        u0 u0VarV = u0.v(context, attributeSet, f176d, i, 0);
        if (u0VarV.s(0)) {
            setBackgroundDrawable(u0VarV.g(0));
        }
        if (u0VarV.s(1)) {
            setDivider(u0VarV.g(1));
        }
        u0VarV.w();
    }
}
