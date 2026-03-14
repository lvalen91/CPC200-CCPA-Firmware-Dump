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
import androidx.lifecycle.LiveData;
import androidx.lifecycle.f;
import androidx.lifecycle.p;
import androidx.lifecycle.q;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class ViewDataBinding extends androidx.databinding.a {
    static int p = 0;
    private static final int q = 8;
    private static final boolean r;
    private static final f s;
    private static final ReferenceQueue<ViewDataBinding> t;
    private static final View.OnAttachStateChangeListener u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Runnable f635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f637d;
    private j[] e;
    private final View f;
    private androidx.databinding.b<Object, ViewDataBinding, Void> g;
    private boolean h;
    private Choreographer i;
    private final Choreographer.FrameCallback j;
    private Handler k;
    private ViewDataBinding l;
    private androidx.lifecycle.j m;
    private OnStartListener n;
    private boolean o;

    static class OnStartListener implements androidx.lifecycle.i {
        final WeakReference<ViewDataBinding> a;

        /* synthetic */ OnStartListener(ViewDataBinding viewDataBinding, a aVar) {
            this(viewDataBinding);
        }

        @q(f.b.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.a.get();
            if (viewDataBinding != null) {
                viewDataBinding.p();
            }
        }

        private OnStartListener(ViewDataBinding viewDataBinding) {
            this.a = new WeakReference<>(viewDataBinding);
        }
    }

    static class a implements f {
    }

    static class b implements f {
        b() {
        }

        @Override // androidx.databinding.ViewDataBinding.f
        public j a(ViewDataBinding viewDataBinding, int i) {
            return new h(viewDataBinding, i).f();
        }
    }

    static class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @TargetApi(19)
        public void onViewAttachedToWindow(View view) {
            ViewDataBinding.s(view).f635b.run();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                ViewDataBinding.this.f636c = false;
            }
            ViewDataBinding.B();
            if (Build.VERSION.SDK_INT < 19 || ViewDataBinding.this.f.isAttachedToWindow()) {
                ViewDataBinding.this.p();
            } else {
                ViewDataBinding.this.f.removeOnAttachStateChangeListener(ViewDataBinding.u);
                ViewDataBinding.this.f.addOnAttachStateChangeListener(ViewDataBinding.u);
            }
        }
    }

    class e implements Choreographer.FrameCallback {
        e() {
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            ViewDataBinding.this.f635b.run();
        }
    }

    private interface f {
        j a(ViewDataBinding viewDataBinding, int i);
    }

    protected static class g {
        public final String[][] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[][] f639b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[][] f640c;
    }

    private static class h implements p, i<LiveData<?>> {
        final j<LiveData<?>> a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        androidx.lifecycle.j f641b;

        public h(ViewDataBinding viewDataBinding, int i) {
            this.a = new j<>(viewDataBinding, i, this);
        }

        @Override // androidx.databinding.ViewDataBinding.i
        public void b(androidx.lifecycle.j jVar) {
            LiveData<?> liveDataB = this.a.b();
            if (liveDataB != null) {
                if (this.f641b != null) {
                    liveDataB.j(this);
                }
                if (jVar != null) {
                    liveDataB.f(jVar, this);
                }
            }
            this.f641b = jVar;
        }

        @Override // androidx.lifecycle.p
        public void c(Object obj) {
            ViewDataBinding viewDataBindingA = this.a.a();
            if (viewDataBindingA != null) {
                j<LiveData<?>> jVar = this.a;
                viewDataBindingA.u(jVar.f642b, jVar.b(), 0);
            }
        }

        @Override // androidx.databinding.ViewDataBinding.i
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void a(LiveData<?> liveData) {
            androidx.lifecycle.j jVar = this.f641b;
            if (jVar != null) {
                liveData.f(jVar, this);
            }
        }

        public j<LiveData<?>> f() {
            return this.a;
        }

        @Override // androidx.databinding.ViewDataBinding.i
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void d(LiveData<?> liveData) {
            liveData.j(this);
        }
    }

    private interface i<T> {
        void a(T t);

        void b(androidx.lifecycle.j jVar);

        void d(T t);
    }

    private static class j<T> extends WeakReference<ViewDataBinding> {
        private final i<T> a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected final int f642b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private T f643c;

        public j(ViewDataBinding viewDataBinding, int i, i<T> iVar) {
            super(viewDataBinding, ViewDataBinding.t);
            this.f642b = i;
            this.a = iVar;
        }

        protected ViewDataBinding a() {
            ViewDataBinding viewDataBinding = (ViewDataBinding) get();
            if (viewDataBinding == null) {
                e();
            }
            return viewDataBinding;
        }

        public T b() {
            return this.f643c;
        }

        public void c(androidx.lifecycle.j jVar) {
            this.a.b(jVar);
        }

        public void d(T t) {
            e();
            this.f643c = t;
            if (t != null) {
                this.a.a(t);
            }
        }

        public boolean e() {
            boolean z;
            T t = this.f643c;
            if (t != null) {
                this.a.d(t);
                z = true;
            } else {
                z = false;
            }
            this.f643c = null;
            return z;
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        p = i2;
        r = i2 >= 16;
        s = new b();
        t = new ReferenceQueue<>();
        if (Build.VERSION.SDK_INT < 19) {
            u = null;
        } else {
            u = new c();
        }
    }

    protected ViewDataBinding(androidx.databinding.e eVar, View view, int i2) {
        this.f635b = new d();
        this.f636c = false;
        this.f637d = false;
        this.e = new j[i2];
        this.f = view;
        if (Looper.myLooper() == null) {
            throw new IllegalStateException("DataBinding must be created in view's UI Thread");
        }
        if (r) {
            this.i = Choreographer.getInstance();
            this.j = new e();
        } else {
            this.j = null;
            this.k = new Handler(Looper.myLooper());
        }
    }

    private static int A(String str, int i2) {
        int iCharAt = 0;
        while (i2 < str.length()) {
            iCharAt = (iCharAt * 10) + (str.charAt(i2) - '0');
            i2++;
        }
        return iCharAt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void B() {
        while (true) {
            Reference<? extends ViewDataBinding> referencePoll = t.poll();
            if (referencePoll == null) {
                return;
            }
            if (referencePoll instanceof j) {
                ((j) referencePoll).e();
            }
        }
    }

    protected static int E(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    protected static boolean F(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private boolean K(int i2, Object obj, f fVar) {
        if (obj == null) {
            return I(i2);
        }
        j jVar = this.e[i2];
        if (jVar == null) {
            C(i2, obj, fVar);
            return true;
        }
        if (jVar.b() == obj) {
            return false;
        }
        I(i2);
        C(i2, obj, fVar);
        return true;
    }

    protected static ViewDataBinding l(Object obj, View view, int i2) {
        return androidx.databinding.f.a(m(obj), view, i2);
    }

    private static androidx.databinding.e m(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof androidx.databinding.e) {
            return (androidx.databinding.e) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    private void o() {
        if (this.h) {
            D();
            return;
        }
        if (v()) {
            this.h = true;
            this.f637d = false;
            androidx.databinding.b<Object, ViewDataBinding, Void> bVar = this.g;
            if (bVar != null) {
                bVar.a(this, 1, null);
                if (this.f637d) {
                    this.g.a(this, 2, null);
                }
            }
            if (!this.f637d) {
                n();
                androidx.databinding.b<Object, ViewDataBinding, Void> bVar2 = this.g;
                if (bVar2 != null) {
                    bVar2.a(this, 3, null);
                }
            }
            this.h = false;
        }
    }

    private static int q(String str, int i2, g gVar, int i3) {
        CharSequence charSequenceSubSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = gVar.a[i3];
        int length = strArr.length;
        while (i2 < length) {
            if (TextUtils.equals(charSequenceSubSequence, strArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private static int r(ViewGroup viewGroup, int i2) {
        String str = (String) viewGroup.getChildAt(i2).getTag();
        String strSubstring = str.substring(0, str.length() - 1);
        int length = strSubstring.length();
        int childCount = viewGroup.getChildCount();
        for (int i3 = i2 + 1; i3 < childCount; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            if (str2 != null && str2.startsWith(strSubstring)) {
                if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i2;
                }
                if (w(str2, length)) {
                    i2 = i3;
                }
            }
        }
        return i2;
    }

    static ViewDataBinding s(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(androidx.databinding.k.a.dataBinding);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(int i2, Object obj, int i3) {
        if (!this.o && z(i2, obj, i3)) {
            D();
        }
    }

    private static boolean w(String str, int i2) {
        int length = str.length();
        if (length == i2) {
            return false;
        }
        while (i2 < length) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
            i2++;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void x(androidx.databinding.e eVar, View view, Object[] objArr, g gVar, SparseIntArray sparseIntArray, boolean z) {
        boolean z2;
        int i2;
        int i3;
        int i4;
        boolean z3;
        int iQ;
        int id;
        int i5;
        int iA;
        if (s(view) != null) {
            return;
        }
        Object tag = view.getTag();
        String str = tag instanceof String ? (String) tag : null;
        int i6 = 1;
        if (z && str != null && str.startsWith("layout")) {
            int iLastIndexOf = str.lastIndexOf(95);
            if (iLastIndexOf > 0) {
                int i7 = iLastIndexOf + 1;
                if (w(str, i7)) {
                    iA = A(str, i7);
                    if (objArr[iA] == null) {
                        objArr[iA] = view;
                    }
                    if (gVar == null) {
                        iA = -1;
                    }
                    z2 = true;
                } else {
                    iA = -1;
                    z2 = false;
                }
                i2 = iA;
            }
        } else if (str == null || !str.startsWith("binding_")) {
            z2 = false;
            i2 = -1;
        } else {
            int iA2 = A(str, q);
            if (objArr[iA2] == null) {
                objArr[iA2] = view;
            }
            if (gVar == null) {
                iA2 = -1;
            }
            i2 = iA2;
            z2 = true;
        }
        if (!z2 && (id = view.getId()) > 0 && sparseIntArray != null && (i5 = sparseIntArray.get(id, -1)) >= 0 && objArr[i5] == null) {
            objArr[i5] = view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            int i8 = 0;
            int i9 = 0;
            while (i8 < childCount) {
                View childAt = viewGroup.getChildAt(i8);
                if (i2 < 0 || !(childAt.getTag() instanceof String)) {
                    i3 = i8;
                    i4 = i9;
                    z3 = false;
                } else {
                    String str2 = (String) childAt.getTag();
                    if (str2.endsWith("_0") && str2.startsWith("layout") && str2.indexOf(47) > 0 && (iQ = q(str2, i9, gVar, i2)) >= 0) {
                        int i10 = iQ + 1;
                        int i11 = gVar.f639b[i2][iQ];
                        int i12 = gVar.f640c[i2][iQ];
                        int iR = r(viewGroup, i8);
                        if (iR == i8) {
                            objArr[i11] = androidx.databinding.f.a(eVar, childAt, i12);
                        } else {
                            int i13 = (iR - i8) + i6;
                            View[] viewArr = new View[i13];
                            for (int i14 = 0; i14 < i13; i14++) {
                                viewArr[i14] = viewGroup.getChildAt(i8 + i14);
                            }
                            objArr[i11] = androidx.databinding.f.b(eVar, viewArr, i12);
                            i8 += i13 - 1;
                        }
                        i3 = i8;
                        i4 = i10;
                        z3 = true;
                    }
                }
                if (!z3) {
                    x(eVar, childAt, objArr, gVar, sparseIntArray, false);
                }
                i8 = i3 + 1;
                i9 = i4;
                i6 = 1;
            }
        }
    }

    protected static Object[] y(androidx.databinding.e eVar, View view, int i2, g gVar, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i2];
        x(eVar, view, objArr, gVar, sparseIntArray, true);
        return objArr;
    }

    protected void C(int i2, Object obj, f fVar) {
        if (obj == null) {
            return;
        }
        j jVarA = this.e[i2];
        if (jVarA == null) {
            jVarA = fVar.a(this, i2);
            this.e[i2] = jVarA;
            androidx.lifecycle.j jVar = this.m;
            if (jVar != null) {
                jVarA.c(jVar);
            }
        }
        jVarA.d(obj);
    }

    protected void D() {
        ViewDataBinding viewDataBinding = this.l;
        if (viewDataBinding != null) {
            viewDataBinding.D();
            return;
        }
        androidx.lifecycle.j jVar = this.m;
        if (jVar == null || jVar.getLifecycle().b().a(f.c.STARTED)) {
            synchronized (this) {
                if (this.f636c) {
                    return;
                }
                this.f636c = true;
                if (r) {
                    this.i.postFrameCallback(this.j);
                } else {
                    this.k.post(this.f635b);
                }
            }
        }
    }

    public void G(androidx.lifecycle.j jVar) {
        androidx.lifecycle.j jVar2 = this.m;
        if (jVar2 == jVar) {
            return;
        }
        if (jVar2 != null) {
            jVar2.getLifecycle().c(this.n);
        }
        this.m = jVar;
        if (jVar != null) {
            if (this.n == null) {
                this.n = new OnStartListener(this, null);
            }
            jVar.getLifecycle().a(this.n);
        }
        for (j jVar3 : this.e) {
            if (jVar3 != null) {
                jVar3.c(jVar);
            }
        }
    }

    protected void H(View view) {
        view.setTag(androidx.databinding.k.a.dataBinding, this);
    }

    protected boolean I(int i2) {
        j jVar = this.e[i2];
        if (jVar != null) {
            return jVar.e();
        }
        return false;
    }

    protected boolean J(int i2, LiveData<?> liveData) {
        this.o = true;
        try {
            return K(i2, liveData, s);
        } finally {
            this.o = false;
        }
    }

    protected abstract void n();

    public void p() {
        ViewDataBinding viewDataBinding = this.l;
        if (viewDataBinding == null) {
            o();
        } else {
            viewDataBinding.p();
        }
    }

    public View t() {
        return this.f;
    }

    public abstract boolean v();

    protected abstract boolean z(int i2, Object obj, int i3);

    protected ViewDataBinding(Object obj, View view, int i2) {
        this(m(obj), view, i2);
    }
}
