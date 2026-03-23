package p016c.p050h.p051a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import p016c.p050h.p051a.C0628b;

/* JADX INFO: renamed from: c.h.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0627a extends BaseAdapter implements Filterable, C0628b.a {

    /* JADX INFO: renamed from: b */
    protected boolean f3817b;

    /* JADX INFO: renamed from: c */
    protected boolean f3818c;

    /* JADX INFO: renamed from: d */
    protected Cursor f3819d;

    /* JADX INFO: renamed from: e */
    protected Context f3820e;

    /* JADX INFO: renamed from: f */
    protected int f3821f;

    /* JADX INFO: renamed from: g */
    protected a f3822g;

    /* JADX INFO: renamed from: h */
    protected DataSetObserver f3823h;

    /* JADX INFO: renamed from: i */
    protected C0628b f3824i;

    /* JADX INFO: renamed from: c.h.a.a$a */
    private class a extends ContentObserver {
        a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC0627a.this.m4860i();
        }
    }

    /* JADX INFO: renamed from: c.h.a.a$b */
    private class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AbstractC0627a abstractC0627a = AbstractC0627a.this;
            abstractC0627a.f3817b = true;
            abstractC0627a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AbstractC0627a abstractC0627a = AbstractC0627a.this;
            abstractC0627a.f3817b = false;
            abstractC0627a.notifyDataSetInvalidated();
        }
    }

    public AbstractC0627a(Context context, Cursor cursor, boolean z) {
        m4858f(context, cursor, z ? 1 : 2);
    }

    /* JADX INFO: renamed from: a */
    public abstract CharSequence mo1266a(Cursor cursor);

    /* JADX INFO: renamed from: b */
    public void mo1267b(Cursor cursor) {
        Cursor cursorM4861j = m4861j(cursor);
        if (cursorM4861j != null) {
            cursorM4861j.close();
        }
    }

    @Override // p016c.p050h.p051a.C0628b.a
    /* JADX INFO: renamed from: c */
    public Cursor mo4857c() {
        return this.f3819d;
    }

    /* JADX INFO: renamed from: e */
    public abstract void mo1269e(View view, Context context, Cursor cursor);

    /* JADX INFO: renamed from: f */
    void m4858f(Context context, Cursor cursor, int i) {
        if ((i & 1) == 1) {
            i |= 2;
            this.f3818c = true;
        } else {
            this.f3818c = false;
        }
        boolean z = cursor != null;
        this.f3819d = cursor;
        this.f3817b = z;
        this.f3820e = context;
        this.f3821f = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f3822g = new a();
            this.f3823h = new b();
        } else {
            this.f3822g = null;
            this.f3823h = null;
        }
        if (z) {
            a aVar = this.f3822g;
            if (aVar != null) {
                cursor.registerContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.f3823h;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public abstract View mo4859g(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f3817b || (cursor = this.f3819d) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.f3817b) {
            return null;
        }
        this.f3819d.moveToPosition(i);
        if (view == null) {
            view = mo4859g(this.f3820e, this.f3819d, viewGroup);
        }
        mo1269e(view, this.f3820e, this.f3819d);
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f3824i == null) {
            this.f3824i = new C0628b(this);
        }
        return this.f3824i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f3817b || (cursor = this.f3819d) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f3819d;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (this.f3817b && (cursor = this.f3819d) != null && cursor.moveToPosition(i)) {
            return this.f3819d.getLong(this.f3821f);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f3817b) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (this.f3819d.moveToPosition(i)) {
            if (view == null) {
                view = mo1270h(this.f3820e, this.f3819d, viewGroup);
            }
            mo1269e(view, this.f3820e, this.f3819d);
            return view;
        }
        throw new IllegalStateException("couldn't move cursor to position " + i);
    }

    /* JADX INFO: renamed from: h */
    public abstract View mo1270h(Context context, Cursor cursor, ViewGroup viewGroup);

    /* JADX INFO: renamed from: i */
    protected void m4860i() {
        Cursor cursor;
        if (!this.f3818c || (cursor = this.f3819d) == null || cursor.isClosed()) {
            return;
        }
        this.f3817b = this.f3819d.requery();
    }

    /* JADX INFO: renamed from: j */
    public Cursor m4861j(Cursor cursor) {
        Cursor cursor2 = this.f3819d;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            a aVar = this.f3822g;
            if (aVar != null) {
                cursor2.unregisterContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.f3823h;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f3819d = cursor;
        if (cursor != null) {
            a aVar2 = this.f3822g;
            if (aVar2 != null) {
                cursor.registerContentObserver(aVar2);
            }
            DataSetObserver dataSetObserver2 = this.f3823h;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f3821f = cursor.getColumnIndexOrThrow("_id");
            this.f3817b = true;
            notifyDataSetChanged();
        } else {
            this.f3821f = -1;
            this.f3817b = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
