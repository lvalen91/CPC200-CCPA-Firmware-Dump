package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.InterfaceC0108n;
import java.util.ArrayList;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0100f extends BaseAdapter {

    /* JADX INFO: renamed from: b */
    C0101g f631b;

    /* JADX INFO: renamed from: c */
    private int f632c = -1;

    /* JADX INFO: renamed from: d */
    private boolean f633d;

    /* JADX INFO: renamed from: e */
    private final boolean f634e;

    /* JADX INFO: renamed from: f */
    private final LayoutInflater f635f;

    /* JADX INFO: renamed from: g */
    private final int f636g;

    public C0100f(C0101g c0101g, LayoutInflater layoutInflater, boolean z, int i) {
        this.f634e = z;
        this.f635f = layoutInflater;
        this.f631b = c0101g;
        this.f636g = i;
        m714a();
    }

    /* JADX INFO: renamed from: a */
    void m714a() {
        C0103i c0103iM769v = this.f631b.m769v();
        if (c0103iM769v != null) {
            ArrayList<C0103i> arrayListM773z = this.f631b.m773z();
            int size = arrayListM773z.size();
            for (int i = 0; i < size; i++) {
                if (arrayListM773z.get(i) == c0103iM769v) {
                    this.f632c = i;
                    return;
                }
            }
        }
        this.f632c = -1;
    }

    /* JADX INFO: renamed from: b */
    public C0101g m715b() {
        return this.f631b;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public C0103i getItem(int i) {
        ArrayList<C0103i> arrayListM773z = this.f634e ? this.f631b.m773z() : this.f631b.m729E();
        int i2 = this.f632c;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return arrayListM773z.get(i);
    }

    /* JADX INFO: renamed from: d */
    public void m717d(boolean z) {
        this.f633d = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f632c < 0 ? (this.f634e ? this.f631b.m773z() : this.f631b.m729E()).size() : r0.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f635f.inflate(this.f636g, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f631b.mo730F() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        InterfaceC0108n.a aVar = (InterfaceC0108n.a) view;
        if (this.f633d) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.mo647f(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m714a();
        super.notifyDataSetChanged();
    }
}
