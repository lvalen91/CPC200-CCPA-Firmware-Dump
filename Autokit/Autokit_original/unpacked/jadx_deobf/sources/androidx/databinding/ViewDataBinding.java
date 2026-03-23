package androidx.databinding;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.p007k.C0334a;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0395i;
import androidx.lifecycle.InterfaceC0396j;
import androidx.lifecycle.InterfaceC0402p;
import androidx.lifecycle.InterfaceC0403q;
import androidx.lifecycle.LiveData;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class ViewDataBinding extends C0323a {

    /* JADX INFO: renamed from: p */
    static int f2005p = 0;

    /* JADX INFO: renamed from: q */
    private static final int f2006q = 8;

    /* JADX INFO: renamed from: r */
    private static final boolean f2007r;

    /* JADX INFO: renamed from: s */
    private static final InterfaceC0318f f2008s;

    /* JADX INFO: renamed from: t */
    private static final ReferenceQueue<ViewDataBinding> f2009t;

    /* JADX INFO: renamed from: u */
    private static final View.OnAttachStateChangeListener f2010u;

    /* JADX INFO: renamed from: b */
    private final Runnable f2011b;

    /* JADX INFO: renamed from: c */
    private boolean f2012c;

    /* JADX INFO: renamed from: d */
    private boolean f2013d;

    /* JADX INFO: renamed from: e */
    private C0322j[] f2014e;

    /* JADX INFO: renamed from: f */
    private final View f2015f;

    /* JADX INFO: renamed from: g */
    private C0324b<Object, ViewDataBinding, Void> f2016g;

    /* JADX INFO: renamed from: h */
    private boolean f2017h;

    /* JADX INFO: renamed from: i */
    private Choreographer f2018i;

    /* JADX INFO: renamed from: j */
    private final Choreographer.FrameCallback f2019j;

    /* JADX INFO: renamed from: k */
    private Handler f2020k;

    /* JADX INFO: renamed from: l */
    private ViewDataBinding f2021l;

    /* JADX INFO: renamed from: m */
    private InterfaceC0396j f2022m;

    /* JADX INFO: renamed from: n */
    private OnStartListener f2023n;

    /* JADX INFO: renamed from: o */
    private boolean f2024o;

    static class OnStartListener implements InterfaceC0395i {

        /* JADX INFO: renamed from: a */
        final WeakReference<ViewDataBinding> f2025a;

        /* synthetic */ OnStartListener(ViewDataBinding viewDataBinding, C0313a c0313a) {
            this(viewDataBinding);
        }

        @InterfaceC0403q(AbstractC0392f.b.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.f2025a.get();
            if (viewDataBinding != null) {
                viewDataBinding.m2333p();
            }
        }

        private OnStartListener(ViewDataBinding viewDataBinding) {
            this.f2025a = new WeakReference<>(viewDataBinding);
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$a */
    static class C0313a implements InterfaceC0318f {
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$b */
    static class C0314b implements InterfaceC0318f {
        C0314b() {
        }

        @Override // androidx.databinding.ViewDataBinding.InterfaceC0318f
        /* JADX INFO: renamed from: a */
        public C0322j mo2337a(ViewDataBinding viewDataBinding, int i) {
            return new C0320h(viewDataBinding, i).m2343f();
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$c */
    static class ViewOnAttachStateChangeListenerC0315c implements View.OnAttachStateChangeListener {
        ViewOnAttachStateChangeListenerC0315c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @TargetApi(19)
        public void onViewAttachedToWindow(View view) {
            ViewDataBinding.m2321s(view).f2011b.run();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$d */
    class RunnableC0316d implements Runnable {
        RunnableC0316d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                ViewDataBinding.this.f2012c = false;
            }
            ViewDataBinding.m2305B();
            if (Build.VERSION.SDK_INT < 19 || ViewDataBinding.this.f2015f.isAttachedToWindow()) {
                ViewDataBinding.this.m2333p();
            } else {
                ViewDataBinding.this.f2015f.removeOnAttachStateChangeListener(ViewDataBinding.f2010u);
                ViewDataBinding.this.f2015f.addOnAttachStateChangeListener(ViewDataBinding.f2010u);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$e */
    class ChoreographerFrameCallbackC0317e implements Choreographer.FrameCallback {
        ChoreographerFrameCallbackC0317e() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            ViewDataBinding.this.f2011b.run();
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$f */
    private interface InterfaceC0318f {
        /* JADX INFO: renamed from: a */
        C0322j mo2337a(ViewDataBinding viewDataBinding, int i);
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$g */
    protected static class C0319g {

        /* JADX INFO: renamed from: a */
        public final String[][] f2028a;

        /* JADX INFO: renamed from: b */
        public final int[][] f2029b;

        /* JADX INFO: renamed from: c */
        public final int[][] f2030c;
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$h */
    private static class C0320h implements InterfaceC0402p, InterfaceC0321i<LiveData<?>> {

        /* JADX INFO: renamed from: a */
        final C0322j<LiveData<?>> f2031a;

        /* JADX INFO: renamed from: b */
        InterfaceC0396j f2032b;

        public C0320h(ViewDataBinding viewDataBinding, int i) {
            this.f2031a = new C0322j<>(viewDataBinding, i, this);
        }

        @Override // androidx.databinding.ViewDataBinding.InterfaceC0321i
        /* JADX INFO: renamed from: b */
        public void mo2339b(InterfaceC0396j interfaceC0396j) {
            LiveData<?> liveDataM2346b = this.f2031a.m2346b();
            if (liveDataM2346b != null) {
                if (this.f2032b != null) {
                    liveDataM2346b.mo2964j(this);
                }
                if (interfaceC0396j != null) {
                    liveDataM2346b.m2960f(interfaceC0396j, this);
                }
            }
            this.f2032b = interfaceC0396j;
        }

        @Override // androidx.lifecycle.InterfaceC0402p
        /* JADX INFO: renamed from: c */
        public void mo2340c(Object obj) {
            ViewDataBinding viewDataBindingM2345a = this.f2031a.m2345a();
            if (viewDataBindingM2345a != null) {
                C0322j<LiveData<?>> c0322j = this.f2031a;
                viewDataBindingM2345a.m2322u(c0322j.f2034b, c0322j.m2346b(), 0);
            }
        }

        @Override // androidx.databinding.ViewDataBinding.InterfaceC0321i
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void mo2338a(LiveData<?> liveData) {
            InterfaceC0396j interfaceC0396j = this.f2032b;
            if (interfaceC0396j != null) {
                liveData.m2960f(interfaceC0396j, this);
            }
        }

        /* JADX INFO: renamed from: f */
        public C0322j<LiveData<?>> m2343f() {
            return this.f2031a;
        }

        @Override // androidx.databinding.ViewDataBinding.InterfaceC0321i
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void mo2341d(LiveData<?> liveData) {
            liveData.mo2964j(this);
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$i */
    private interface InterfaceC0321i<T> {
        /* JADX INFO: renamed from: a */
        void mo2338a(T t);

        /* JADX INFO: renamed from: b */
        void mo2339b(InterfaceC0396j interfaceC0396j);

        /* JADX INFO: renamed from: d */
        void mo2341d(T t);
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$j */
    private static class C0322j<T> extends WeakReference<ViewDataBinding> {

        /* JADX INFO: renamed from: a */
        private final InterfaceC0321i<T> f2033a;

        /* JADX INFO: renamed from: b */
        protected final int f2034b;

        /* JADX INFO: renamed from: c */
        private T f2035c;

        public C0322j(ViewDataBinding viewDataBinding, int i, InterfaceC0321i<T> interfaceC0321i) {
            super(viewDataBinding, ViewDataBinding.f2009t);
            this.f2034b = i;
            this.f2033a = interfaceC0321i;
        }

        /* JADX INFO: renamed from: a */
        protected ViewDataBinding m2345a() {
            ViewDataBinding viewDataBinding = (ViewDataBinding) get();
            if (viewDataBinding == null) {
                m2349e();
            }
            return viewDataBinding;
        }

        /* JADX INFO: renamed from: b */
        public T m2346b() {
            return this.f2035c;
        }

        /* JADX INFO: renamed from: c */
        public void m2347c(InterfaceC0396j interfaceC0396j) {
            this.f2033a.mo2339b(interfaceC0396j);
        }

        /* JADX INFO: renamed from: d */
        public void m2348d(T t) {
            m2349e();
            this.f2035c = t;
            if (t != null) {
                this.f2033a.mo2338a(t);
            }
        }

        /* JADX INFO: renamed from: e */
        public boolean m2349e() {
            boolean z;
            T t = this.f2035c;
            if (t != null) {
                this.f2033a.mo2341d(t);
                z = true;
            } else {
                z = false;
            }
            this.f2035c = null;
            return z;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f2005p = i;
        f2007r = i >= 16;
        f2008s = new C0314b();
        f2009t = new ReferenceQueue<>();
        if (Build.VERSION.SDK_INT < 19) {
            f2010u = null;
        } else {
            f2010u = new ViewOnAttachStateChangeListenerC0315c();
        }
    }

    protected ViewDataBinding(InterfaceC0327e interfaceC0327e, View view, int i) {
        this.f2011b = new RunnableC0316d();
        this.f2012c = false;
        this.f2013d = false;
        this.f2014e = new C0322j[i];
        this.f2015f = view;
        if (Looper.myLooper() == null) {
            throw new IllegalStateException("DataBinding must be created in view's UI Thread");
        }
        if (f2007r) {
            this.f2018i = Choreographer.getInstance();
            this.f2019j = new ChoreographerFrameCallbackC0317e();
        } else {
            this.f2019j = null;
            this.f2020k = new Handler(Looper.myLooper());
        }
    }

    /* JADX INFO: renamed from: A */
    private static int m2304A(String str, int i) {
        int iCharAt = 0;
        while (i < str.length()) {
            iCharAt = (iCharAt * 10) + (str.charAt(i) - '0');
            i++;
        }
        return iCharAt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: B */
    public static void m2305B() {
        while (true) {
            Reference<? extends ViewDataBinding> referencePoll = f2009t.poll();
            if (referencePoll == null) {
                return;
            }
            if (referencePoll instanceof C0322j) {
                ((C0322j) referencePoll).m2349e();
            }
        }
    }

    /* JADX INFO: renamed from: E */
    protected static int m2306E(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: renamed from: F */
    protected static boolean m2307F(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: renamed from: K */
    private boolean m2308K(int i, Object obj, InterfaceC0318f interfaceC0318f) {
        if (obj == null) {
            return m2330I(i);
        }
        C0322j c0322j = this.f2014e[i];
        if (c0322j == null) {
            m2326C(i, obj, interfaceC0318f);
            return true;
        }
        if (c0322j.m2346b() == obj) {
            return false;
        }
        m2330I(i);
        m2326C(i, obj, interfaceC0318f);
        return true;
    }

    /* JADX INFO: renamed from: l */
    protected static ViewDataBinding m2316l(Object obj, View view, int i) {
        return C0328f.m2355a(m2317m(obj), view, i);
    }

    /* JADX INFO: renamed from: m */
    private static InterfaceC0327e m2317m(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof InterfaceC0327e) {
            return (InterfaceC0327e) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    /* JADX INFO: renamed from: o */
    private void m2318o() {
        if (this.f2017h) {
            m2327D();
            return;
        }
        if (mo2335v()) {
            this.f2017h = true;
            this.f2013d = false;
            C0324b<Object, ViewDataBinding, Void> c0324b = this.f2016g;
            if (c0324b != null) {
                c0324b.m2351a(this, 1, null);
                if (this.f2013d) {
                    this.f2016g.m2351a(this, 2, null);
                }
            }
            if (!this.f2013d) {
                mo2332n();
                C0324b<Object, ViewDataBinding, Void> c0324b2 = this.f2016g;
                if (c0324b2 != null) {
                    c0324b2.m2351a(this, 3, null);
                }
            }
            this.f2017h = false;
        }
    }

    /* JADX INFO: renamed from: q */
    private static int m2319q(String str, int i, C0319g c0319g, int i2) {
        CharSequence charSequenceSubSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = c0319g.f2028a[i2];
        int length = strArr.length;
        while (i < length) {
            if (TextUtils.equals(charSequenceSubSequence, strArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX INFO: renamed from: r */
    private static int m2320r(ViewGroup viewGroup, int i) {
        String str = (String) viewGroup.getChildAt(i).getTag();
        String strSubstring = str.substring(0, str.length() - 1);
        int length = strSubstring.length();
        int childCount = viewGroup.getChildCount();
        for (int i2 = i + 1; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            if (str2 != null && str2.startsWith(strSubstring)) {
                if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i;
                }
                if (m2323w(str2, length)) {
                    i = i2;
                }
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: s */
    static ViewDataBinding m2321s(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(C0334a.dataBinding);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u */
    public void m2322u(int i, Object obj, int i2) {
        if (!this.f2024o && mo2336z(i, obj, i2)) {
            m2327D();
        }
    }

    /* JADX INFO: renamed from: w */
    private static boolean m2323w(String str, int i) {
        int length = str.length();
        if (length == i) {
            return false;
        }
        while (i < length) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
            i++;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f9  */
    /* JADX INFO: renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m2324x(InterfaceC0327e interfaceC0327e, View view, Object[] objArr, C0319g c0319g, SparseIntArray sparseIntArray, boolean z) {
        boolean z2;
        int i;
        int i2;
        int i3;
        boolean z3;
        int iM2319q;
        int id;
        int i4;
        int iM2304A;
        if (m2321s(view) != null) {
            return;
        }
        Object tag = view.getTag();
        String str = tag instanceof String ? (String) tag : null;
        int i5 = 1;
        if (z && str != null && str.startsWith("layout")) {
            int iLastIndexOf = str.lastIndexOf(95);
            if (iLastIndexOf > 0) {
                int i6 = iLastIndexOf + 1;
                if (m2323w(str, i6)) {
                    iM2304A = m2304A(str, i6);
                    if (objArr[iM2304A] == null) {
                        objArr[iM2304A] = view;
                    }
                    if (c0319g == null) {
                        iM2304A = -1;
                    }
                    z2 = true;
                } else {
                    iM2304A = -1;
                    z2 = false;
                }
                i = iM2304A;
            }
        } else if (str == null || !str.startsWith("binding_")) {
            z2 = false;
            i = -1;
        } else {
            int iM2304A2 = m2304A(str, f2006q);
            if (objArr[iM2304A2] == null) {
                objArr[iM2304A2] = view;
            }
            if (c0319g == null) {
                iM2304A2 = -1;
            }
            i = iM2304A2;
            z2 = true;
        }
        if (!z2 && (id = view.getId()) > 0 && sparseIntArray != null && (i4 = sparseIntArray.get(id, -1)) >= 0 && objArr[i4] == null) {
            objArr[i4] = view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            int i7 = 0;
            int i8 = 0;
            while (i7 < childCount) {
                View childAt = viewGroup.getChildAt(i7);
                if (i < 0 || !(childAt.getTag() instanceof String)) {
                    i2 = i7;
                    i3 = i8;
                    z3 = false;
                } else {
                    String str2 = (String) childAt.getTag();
                    if (str2.endsWith("_0") && str2.startsWith("layout") && str2.indexOf(47) > 0 && (iM2319q = m2319q(str2, i8, c0319g, i)) >= 0) {
                        int i9 = iM2319q + 1;
                        int i10 = c0319g.f2029b[i][iM2319q];
                        int i11 = c0319g.f2030c[i][iM2319q];
                        int iM2320r = m2320r(viewGroup, i7);
                        if (iM2320r == i7) {
                            objArr[i10] = C0328f.m2355a(interfaceC0327e, childAt, i11);
                        } else {
                            int i12 = (iM2320r - i7) + i5;
                            View[] viewArr = new View[i12];
                            for (int i13 = 0; i13 < i12; i13++) {
                                viewArr[i13] = viewGroup.getChildAt(i7 + i13);
                            }
                            objArr[i10] = C0328f.m2356b(interfaceC0327e, viewArr, i11);
                            i7 += i12 - 1;
                        }
                        i2 = i7;
                        i3 = i9;
                        z3 = true;
                    }
                }
                if (!z3) {
                    m2324x(interfaceC0327e, childAt, objArr, c0319g, sparseIntArray, false);
                }
                i7 = i2 + 1;
                i8 = i3;
                i5 = 1;
            }
        }
    }

    /* JADX INFO: renamed from: y */
    protected static Object[] m2325y(InterfaceC0327e interfaceC0327e, View view, int i, C0319g c0319g, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i];
        m2324x(interfaceC0327e, view, objArr, c0319g, sparseIntArray, true);
        return objArr;
    }

    /* JADX INFO: renamed from: C */
    protected void m2326C(int i, Object obj, InterfaceC0318f interfaceC0318f) {
        if (obj == null) {
            return;
        }
        C0322j c0322jMo2337a = this.f2014e[i];
        if (c0322jMo2337a == null) {
            c0322jMo2337a = interfaceC0318f.mo2337a(this, i);
            this.f2014e[i] = c0322jMo2337a;
            InterfaceC0396j interfaceC0396j = this.f2022m;
            if (interfaceC0396j != null) {
                c0322jMo2337a.m2347c(interfaceC0396j);
            }
        }
        c0322jMo2337a.m2348d(obj);
    }

    /* JADX INFO: renamed from: D */
    protected void m2327D() {
        ViewDataBinding viewDataBinding = this.f2021l;
        if (viewDataBinding != null) {
            viewDataBinding.m2327D();
            return;
        }
        InterfaceC0396j interfaceC0396j = this.f2022m;
        if (interfaceC0396j == null || interfaceC0396j.getLifecycle().mo2995b().m3000a(AbstractC0392f.c.STARTED)) {
            synchronized (this) {
                if (this.f2012c) {
                    return;
                }
                this.f2012c = true;
                if (f2007r) {
                    this.f2018i.postFrameCallback(this.f2019j);
                } else {
                    this.f2020k.post(this.f2011b);
                }
            }
        }
    }

    /* JADX INFO: renamed from: G */
    public void m2328G(InterfaceC0396j interfaceC0396j) {
        InterfaceC0396j interfaceC0396j2 = this.f2022m;
        if (interfaceC0396j2 == interfaceC0396j) {
            return;
        }
        if (interfaceC0396j2 != null) {
            interfaceC0396j2.getLifecycle().mo2996c(this.f2023n);
        }
        this.f2022m = interfaceC0396j;
        if (interfaceC0396j != null) {
            if (this.f2023n == null) {
                this.f2023n = new OnStartListener(this, null);
            }
            interfaceC0396j.getLifecycle().mo2994a(this.f2023n);
        }
        for (C0322j c0322j : this.f2014e) {
            if (c0322j != null) {
                c0322j.m2347c(interfaceC0396j);
            }
        }
    }

    /* JADX INFO: renamed from: H */
    protected void m2329H(View view) {
        view.setTag(C0334a.dataBinding, this);
    }

    /* JADX INFO: renamed from: I */
    protected boolean m2330I(int i) {
        C0322j c0322j = this.f2014e[i];
        if (c0322j != null) {
            return c0322j.m2349e();
        }
        return false;
    }

    /* JADX INFO: renamed from: J */
    protected boolean m2331J(int i, LiveData<?> liveData) {
        this.f2024o = true;
        try {
            return m2308K(i, liveData, f2008s);
        } finally {
            this.f2024o = false;
        }
    }

    /* JADX INFO: renamed from: n */
    protected abstract void mo2332n();

    /* JADX INFO: renamed from: p */
    public void m2333p() {
        ViewDataBinding viewDataBinding = this.f2021l;
        if (viewDataBinding == null) {
            m2318o();
        } else {
            viewDataBinding.m2333p();
        }
    }

    /* JADX INFO: renamed from: t */
    public View m2334t() {
        return this.f2015f;
    }

    /* JADX INFO: renamed from: v */
    public abstract boolean mo2335v();

    /* JADX INFO: renamed from: z */
    protected abstract boolean mo2336z(int i, Object obj, int i2);

    protected ViewDataBinding(Object obj, View view, int i) {
        this(m2317m(obj), view, i);
    }
}
