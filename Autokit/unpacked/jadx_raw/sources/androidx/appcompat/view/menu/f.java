package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    g f205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f206c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f207d;
    private final boolean e;
    private final LayoutInflater f;
    private final int g;

    public f(g gVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.e = z;
        this.f = layoutInflater;
        this.f205b = gVar;
        this.g = i;
        a();
    }

    void a() {
        i iVarV = this.f205b.v();
        if (iVarV != null) {
            ArrayList<i> arrayListZ = this.f205b.z();
            int size = arrayListZ.size();
            for (int i = 0; i < size; i++) {
                if (arrayListZ.get(i) == iVarV) {
                    this.f206c = i;
                    return;
                }
            }
        }
        this.f206c = -1;
    }

    public g b() {
        return this.f205b;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public i getItem(int i) {
        ArrayList<i> arrayListZ = this.e ? this.f205b.z() : this.f205b.E();
        int i2 = this.f206c;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return arrayListZ.get(i);
    }

    public void d(boolean z) {
        this.f207d = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f206c < 0 ? (this.e ? this.f205b.z() : this.f205b.E()).size() : r0.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f.inflate(this.g, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f205b.F() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        n.a aVar = (n.a) view;
        if (this.f207d) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.f(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
