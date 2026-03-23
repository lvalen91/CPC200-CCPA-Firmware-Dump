package androidx.core.view.p004e0;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.p004e0.InterfaceC0272f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p016c.p041g.C0586b;
import p016c.p041g.p046g.C0603a;

/* JADX INFO: renamed from: androidx.core.view.e0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0269c {

    /* JADX INFO: renamed from: d */
    private static int f1855d;

    /* JADX INFO: renamed from: a */
    private final AccessibilityNodeInfo f1856a;

    /* JADX INFO: renamed from: b */
    public int f1857b = -1;

    /* JADX INFO: renamed from: c */
    private int f1858c = -1;

    /* JADX INFO: renamed from: androidx.core.view.e0.c$a */
    public static class a {

        /* JADX INFO: renamed from: e */
        public static final a f1859e;

        /* JADX INFO: renamed from: f */
        public static final a f1860f;

        /* JADX INFO: renamed from: g */
        public static final a f1861g;

        /* JADX INFO: renamed from: h */
        public static final a f1862h;

        /* JADX INFO: renamed from: i */
        public static final a f1863i;

        /* JADX INFO: renamed from: j */
        public static final a f1864j;

        /* JADX INFO: renamed from: k */
        public static final a f1865k;

        /* JADX INFO: renamed from: l */
        public static final a f1866l;

        /* JADX INFO: renamed from: a */
        final Object f1867a;

        /* JADX INFO: renamed from: b */
        private final int f1868b;

        /* JADX INFO: renamed from: c */
        private final Class<? extends InterfaceC0272f.a> f1869c;

        /* JADX INFO: renamed from: d */
        protected final InterfaceC0272f f1870d;

        static {
            new a(1, null);
            new a(2, null);
            new a(4, null);
            new a(8, null);
            f1859e = new a(16, null);
            new a(32, null);
            new a(64, null);
            new a(128, null);
            new a(256, (CharSequence) null, (Class<? extends InterfaceC0272f.a>) InterfaceC0272f.b.class);
            new a(512, (CharSequence) null, (Class<? extends InterfaceC0272f.a>) InterfaceC0272f.b.class);
            new a(1024, (CharSequence) null, (Class<? extends InterfaceC0272f.a>) InterfaceC0272f.c.class);
            new a(2048, (CharSequence) null, (Class<? extends InterfaceC0272f.a>) InterfaceC0272f.c.class);
            f1860f = new a(4096, null);
            f1861g = new a(8192, null);
            new a(16384, null);
            new a(32768, null);
            new a(65536, null);
            new a(131072, (CharSequence) null, (Class<? extends InterfaceC0272f.a>) InterfaceC0272f.g.class);
            f1862h = new a(262144, null);
            f1863i = new a(524288, null);
            f1864j = new a(1048576, null);
            new a(2097152, (CharSequence) null, (Class<? extends InterfaceC0272f.a>) InterfaceC0272f.h.class);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, null, null, InterfaceC0272f.e.class);
            f1865k = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null, null, null);
            f1866l = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null, null, null);
            new a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, InterfaceC0272f.f.class);
            new a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, InterfaceC0272f.d.class);
            new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
            new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
            new a(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
            new a(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
        }

        public a(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        /* JADX INFO: renamed from: a */
        public a m1960a(CharSequence charSequence, InterfaceC0272f interfaceC0272f) {
            return new a(null, this.f1868b, charSequence, interfaceC0272f, this.f1869c);
        }

        /* JADX INFO: renamed from: b */
        public int m1961b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f1867a).getId();
            }
            return 0;
        }

        /* JADX INFO: renamed from: c */
        public CharSequence m1962c() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f1867a).getLabel();
            }
            return null;
        }

        /* JADX INFO: renamed from: d */
        public boolean m1963d(View view, Bundle bundle) {
            InterfaceC0272f.a aVarNewInstance;
            if (this.f1870d == null) {
                return false;
            }
            InterfaceC0272f.a aVar = null;
            Class<? extends InterfaceC0272f.a> cls = this.f1869c;
            if (cls != null) {
                try {
                    aVarNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception unused) {
                }
                try {
                    aVarNewInstance.m1976a(bundle);
                    aVar = aVarNewInstance;
                } catch (Exception unused2) {
                    aVar = aVarNewInstance;
                    Class<? extends InterfaceC0272f.a> cls2 = this.f1869c;
                    String str = "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? "null" : cls2.getName());
                }
            }
            return this.f1870d.mo1975a(view, aVar);
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.f1867a;
            return obj2 == null ? aVar.f1867a == null : obj2.equals(aVar.f1867a);
        }

        public int hashCode() {
            Object obj = this.f1867a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public a(int i, CharSequence charSequence, InterfaceC0272f interfaceC0272f) {
            this(null, i, charSequence, interfaceC0272f, null);
        }

        a(Object obj) {
            this(obj, 0, null, null, null);
        }

        private a(int i, CharSequence charSequence, Class<? extends InterfaceC0272f.a> cls) {
            this(null, i, charSequence, null, cls);
        }

        a(Object obj, int i, CharSequence charSequence, InterfaceC0272f interfaceC0272f, Class<? extends InterfaceC0272f.a> cls) {
            this.f1868b = i;
            this.f1870d = interfaceC0272f;
            if (Build.VERSION.SDK_INT >= 21 && obj == null) {
                this.f1867a = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            } else {
                this.f1867a = obj;
            }
            this.f1869c = cls;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.e0.c$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        final Object f1871a;

        b(Object obj) {
            this.f1871a = obj;
        }

        /* JADX INFO: renamed from: a */
        public static b m1964a(int i, int i2, boolean z, int i3) {
            int i4 = Build.VERSION.SDK_INT;
            return i4 >= 21 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : i4 >= 19 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new b(null);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.e0.c$c */
    public static class c {

        /* JADX INFO: renamed from: a */
        final Object f1872a;

        c(Object obj) {
            this.f1872a = obj;
        }

        /* JADX INFO: renamed from: a */
        public static c m1965a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            int i5 = Build.VERSION.SDK_INT;
            return i5 >= 21 ? new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : i5 >= 19 ? new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new c(null);
        }
    }

    private C0269c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f1856a = accessibilityNodeInfo;
    }

    /* JADX INFO: renamed from: K */
    public static C0269c m1886K() {
        return m1899v0(AccessibilityNodeInfo.obtain());
    }

    /* JADX INFO: renamed from: L */
    public static C0269c m1887L(View view) {
        return m1899v0(AccessibilityNodeInfo.obtain(view));
    }

    /* JADX INFO: renamed from: M */
    public static C0269c m1888M(C0269c c0269c) {
        return m1899v0(AccessibilityNodeInfo.obtain(c0269c.f1856a));
    }

    /* JADX INFO: renamed from: P */
    private void m1889P(View view) {
        SparseArray<WeakReference<ClickableSpan>> sparseArrayM1898u = m1898u(view);
        if (sparseArrayM1898u != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < sparseArrayM1898u.size(); i++) {
                if (sparseArrayM1898u.valueAt(i).get() == null) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                sparseArrayM1898u.remove(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    /* JADX INFO: renamed from: R */
    private void m1890R(int i, boolean z) {
        Bundle bundleM1951r = m1951r();
        if (bundleM1951r != null) {
            int i2 = bundleM1951r.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1));
            if (!z) {
                i = 0;
            }
            bundleM1951r.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i | i2);
        }
    }

    /* JADX INFO: renamed from: d */
    private void m1891d(ClickableSpan clickableSpan, Spanned spanned, int i) {
        m1893g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        m1893g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        m1893g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        m1893g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
    }

    /* JADX INFO: renamed from: f */
    private void m1892f() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1856a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f1856a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f1856a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f1856a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    /* JADX INFO: renamed from: g */
    private List<Integer> m1893g(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f1856a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.f1856a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    /* JADX INFO: renamed from: i */
    private static String m1894i(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.accessibilityActionImeEnter:
                return "ACTION_IME_ENTER";
            default:
                switch (i) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                return "ACTION_UNKNOWN";
                        }
                }
        }
    }

    /* JADX INFO: renamed from: k */
    private boolean m1895k(int i) {
        Bundle bundleM1951r = m1951r();
        return bundleM1951r != null && (bundleM1951r.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i) == i;
    }

    /* JADX INFO: renamed from: p */
    public static ClickableSpan[] m1896p(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* JADX INFO: renamed from: s */
    private SparseArray<WeakReference<ClickableSpan>> m1897s(View view) {
        SparseArray<WeakReference<ClickableSpan>> sparseArrayM1898u = m1898u(view);
        if (sparseArrayM1898u != null) {
            return sparseArrayM1898u;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(C0586b.tag_accessibility_clickable_spans, sparseArray);
        return sparseArray;
    }

    /* JADX INFO: renamed from: u */
    private SparseArray<WeakReference<ClickableSpan>> m1898u(View view) {
        return (SparseArray) view.getTag(C0586b.tag_accessibility_clickable_spans);
    }

    /* JADX INFO: renamed from: v0 */
    public static C0269c m1899v0(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new C0269c(accessibilityNodeInfo);
    }

    /* JADX INFO: renamed from: x */
    private boolean m1900x() {
        return !m1893g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    /* JADX INFO: renamed from: y */
    private int m1901y(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f1855d;
        f1855d = i2 + 1;
        return i2;
    }

    /* JADX INFO: renamed from: A */
    public boolean m1902A() {
        return this.f1856a.isChecked();
    }

    /* JADX INFO: renamed from: B */
    public boolean m1903B() {
        return this.f1856a.isClickable();
    }

    /* JADX INFO: renamed from: C */
    public boolean m1904C() {
        return this.f1856a.isEnabled();
    }

    /* JADX INFO: renamed from: D */
    public boolean m1905D() {
        return this.f1856a.isFocusable();
    }

    /* JADX INFO: renamed from: E */
    public boolean m1906E() {
        return this.f1856a.isFocused();
    }

    /* JADX INFO: renamed from: F */
    public boolean m1907F() {
        return this.f1856a.isLongClickable();
    }

    /* JADX INFO: renamed from: G */
    public boolean m1908G() {
        return this.f1856a.isPassword();
    }

    /* JADX INFO: renamed from: H */
    public boolean m1909H() {
        return this.f1856a.isScrollable();
    }

    /* JADX INFO: renamed from: I */
    public boolean m1910I() {
        return this.f1856a.isSelected();
    }

    /* JADX INFO: renamed from: J */
    public boolean m1911J() {
        return Build.VERSION.SDK_INT >= 26 ? this.f1856a.isShowingHintText() : m1895k(4);
    }

    /* JADX INFO: renamed from: N */
    public boolean m1912N(int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f1856a.performAction(i, bundle);
        }
        return false;
    }

    /* JADX INFO: renamed from: O */
    public void m1913O() {
        this.f1856a.recycle();
    }

    /* JADX INFO: renamed from: Q */
    public void m1914Q(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1856a.setAccessibilityFocused(z);
        }
    }

    @Deprecated
    /* JADX INFO: renamed from: S */
    public void m1915S(Rect rect) {
        this.f1856a.setBoundsInParent(rect);
    }

    /* JADX INFO: renamed from: T */
    public void m1916T(Rect rect) {
        this.f1856a.setBoundsInScreen(rect);
    }

    /* JADX INFO: renamed from: U */
    public void m1917U(boolean z) {
        this.f1856a.setCheckable(z);
    }

    /* JADX INFO: renamed from: V */
    public void m1918V(boolean z) {
        this.f1856a.setChecked(z);
    }

    /* JADX INFO: renamed from: W */
    public void m1919W(CharSequence charSequence) {
        this.f1856a.setClassName(charSequence);
    }

    /* JADX INFO: renamed from: X */
    public void m1920X(boolean z) {
        this.f1856a.setClickable(z);
    }

    /* JADX INFO: renamed from: Y */
    public void m1921Y(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1856a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).f1871a);
        }
    }

    /* JADX INFO: renamed from: Z */
    public void m1922Z(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1856a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((c) obj).f1872a);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m1923a(int i) {
        this.f1856a.addAction(i);
    }

    /* JADX INFO: renamed from: a0 */
    public void m1924a0(CharSequence charSequence) {
        this.f1856a.setContentDescription(charSequence);
    }

    /* JADX INFO: renamed from: b */
    public void m1925b(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1856a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f1867a);
        }
    }

    /* JADX INFO: renamed from: b0 */
    public void m1926b0(boolean z) {
        this.f1856a.setEnabled(z);
    }

    /* JADX INFO: renamed from: c */
    public void m1927c(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1856a.addChild(view, i);
        }
    }

    /* JADX INFO: renamed from: c0 */
    public void m1928c0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1856a.setError(charSequence);
        }
    }

    /* JADX INFO: renamed from: d0 */
    public void m1929d0(boolean z) {
        this.f1856a.setFocusable(z);
    }

    /* JADX INFO: renamed from: e */
    public void m1930e(CharSequence charSequence, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i < 19 || i >= 26) {
            return;
        }
        m1892f();
        m1889P(view);
        ClickableSpan[] clickableSpanArrM1896p = m1896p(charSequence);
        if (clickableSpanArrM1896p == null || clickableSpanArrM1896p.length <= 0) {
            return;
        }
        m1951r().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C0586b.accessibility_action_clickable_span);
        SparseArray<WeakReference<ClickableSpan>> sparseArrayM1897s = m1897s(view);
        for (int i2 = 0; clickableSpanArrM1896p != null && i2 < clickableSpanArrM1896p.length; i2++) {
            int iM1901y = m1901y(clickableSpanArrM1896p[i2], sparseArrayM1897s);
            sparseArrayM1897s.put(iM1901y, new WeakReference<>(clickableSpanArrM1896p[i2]));
            m1891d(clickableSpanArrM1896p[i2], (Spanned) charSequence, iM1901y);
        }
    }

    /* JADX INFO: renamed from: e0 */
    public void m1931e0(boolean z) {
        this.f1856a.setFocused(z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0269c)) {
            return false;
        }
        C0269c c0269c = (C0269c) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1856a;
        if (accessibilityNodeInfo == null) {
            if (c0269c.f1856a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(c0269c.f1856a)) {
            return false;
        }
        return this.f1858c == c0269c.f1858c && this.f1857b == c0269c.f1857b;
    }

    /* JADX INFO: renamed from: f0 */
    public void m1932f0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1856a.setHeading(z);
        } else {
            m1890R(2, z);
        }
    }

    /* JADX INFO: renamed from: g0 */
    public void m1933g0(CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f1856a.setHintText(charSequence);
        } else if (i >= 19) {
            this.f1856a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    /* JADX INFO: renamed from: h */
    public List<a> m1934h() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f1856a.getActionList() : null;
        if (actionList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(new a(actionList.get(i)));
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: h0 */
    public void m1935h0(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1856a.setMaxTextLength(i);
        }
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1856a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    /* JADX INFO: renamed from: i0 */
    public void m1936i0(CharSequence charSequence) {
        this.f1856a.setPackageName(charSequence);
    }

    /* JADX INFO: renamed from: j */
    public int m1937j() {
        return this.f1856a.getActions();
    }

    /* JADX INFO: renamed from: j0 */
    public void m1938j0(CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f1856a.setPaneTitle(charSequence);
        } else if (i >= 19) {
            this.f1856a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    /* JADX INFO: renamed from: k0 */
    public void m1939k0(View view) {
        this.f1857b = -1;
        this.f1856a.setParent(view);
    }

    @Deprecated
    /* JADX INFO: renamed from: l */
    public void m1940l(Rect rect) {
        this.f1856a.getBoundsInParent(rect);
    }

    /* JADX INFO: renamed from: l0 */
    public void m1941l0(View view, int i) {
        this.f1857b = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1856a.setParent(view, i);
        }
    }

    /* JADX INFO: renamed from: m */
    public void m1942m(Rect rect) {
        this.f1856a.getBoundsInScreen(rect);
    }

    /* JADX INFO: renamed from: m0 */
    public void m1943m0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1856a.setScreenReaderFocusable(z);
        } else {
            m1890R(1, z);
        }
    }

    /* JADX INFO: renamed from: n */
    public int m1944n() {
        return this.f1856a.getChildCount();
    }

    /* JADX INFO: renamed from: n0 */
    public void m1945n0(boolean z) {
        this.f1856a.setScrollable(z);
    }

    /* JADX INFO: renamed from: o */
    public CharSequence m1946o() {
        return this.f1856a.getClassName();
    }

    /* JADX INFO: renamed from: o0 */
    public void m1947o0(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1856a.setShowingHintText(z);
        } else {
            m1890R(4, z);
        }
    }

    /* JADX INFO: renamed from: p0 */
    public void m1948p0(View view, int i) {
        this.f1858c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1856a.setSource(view, i);
        }
    }

    /* JADX INFO: renamed from: q */
    public CharSequence m1949q() {
        return this.f1856a.getContentDescription();
    }

    /* JADX INFO: renamed from: q0 */
    public void m1950q0(CharSequence charSequence) {
        if (C0603a.m4751a()) {
            this.f1856a.setStateDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f1856a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    /* JADX INFO: renamed from: r */
    public Bundle m1951r() {
        return Build.VERSION.SDK_INT >= 19 ? this.f1856a.getExtras() : new Bundle();
    }

    /* JADX INFO: renamed from: r0 */
    public void m1952r0(CharSequence charSequence) {
        this.f1856a.setText(charSequence);
    }

    /* JADX INFO: renamed from: s0 */
    public void m1953s0(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f1856a.setTraversalAfter(view);
        }
    }

    /* JADX INFO: renamed from: t */
    public CharSequence m1954t() {
        return this.f1856a.getPackageName();
    }

    /* JADX INFO: renamed from: t0 */
    public void m1955t0(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1856a.setVisibleToUser(z);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m1940l(rect);
        sb.append("; boundsInParent: " + rect);
        m1942m(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(m1954t());
        sb.append("; className: ");
        sb.append(m1946o());
        sb.append("; text: ");
        sb.append(m1957v());
        sb.append("; contentDescription: ");
        sb.append(m1949q());
        sb.append("; viewId: ");
        sb.append(m1958w());
        sb.append("; checkable: ");
        sb.append(m1959z());
        sb.append("; checked: ");
        sb.append(m1902A());
        sb.append("; focusable: ");
        sb.append(m1905D());
        sb.append("; focused: ");
        sb.append(m1906E());
        sb.append("; selected: ");
        sb.append(m1910I());
        sb.append("; clickable: ");
        sb.append(m1903B());
        sb.append("; longClickable: ");
        sb.append(m1907F());
        sb.append("; enabled: ");
        sb.append(m1904C());
        sb.append("; password: ");
        sb.append(m1908G());
        sb.append("; scrollable: " + m1909H());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<a> listM1934h = m1934h();
            for (int i = 0; i < listM1934h.size(); i++) {
                a aVar = listM1934h.get(i);
                String strM1894i = m1894i(aVar.m1961b());
                if (strM1894i.equals("ACTION_UNKNOWN") && aVar.m1962c() != null) {
                    strM1894i = aVar.m1962c().toString();
                }
                sb.append(strM1894i);
                if (i != listM1934h.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int iM1937j = m1937j();
            while (iM1937j != 0) {
                int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(iM1937j);
                iM1937j &= iNumberOfTrailingZeros ^ (-1);
                sb.append(m1894i(iNumberOfTrailingZeros));
                if (iM1937j != 0) {
                    sb.append(", ");
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: renamed from: u0 */
    public AccessibilityNodeInfo m1956u0() {
        return this.f1856a;
    }

    /* JADX INFO: renamed from: v */
    public CharSequence m1957v() {
        if (!m1900x()) {
            return this.f1856a.getText();
        }
        List<Integer> listM1893g = m1893g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> listM1893g2 = m1893g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> listM1893g3 = m1893g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> listM1893g4 = m1893g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f1856a.getText(), 0, this.f1856a.getText().length()));
        for (int i = 0; i < listM1893g.size(); i++) {
            spannableString.setSpan(new C0267a(listM1893g4.get(i).intValue(), this, m1951r().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), listM1893g.get(i).intValue(), listM1893g2.get(i).intValue(), listM1893g3.get(i).intValue());
        }
        return spannableString;
    }

    /* JADX INFO: renamed from: w */
    public String m1958w() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f1856a.getViewIdResourceName();
        }
        return null;
    }

    /* JADX INFO: renamed from: z */
    public boolean m1959z() {
        return this.f1856a.isCheckable();
    }
}
