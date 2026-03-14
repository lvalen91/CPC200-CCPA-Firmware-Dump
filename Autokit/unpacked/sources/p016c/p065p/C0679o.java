package p016c.p065p;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.C0292v;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import p016c.p032d.C0534a;

/* JADX INFO: renamed from: c.p.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0679o {

    /* JADX INFO: renamed from: a */
    private static AbstractC0676m f4038a = new C0654b();

    /* JADX INFO: renamed from: b */
    private static ThreadLocal<WeakReference<C0534a<ViewGroup, ArrayList<AbstractC0676m>>>> f4039b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c */
    static ArrayList<ViewGroup> f4040c = new ArrayList<>();

    /* JADX INFO: renamed from: c.p.o$a */
    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b */
        AbstractC0676m f4041b;

        /* JADX INFO: renamed from: c */
        ViewGroup f4042c;

        /* JADX INFO: renamed from: c.p.o$a$a, reason: collision with other inner class name */
        class C1350a extends C0678n {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ C0534a f4043a;

            C1350a(C0534a c0534a) {
                this.f4043a = c0534a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p016c.p065p.AbstractC0676m.f
            /* JADX INFO: renamed from: e */
            public void mo5054e(AbstractC0676m abstractC0676m) {
                ((ArrayList) this.f4043a.get(a.this.f4042c)).remove(abstractC0676m);
                abstractC0676m.mo5121O(this);
            }
        }

        a(AbstractC0676m abstractC0676m, ViewGroup viewGroup) {
            this.f4041b = abstractC0676m;
            this.f4042c = viewGroup;
        }

        /* JADX INFO: renamed from: a */
        private void m5156a() {
            this.f4042c.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f4042c.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            m5156a();
            if (!C0679o.f4040c.remove(this.f4042c)) {
                return true;
            }
            C0534a<ViewGroup, ArrayList<AbstractC0676m>> c0534aM5153b = C0679o.m5153b();
            ArrayList<AbstractC0676m> arrayList = c0534aM5153b.get(this.f4042c);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                c0534aM5153b.put(this.f4042c, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f4041b);
            this.f4041b.mo5132a(new C1350a(c0534aM5153b));
            this.f4041b.m5137j(this.f4042c, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((AbstractC0676m) it.next()).mo5123Q(this.f4042c);
                }
            }
            this.f4041b.m5120N(this.f4042c);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m5156a();
            C0679o.f4040c.remove(this.f4042c);
            ArrayList<AbstractC0676m> arrayList = C0679o.m5153b().get(this.f4042c);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<AbstractC0676m> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().mo5123Q(this.f4042c);
                }
            }
            this.f4041b.m5138k(true);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m5152a(ViewGroup viewGroup, AbstractC0676m abstractC0676m) {
        if (f4040c.contains(viewGroup) || !C0292v.m2069T(viewGroup)) {
            return;
        }
        f4040c.add(viewGroup);
        if (abstractC0676m == null) {
            abstractC0676m = f4038a;
        }
        AbstractC0676m abstractC0676mClone = abstractC0676m.clone();
        m5155d(viewGroup, abstractC0676mClone);
        C0674l.m5102c(viewGroup, null);
        m5154c(viewGroup, abstractC0676mClone);
    }

    /* JADX INFO: renamed from: b */
    static C0534a<ViewGroup, ArrayList<AbstractC0676m>> m5153b() {
        C0534a<ViewGroup, ArrayList<AbstractC0676m>> c0534a;
        WeakReference<C0534a<ViewGroup, ArrayList<AbstractC0676m>>> weakReference = f4039b.get();
        if (weakReference != null && (c0534a = weakReference.get()) != null) {
            return c0534a;
        }
        C0534a<ViewGroup, ArrayList<AbstractC0676m>> c0534a2 = new C0534a<>();
        f4039b.set(new WeakReference<>(c0534a2));
        return c0534a2;
    }

    /* JADX INFO: renamed from: c */
    private static void m5154c(ViewGroup viewGroup, AbstractC0676m abstractC0676m) {
        if (abstractC0676m == null || viewGroup == null) {
            return;
        }
        a aVar = new a(abstractC0676m, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    /* JADX INFO: renamed from: d */
    private static void m5155d(ViewGroup viewGroup, AbstractC0676m abstractC0676m) {
        ArrayList<AbstractC0676m> arrayList = m5153b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<AbstractC0676m> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo5119M(viewGroup);
            }
        }
        if (abstractC0676m != null) {
            abstractC0676m.m5137j(viewGroup, true);
        }
        C0674l c0674lM5101b = C0674l.m5101b(viewGroup);
        if (c0674lM5101b != null) {
            c0674lM5101b.m5103a();
        }
    }
}
