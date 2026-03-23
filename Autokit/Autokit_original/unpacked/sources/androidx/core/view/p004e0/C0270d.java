package androidx.core.view.p004e0;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: androidx.core.view.e0.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0270d {

    /* JADX INFO: renamed from: a */
    private final Object f1873a;

    /* JADX INFO: renamed from: androidx.core.view.e0.d$a */
    static class a extends AccessibilityNodeProvider {

        /* JADX INFO: renamed from: a */
        final C0270d f1874a;

        a(C0270d c0270d) {
            this.f1874a = c0270d;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            C0269c c0269cMo1967b = this.f1874a.mo1967b(i);
            if (c0269cMo1967b == null) {
                return null;
            }
            return c0269cMo1967b.m1956u0();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<C0269c> listM1968c = this.f1874a.m1968c(str, i);
            if (listM1968c == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = listM1968c.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(listM1968c.get(i2).m1956u0());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f1874a.mo1971f(i, i2, bundle);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.e0.d$b */
    static class b extends a {
        b(C0270d c0270d) {
            super(c0270d);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            C0269c c0269cMo1969d = this.f1874a.mo1969d(i);
            if (c0269cMo1969d == null) {
                return null;
            }
            return c0269cMo1969d.m1956u0();
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.e0.d$c */
    static class c extends b {
        c(C0270d c0270d) {
            super(c0270d);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.f1874a.m1966a(i, C0269c.m1899v0(accessibilityNodeInfo), str, bundle);
        }
    }

    public C0270d() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f1873a = new c(this);
            return;
        }
        if (i >= 19) {
            this.f1873a = new b(this);
        } else if (i >= 16) {
            this.f1873a = new a(this);
        } else {
            this.f1873a = null;
        }
    }

    /* JADX INFO: renamed from: a */
    public void m1966a(int i, C0269c c0269c, String str, Bundle bundle) {
    }

    /* JADX INFO: renamed from: b */
    public C0269c mo1967b(int i) {
        return null;
    }

    /* JADX INFO: renamed from: c */
    public List<C0269c> m1968c(String str, int i) {
        return null;
    }

    /* JADX INFO: renamed from: d */
    public C0269c mo1969d(int i) {
        return null;
    }

    /* JADX INFO: renamed from: e */
    public Object m1970e() {
        return this.f1873a;
    }

    /* JADX INFO: renamed from: f */
    public boolean mo1971f(int i, int i2, Bundle bundle) {
        return false;
    }

    public C0270d(Object obj) {
        this.f1873a = obj;
    }
}
