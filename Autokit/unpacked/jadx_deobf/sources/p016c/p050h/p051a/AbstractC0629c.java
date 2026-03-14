package p016c.p050h.p051a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: c.h.a.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0629c extends AbstractC0627a {

    /* JADX INFO: renamed from: j */
    private int f3828j;

    /* JADX INFO: renamed from: k */
    private int f3829k;

    /* JADX INFO: renamed from: l */
    private LayoutInflater f3830l;

    @Deprecated
    public AbstractC0629c(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f3829k = i;
        this.f3828j = i;
        this.f3830l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // p016c.p050h.p051a.AbstractC0627a
    /* JADX INFO: renamed from: g */
    public View mo4859g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f3830l.inflate(this.f3829k, viewGroup, false);
    }

    @Override // p016c.p050h.p051a.AbstractC0627a
    /* JADX INFO: renamed from: h */
    public View mo1270h(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f3830l.inflate(this.f3828j, viewGroup, false);
    }
}
