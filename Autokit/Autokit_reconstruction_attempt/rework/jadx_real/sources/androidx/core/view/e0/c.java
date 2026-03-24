package androidx.core.view.e0;

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
import androidx.core.view.e0.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f581d;
    private final AccessibilityNodeInfo a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f582b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f583c = -1;

    public static class a {
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        public static final a i;
        public static final a j;
        public static final a k;
        public static final a l;
        final Object a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Class<? extends f.a> f585c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected final f f586d;

        static {
            new a(1, null);
            new a(2, null);
            new a(4, null);
            new a(8, null);
            e = new a(16, null);
            new a(32, null);
            new a(64, null);
            new a(128, null);
            new a(256, (CharSequence) null, (Class<? extends f.a>) f.b.class);
            new a(512, (CharSequence) null, (Class<? extends f.a>) f.b.class);
            new a(1024, (CharSequence) null, (Class<? extends f.a>) f.c.class);
            new a(2048, (CharSequence) null, (Class<? extends f.a>) f.c.class);
            f = new a(4096, null);
            g = new a(8192, null);
            new a(16384, null);
            new a(32768, null);
            new a(65536, null);
            new a(131072, (CharSequence) null, (Class<? extends f.a>) f.g.class);
            h = new a(262144, null);
            i = new a(524288, null);
            j = new a(1048576, null);
            new a(2097152, (CharSequence) null, (Class<? extends f.a>) f.h.class);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, null, null, f.e.class);
            k = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null, null, null);
            l = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            new a(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null, null, null);
            new a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, f.C0025f.class);
            new a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, f.d.class);
            new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
            new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
            new a(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
            new a(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
        }

        public a(int i2, CharSequence charSequence) {
            this(null, i2, charSequence, null, null);
        }

        public a a(CharSequence charSequence, f fVar) {
            return new a(null, this.f584b, charSequence, fVar, this.f585c);
        }

        public int b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.a).getId();
            }
            return 0;
        }

        public CharSequence c() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.a).getLabel();
            }
            return null;
        }

        public boolean d(View view, Bundle bundle) {
            f.a aVarNewInstance;
            if (this.f586d == null) {
                return false;
            }
            f.a aVar = null;
            Class<? extends f.a> cls = this.f585c;
            if (cls != null) {
                try {
                    aVarNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception unused) {
                }
                try {
                    aVarNewInstance.a(bundle);
                    aVar = aVarNewInstance;
                } catch (Exception unused2) {
                    aVar = aVarNewInstance;
                    Class<? extends f.a> cls2 = this.f585c;
                    String str = "Failed to execute command with argument class ViewCommandArgument: " + (cls2 == null ? "null" : cls2.getName());
                }
            }
            return this.f586d.a(view, aVar);
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.a;
            return obj2 == null ? aVar.a == null : obj2.equals(aVar.a);
        }

        public int hashCode() {
            Object obj = this.a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public a(int i2, CharSequence charSequence, f fVar) {
            this(null, i2, charSequence, fVar, null);
        }

        a(Object obj) {
            this(obj, 0, null, null, null);
        }

        private a(int i2, CharSequence charSequence, Class<? extends f.a> cls) {
            this(null, i2, charSequence, null, cls);
        }

        a(Object obj, int i2, CharSequence charSequence, f fVar, Class<? extends f.a> cls) {
            this.f584b = i2;
            this.f586d = fVar;
            if (Build.VERSION.SDK_INT >= 21 && obj == null) {
                this.a = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
            } else {
                this.a = obj;
            }
            this.f585c = cls;
        }
    }

    public static class b {
        final Object a;

        b(Object obj) {
            this.a = obj;
        }

        public static b a(int i, int i2, boolean z, int i3) {
            int i4 = Build.VERSION.SDK_INT;
            return i4 >= 21 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : i4 >= 19 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new b(null);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.e0.c$c, reason: collision with other inner class name */
    public static class C0024c {
        final Object a;

        C0024c(Object obj) {
            this.a = obj;
        }

        public static C0024c a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            int i5 = Build.VERSION.SDK_INT;
            return i5 >= 21 ? new C0024c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : i5 >= 19 ? new C0024c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new C0024c(null);
        }
    }

    private c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.a = accessibilityNodeInfo;
    }

    public static c K() {
        return v0(AccessibilityNodeInfo.obtain());
    }

    public static c L(View view) {
        return v0(AccessibilityNodeInfo.obtain(view));
    }

    public static c M(c cVar) {
        return v0(AccessibilityNodeInfo.obtain(cVar.a));
    }

    private void P(View view) {
        SparseArray<WeakReference<ClickableSpan>> sparseArrayU = u(view);
        if (sparseArrayU != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < sparseArrayU.size(); i++) {
                if (sparseArrayU.valueAt(i).get() == null) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                sparseArrayU.remove(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    private void R(int i, boolean z) {
        Bundle bundleR = r();
        if (bundleR != null) {
            int i2 = bundleR.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1));
            if (!z) {
                i = 0;
            }
            bundleR.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i | i2);
        }
    }

    private void d(ClickableSpan clickableSpan, Spanned spanned, int i) {
        g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
    }

    private void f() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    private List<Integer> g(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    private static String i(int i) {
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

    private boolean k(int i) {
        Bundle bundleR = r();
        return bundleR != null && (bundleR.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i) == i;
    }

    public static ClickableSpan[] p(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    private SparseArray<WeakReference<ClickableSpan>> s(View view) {
        SparseArray<WeakReference<ClickableSpan>> sparseArrayU = u(view);
        if (sparseArrayU != null) {
            return sparseArrayU;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(c.g.b.tag_accessibility_clickable_spans, sparseArray);
        return sparseArray;
    }

    private SparseArray<WeakReference<ClickableSpan>> u(View view) {
        return (SparseArray) view.getTag(c.g.b.tag_accessibility_clickable_spans);
    }

    public static c v0(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new c(accessibilityNodeInfo);
    }

    private boolean x() {
        return !g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    private int y(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f581d;
        f581d = i2 + 1;
        return i2;
    }

    public boolean A() {
        return this.a.isChecked();
    }

    public boolean B() {
        return this.a.isClickable();
    }

    public boolean C() {
        return this.a.isEnabled();
    }

    public boolean D() {
        return this.a.isFocusable();
    }

    public boolean E() {
        return this.a.isFocused();
    }

    public boolean F() {
        return this.a.isLongClickable();
    }

    public boolean G() {
        return this.a.isPassword();
    }

    public boolean H() {
        return this.a.isScrollable();
    }

    public boolean I() {
        return this.a.isSelected();
    }

    public boolean J() {
        return Build.VERSION.SDK_INT >= 26 ? this.a.isShowingHintText() : k(4);
    }

    public boolean N(int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.a.performAction(i, bundle);
        }
        return false;
    }

    public void O() {
        this.a.recycle();
    }

    public void Q(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.a.setAccessibilityFocused(z);
        }
    }

    @Deprecated
    public void S(Rect rect) {
        this.a.setBoundsInParent(rect);
    }

    public void T(Rect rect) {
        this.a.setBoundsInScreen(rect);
    }

    public void U(boolean z) {
        this.a.setCheckable(z);
    }

    public void V(boolean z) {
        this.a.setChecked(z);
    }

    public void W(CharSequence charSequence) {
        this.a.setClassName(charSequence);
    }

    public void X(boolean z) {
        this.a.setClickable(z);
    }

    public void Y(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).a);
        }
    }

    public void Z(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0024c) obj).a);
        }
    }

    public void a(int i) {
        this.a.addAction(i);
    }

    public void a0(CharSequence charSequence) {
        this.a.setContentDescription(charSequence);
    }

    public void b(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.a);
        }
    }

    public void b0(boolean z) {
        this.a.setEnabled(z);
    }

    public void c(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.a.addChild(view, i);
        }
    }

    public void c0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.a.setError(charSequence);
        }
    }

    public void d0(boolean z) {
        this.a.setFocusable(z);
    }

    public void e(CharSequence charSequence, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i < 19 || i >= 26) {
            return;
        }
        f();
        P(view);
        ClickableSpan[] clickableSpanArrP = p(charSequence);
        if (clickableSpanArrP == null || clickableSpanArrP.length <= 0) {
            return;
        }
        r().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", c.g.b.accessibility_action_clickable_span);
        SparseArray<WeakReference<ClickableSpan>> sparseArrayS = s(view);
        for (int i2 = 0; clickableSpanArrP != null && i2 < clickableSpanArrP.length; i2++) {
            int iY = y(clickableSpanArrP[i2], sparseArrayS);
            sparseArrayS.put(iY, new WeakReference<>(clickableSpanArrP[i2]));
            d(clickableSpanArrP[i2], (Spanned) charSequence, iY);
        }
    }

    public void e0(boolean z) {
        this.a.setFocused(z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.a;
        if (accessibilityNodeInfo == null) {
            if (cVar.a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(cVar.a)) {
            return false;
        }
        return this.f583c == cVar.f583c && this.f582b == cVar.f582b;
    }

    public void f0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.a.setHeading(z);
        } else {
            R(2, z);
        }
    }

    public void g0(CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.a.setHintText(charSequence);
        } else if (i >= 19) {
            this.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public List<a> h() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.a.getActionList() : null;
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

    public void h0(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.a.setMaxTextLength(i);
        }
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public void i0(CharSequence charSequence) {
        this.a.setPackageName(charSequence);
    }

    public int j() {
        return this.a.getActions();
    }

    public void j0(CharSequence charSequence) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.a.setPaneTitle(charSequence);
        } else if (i >= 19) {
            this.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public void k0(View view) {
        this.f582b = -1;
        this.a.setParent(view);
    }

    @Deprecated
    public void l(Rect rect) {
        this.a.getBoundsInParent(rect);
    }

    public void l0(View view, int i) {
        this.f582b = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.a.setParent(view, i);
        }
    }

    public void m(Rect rect) {
        this.a.getBoundsInScreen(rect);
    }

    public void m0(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.a.setScreenReaderFocusable(z);
        } else {
            R(1, z);
        }
    }

    public int n() {
        return this.a.getChildCount();
    }

    public void n0(boolean z) {
        this.a.setScrollable(z);
    }

    public CharSequence o() {
        return this.a.getClassName();
    }

    public void o0(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.a.setShowingHintText(z);
        } else {
            R(4, z);
        }
    }

    public void p0(View view, int i) {
        this.f583c = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.a.setSource(view, i);
        }
    }

    public CharSequence q() {
        return this.a.getContentDescription();
    }

    public void q0(CharSequence charSequence) {
        if (c.g.g.a.a()) {
            this.a.setStateDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    public Bundle r() {
        return Build.VERSION.SDK_INT >= 19 ? this.a.getExtras() : new Bundle();
    }

    public void r0(CharSequence charSequence) {
        this.a.setText(charSequence);
    }

    public void s0(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.a.setTraversalAfter(view);
        }
    }

    public CharSequence t() {
        return this.a.getPackageName();
    }

    public void t0(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.a.setVisibleToUser(z);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        l(rect);
        sb.append("; boundsInParent: " + rect);
        m(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(t());
        sb.append("; className: ");
        sb.append(o());
        sb.append("; text: ");
        sb.append(v());
        sb.append("; contentDescription: ");
        sb.append(q());
        sb.append("; viewId: ");
        sb.append(w());
        sb.append("; checkable: ");
        sb.append(z());
        sb.append("; checked: ");
        sb.append(A());
        sb.append("; focusable: ");
        sb.append(D());
        sb.append("; focused: ");
        sb.append(E());
        sb.append("; selected: ");
        sb.append(I());
        sb.append("; clickable: ");
        sb.append(B());
        sb.append("; longClickable: ");
        sb.append(F());
        sb.append("; enabled: ");
        sb.append(C());
        sb.append("; password: ");
        sb.append(G());
        sb.append("; scrollable: " + H());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<a> listH = h();
            for (int i = 0; i < listH.size(); i++) {
                a aVar = listH.get(i);
                String strI = i(aVar.b());
                if (strI.equals("ACTION_UNKNOWN") && aVar.c() != null) {
                    strI = aVar.c().toString();
                }
                sb.append(strI);
                if (i != listH.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int iJ = j();
            while (iJ != 0) {
                int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(iJ);
                iJ &= iNumberOfTrailingZeros ^ (-1);
                sb.append(i(iNumberOfTrailingZeros));
                if (iJ != 0) {
                    sb.append(", ");
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public AccessibilityNodeInfo u0() {
        return this.a;
    }

    public CharSequence v() {
        if (!x()) {
            return this.a.getText();
        }
        List<Integer> listG = g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> listG2 = g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> listG3 = g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> listG4 = g("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.a.getText(), 0, this.a.getText().length()));
        for (int i = 0; i < listG.size(); i++) {
            spannableString.setSpan(new androidx.core.view.e0.a(listG4.get(i).intValue(), this, r().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), listG.get(i).intValue(), listG2.get(i).intValue(), listG3.get(i).intValue());
        }
        return spannableString;
    }

    public String w() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.a.getViewIdResourceName();
        }
        return null;
    }

    public boolean z() {
        return this.a.isCheckable();
    }
}
