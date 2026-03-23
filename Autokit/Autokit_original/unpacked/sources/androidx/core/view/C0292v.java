package androidx.core.view;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.C0258a;
import androidx.core.view.C0265d0;
import androidx.core.view.p004e0.C0269c;
import androidx.core.view.p004e0.InterfaceC0272f;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p016c.p041g.C0586b;

/* JADX INFO: renamed from: androidx.core.view.v */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"PrivateConstructorForUtilityClass"})
public class C0292v {

    /* JADX INFO: renamed from: b */
    private static Field f1898b;

    /* JADX INFO: renamed from: c */
    private static boolean f1899c;

    /* JADX INFO: renamed from: d */
    private static Field f1900d;

    /* JADX INFO: renamed from: e */
    private static boolean f1901e;

    /* JADX INFO: renamed from: f */
    private static WeakHashMap<View, String> f1902f;

    /* JADX INFO: renamed from: h */
    private static Field f1904h;

    /* JADX INFO: renamed from: j */
    private static ThreadLocal<Rect> f1906j;

    /* JADX INFO: renamed from: a */
    private static final AtomicInteger f1897a = new AtomicInteger(1);

    /* JADX INFO: renamed from: g */
    private static WeakHashMap<View, C0296z> f1903g = null;

    /* JADX INFO: renamed from: i */
    private static boolean f1905i = false;

    /* JADX INFO: renamed from: k */
    private static final int[] f1907k = {C0586b.accessibility_custom_action_0, C0586b.accessibility_custom_action_1, C0586b.accessibility_custom_action_2, C0586b.accessibility_custom_action_3, C0586b.accessibility_custom_action_4, C0586b.accessibility_custom_action_5, C0586b.accessibility_custom_action_6, C0586b.accessibility_custom_action_7, C0586b.accessibility_custom_action_8, C0586b.accessibility_custom_action_9, C0586b.accessibility_custom_action_10, C0586b.accessibility_custom_action_11, C0586b.accessibility_custom_action_12, C0586b.accessibility_custom_action_13, C0586b.accessibility_custom_action_14, C0586b.accessibility_custom_action_15, C0586b.accessibility_custom_action_16, C0586b.accessibility_custom_action_17, C0586b.accessibility_custom_action_18, C0586b.accessibility_custom_action_19, C0586b.accessibility_custom_action_20, C0586b.accessibility_custom_action_21, C0586b.accessibility_custom_action_22, C0586b.accessibility_custom_action_23, C0586b.accessibility_custom_action_24, C0586b.accessibility_custom_action_25, C0586b.accessibility_custom_action_26, C0586b.accessibility_custom_action_27, C0586b.accessibility_custom_action_28, C0586b.accessibility_custom_action_29, C0586b.accessibility_custom_action_30, C0586b.accessibility_custom_action_31};

    /* JADX INFO: renamed from: l */
    private static final InterfaceC0289s f1908l = new a();

    /* JADX INFO: renamed from: androidx.core.view.v$a */
    class a implements InterfaceC0289s {
        a() {
        }

