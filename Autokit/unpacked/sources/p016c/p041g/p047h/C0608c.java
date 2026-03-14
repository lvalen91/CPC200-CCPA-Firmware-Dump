package p016c.p041g.p047h;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import androidx.core.content.p003c.C0246c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p016c.p041g.p047h.C0611f;

/* JADX INFO: renamed from: c.g.h.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0608c {

    /* JADX INFO: renamed from: a */
    private static final Comparator<byte[]> f3733a = new a();

    /* JADX INFO: renamed from: c.g.h.c$a */
    class a implements Comparator<byte[]> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            int length;
            int length2;
            if (bArr.length == bArr2.length) {
                for (int i = 0; i < bArr.length; i++) {
                    if (bArr[i] != bArr2[i]) {
                        length = bArr[i];
                        length2 = bArr2[i];
                    }
                }
                return 0;
            }
            length = bArr.length;
            length2 = bArr2.length;
            return length - length2;
        }
    }

    /* JADX INFO: renamed from: a */
    private static List<byte[]> m4762a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    private static boolean m4763b(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: c */
    private static List<List<byte[]>> m4764c(C0609d c0609d, Resources resources) {
        return c0609d.m4770b() != null ? c0609d.m4770b() : C0246c.m1726c(resources, c0609d.m4771c());
    }

    /* JADX INFO: renamed from: d */
    static C0611f.a m4765d(Context context, C0609d c0609d, CancellationSignal cancellationSignal) {
        ProviderInfo providerInfoM4766e = m4766e(context.getPackageManager(), c0609d, context.getResources());
        return providerInfoM4766e == null ? C0611f.a.m4788a(1, null) : C0611f.a.m4788a(0, m4767f(context, c0609d, providerInfoM4766e.authority, cancellationSignal));
    }

    /* JADX INFO: renamed from: e */
    static ProviderInfo m4766e(PackageManager packageManager, C0609d c0609d, Resources resources) throws PackageManager.NameNotFoundException {
        String strM4773e = c0609d.m4773e();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strM4773e, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + strM4773e);
        }
        if (!providerInfoResolveContentProvider.packageName.equals(c0609d.m4774f())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + strM4773e + ", but package was not " + c0609d.m4774f());
        }
        List<byte[]> listM4762a = m4762a(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
        Collections.sort(listM4762a, f3733a);
        List<List<byte[]>> listM4764c = m4764c(c0609d, resources);
        for (int i = 0; i < listM4764c.size(); i++) {
            ArrayList arrayList = new ArrayList(listM4764c.get(i));
            Collections.sort(arrayList, f3733a);
            if (m4763b(listM4762a, arrayList)) {
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    static C0611f.b[] m4767f(Context context, C0609d c0609d, String str, CancellationSignal cancellationSignal) throws Throwable {
        int i;
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
        Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
            if (Build.VERSION.SDK_INT > 16) {
                i = 1;
                cursorQuery = context.getContentResolver().query(uriBuild, strArr, "query = ?", new String[]{c0609d.m4775g()}, null, cancellationSignal);
            } else {
                i = 1;
                cursorQuery = context.getContentResolver().query(uriBuild, strArr, "query = ?", new String[]{c0609d.m4775g()}, null);
            }
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        int columnIndex = cursorQuery.getColumnIndex("result_code");
                        arrayList = new ArrayList();
                        int columnIndex2 = cursorQuery.getColumnIndex("_id");
                        int columnIndex3 = cursorQuery.getColumnIndex("file_id");
                        int columnIndex4 = cursorQuery.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursorQuery.getColumnIndex("font_weight");
                        int columnIndex6 = cursorQuery.getColumnIndex("font_italic");
                        while (cursorQuery.moveToNext()) {
                            int i2 = columnIndex != -1 ? cursorQuery.getInt(columnIndex) : 0;
                            arrayList.add(C0611f.b.m4791a(columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorQuery.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorQuery.getLong(columnIndex3)), columnIndex4 != -1 ? cursorQuery.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursorQuery.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursorQuery.getInt(columnIndex6) == i, i2));
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return (C0611f.b[]) arrayList.toArray(new C0611f.b[0]);
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
