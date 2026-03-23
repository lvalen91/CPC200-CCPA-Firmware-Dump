package androidx.core.view;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.view.p004e0.C0269c;
import androidx.core.view.p004e0.C0270d;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import p016c.p041g.C0586b;

/* JADX INFO: renamed from: androidx.core.view.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0258a {

    /* JADX INFO: renamed from: c */
    private static final View.AccessibilityDelegate f1805c = new View.AccessibilityDelegate();

    /* JADX INFO: renamed from: a */
    private final View.AccessibilityDelegate f1806a;

    /* JADX INFO: renamed from: b */
    private final View.AccessibilityDelegate f1807b;

    /* JADX INFO: renamed from: androidx.core.view.a$a */
    static final class a extends View.AccessibilityDelegate {

        /* JADX INFO: renamed from: a */
        final C0258a f1808a;

        a(C0258a c0258a) {
            this.f1808a = c0258a;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f1808a.mo1809a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            C0270d c0270dMo1810b = this.f1808a.mo1810b(view);
            if (c0270dMo1810b != null) {
                return (AccessibilityNodeProvider) c0270dMo1810b.m1970e();
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f1808a.mo1812f(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            C0269c c0269cM1899v0 = C0269c.m1899v0(accessibilityNodeInfo);
            c0269cM1899v0.m1943m0(C0292v.m2072W(view));
            c0269cM1899v0.m1932f0(C0292v.m2067R(view));
            c0269cM1899v0.m1938j0(C0292v.m2106p(view));
            c0269cM1899v0.m1950q0(C0292v.m2060K(view));
            this.f1808a.mo1813g(view, c0269cM1899v0);
            c0269cM1899v0.m1930e(accessibilityNodeInfo.getText(), view);
            List<C0269c.a> listM1806c = C0258a.m1806c(view);
            for (int i = 0; i < listM1806c.size(); i++) {
                c0269cM1899v0.m1925b(listM1806c.get(i));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f1808a.mo1814h(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f1808a.mo1815i(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f1808a.mo1816j(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            this.f1808a.mo1817l(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f1808a.mo1818m(view, accessibilityEvent);
        }
    }

    public C0258a() {
        this(f1805c);
    }

    /* JADX INFO: renamed from: c */
    static List<C0269c.a> m1806c(View view) {
        List<C0269c.a> list = (List) view.getTag(C0586b.tag_accessibility_actions);
        return list == null ? Collections.emptyList() : list;
    }

    /* JADX INFO: renamed from: e */
    private boolean m1807e(ClickableSpan clickableSpan, View view) {
        if (clickableSpan != null) {
            ClickableSpan[] clickableSpanArrM1896p = C0269c.m1896p(view.createAccessibilityNodeInfo().getText());
            for (int i = 0; clickableSpanArrM1896p != null && i < clickableSpanArrM1896p.length; i++) {
                if (clickableSpan.equals(clickableSpanArrM1896p[i])) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: k */
    private boolean m1808k(int i, View view) {
        WeakReference weakReference;
        SparseArray sparseArray = (SparseArray) view.getTag(C0586b.tag_accessibility_clickable_spans);
        if (sparseArray == null || (weakReference = (WeakReference) sparseArray.get(i)) == null) {
            return false;
        }
        ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
        if (!m1807e(clickableSpan, view)) {
            return false;
        }
        clickableSpan.onClick(view);
        return true;
    }

    /* JADX INFO: renamed from: a */
    public boolean mo1809a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f1806a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* JADX INFO: renamed from: b */
    public C0270d mo1810b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (Build.VERSION.SDK_INT < 16 || (accessibilityNodeProvider = this.f1806a.getAccessibilityNodeProvider(view)) == null) {
            return null;
        }
        return new C0270d(accessibilityNodeProvider);
    }

    /* JADX INFO: renamed from: d */
    View.AccessibilityDelegate m1811d() {
        return this.f1807b;
    }

    /* JADX INFO: renamed from: f */
    public void mo1812f(View view, AccessibilityEvent accessibilityEvent) {
        this.f1806a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* JADX INFO: renamed from: g */
    public void mo1813g(View view, C0269c c0269c) {
        this.f1806a.onInitializeAccessibilityNodeInfo(view, c0269c.m1956u0());
    }

    /* JADX INFO: renamed from: h */
    public void mo1814h(View view, AccessibilityEvent accessibilityEvent) {
        this.f1806a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* JADX INFO: renamed from: i */
    public boolean mo1815i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f1806a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* JADX INFO: renamed from: j */
    public boolean mo1816j(View view, int i, Bundle bundle) {
        List<C0269c.a> listM1806c = m1806c(view);
        boolean zPerformAccessibilityAction = false;
        int i2 = 0;
        while (true) {
            if (i2 >= listM1806c.size()) {
                break;
            }
            C0269c.a aVar = listM1806c.get(i2);
            if (aVar.m1961b() == i) {
                zPerformAccessibilityAction = aVar.m1963d(view, bundle);
                break;
            }
            i2++;
        }
        if (!zPerformAccessibilityAction && Build.VERSION.SDK_INT >= 16) {
            zPerformAccessibilityAction = this.f1806a.performAccessibilityAction(view, i, bundle);
        }
        return (zPerformAccessibilityAction || i != C0586b.accessibility_action_clickable_span) ? zPerformAccessibilityAction : m1808k(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
    }

    /* JADX INFO: renamed from: l */
    public void mo1817l(View view, int i) {
        this.f1806a.sendAccessibilityEvent(view, i);
    }

    /* JADX INFO: renamed from: m */
    public void mo1818m(View view, AccessibilityEvent accessibilityEvent) {
        this.f1806a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public C0258a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f1806a = accessibilityDelegate;
        this.f1807b = new a(this);
    }
}
