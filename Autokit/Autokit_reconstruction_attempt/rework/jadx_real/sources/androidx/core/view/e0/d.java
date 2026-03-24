package androidx.core.view.e0;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class d {
    private final Object a;

    static class a extends AccessibilityNodeProvider {
        final d a;

        a(d dVar) {
            this.a = dVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            androidx.core.view.e0.c cVarB = this.a.b(i);
            if (cVarB == null) {
                return null;
            }
            return cVarB.u0();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<androidx.core.view.e0.c> listC = this.a.c(str, i);
            if (listC == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = listC.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(listC.get(i2).u0());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.a.f(i, i2, bundle);
        }
    }

    static class b extends a {
        b(d dVar) {
            super(dVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            androidx.core.view.e0.c cVarD = this.a.d(i);
            if (cVarD == null) {
                return null;
            }
            return cVarD.u0();
        }
    }

    static class c extends b {
        c(d dVar) {
            super(dVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.a.a(i, androidx.core.view.e0.c.v0(accessibilityNodeInfo), str, bundle);
        }
    }

    public d() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.a = new c(this);
            return;
        }
        if (i >= 19) {
            this.a = new b(this);
        } else if (i >= 16) {
            this.a = new a(this);
        } else {
            this.a = null;
        }
    }

    public void a(int i, androidx.core.view.e0.c cVar, String str, Bundle bundle) {
    }

    public androidx.core.view.e0.c b(int i) {
        return null;
    }

    public List<androidx.core.view.e0.c> c(String str, int i) {
        return null;
    }

    public androidx.core.view.e0.c d(int i) {
        return null;
    }

    public Object e() {
        return this.a;
    }

    public boolean f(int i, int i2, Bundle bundle) {
        return false;
    }

    public d(Object obj) {
        this.a = obj;
    }
}
