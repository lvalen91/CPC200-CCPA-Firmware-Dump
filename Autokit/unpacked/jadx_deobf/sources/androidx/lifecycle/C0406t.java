package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: androidx.lifecycle.t */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0406t {

    /* JADX INFO: renamed from: e */
    private static final Class[] f2541e;

    /* JADX INFO: renamed from: a */
    final Map<String, Object> f2542a;

    /* JADX INFO: renamed from: b */
    final Map<String, SavedStateRegistry.InterfaceC0480b> f2543b;

    /* JADX INFO: renamed from: c */
    private final Map<String, Object<?>> f2544c;

    /* JADX INFO: renamed from: d */
    private final SavedStateRegistry.InterfaceC0480b f2545d;

    /* JADX INFO: renamed from: androidx.lifecycle.t$a */
    class a implements SavedStateRegistry.InterfaceC0480b {
        a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.InterfaceC0480b
        /* JADX INFO: renamed from: a */
        public Bundle mo429a() {
            for (Map.Entry entry : new HashMap(C0406t.this.f2543b).entrySet()) {
                C0406t.this.m3045c((String) entry.getKey(), ((SavedStateRegistry.InterfaceC0480b) entry.getValue()).mo429a());
            }
            Set<String> setKeySet = C0406t.this.f2542a.keySet();
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(setKeySet.size());
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
            for (String str : setKeySet) {
                arrayList.add(str);
                arrayList2.add(C0406t.this.f2542a.get(str));
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("keys", arrayList);
            bundle.putParcelableArrayList("values", arrayList2);
            return bundle;
        }
    }

    static {
        Class[] clsArr = new Class[29];
        clsArr[0] = Boolean.TYPE;
        clsArr[1] = boolean[].class;
        clsArr[2] = Double.TYPE;
        clsArr[3] = double[].class;
        clsArr[4] = Integer.TYPE;
        clsArr[5] = int[].class;
        clsArr[6] = Long.TYPE;
        clsArr[7] = long[].class;
        clsArr[8] = String.class;
        clsArr[9] = String[].class;
        clsArr[10] = Binder.class;
        clsArr[11] = Bundle.class;
        clsArr[12] = Byte.TYPE;
        clsArr[13] = byte[].class;
        clsArr[14] = Character.TYPE;
        clsArr[15] = char[].class;
        clsArr[16] = CharSequence.class;
        clsArr[17] = CharSequence[].class;
        clsArr[18] = ArrayList.class;
        clsArr[19] = Float.TYPE;
        clsArr[20] = float[].class;
        clsArr[21] = Parcelable.class;
        clsArr[22] = Parcelable[].class;
        clsArr[23] = Serializable.class;
        clsArr[24] = Short.TYPE;
        clsArr[25] = short[].class;
        clsArr[26] = SparseArray.class;
        clsArr[27] = Build.VERSION.SDK_INT >= 21 ? Size.class : Integer.TYPE;
        clsArr[28] = Build.VERSION.SDK_INT >= 21 ? SizeF.class : Integer.TYPE;
        f2541e = clsArr;
    }

    public C0406t(Map<String, Object> map) {
        this.f2543b = new HashMap();
        this.f2544c = new HashMap();
        this.f2545d = new a();
        this.f2542a = new HashMap(map);
    }

    /* JADX INFO: renamed from: a */
    static C0406t m3042a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new C0406t();
        }
        HashMap map = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                map.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new C0406t(map);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            map.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new C0406t(map);
    }

    /* JADX INFO: renamed from: d */
    private static void m3043d(Object obj) {
        if (obj == null) {
            return;
        }
        for (Class cls : f2541e) {
            if (cls.isInstance(obj)) {
                return;
            }
        }
        throw new IllegalArgumentException("Can't put value with type " + obj.getClass() + " into saved state");
    }

    /* JADX INFO: renamed from: b */
    SavedStateRegistry.InterfaceC0480b m3044b() {
        return this.f2545d;
    }

    /* JADX INFO: renamed from: c */
    public <T> void m3045c(String str, T t) {
        m3043d(t);
        C0401o c0401o = (C0401o) this.f2544c.get(str);
        if (c0401o != null) {
            c0401o.mo2965k(t);
        } else {
            this.f2542a.put(str, t);
        }
    }

    public C0406t() {
        this.f2543b = new HashMap();
        this.f2544c = new HashMap();
        this.f2545d = new a();
        this.f2542a = new HashMap();
    }
}
