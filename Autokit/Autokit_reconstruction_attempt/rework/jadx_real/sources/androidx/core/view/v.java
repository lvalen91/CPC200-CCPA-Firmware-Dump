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
import androidx.core.view.a;
import androidx.core.view.d0;
import androidx.core.view.e0.c;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
@SuppressLint({"PrivateConstructorForUtilityClass"})
public class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f601d;
    private static boolean e;
    private static WeakHashMap<View, String> f;
    private static Field h;
    private static ThreadLocal<Rect> j;
    private static final AtomicInteger a = new AtomicInteger(1);
    private static WeakHashMap<View, z> g = null;
    private static boolean i = false;
    private static final int[] k = {c.g.b.accessibility_custom_action_0, c.g.b.accessibility_custom_action_1, c.g.b.accessibility_custom_action_2, c.g.b.accessibility_custom_action_3, c.g.b.accessibility_custom_action_4, c.g.b.accessibility_custom_action_5, c.g.b.accessibility_custom_action_6, c.g.b.accessibility_custom_action_7, c.g.b.accessibility_custom_action_8, c.g.b.accessibility_custom_action_9, c.g.b.accessibility_custom_action_10, c.g.b.accessibility_custom_action_11, c.g.b.accessibility_custom_action_12, c.g.b.accessibility_custom_action_13, c.g.b.accessibility_custom_action_14, c.g.b.accessibility_custom_action_15, c.g.b.accessibility_custom_action_16, c.g.b.accessibility_custom_action_17, c.g.b.accessibility_custom_action_18, c.g.b.accessibility_custom_action_19, c.g.b.accessibility_custom_action_20, c.g.b.accessibility_custom_action_21, c.g.b.accessibility_custom_action_22, c.g.b.accessibility_custom_action_23, c.g.b.accessibility_custom_action_24, c.g.b.accessibility_custom_action_25, c.g.b.accessibility_custom_action_26, c.g.b.accessibility_custom_action_27, c.g.b.accessibility_custom_action_28, c.g.b.accessibility_custom_action_29, c.g.b.accessibility_custom_action_30, c.g.b.accessibility_custom_action_31};
    private static final s l = new a();

    class a implements s {
        a() {
        }

        @Override // androidx.core.view.s
        public androidx.core.view.c a(androidx.core.view.c cVar) {
            return cVar;
        }
    }

    class b extends g<Boolean> {
        b(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Boolean d(View view) {
            return Boolean.valueOf(view.isScreenReaderFocusable());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, Boolean bool) {
            view.setScreenReaderFocusable(bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    class c extends g<CharSequence> {
        c(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public CharSequence d(View view) {
            return view.getAccessibilityPaneTitle();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    class d extends g<CharSequence> {
        d(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public CharSequence d(View view) {
            return view.getStateDescription();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    class e extends g<Boolean> {
        e(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Boolean d(View view) {
            return Boolean.valueOf(view.isAccessibilityHeading());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, Boolean bool) {
            view.setAccessibilityHeading(bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.v.g
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    static class f implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WeakHashMap<View, Boolean> f602b = new WeakHashMap<>();

        f() {
        }

        private void a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                v.X(view, z2 ? 16 : 32);
                this.f602b.put(view, Boolean.valueOf(z2));
            }
        }

        private void b(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f602b.entrySet()) {
                    a(entry.getKey(), entry.getValue().booleanValue());
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            b(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    static abstract class g<T> {
        private final int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Class<T> f603b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f604c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f605d;

        g(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        private boolean b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        private boolean c() {
            return Build.VERSION.SDK_INT >= this.f604c;
        }

        boolean a(Boolean bool, Boolean bool2) {
            return (bool == null ? false : bool.booleanValue()) == (bool2 == null ? false : bool2.booleanValue());
        }

        abstract T d(View view);

        abstract void e(View view, T t);

        T f(View view) {
            if (c()) {
                return d(view);
            }
            if (!b()) {
                return null;
            }
            T t = (T) view.getTag(this.a);
            if (this.f603b.isInstance(t)) {
                return t;
            }
            return null;
        }

        void g(View view, T t) {
            if (c()) {
                e(view, t);
            } else if (b() && h(f(view), t)) {
                v.G(view);
                view.setTag(this.a, t);
                v.X(view, this.f605d);
            }
        }

        abstract boolean h(T t, T t2);

        g(int i, Class<T> cls, int i2, int i3) {
            this.a = i;
            this.f603b = cls;
            this.f605d = i2;
            this.f604c = i3;
        }
    }

    private static class h {

        class a implements View.OnApplyWindowInsetsListener {
            d0 a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f606b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ q f607c;

            a(View view, q qVar) {
                this.f606b = view;
                this.f607c = qVar;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                d0 d0VarT = d0.t(windowInsets, view);
                if (Build.VERSION.SDK_INT < 30) {
                    h.a(windowInsets, this.f606b);
                    if (d0VarT.equals(this.a)) {
                        return this.f607c.a(view, d0VarT).r();
                    }
                }
                this.a = d0VarT;
                d0 d0VarA = this.f607c.a(view, d0VarT);
                if (Build.VERSION.SDK_INT >= 30) {
                    return d0VarA.r();
                }
                v.l0(view);
                return d0VarA.r();
            }
        }

        static void a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(c.g.b.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        static d0 b(View view, d0 d0Var, Rect rect) {
            WindowInsets windowInsetsR = d0Var.r();
            if (windowInsetsR != null) {
                return d0.t(view.computeSystemWindowInsets(windowInsetsR, rect), view);
            }
            rect.setEmpty();
            return d0Var;
        }

        public static d0 c(View view) {
            return d0.a.a(view);
        }

        static void d(View view, q qVar) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(c.g.b.tag_on_apply_window_listener, qVar);
            }
            if (qVar == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(c.g.b.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new a(view, qVar));
            }
        }
    }

    private static class i {
        public static d0 a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            d0 d0VarS = d0.s(rootWindowInsets);
            d0VarS.p(d0VarS);
            d0VarS.d(view.getRootView());
            return d0VarS;
        }
    }

    private static class j {
        static void a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    public interface k {
        boolean a(View view, KeyEvent keyEvent);
    }

    static class l {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final ArrayList<WeakReference<View>> f608d = new ArrayList<>();
        private WeakHashMap<View, Boolean> a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SparseArray<WeakReference<View>> f609b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WeakReference<KeyEvent> f610c = null;

        l() {
        }

        static l a(View view) {
            l lVar = (l) view.getTag(c.g.b.tag_unhandled_key_event_manager);
            if (lVar != null) {
                return lVar;
            }
            l lVar2 = new l();
            view.setTag(c.g.b.tag_unhandled_key_event_manager, lVar2);
            return lVar2;
        }

        private View c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View viewC = c(viewGroup.getChildAt(childCount), keyEvent);
                        if (viewC != null) {
                            return viewC;
                        }
                    }
                }
                if (e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private SparseArray<WeakReference<View>> d() {
            if (this.f609b == null) {
                this.f609b = new SparseArray<>();
            }
            return this.f609b;
        }

        private boolean e(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(c.g.b.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((k) arrayList.get(size)).a(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        private void g() {
            WeakHashMap<View, Boolean> weakHashMap = this.a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (f608d.isEmpty()) {
                return;
            }
            synchronized (f608d) {
                if (this.a == null) {
                    this.a = new WeakHashMap<>();
                }
                for (int size = f608d.size() - 1; size >= 0; size--) {
                    View view = f608d.get(size).get();
                    if (view == null) {
                        f608d.remove(size);
                    } else {
                        this.a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        boolean b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                g();
            }
            View viewC = c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (viewC != null && !KeyEvent.isModifierKey(keyCode)) {
                    d().put(keyCode, new WeakReference<>(viewC));
                }
            }
            return viewC != null;
        }

        boolean f(KeyEvent keyEvent) {
            int iIndexOfKey;
            WeakReference<KeyEvent> weakReference = this.f610c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f610c = new WeakReference<>(keyEvent);
            WeakReference<View> weakReferenceValueAt = null;
            SparseArray<WeakReference<View>> sparseArrayD = d();
            if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArrayD.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                weakReferenceValueAt = sparseArrayD.valueAt(iIndexOfKey);
                sparseArrayD.removeAt(iIndexOfKey);
            }
            if (weakReferenceValueAt == null) {
                weakReferenceValueAt = sparseArrayD.get(keyEvent.getKeyCode());
            }
            if (weakReferenceValueAt == null) {
                return false;
            }
            View view = weakReferenceValueAt.get();
            if (view != null && v.S(view)) {
                e(view, keyEvent);
            }
            return true;
        }
    }

    static {
        new f();
    }

    public static int A(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    public static void A0(View view, int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i2, i3, i4, i5);
        } else {
            view.setPadding(i2, i3, i4, i5);
        }
    }

    @SuppressLint({"InlinedApi"})
    public static int B(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    public static void B0(View view, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i2, i3);
        }
    }

    public static int C(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    public static void C0(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            F0().g(view, charSequence);
        }
    }

    public static int D(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!e) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f601d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            e = true;
        }
        Field field = f601d;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static void D0(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f == null) {
            f = new WeakHashMap<>();
        }
        f.put(view, str);
    }

    public static int E(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f600c) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f599b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f600c = true;
        }
        Field field = f599b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    private static void E0(View view) {
        if (A(view) == 0) {
            x0(view, 1);
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (A((View) parent) == 4) {
                x0(view, 2);
                return;
            }
        }
    }

    public static String[] F(View view) {
        return (String[]) view.getTag(c.g.b.tag_on_receive_content_mime_types);
    }

    private static g<CharSequence> F0() {
        return new d(c.g.b.tag_state_description, CharSequence.class, 64, 30);
    }

    static androidx.core.view.a G(View view) {
        androidx.core.view.a aVarL = l(view);
        if (aVarL == null) {
            aVarL = new androidx.core.view.a();
        }
        o0(view, aVarL);
        return aVarL;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void G0(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof androidx.core.view.k) {
            ((androidx.core.view.k) view).stopNestedScroll();
        }
    }

    public static int H(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    private static void H0(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static int I(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    public static d0 J(View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return i.a(view);
        }
        if (i2 >= 21) {
            return h.c(view);
        }
        return null;
    }

    public static final CharSequence K(View view) {
        return F0().f(view);
    }

    public static String L(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    public static int M(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    public static float N(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getZ() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public static boolean O(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    public static boolean P(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    public static boolean Q(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    public static boolean R(View view) {
        Boolean boolF = a().f(view);
        if (boolF == null) {
            return false;
        }
        return boolF.booleanValue();
    }

    public static boolean S(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isAttachedToWindow() : view.getWindowToken() != null;
    }

    public static boolean T(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isLaidOut() : view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean U(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof androidx.core.view.k) {
            return ((androidx.core.view.k) view).isNestedScrollingEnabled();
        }
        return false;
    }

    public static boolean V(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    public static boolean W(View view) {
        Boolean boolF = n0().f(view);
        if (boolF == null) {
            return false;
        }
        return boolF.booleanValue();
    }

    static void X(View view, int i2) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = p(view) != null && view.getVisibility() == 0;
            if (o(view) != 0 || z) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z ? 32 : 2048);
                accessibilityEventObtain.setContentChangeTypes(i2);
                if (z) {
                    accessibilityEventObtain.getText().add(p(view));
                    E0(view);
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
                accessibilityEventObtain2.getText().add(p(view));
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

    public static void Y(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetLeftAndRight(i2);
            return;
        }
        if (i3 < 21) {
            e(view, i2);
            return;
        }
        Rect rectX = x();
        boolean z = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectX.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectX.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        e(view, i2);
        if (z && rectX.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectX);
        }
    }

    public static void Z(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetTopAndBottom(i2);
            return;
        }
        if (i3 < 21) {
            f(view, i2);
            return;
        }
        Rect rectX = x();
        boolean z = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectX.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectX.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        f(view, i2);
        if (z && rectX.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectX);
        }
    }

    private static g<Boolean> a() {
        return new e(c.g.b.tag_accessibility_heading, Boolean.class, 28);
    }

    public static d0 a0(View view, d0 d0Var) {
        WindowInsets windowInsetsR;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsetsR = d0Var.r()) != null) {
            WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsetsR);
            if (!windowInsetsOnApplyWindowInsets.equals(windowInsetsR)) {
                return d0.t(windowInsetsOnApplyWindowInsets, view);
            }
        }
        return d0Var;
    }

    public static int b(View view, CharSequence charSequence, androidx.core.view.e0.f fVar) {
        int iR = r(view);
        if (iR != -1) {
            c(view, new c.a(iR, charSequence, fVar));
        }
        return iR;
    }

    public static void b0(View view, androidx.core.view.e0.c cVar) {
        view.onInitializeAccessibilityNodeInfo(cVar.u0());
    }

    private static void c(View view, c.a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            G(view);
            j0(aVar.b(), view);
            q(view).add(aVar);
            X(view, 0);
        }
    }

    private static g<CharSequence> c0() {
        return new c(c.g.b.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    public static z d(View view) {
        if (g == null) {
            g = new WeakHashMap<>();
        }
        z zVar = g.get(view);
        if (zVar != null) {
            return zVar;
        }
        z zVar2 = new z(view);
        g.put(view, zVar2);
        return zVar2;
    }

    public static boolean d0(View view, int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i2, bundle);
        }
        return false;
    }

    private static void e(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (view.getVisibility() == 0) {
            H0(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                H0((View) parent);
            }
        }
    }

    public static androidx.core.view.c e0(View view, androidx.core.view.c cVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            String str = "performReceiveContent: " + cVar + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]";
        }
        r rVar = (r) view.getTag(c.g.b.tag_on_receive_content_listener);
        if (rVar == null) {
            return y(view).a(cVar);
        }
        androidx.core.view.c cVarA = rVar.a(view, cVar);
        if (cVarA == null) {
            return null;
        }
        return y(view).a(cVarA);
    }

    private static void f(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (view.getVisibility() == 0) {
            H0(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                H0((View) parent);
            }
        }
    }

    public static void f0(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    public static d0 g(View view, d0 d0Var, Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? h.b(view, d0Var, rect) : d0Var;
    }

    public static void g0(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    public static d0 h(View view, d0 d0Var) {
        WindowInsets windowInsetsR;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsetsR = d0Var.r()) != null) {
            WindowInsets windowInsetsDispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsetsR);
            if (!windowInsetsDispatchApplyWindowInsets.equals(windowInsetsR)) {
                return d0.t(windowInsetsDispatchApplyWindowInsets, view);
            }
        }
        return d0Var;
    }

    public static void h0(View view, Runnable runnable, long j2) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j2);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j2);
        }
    }

    static boolean i(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return l.a(view).b(view, keyEvent);
    }

    public static void i0(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            j0(i2, view);
            X(view, 0);
        }
    }

    static boolean j(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return l.a(view).f(keyEvent);
    }

    private static void j0(int i2, View view) {
        List<c.a> listQ = q(view);
        for (int i3 = 0; i3 < listQ.size(); i3++) {
            if (listQ.get(i3).b() == i2) {
                listQ.remove(i3);
                return;
            }
        }
    }

    public static int k() {
        int i2;
        int i3;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            i2 = a.get();
            i3 = i2 + 1;
            if (i3 > 16777215) {
                i3 = 1;
            }
        } while (!a.compareAndSet(i2, i3));
        return i2;
    }

    public static void k0(View view, c.a aVar, CharSequence charSequence, androidx.core.view.e0.f fVar) {
        if (fVar == null && charSequence == null) {
            i0(view, aVar.b());
        } else {
            c(view, aVar.a(charSequence, fVar));
        }
    }

    public static androidx.core.view.a l(View view) {
        View.AccessibilityDelegate accessibilityDelegateM = m(view);
        if (accessibilityDelegateM == null) {
            return null;
        }
        return accessibilityDelegateM instanceof a.C0022a ? ((a.C0022a) accessibilityDelegateM).a : new androidx.core.view.a(accessibilityDelegateM);
    }

    public static void l0(View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            view.requestApplyInsets();
        } else if (i2 >= 16) {
            view.requestFitSystemWindows();
        }
    }

    private static View.AccessibilityDelegate m(View view) {
        return Build.VERSION.SDK_INT >= 29 ? view.getAccessibilityDelegate() : n(view);
    }

    public static void m0(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 29) {
            j.a(view, context, iArr, attributeSet, typedArray, i2, i3);
        }
    }

    private static View.AccessibilityDelegate n(View view) {
        if (i) {
            return null;
        }
        if (h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                i = true;
                return null;
            }
        }
        try {
            Object obj = h.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            i = true;
            return null;
        }
    }

    private static g<Boolean> n0() {
        return new b(c.g.b.tag_screen_reader_focusable, Boolean.class, 28);
    }

    public static int o(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    public static void o0(View view, androidx.core.view.a aVar) {
        if (aVar == null && (m(view) instanceof a.C0022a)) {
            aVar = new androidx.core.view.a();
        }
        view.setAccessibilityDelegate(aVar == null ? null : aVar.d());
    }

    public static CharSequence p(View view) {
        return c0().f(view);
    }

    public static void p0(View view, boolean z) {
        a().g(view, Boolean.valueOf(z));
    }

    private static List<c.a> q(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(c.g.b.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(c.g.b.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static void q0(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i2);
        }
    }

    private static int r(View view) {
        List<c.a> listQ = q(view);
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int[] iArr = k;
            if (i2 >= iArr.length || i3 != -1) {
                break;
            }
            int i4 = iArr[i2];
            boolean z = true;
            for (int i5 = 0; i5 < listQ.size(); i5++) {
                z &= listQ.get(i5).b() != i4;
            }
            if (z) {
                i3 = i4;
            }
            i2++;
        }
        return i3;
    }

    public static void r0(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ColorStateList s(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (view instanceof u) {
            return ((u) view).getSupportBackgroundTintList();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void s0(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT < 21) {
            if (view instanceof u) {
                ((u) view).setSupportBackgroundTintList(colorStateList);
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
    public static PorterDuff.Mode t(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        if (view instanceof u) {
            return ((u) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void t0(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT < 21) {
            if (view instanceof u) {
                ((u) view).setSupportBackgroundTintMode(mode);
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

    public static Rect u(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    public static void u0(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    public static Display v(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (S(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    public static void v0(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f2);
        }
    }

    public static float w(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getElevation() : CropImageView.DEFAULT_ASPECT_RATIO;
    }

    public static void w0(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    private static Rect x() {
        if (j == null) {
            j = new ThreadLocal<>();
        }
        Rect rect = j.get();
        if (rect == null) {
            rect = new Rect();
            j.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static void x0(View view, int i2) {
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
    private static s y(View view) {
        return view instanceof s ? (s) view : l;
    }

    public static void y0(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i2);
        }
    }

    public static boolean z(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    public static void z0(View view, q qVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            h.d(view, qVar);
        }
    }
}
