package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class e implements m, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    LayoutInflater f201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    g f202d;
    ExpandedMenuView e;
    int f;
    int g;
    int h;
    private m.a i;
    a j;

    private class a extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f203b = -1;

        public a() {
            a();
        }

        void a() {
            i iVarV = e.this.f202d.v();
            if (iVarV != null) {
                ArrayList<i> arrayListZ = e.this.f202d.z();
                int size = arrayListZ.size();
                for (int i = 0; i < size; i++) {
                    if (arrayListZ.get(i) == iVarV) {
                        this.f203b = i;
                        return;
                    }
                }
            }
            this.f203b = -1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i getItem(int i) {
            ArrayList<i> arrayListZ = e.this.f202d.z();
            int i2 = i + e.this.f;
            int i3 = this.f203b;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return arrayListZ.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = e.this.f202d.z().size() - e.this.f;
            return this.f203b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                e eVar = e.this;
                view = eVar.f201c.inflate(eVar.h, viewGroup, false);
            }
            ((n.a) view).f(getItem(i), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public e(Context context, int i) {
        this(i, 0);
        this.f200b = context;
        this.f201c = LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(g gVar, boolean z) {
        m.a aVar = this.i;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    public ListAdapter b() {
        if (this.j == null) {
            this.j = new a();
        }
        return this.j;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void d(Context context, g gVar) {
        if (this.g != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.g);
            this.f200b = contextThemeWrapper;
            this.f201c = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f200b != null) {
            this.f200b = context;
            if (this.f201c == null) {
                this.f201c = LayoutInflater.from(context);
            }
        }
        this.f202d = gVar;
        a aVar = this.j;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean e(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean f(g gVar, i iVar) {
        return false;
    }

    public n g(ViewGroup viewGroup) {
        if (this.e == null) {
            this.e = (ExpandedMenuView) this.f201c.inflate(c.a.g.abc_expanded_menu_layout, viewGroup, false);
            if (this.j == null) {
                this.j = new a();
            }
            this.e.setAdapter((ListAdapter) this.j);
            this.e.setOnItemClickListener(this);
        }
        return this.e;
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(m.a aVar) {
        this.i = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean i(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        new h(rVar).d(null);
        m.a aVar = this.i;
        if (aVar == null) {
            return true;
        }
        aVar.b(rVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void j(boolean z) {
        a aVar = this.j;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f202d.M(this.j.getItem(i), this, 0);
    }

    public e(int i, int i2) {
        this.h = i;
        this.g = i2;
    }
}
