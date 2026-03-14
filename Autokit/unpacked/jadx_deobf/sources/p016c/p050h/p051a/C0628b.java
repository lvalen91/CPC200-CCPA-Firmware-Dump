package p016c.p050h.p051a;

import android.database.Cursor;
import android.widget.Filter;

/* JADX INFO: renamed from: c.h.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0628b extends Filter {

    /* JADX INFO: renamed from: a */
    a f3827a;

    /* JADX INFO: renamed from: c.h.a.b$a */
    interface a {
        /* JADX INFO: renamed from: a */
        CharSequence mo1266a(Cursor cursor);

        /* JADX INFO: renamed from: b */
        void mo1267b(Cursor cursor);

        /* JADX INFO: renamed from: c */
        Cursor mo4857c();

        /* JADX INFO: renamed from: d */
        Cursor mo1268d(CharSequence charSequence);
    }

    C0628b(a aVar) {
        this.f3827a = aVar;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f3827a.mo1266a((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursorMo1268d = this.f3827a.mo1268d(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorMo1268d != null) {
            filterResults.count = cursorMo1268d.getCount();
            filterResults.values = cursorMo1268d;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor cursorMo4857c = this.f3827a.mo4857c();
        Object obj = filterResults.values;
        if (obj == null || obj == cursorMo4857c) {
            return;
        }
        this.f3827a.mo1267b((Cursor) obj);
    }
}
