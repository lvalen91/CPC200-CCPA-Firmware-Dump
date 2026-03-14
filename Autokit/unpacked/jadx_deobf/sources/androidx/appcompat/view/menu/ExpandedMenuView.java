package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.widget.C0195u0;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class ExpandedMenuView extends ListView implements C0101g.b, InterfaceC0108n, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: d */
    private static final int[] f533d = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: b */
    private C0101g f534b;

    /* JADX INFO: renamed from: c */
    private int f535c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // androidx.appcompat.view.menu.C0101g.b
    /* JADX INFO: renamed from: a */
    public boolean mo652a(C0103i c0103i) {
        return this.f534b.m736L(c0103i, 0);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n
    /* JADX INFO: renamed from: b */
    public void mo653b(C0101g c0101g) {
        this.f534b = c0101g;
    }

    public int getWindowAnimations() {
        return this.f535c;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo652a((C0103i) getAdapter().getItem(i));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0195u0 c0195u0M1321v = C0195u0.m1321v(context, attributeSet, f533d, i, 0);
        if (c0195u0M1321v.m1340s(0)) {
            setBackgroundDrawable(c0195u0M1321v.m1328g(0));
        }
        if (c0195u0M1321v.m1340s(1)) {
            setDivider(c0195u0M1321v.m1328g(1));
        }
        c0195u0M1321v.m1341w();
    }
}
