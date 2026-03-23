package c.h.a;

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
import c.h.a.b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f1240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f1241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Cursor f1242d;
    protected Context e;
    protected int f;
    protected C0056a g;
    protected DataSetObserver h;
    protected c.h.a.b i;

    /* JADX INFO: renamed from: c.h.a.a$a, reason: collision with other inner class name */
    private class C0056a extends ContentObserver {
        C0056a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            a.this.i();
        }
    }

    private class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a aVar = a.this;
            aVar.f1240b = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a aVar = a.this;
            aVar.f1240b = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z) {
        f(context, cursor, z ? 1 : 2);
    }

    public abstract CharSequence a(Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursorJ = j(cursor);
        if (cursorJ != null) {
            cursorJ.close();
        }
    }

    @Override // c.h.a.b.a
    public Cursor c() {
        return this.f1242d;
    }

    public abstract void e(View view, Context context, Cursor cursor);

    void f(Context context, Cursor cursor, int i) {
        if ((i & 1) == 1) {
            i |= 2;
            this.f1241c = true;
        } else {
            this.f1241c = false;
        }
        boolean z = cursor != null;
        this.f1242d = cursor;
        this.f1240b = z;
        this.e = context;
        this.f = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.g = new C0056a();
            this.h = new b();
        } else {
            this.g = null;
            this.h = null;
        }
        if (z) {
            C0056a c0056a = this.g;
            if (c0056a != null) {
                cursor.registerContentObserver(c0056a);
            }
            DataSetObserver dataSetObserver = this.h;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract View g(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f1240b || (cursor = this.f1242d) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.f1240b) {
            return null;
        }
        this.f1242d.moveToPosition(i);
        if (view == null) {
            view = g(this.e, this.f1242d, viewGroup);
        }
        e(view, this.e, this.f1242d);
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.i == null) {
            this.i = new c.h.a.b(this);
        }
        return this.i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f1240b || (cursor = this.f1242d) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f1242d;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (this.f1240b && (cursor = this.f1242d) != null && cursor.moveToPosition(i)) {
            return this.f1242d.getLong(this.f);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f1240b) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (this.f1242d.moveToPosition(i)) {
            if (view == null) {
                view = h(this.e, this.f1242d, viewGroup);
            }
            e(view, this.e, this.f1242d);
            return view;
        }
        throw new IllegalStateException("couldn't move cursor to position " + i);
    }

    public abstract View h(Context context, Cursor cursor, ViewGroup viewGroup);

    protected void i() {
        Cursor cursor;
        if (!this.f1241c || (cursor = this.f1242d) == null || cursor.isClosed()) {
            return;
        }
        this.f1240b = this.f1242d.requery();
    }

    public Cursor j(Cursor cursor) {
        Cursor cursor2 = this.f1242d;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0056a c0056a = this.g;
            if (c0056a != null) {
                cursor2.unregisterContentObserver(c0056a);
            }
            DataSetObserver dataSetObserver = this.h;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1242d = cursor;
        if (cursor != null) {
            C0056a c0056a2 = this.g;
            if (c0056a2 != null) {
                cursor.registerContentObserver(c0056a2);
            }
            DataSetObserver dataSetObserver2 = this.h;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f = cursor.getColumnIndexOrThrow("_id");
            this.f1240b = true;
            notifyDataSetChanged();
        } else {
            this.f = -1;
            this.f1240b = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
