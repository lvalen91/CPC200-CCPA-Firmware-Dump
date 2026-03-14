package c.p;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class o {
    private static m a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ThreadLocal<WeakReference<c.d.a<ViewGroup, ArrayList<m>>>> f1309b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static ArrayList<ViewGroup> f1310c = new ArrayList<>();

    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        m f1311b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ViewGroup f1312c;

        /* JADX INFO: renamed from: c.p.o$a$a, reason: collision with other inner class name */
        class C0067a extends n {
            final /* synthetic */ c.d.a a;

            C0067a(c.d.a aVar) {
                this.a = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // c.p.m.f
            public void e(m mVar) {
                ((ArrayList) this.a.get(a.this.f1312c)).remove(mVar);
                mVar.O(this);
            }
        }

        a(m mVar, ViewGroup viewGroup) {
            this.f1311b = mVar;
            this.f1312c = viewGroup;
        }

        private void a() {
            this.f1312c.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f1312c.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!o.f1310c.remove(this.f1312c)) {
                return true;
            }
            c.d.a<ViewGroup, ArrayList<m>> aVarB = o.b();
            ArrayList<m> arrayList = aVarB.get(this.f1312c);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                aVarB.put(this.f1312c, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f1311b);
            this.f1311b.a(new C0067a(aVarB));
            this.f1311b.j(this.f1312c, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((m) it.next()).Q(this.f1312c);
                }
            }
            this.f1311b.N(this.f1312c);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            o.f1310c.remove(this.f1312c);
            ArrayList<m> arrayList = o.b().get(this.f1312c);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<m> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().Q(this.f1312c);
                }
            }
            this.f1311b.k(true);
        }
    }

    public static void a(ViewGroup viewGroup, m mVar) {
        if (f1310c.contains(viewGroup) || !androidx.core.view.v.T(viewGroup)) {
            return;
        }
        f1310c.add(viewGroup);
        if (mVar == null) {
            mVar = a;
        }
        m mVarClone = mVar.clone();
        d(viewGroup, mVarClone);
        l.c(viewGroup, null);
        c(viewGroup, mVarClone);
    }

    static c.d.a<ViewGroup, ArrayList<m>> b() {
        c.d.a<ViewGroup, ArrayList<m>> aVar;
        WeakReference<c.d.a<ViewGroup, ArrayList<m>>> weakReference = f1309b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        c.d.a<ViewGroup, ArrayList<m>> aVar2 = new c.d.a<>();
        f1309b.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    private static void c(ViewGroup viewGroup, m mVar) {
        if (mVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(mVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    private static void d(ViewGroup viewGroup, m mVar) {
        ArrayList<m> arrayList = b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<m> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().M(viewGroup);
            }
        }
        if (mVar != null) {
            mVar.j(viewGroup, true);
        }
        l lVarB = l.b(viewGroup);
        if (lVarB != null) {
            lVarB.a();
        }
    }
}