        @Override // androidx.core.view.InterfaceC0289s
        /* JADX INFO: renamed from: a */
        public C0262c mo1189a(C0262c c0262c) {
            return c0262c;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$b */
    class b extends g<Boolean> {
        b(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Boolean mo2128d(View view) {
            return Boolean.valueOf(view.isScreenReaderFocusable());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void mo2129e(View view, Boolean bool) {
            view.setScreenReaderFocusable(bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean mo2130h(Boolean bool, Boolean bool2) {
            return !m2147a(bool, bool2);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$c */
    class c extends g<CharSequence> {
        c(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public CharSequence mo2128d(View view) {
            return view.getAccessibilityPaneTitle();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void mo2129e(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean mo2130h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$d */
    class d extends g<CharSequence> {
        d(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public CharSequence mo2128d(View view) {
            return view.getStateDescription();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void mo2129e(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean mo2130h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$e */
    class e extends g<Boolean> {
        e(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Boolean mo2128d(View view) {
            return Boolean.valueOf(view.isAccessibilityHeading());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void mo2129e(View view, Boolean bool) {
            view.setAccessibilityHeading(bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.C0292v.g
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean mo2130h(Boolean bool, Boolean bool2) {
            return !m2147a(bool, bool2);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$f */
    static class f implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b */
        private WeakHashMap<View, Boolean> f1909b = new WeakHashMap<>();

        f() {
        }

        /* JADX INFO: renamed from: a */
        private void m2143a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                C0292v.m2073X(view, z2 ? 16 : 32);
                this.f1909b.put(view, Boolean.valueOf(z2));
            }
        }

        /* JADX INFO: renamed from: b */
        private void m2144b(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f1909b.entrySet()) {
                    m2143a(entry.getKey(), entry.getValue().booleanValue());
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            m2144b(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$g */
    static abstract class g<T> {

        /* JADX INFO: renamed from: a */
        private final int f1910a;

        /* JADX INFO: renamed from: b */
        private final Class<T> f1911b;

        /* JADX INFO: renamed from: c */
        private final int f1912c;

        /* JADX INFO: renamed from: d */
        private final int f1913d;

        g(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        /* JADX INFO: renamed from: b */
        private boolean m2145b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        /* JADX INFO: renamed from: c */
        private boolean m2146c() {
            return Build.VERSION.SDK_INT >= this.f1912c;
        }

        /* JADX INFO: renamed from: a */
        boolean m2147a(Boolean bool, Boolean bool2) {
            return (bool == null ? false : bool.booleanValue()) == (bool2 == null ? false : bool2.booleanValue());
        }

        /* JADX INFO: renamed from: d */
        abstract T mo2128d(View view);

        /* JADX INFO: renamed from: e */
        abstract void mo2129e(View view, T t);

        /* JADX INFO: renamed from: f */
        T m2148f(View view) {
            if (m2146c()) {
                return mo2128d(view);
            }
            if (!m2145b()) {
                return null;
            }
            T t = (T) view.getTag(this.f1910a);
            if (this.f1911b.isInstance(t)) {
                return t;
            }
            return null;
        }

        /* JADX INFO: renamed from: g */
        void m2149g(View view, T t) {
            if (m2146c()) {
                mo2129e(view, t);
            } else if (m2145b() && mo2130h(m2148f(view), t)) {
                C0292v.m2054G(view);
                view.setTag(this.f1910a, t);
                C0292v.m2073X(view, this.f1913d);
            }
        }

        /* JADX INFO: renamed from: h */
        abstract boolean mo2130h(T t, T t2);

        g(int i, Class<T> cls, int i2, int i3) {
            this.f1910a = i;
            this.f1911b = cls;
            this.f1913d = i2;
            this.f1912c = i3;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$h */
    private static class h {

        /* JADX INFO: renamed from: androidx.core.view.v$h$a */
        class a implements View.OnApplyWindowInsetsListener {

            /* JADX INFO: renamed from: a */
            C0265d0 f1914a = null;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ View f1915b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ InterfaceC0287q f1916c;

            a(View view, InterfaceC0287q interfaceC0287q) {
                this.f1915b = view;
                this.f1916c = interfaceC0287q;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                C0265d0 c0265d0M1833t = C0265d0.m1833t(windowInsets, view);
                if (Build.VERSION.SDK_INT < 30) {
                    h.m2150a(windowInsets, this.f1915b);
                    if (c0265d0M1833t.equals(this.f1914a)) {
                        return this.f1916c.mo527a(view, c0265d0M1833t).m1850r();
                    }
                }
                this.f1914a = c0265d0M1833t;
                C0265d0 c0265d0Mo527a = this.f1916c.mo527a(view, c0265d0M1833t);
                if (Build.VERSION.SDK_INT >= 30) {
                    return c0265d0Mo527a.m1850r();
                }
                C0292v.m2099l0(view);
                return c0265d0Mo527a.m1850r();
            }
        }

        /* JADX INFO: renamed from: a */
        static void m2150a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(C0586b.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        /* JADX INFO: renamed from: b */
        static C0265d0 m2151b(View view, C0265d0 c0265d0, Rect rect) {
            WindowInsets windowInsetsM1850r = c0265d0.m1850r();
            if (windowInsetsM1850r != null) {
                return C0265d0.m1833t(view.computeSystemWindowInsets(windowInsetsM1850r, rect), view);
            }
            rect.setEmpty();
            return c0265d0;
        }

        /* JADX INFO: renamed from: c */
        public static C0265d0 m2152c(View view) {
            return C0265d0.a.m1851a(view);
        }

        /* JADX INFO: renamed from: d */
        static void m2153d(View view, InterfaceC0287q interfaceC0287q) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(C0586b.tag_on_apply_window_listener, interfaceC0287q);
            }
            if (interfaceC0287q == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(C0586b.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new a(view, interfaceC0287q));
            }
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$i */
    private static class i {
        /* JADX INFO: renamed from: a */
        public static C0265d0 m2154a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            C0265d0 c0265d0M1832s = C0265d0.m1832s(rootWindowInsets);
            c0265d0M1832s.m1848p(c0265d0M1832s);
            c0265d0M1832s.m1837d(view.getRootView());
            return c0265d0M1832s;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$j */
    private static class j {
        /* JADX INFO: renamed from: a */
        static void m2155a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.v$k */
    public interface k {
        /* JADX INFO: renamed from: a */
        boolean m2156a(View view, KeyEvent keyEvent);
    }

    /* JADX INFO: renamed from: androidx.core.view.v$l */
    static class l {

        /* JADX INFO: renamed from: d */
        private static final ArrayList<WeakReference<View>> f1917d = new ArrayList<>();

        /* JADX INFO: renamed from: a */
        private WeakHashMap<View, Boolean> f1918a = null;

        /* JADX INFO: renamed from: b */
        private SparseArray<WeakReference<View>> f1919b = null;

        /* JADX INFO: renamed from: c */
        private WeakReference<KeyEvent> f1920c = null;

        l() {
        }

        /* JADX INFO: renamed from: a */
        static l m2157a(View view) {
            l lVar = (l) view.getTag(C0586b.tag_unhandled_key_event_manager);
            if (lVar != null) {
                return lVar;
            }
            l lVar2 = new l();
            view.setTag(C0586b.tag_unhandled_key_event_manager, lVar2);
            return lVar2;
        }

        /* JADX INFO: renamed from: c */
        private View m2158c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f1918a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View viewM2158c = m2158c(viewGroup.getChildAt(childCount), keyEvent);
                        if (viewM2158c != null) {
                            return viewM2158c;
                        }
                    }
                }
                if (m2160e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: d */
        private SparseArray<WeakReference<View>> m2159d() {
            if (this.f1919b == null) {
                this.f1919b = new SparseArray<>();
            }
            return this.f1919b;
        }

        /* JADX INFO: renamed from: e */
        private boolean m2160e(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(C0586b.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((k) arrayList.get(size)).m2156a(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: renamed from: g */
        private void m2161g() {
            WeakHashMap<View, Boolean> weakHashMap = this.f1918a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (f1917d.isEmpty()) {
                return;
            }
            synchronized (f1917d) {
                if (this.f1918a == null) {
                    this.f1918a = new WeakHashMap<>();
                }
                for (int size = f1917d.size() - 1; size >= 0; size--) {
                    View view = f1917d.get(size).get();
                    if (view == null) {
                        f1917d.remove(size);
                    } else {
                        this.f1918a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f1918a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        /* JADX INFO: renamed from: b */
        boolean m2162b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                m2161g();
            }
            View viewM2158c = m2158c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (viewM2158c != null && !KeyEvent.isModifierKey(keyCode)) {
                    m2159d().put(keyCode, new WeakReference<>(viewM2158c));
                }
            }
            return viewM2158c != null;
        }

        /* JADX INFO: renamed from: f */
        boolean m2163f(KeyEvent keyEvent) {
            int iIndexOfKey;
            WeakReference<KeyEvent> weakReference = this.f1920c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f1920c = new WeakReference<>(keyEvent);
            WeakReference<View> weakReferenceValueAt = null;
            SparseArray<WeakReference<View>> sparseArrayM2159d = m2159d();
            if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArrayM2159d.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                weakReferenceValueAt = sparseArrayM2159d.valueAt(iIndexOfKey);
                sparseArrayM2159d.removeAt(iIndexOfKey);
            }
            if (weakReferenceValueAt == null) {
                weakReferenceValueAt = sparseArrayM2159d.get(keyEvent.getKeyCode());
            }
            if (weakReferenceValueAt == null) {
                return false;
            }
            View view = weakReferenceValueAt.get();
            if (view != null && C0292v.m2068S(view)) {
                m2160e(view, keyEvent);
            }
            return true;
        }
    }

    static {
        new f();
    }

    /* JADX INFO: renamed from: A */
    public static int m2042A(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    /* JADX INFO: renamed from: A0 */
    public static void m2043A0(View view, int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i2, i3, i4, i5);
        } else {
            view.setPadding(i2, i3, i4, i5);
        }
    }

    @SuppressLint({"InlinedApi"})
    /* JADX INFO: renamed from: B */
    public static int m2044B(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    /* JADX INFO: renamed from: B0 */
    public static void m2045B0(View view, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i2, i3);
        }
    }

    /* JADX INFO: renamed from: C */
    public static int m2046C(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    /* JADX INFO: renamed from: C0 */
    public static void m2047C0(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            m2053F0().m2149g(view, charSequence);
        }
    }

    /* JADX INFO: renamed from: D */
    public static int m2048D(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f1901e) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f1900d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f1901e = true;
        }
        Field field = f1900d;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: D0 */
    public static void m2049D0(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f1902f == null) {
            f1902f = new WeakHashMap<>();
        }
        f1902f.put(view, str);
    }

    /* JADX INFO: renamed from: E */
    public static int m2050E(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f1899c) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f1898b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f1899c = true;
        }
        Field field = f1898b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: E0 */
    private static void m2051E0(View view) {
        if (m2042A(view) == 0) {
            m2123x0(view, 1);
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (m2042A((View) parent) == 4) {
                m2123x0(view, 2);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: F */
    public static String[] m2052F(View view) {
        return (String[]) view.getTag(C0586b.tag_on_receive_content_mime_types);
    }

    /* JADX INFO: renamed from: F0 */
    private static g<CharSequence> m2053F0() {
        return new d(C0586b.tag_state_description, CharSequence.class, 64, 30);
    }

    /* JADX INFO: renamed from: G */
    static C0258a m2054G(View view) {
        C0258a c0258aM2098l = m2098l(view);
        if (c0258aM2098l == null) {
            c0258aM2098l = new C0258a();
        }
        m2105o0(view, c0258aM2098l);
        return c0258aM2098l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: G0 */
    public static void m2055G0(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof InterfaceC0281k) {
            ((InterfaceC0281k) view).stopNestedScroll();
        }
    }

    /* JADX INFO: renamed from: H */
    public static int m2056H(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    /* JADX INFO: renamed from: H0 */
    private static void m2057H0(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    /* JADX INFO: renamed from: I */
    public static int m2058I(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    /* JADX INFO: renamed from: J */
    public static C0265d0 m2059J(View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return i.m2154a(view);
        }
        if (i2 >= 21) {
            return h.m2152c(view);
        }
        return null;
    }

    /* JADX INFO: renamed from: K */
    public static final CharSequence m2060K(View view) {
        return m2053F0().m2148f(view);
    }

    /* JADX INFO: renamed from: L */
    public static String m2061L(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f1902f;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    /* JADX INFO: renamed from: M */
    public static int m2062M(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    /* JADX INFO: renamed from: N */
    public static float m2063N(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getZ() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: O */
    public static boolean m2064O(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    /* JADX INFO: renamed from: P */
    public static boolean m2065P(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    /* JADX INFO: renamed from: Q */
    public static boolean m2066Q(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    /* JADX INFO: renamed from: R */
    public static boolean m2067R(View view) {
        Boolean boolM2148f = m2076a().m2148f(view);
        if (boolM2148f == null) {
            return false;
        }
        return boolM2148f.booleanValue();
    }

    /* JADX INFO: renamed from: S */
    public static boolean m2068S(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isAttachedToWindow() : view.getWindowToken() != null;
    }

    /* JADX INFO: renamed from: T */
    public static boolean m2069T(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isLaidOut() : view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: U */
    public static boolean m2070U(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof InterfaceC0281k) {
            return ((InterfaceC0281k) view).isNestedScrollingEnabled();
        }
        return false;
    }

    /* JADX INFO: renamed from: V */
    public static boolean m2071V(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    /* JADX INFO: renamed from: W */
    public static boolean m2072W(View view) {
        Boolean boolM2148f = m2103n0().m2148f(view);
        if (boolM2148f == null) {
            return false;
        }
        return boolM2148f.booleanValue();
    }

    /* JADX INFO: renamed from: X */
    static void m2073X(View view, int i2) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = m2106p(view) != null && view.getVisibility() == 0;
            if (m2104o(view) != 0 || z) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z ? 32 : 2048);
                accessibilityEventObtain.setContentChangeTypes(i2);
                if (z) {
                    accessibilityEventObtain.getText().add(m2106p(view));
                    m2051E0(view);
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i2 == 32) {
                AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.setEventType(32);
                accessibilityEventObtain2.setContentChangeTypes(i2);
                accessibilityEventObtain2.setSource(view);
                view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.getText().add(m2106p(view));
                accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
                return;
            }
            if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i2);
                } catch (AbstractMethodError unused) {
                    String str = view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent";
                }
            }
        }
    }

    /* JADX INFO: renamed from: Y */
    public static void m2074Y(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetLeftAndRight(i2);
            return;
        }
        if (i3 < 21) {
            m2084e(view, i2);
            return;
        }
        Rect rectM2122x = m2122x();
        boolean z = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectM2122x.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectM2122x.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        m2084e(view, i2);
        if (z && rectM2122x.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectM2122x);
        }
    }

    /* JADX INFO: renamed from: Z */
    public static void m2075Z(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetTopAndBottom(i2);
            return;
        }
        if (i3 < 21) {
            m2086f(view, i2);
            return;
        }
        Rect rectM2122x = m2122x();
        boolean z = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectM2122x.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectM2122x.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        m2086f(view, i2);
        if (z && rectM2122x.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectM2122x);
        }
    }

    /* JADX INFO: renamed from: a */
    private static g<Boolean> m2076a() {
        return new e(C0586b.tag_accessibility_heading, Boolean.class, 28);
    }

    /* JADX INFO: renamed from: a0 */
    public static C0265d0 m2077a0(View view, C0265d0 c0265d0) {
        WindowInsets windowInsetsM1850r;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsetsM1850r = c0265d0.m1850r()) != null) {
            WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsetsM1850r);
            if (!windowInsetsOnApplyWindowInsets.equals(windowInsetsM1850r)) {
                return C0265d0.m1833t(windowInsetsOnApplyWindowInsets, view);
            }
        }
        return c0265d0;
    }

    /* JADX INFO: renamed from: b */
    public static int m2078b(View view, CharSequence charSequence, InterfaceC0272f interfaceC0272f) {
        int iM2110r = m2110r(view);
        if (iM2110r != -1) {
            m2080c(view, new C0269c.a(iM2110r, charSequence, interfaceC0272f));
        }
        return iM2110r;
    }

    /* JADX INFO: renamed from: b0 */
    public static void m2079b0(View view, C0269c c0269c) {
        view.onInitializeAccessibilityNodeInfo(c0269c.m1956u0());
    }

    /* JADX INFO: renamed from: c */
    private static void m2080c(View view, C0269c.a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            m2054G(view);
            m2095j0(aVar.m1961b(), view);
            m2108q(view).add(aVar);
            m2073X(view, 0);
        }
    }

    /* JADX INFO: renamed from: c0 */
    private static g<CharSequence> m2081c0() {
        return new c(C0586b.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    /* JADX INFO: renamed from: d */
    public static C0296z m2082d(View view) {
        if (f1903g == null) {
            f1903g = new WeakHashMap<>();
        }
        C0296z c0296z = f1903g.get(view);
        if (c0296z != null) {
            return c0296z;
        }
        C0296z c0296z2 = new C0296z(view);
        f1903g.put(view, c0296z2);
        return c0296z2;
    }

    /* JADX INFO: renamed from: d0 */
    public static boolean m2083d0(View view, int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i2, bundle);
        }
        return false;
    }

    /* JADX INFO: renamed from: e */
    private static void m2084e(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (view.getVisibility() == 0) {
            m2057H0(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                m2057H0((View) parent);
            }
        }
    }

    /* JADX INFO: renamed from: e0 */
    public static C0262c m2085e0(View view, C0262c c0262c) {
        if (Log.isLoggable("ViewCompat", 3)) {
            String str = "performReceiveContent: " + c0262c + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]";
        }
        InterfaceC0288r interfaceC0288r = (InterfaceC0288r) view.getTag(C0586b.tag_on_receive_content_listener);
        if (interfaceC0288r == null) {
            return m2124y(view).mo1189a(c0262c);
        }
        C0262c c0262cMo2039a = interfaceC0288r.mo2039a(view, c0262c);
        if (c0262cMo2039a == null) {
            return null;
        }
        return m2124y(view).mo1189a(c0262cMo2039a);
    }

    /* JADX INFO: renamed from: f */
    private static void m2086f(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (view.getVisibility() == 0) {
            m2057H0(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                m2057H0((View) parent);
            }
        }
    }

    /* JADX INFO: renamed from: f0 */
    public static void m2087f0(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    /* JADX INFO: renamed from: g */
    public static C0265d0 m2088g(View view, C0265d0 c0265d0, Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? h.m2151b(view, c0265d0, rect) : c0265d0;
    }

    /* JADX INFO: renamed from: g0 */
    public static void m2089g0(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    /* JADX INFO: renamed from: h */
    public static C0265d0 m2090h(View view, C0265d0 c0265d0) {
        WindowInsets windowInsetsM1850r;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsetsM1850r = c0265d0.m1850r()) != null) {
            WindowInsets windowInsetsDispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsetsM1850r);
            if (!windowInsetsDispatchApplyWindowInsets.equals(windowInsetsM1850r)) {
                return C0265d0.m1833t(windowInsetsDispatchApplyWindowInsets, view);
            }
        }
        return c0265d0;
    }

    /* JADX INFO: renamed from: h0 */
    public static void m2091h0(View view, Runnable runnable, long j2) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j2);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j2);
        }
    }

    /* JADX INFO: renamed from: i */
    static boolean m2092i(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return l.m2157a(view).m2162b(view, keyEvent);
    }

    /* JADX INFO: renamed from: i0 */
    public static void m2093i0(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            m2095j0(i2, view);
            m2073X(view, 0);
        }
    }

    /* JADX INFO: renamed from: j */
    static boolean m2094j(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return l.m2157a(view).m2163f(keyEvent);
    }

    /* JADX INFO: renamed from: j0 */
    private static void m2095j0(int i2, View view) {
        List<C0269c.a> listM2108q = m2108q(view);
        for (int i3 = 0; i3 < listM2108q.size(); i3++) {
            if (listM2108q.get(i3).m1961b() == i2) {
                listM2108q.remove(i3);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public static int m2096k() {
        int i2;
        int i3;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            i2 = f1897a.get();
            i3 = i2 + 1;
            if (i3 > 16777215) {
                i3 = 1;
            }
        } while (!f1897a.compareAndSet(i2, i3));
        return i2;
    }

    /* JADX INFO: renamed from: k0 */
    public static void m2097k0(View view, C0269c.a aVar, CharSequence charSequence, InterfaceC0272f interfaceC0272f) {
        if (interfaceC0272f == null && charSequence == null) {
            m2093i0(view, aVar.m1961b());
        } else {
            m2080c(view, aVar.m1960a(charSequence, interfaceC0272f));
        }
    }

    /* JADX INFO: renamed from: l */
    public static C0258a m2098l(View view) {
        View.AccessibilityDelegate accessibilityDelegateM2100m = m2100m(view);
        if (accessibilityDelegateM2100m == null) {
            return null;
        }
        return accessibilityDelegateM2100m instanceof C0258a.a ? ((C0258a.a) accessibilityDelegateM2100m).f1808a : new C0258a(accessibilityDelegateM2100m);
    }

    /* JADX INFO: renamed from: l0 */
    public static void m2099l0(View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            view.requestApplyInsets();
        } else if (i2 >= 16) {
            view.requestFitSystemWindows();
        }
    }

    /* JADX INFO: renamed from: m */
    private static View.AccessibilityDelegate m2100m(View view) {
        return Build.VERSION.SDK_INT >= 29 ? view.getAccessibilityDelegate() : m2102n(view);
    }

    /* JADX INFO: renamed from: m0 */
    public static void m2101m0(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 29) {
            j.m2155a(view, context, iArr, attributeSet, typedArray, i2, i3);
        }
    }

    /* JADX INFO: renamed from: n */
    private static View.AccessibilityDelegate m2102n(View view) {
        if (f1905i) {
            return null;
        }
        if (f1904h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f1904h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f1905i = true;
                return null;
            }
        }
        try {
            Object obj = f1904h.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f1905i = true;
            return null;
        }
    }

    /* JADX INFO: renamed from: n0 */
    private static g<Boolean> m2103n0() {
        return new b(C0586b.tag_screen_reader_focusable, Boolean.class, 28);
    }

    /* JADX INFO: renamed from: o */
    public static int m2104o(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    /* JADX INFO: renamed from: o0 */
    public static void m2105o0(View view, C0258a c0258a) {
        if (c0258a == null && (m2100m(view) instanceof C0258a.a)) {
            c0258a = new C0258a();
        }
        view.setAccessibilityDelegate(c0258a == null ? null : c0258a.m1811d());
    }

    /* JADX INFO: renamed from: p */
    public static CharSequence m2106p(View view) {
        return m2081c0().m2148f(view);
    }

    /* JADX INFO: renamed from: p0 */
    public static void m2107p0(View view, boolean z) {
        m2076a().m2149g(view, Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: q */
    private static List<C0269c.a> m2108q(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(C0586b.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(C0586b.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    /* JADX INFO: renamed from: q0 */
    public static void m2109q0(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i2);
        }
    }

    /* JADX INFO: renamed from: r */
    private static int m2110r(View view) {
        List<C0269c.a> listM2108q = m2108q(view);
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int[] iArr = f1907k;
            if (i2 >= iArr.length || i3 != -1) {
                break;
            }
            int i4 = iArr[i2];
            boolean z = true;
            for (int i5 = 0; i5 < listM2108q.size(); i5++) {
                z &= listM2108q.get(i5).m1961b() != i4;
            }
            if (z) {
                i3 = i4;
            }
            i2++;
        }
        return i3;
    }

    /* JADX INFO: renamed from: r0 */
    public static void m2111r0(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: s */
    public static ColorStateList m2112s(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (view instanceof InterfaceC0291u) {
            return ((InterfaceC0291u) view).getSupportBackgroundTintList();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: s0 */
    public static void m2113s0(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT < 21) {
            if (view instanceof InterfaceC0291u) {
                ((InterfaceC0291u) view).setSupportBackgroundTintList(colorStateList);
                return;
            }
            return;
        }
        view.setBackgroundTintList(colorStateList);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            view.setBackground(background);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: t */
    public static PorterDuff.Mode m2114t(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        if (view instanceof InterfaceC0291u) {
            return ((InterfaceC0291u) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: t0 */
    public static void m2115t0(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT < 21) {
            if (view instanceof InterfaceC0291u) {
                ((InterfaceC0291u) view).setSupportBackgroundTintMode(mode);
                return;
            }
            return;
        }
        view.setBackgroundTintMode(mode);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            view.setBackground(background);
        }
    }

    /* JADX INFO: renamed from: u */
    public static Rect m2116u(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    /* JADX INFO: renamed from: u0 */
    public static void m2117u0(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    /* JADX INFO: renamed from: v */
    public static Display m2118v(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (m2068S(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    /* JADX INFO: renamed from: v0 */
    public static void m2119v0(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f2);
        }
    }

    /* JADX INFO: renamed from: w */
    public static float m2120w(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getElevation() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: w0 */
    public static void m2121w0(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    /* JADX INFO: renamed from: x */
    private static Rect m2122x() {
        if (f1906j == null) {
            f1906j = new ThreadLocal<>();
        }
        Rect rect = f1906j.get();
        if (rect == null) {
            rect = new Rect();
            f1906j.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    /* JADX INFO: renamed from: x0 */
    public static void m2123x0(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 19) {
            view.setImportantForAccessibility(i2);
        } else if (i3 >= 16) {
            if (i2 == 4) {
                i2 = 2;
            }
            view.setImportantForAccessibility(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: y */
    private static InterfaceC0289s m2124y(View view) {
        return view instanceof InterfaceC0289s ? (InterfaceC0289s) view : f1908l;
    }

    /* JADX INFO: renamed from: y0 */
    public static void m2125y0(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i2);
        }
    }

    /* JADX INFO: renamed from: z */
    public static boolean m2126z(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    /* JADX INFO: renamed from: z0 */
    public static void m2127z0(View view, InterfaceC0287q interfaceC0287q) {
        if (Build.VERSION.SDK_INT >= 21) {
            h.m2153d(view, interfaceC0287q);
        }
    }
}
