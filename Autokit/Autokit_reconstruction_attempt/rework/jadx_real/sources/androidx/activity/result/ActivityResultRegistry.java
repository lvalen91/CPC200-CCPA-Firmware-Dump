package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class ActivityResultRegistry {
    private Random a = new Random();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Integer, String> f75b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Integer> f76c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, d> f77d = new HashMap();
    ArrayList<String> e = new ArrayList<>();
    final transient Map<String, c<?>> f = new HashMap();
    final Map<String, Object> g = new HashMap();
    final Bundle h = new Bundle();

    /* JADX INFO: Add missing generic type declarations: [I] */
    class a<I> extends androidx.activity.result.c<I> {
        final /* synthetic */ String a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f81b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ androidx.activity.result.f.a f82c;

        a(String str, int i, androidx.activity.result.f.a aVar) {
            this.a = str;
            this.f81b = i;
            this.f82c = aVar;
        }

        @Override // androidx.activity.result.c
        public void b(I i, androidx.core.app.b bVar) {
            ActivityResultRegistry.this.e.add(this.a);
            ActivityResultRegistry.this.f(this.f81b, this.f82c, i, bVar);
        }

        @Override // androidx.activity.result.c
        public void c() {
            ActivityResultRegistry.this.l(this.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    class b<I> extends androidx.activity.result.c<I> {
        final /* synthetic */ String a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f84b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ androidx.activity.result.f.a f85c;

        b(String str, int i, androidx.activity.result.f.a aVar) {
            this.a = str;
            this.f84b = i;
            this.f85c = aVar;
        }

        @Override // androidx.activity.result.c
        public void b(I i, androidx.core.app.b bVar) {
            ActivityResultRegistry.this.e.add(this.a);
            ActivityResultRegistry.this.f(this.f84b, this.f85c, i, bVar);
        }

        @Override // androidx.activity.result.c
        public void c() {
            ActivityResultRegistry.this.l(this.a);
        }
    }

    private static class c<O> {
        final androidx.activity.result.b<O> a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final androidx.activity.result.f.a<?, O> f87b;

        c(androidx.activity.result.b<O> bVar, androidx.activity.result.f.a<?, O> aVar) {
            this.a = bVar;
            this.f87b = aVar;
        }
    }

    private static class d {
        final f a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList<h> f88b = new ArrayList<>();

        d(f fVar) {
            this.a = fVar;
        }

        void a(h hVar) {
            this.a.a(hVar);
            this.f88b.add(hVar);
        }

        void b() {
            Iterator<h> it = this.f88b.iterator();
            while (it.hasNext()) {
                this.a.c(it.next());
            }
            this.f88b.clear();
        }
    }

    private void a(int i, String str) {
        this.f75b.put(Integer.valueOf(i), str);
        this.f76c.put(str, Integer.valueOf(i));
    }

    private <O> void d(String str, int i, Intent intent, c<O> cVar) {
        androidx.activity.result.b<O> bVar;
        if (cVar != null && (bVar = cVar.a) != null) {
            bVar.a(cVar.f87b.c(i, intent));
        } else {
            this.g.remove(str);
            this.h.putParcelable(str, new androidx.activity.result.a(i, intent));
        }
    }

    private int e() {
        int iNextInt = this.a.nextInt(2147418112);
        while (true) {
            int i = iNextInt + 65536;
            if (!this.f75b.containsKey(Integer.valueOf(i))) {
                return i;
            }
            iNextInt = this.a.nextInt(2147418112);
        }
    }

    private int k(String str) {
        Integer num = this.f76c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int iE = e();
        a(iE, str);
        return iE;
    }

    public final boolean b(int i, int i2, Intent intent) {
        String str = this.f75b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.e.remove(str);
        d(str, i2, intent, this.f.get(str));
        return true;
    }

    public final <O> boolean c(int i, @SuppressLint({"UnknownNullness"}) O o) {
        androidx.activity.result.b<?> bVar;
        String str = this.f75b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.e.remove(str);
        c<?> cVar = this.f.get(str);
        if (cVar != null && (bVar = cVar.a) != null) {
            bVar.a(o);
            return true;
        }
        this.h.remove(str);
        this.g.put(str, o);
        return true;
    }

    public abstract <I, O> void f(int i, androidx.activity.result.f.a<I, O> aVar, @SuppressLint({"UnknownNullness"}) I i2, androidx.core.app.b bVar);

    public final void g(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        int size = stringArrayList.size();
        for (int i = 0; i < size; i++) {
            a(integerArrayList.get(i).intValue(), stringArrayList.get(i));
        }
        this.e = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        this.a = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
        this.h.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
    }

    public final void h(Bundle bundle) {
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f75b.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f75b.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) this.h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", this.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <I, O> androidx.activity.result.c<I> i(String str, androidx.activity.result.f.a<I, O> aVar, androidx.activity.result.b<O> bVar) {
        int iK = k(str);
        this.f.put(str, new c<>(bVar, aVar));
        if (this.g.containsKey(str)) {
            Object obj = this.g.get(str);
            this.g.remove(str);
            bVar.a(obj);
        }
        androidx.activity.result.a aVar2 = (androidx.activity.result.a) this.h.getParcelable(str);
        if (aVar2 != null) {
            this.h.remove(str);
            bVar.a(aVar.c(aVar2.k(), aVar2.j()));
        }
        return new b(str, iK, aVar);
    }

    public final <I, O> androidx.activity.result.c<I> j(final String str, j jVar, final androidx.activity.result.f.a<I, O> aVar, final androidx.activity.result.b<O> bVar) {
        f lifecycle = jVar.getLifecycle();
        if (lifecycle.b().a(f.c.STARTED)) {
            throw new IllegalStateException("LifecycleOwner " + jVar + " is attempting to register while current state is " + lifecycle.b() + ". LifecycleOwners must call register before they are STARTED.");
        }
        int iK = k(str);
        d dVar = this.f77d.get(str);
        if (dVar == null) {
            dVar = new d(lifecycle);
        }
        dVar.a(new h() { // from class: androidx.activity.result.ActivityResultRegistry.1
            @Override // androidx.lifecycle.h
            public void d(j jVar2, f.b bVar2) {
                if (!f.b.ON_START.equals(bVar2)) {
                    if (f.b.ON_STOP.equals(bVar2)) {
                        ActivityResultRegistry.this.f.remove(str);
                        return;
                    } else {
                        if (f.b.ON_DESTROY.equals(bVar2)) {
                            ActivityResultRegistry.this.l(str);
                            return;
                        }
                        return;
                    }
                }
                ActivityResultRegistry.this.f.put(str, new c<>(bVar, aVar));
                if (ActivityResultRegistry.this.g.containsKey(str)) {
                    Object obj = ActivityResultRegistry.this.g.get(str);
                    ActivityResultRegistry.this.g.remove(str);
                    bVar.a(obj);
                }
                androidx.activity.result.a aVar2 = (androidx.activity.result.a) ActivityResultRegistry.this.h.getParcelable(str);
                if (aVar2 != null) {
                    ActivityResultRegistry.this.h.remove(str);
                    bVar.a(aVar.c(aVar2.k(), aVar2.j()));
                }
            }
        });
        this.f77d.put(str, dVar);
        return new a(str, iK, aVar);
    }

    final void l(String str) {
        Integer numRemove;
        if (!this.e.contains(str) && (numRemove = this.f76c.remove(str)) != null) {
            this.f75b.remove(numRemove);
        }
        this.f.remove(str);
        if (this.g.containsKey(str)) {
            String str2 = "Dropping pending result for request " + str + ": " + this.g.get(str);
            this.g.remove(str);
        }
        if (this.h.containsKey(str)) {
            String str3 = "Dropping pending result for request " + str + ": " + this.h.getParcelable(str);
            this.h.remove(str);
        }
        d dVar = this.f77d.get(str);
        if (dVar != null) {
            dVar.b();
            this.f77d.remove(str);
        }
    }
}
