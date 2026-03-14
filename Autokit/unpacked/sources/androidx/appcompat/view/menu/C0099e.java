package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.appcompat.view.menu.InterfaceC0108n;
import java.util.ArrayList;
import p016c.p017a.C0499g;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0099e implements InterfaceC0107m, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b */
    Context f620b;

    /* JADX INFO: renamed from: c */
    LayoutInflater f621c;

    /* JADX INFO: renamed from: d */
    C0101g f622d;

    /* JADX INFO: renamed from: e */
    ExpandedMenuView f623e;

    /* JADX INFO: renamed from: f */
    int f624f;

    /* JADX INFO: renamed from: g */
    int f625g;

    /* JADX INFO: renamed from: h */
    int f626h;

    /* JADX INFO: renamed from: i */
    private InterfaceC0107m.a f627i;

    /* JADX INFO: renamed from: j */
    a f628j;

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.e$a */
    private class a extends BaseAdapter {

        /* JADX INFO: renamed from: b */
        private int f629b = -1;

        public a() {
            m712a();
        }

        /* JADX INFO: renamed from: a */
        void m712a() {
            C0103i c0103iM769v = C0099e.this.f622d.m769v();
            if (c0103iM769v != null) {
                ArrayList<C0103i> arrayListM773z = C0099e.this.f622d.m773z();
                int size = arrayListM773z.size();
                for (int i = 0; i < size; i++) {
                    if (arrayListM773z.get(i) == c0103iM769v) {
                        this.f629b = i;
                        return;
                    }
                }
            }
            this.f629b = -1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0103i getItem(int i) {
            ArrayList<C0103i> arrayListM773z = C0099e.this.f622d.m773z();
            int i2 = i + C0099e.this.f624f;
            int i3 = this.f629b;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return arrayListM773z.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = C0099e.this.f622d.m773z().size() - C0099e.this.f624f;
            return this.f629b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                C0099e c0099e = C0099e.this;
                view = c0099e.f621c.inflate(c0099e.f626h, viewGroup, false);
            }
            ((InterfaceC0108n.a) view).mo647f(getItem(i), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m712a();
            super.notifyDataSetChanged();
        }
    }

    public C0099e(Context context, int i) {
        this(i, 0);
        this.f620b = context;
        this.f621c = LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: a */
    public void mo666a(C0101g c0101g, boolean z) {
        InterfaceC0107m.a aVar = this.f627i;
        if (aVar != null) {
            aVar.mo532a(c0101g, z);
        }
    }

    /* JADX INFO: renamed from: b */
    public ListAdapter m710b() {
        if (this.f628j == null) {
            this.f628j = new a();
        }
        return this.f628j;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: c */
    public boolean mo695c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: d */
    public void mo668d(Context context, C0101g c0101g) {
        if (this.f625g != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f625g);
            this.f620b = contextThemeWrapper;
            this.f621c = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f620b != null) {
            this.f620b = context;
            if (this.f621c == null) {
                this.f621c = LayoutInflater.from(context);
            }
        }
        this.f622d = c0101g;
        a aVar = this.f628j;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
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

    /* JADX INFO: renamed from: g */
    public InterfaceC0108n m711g(ViewGroup viewGroup) {
        if (this.f623e == null) {
            this.f623e = (ExpandedMenuView) this.f621c.inflate(C0499g.abc_expanded_menu_layout, viewGroup, false);
            if (this.f628j == null) {
                this.f628j = new a();
            }
            this.f623e.setAdapter((ListAdapter) this.f628j);
            this.f623e.setOnItemClickListener(this);
        }
        return this.f623e;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: h */
    public void mo672h(InterfaceC0107m.a aVar) {
        this.f627i = aVar;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: i */
    public boolean mo673i(SubMenuC0112r subMenuC0112r) {
        if (!subMenuC0112r.hasVisibleItems()) {
            return false;
        }
        new DialogInterfaceOnKeyListenerC0102h(subMenuC0112r).m775d(null);
        InterfaceC0107m.a aVar = this.f627i;
        if (aVar == null) {
            return true;
        }
        aVar.mo533b(subMenuC0112r);
        return true;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: j */
    public void mo674j(boolean z) {
        a aVar = this.f628j;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f622d.m737M(this.f628j.getItem(i), this, 0);
    }

    public C0099e(int i, int i2) {
        this.f626h = i;
        this.f625g = i2;
    }
}
