package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.p002f.AbstractC0066a;
import androidx.core.app.C0232b;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0394h;
import androidx.lifecycle.InterfaceC0396j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class ActivityResultRegistry {

    /* JADX INFO: renamed from: a */
    private Random f182a = new Random();

    /* JADX INFO: renamed from: b */
    private final Map<Integer, String> f183b = new HashMap();

    /* JADX INFO: renamed from: c */
    private final Map<String, Integer> f184c = new HashMap();

    /* JADX INFO: renamed from: d */
    private final Map<String, C0060d> f185d = new HashMap();

    /* JADX INFO: renamed from: e */
    ArrayList<String> f186e = new ArrayList<>();

    /* JADX INFO: renamed from: f */
    final transient Map<String, C0059c<?>> f187f = new HashMap();

    /* JADX INFO: renamed from: g */
    final Map<String, Object> f188g = new HashMap();

    /* JADX INFO: renamed from: h */
    final Bundle f189h = new Bundle();

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* JADX INFO: renamed from: androidx.activity.result.ActivityResultRegistry$a */
    class C0057a<I> extends AbstractC0063c<I> {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ String f194a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f195b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ AbstractC0066a f196c;

        C0057a(String str, int i, AbstractC0066a abstractC0066a) {
            this.f194a = str;
            this.f195b = i;
            this.f196c = abstractC0066a;
        }

        @Override // androidx.activity.result.AbstractC0063c
        /* JADX INFO: renamed from: b */
        public void mo332b(I i, C0232b c0232b) {
            ActivityResultRegistry.this.f186e.add(this.f194a);
            ActivityResultRegistry.this.mo304f(this.f195b, this.f196c, i, c0232b);
        }

        @Override // androidx.activity.result.AbstractC0063c
        /* JADX INFO: renamed from: c */
        public void mo333c() {
            ActivityResultRegistry.this.m331l(this.f194a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* JADX INFO: renamed from: androidx.activity.result.ActivityResultRegistry$b */
    class C0058b<I> extends AbstractC0063c<I> {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ String f198a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f199b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ AbstractC0066a f200c;

        C0058b(String str, int i, AbstractC0066a abstractC0066a) {
            this.f198a = str;
            this.f199b = i;
            this.f200c = abstractC0066a;
        }

        @Override // androidx.activity.result.AbstractC0063c
        /* JADX INFO: renamed from: b */
        public void mo332b(I i, C0232b c0232b) {
            ActivityResultRegistry.this.f186e.add(this.f198a);
            ActivityResultRegistry.this.mo304f(this.f199b, this.f200c, i, c0232b);
        }

        @Override // androidx.activity.result.AbstractC0063c
        /* JADX INFO: renamed from: c */
        public void mo333c() {
            ActivityResultRegistry.this.m331l(this.f198a);
        }
    }

    /* JADX INFO: renamed from: androidx.activity.result.ActivityResultRegistry$c */
    private static class C0059c<O> {

        /* JADX INFO: renamed from: a */
        final InterfaceC0062b<O> f202a;

        /* JADX INFO: renamed from: b */
        final AbstractC0066a<?, O> f203b;

        C0059c(InterfaceC0062b<O> interfaceC0062b, AbstractC0066a<?, O> abstractC0066a) {
            this.f202a = interfaceC0062b;
            this.f203b = abstractC0066a;
        }
    }

    /* JADX INFO: renamed from: androidx.activity.result.ActivityResultRegistry$d */
    private static class C0060d {

        /* JADX INFO: renamed from: a */
        final AbstractC0392f f204a;

        /* JADX INFO: renamed from: b */
        private final ArrayList<InterfaceC0394h> f205b = new ArrayList<>();

        C0060d(AbstractC0392f abstractC0392f) {
            this.f204a = abstractC0392f;
        }

        /* JADX INFO: renamed from: a */
        void m334a(InterfaceC0394h interfaceC0394h) {
            this.f204a.mo2994a(interfaceC0394h);
            this.f205b.add(interfaceC0394h);
        }

        /* JADX INFO: renamed from: b */
        void m335b() {
            Iterator<InterfaceC0394h> it = this.f205b.iterator();
            while (it.hasNext()) {
                this.f204a.mo2996c(it.next());
            }
            this.f205b.clear();
        }
    }

    /* JADX INFO: renamed from: a */
    private void m321a(int i, String str) {
        this.f183b.put(Integer.valueOf(i), str);
        this.f184c.put(str, Integer.valueOf(i));
    }

    /* JADX INFO: renamed from: d */
    private <O> void m322d(String str, int i, Intent intent, C0059c<O> c0059c) {
        InterfaceC0062b<O> interfaceC0062b;
        if (c0059c != null && (interfaceC0062b = c0059c.f202a) != null) {
            interfaceC0062b.mo341a(c0059c.f203b.mo354c(i, intent));
        } else {
            this.f188g.remove(str);
            this.f189h.putParcelable(str, new C0061a(i, intent));
        }
    }

    /* JADX INFO: renamed from: e */
    private int m323e() {
        int iNextInt = this.f182a.nextInt(2147418112);
        while (true) {
            int i = iNextInt + 65536;
            if (!this.f183b.containsKey(Integer.valueOf(i))) {
                return i;
            }
            iNextInt = this.f182a.nextInt(2147418112);
        }
    }

    /* JADX INFO: renamed from: k */
    private int m324k(String str) {
        Integer num = this.f184c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int iM323e = m323e();
        m321a(iM323e, str);
        return iM323e;
    }

    /* JADX INFO: renamed from: b */
    public final boolean m325b(int i, int i2, Intent intent) {
        String str = this.f183b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f186e.remove(str);
        m322d(str, i2, intent, this.f187f.get(str));
        return true;
    }

    /* JADX INFO: renamed from: c */
    public final <O> boolean m326c(int i, @SuppressLint({"UnknownNullness"}) O o) {
        InterfaceC0062b<?> interfaceC0062b;
        String str = this.f183b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        this.f186e.remove(str);
        C0059c<?> c0059c = this.f187f.get(str);
        if (c0059c != null && (interfaceC0062b = c0059c.f202a) != null) {
            interfaceC0062b.mo341a(o);
            return true;
        }
        this.f189h.remove(str);
        this.f188g.put(str, o);
        return true;
    }

    /* JADX INFO: renamed from: f */
    public abstract <I, O> void mo304f(int i, AbstractC0066a<I, O> abstractC0066a, @SuppressLint({"UnknownNullness"}) I i2, C0232b c0232b);

    /* JADX INFO: renamed from: g */
    public final void m327g(Bundle bundle) {
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
            m321a(integerArrayList.get(i).intValue(), stringArrayList.get(i));
        }
        this.f186e = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        this.f182a = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
        this.f189h.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
    }

    /* JADX INFO: renamed from: h */
    public final void m328h(Bundle bundle) {
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f183b.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f183b.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f186e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) this.f189h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", this.f182a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: i */
    public final <I, O> AbstractC0063c<I> m329i(String str, AbstractC0066a<I, O> abstractC0066a, InterfaceC0062b<O> interfaceC0062b) {
        int iM324k = m324k(str);
        this.f187f.put(str, new C0059c<>(interfaceC0062b, abstractC0066a));
        if (this.f188g.containsKey(str)) {
            Object obj = this.f188g.get(str);
            this.f188g.remove(str);
            interfaceC0062b.mo341a(obj);
        }
        C0061a c0061a = (C0061a) this.f189h.getParcelable(str);
        if (c0061a != null) {
            this.f189h.remove(str);
            interfaceC0062b.mo341a(abstractC0066a.mo354c(c0061a.m338k(), c0061a.m337j()));
        }
        return new C0058b(str, iM324k, abstractC0066a);
    }

    /* JADX INFO: renamed from: j */
    public final <I, O> AbstractC0063c<I> m330j(final String str, InterfaceC0396j interfaceC0396j, final AbstractC0066a<I, O> abstractC0066a, final InterfaceC0062b<O> interfaceC0062b) {
        AbstractC0392f lifecycle = interfaceC0396j.getLifecycle();
        if (lifecycle.mo2995b().m3000a(AbstractC0392f.c.STARTED)) {
            throw new IllegalStateException("LifecycleOwner " + interfaceC0396j + " is attempting to register while current state is " + lifecycle.mo2995b() + ". LifecycleOwners must call register before they are STARTED.");
        }
        int iM324k = m324k(str);
        C0060d c0060d = this.f185d.get(str);
        if (c0060d == null) {
            c0060d = new C0060d(lifecycle);
        }
        c0060d.m334a(new InterfaceC0394h() { // from class: androidx.activity.result.ActivityResultRegistry.1
            @Override // androidx.lifecycle.InterfaceC0394h
            /* JADX INFO: renamed from: d */
            public void mo303d(InterfaceC0396j interfaceC0396j2, AbstractC0392f.b bVar) {
                if (!AbstractC0392f.b.ON_START.equals(bVar)) {
                    if (AbstractC0392f.b.ON_STOP.equals(bVar)) {
                        ActivityResultRegistry.this.f187f.remove(str);
                        return;
                    } else {
                        if (AbstractC0392f.b.ON_DESTROY.equals(bVar)) {
                            ActivityResultRegistry.this.m331l(str);
                            return;
                        }
                        return;
                    }
                }
                ActivityResultRegistry.this.f187f.put(str, new C0059c<>(interfaceC0062b, abstractC0066a));
                if (ActivityResultRegistry.this.f188g.containsKey(str)) {
                    Object obj = ActivityResultRegistry.this.f188g.get(str);
                    ActivityResultRegistry.this.f188g.remove(str);
                    interfaceC0062b.mo341a(obj);
                }
                C0061a c0061a = (C0061a) ActivityResultRegistry.this.f189h.getParcelable(str);
                if (c0061a != null) {
                    ActivityResultRegistry.this.f189h.remove(str);
                    interfaceC0062b.mo341a(abstractC0066a.mo354c(c0061a.m338k(), c0061a.m337j()));
                }
            }
        });
        this.f185d.put(str, c0060d);
        return new C0057a(str, iM324k, abstractC0066a);
    }

    /* JADX INFO: renamed from: l */
    final void m331l(String str) {
        Integer numRemove;
        if (!this.f186e.contains(str) && (numRemove = this.f184c.remove(str)) != null) {
            this.f183b.remove(numRemove);
        }
        this.f187f.remove(str);
        if (this.f188g.containsKey(str)) {
            String str2 = "Dropping pending result for request " + str + ": " + this.f188g.get(str);
            this.f188g.remove(str);
        }
        if (this.f189h.containsKey(str)) {
            String str3 = "Dropping pending result for request " + str + ": " + this.f189h.getParcelable(str);
            this.f189h.remove(str);
        }
        C0060d c0060d = this.f185d.get(str);
        if (c0060d != null) {
            c0060d.m335b();
            this.f185d.remove(str);
        }
    }
}
