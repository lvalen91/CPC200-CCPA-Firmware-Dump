package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0394h;
import androidx.lifecycle.InterfaceC0396j;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class OnBackPressedDispatcher {

    /* JADX INFO: renamed from: a */
    private final Runnable f170a;

    /* JADX INFO: renamed from: b */
    final ArrayDeque<AbstractC0052b> f171b = new ArrayDeque<>();

    private class LifecycleOnBackPressedCancellable implements InterfaceC0394h, InterfaceC0051a {

        /* JADX INFO: renamed from: a */
        private final AbstractC0392f f172a;

        /* JADX INFO: renamed from: b */
        private final AbstractC0052b f173b;

        /* JADX INFO: renamed from: c */
        private InterfaceC0051a f174c;

        LifecycleOnBackPressedCancellable(AbstractC0392f abstractC0392f, AbstractC0052b abstractC0052b) {
            this.f172a = abstractC0392f;
            this.f173b = abstractC0052b;
            abstractC0392f.mo2994a(this);
        }

        @Override // androidx.activity.InterfaceC0051a
        public void cancel() {
            this.f172a.mo2996c(this);
            this.f173b.m313e(this);
            InterfaceC0051a interfaceC0051a = this.f174c;
            if (interfaceC0051a != null) {
                interfaceC0051a.cancel();
                this.f174c = null;
            }
        }

        @Override // androidx.lifecycle.InterfaceC0394h
        /* JADX INFO: renamed from: d */
        public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
            if (bVar == AbstractC0392f.b.ON_START) {
                this.f174c = OnBackPressedDispatcher.this.m307b(this.f173b);
                return;
            }
            if (bVar != AbstractC0392f.b.ON_STOP) {
                if (bVar == AbstractC0392f.b.ON_DESTROY) {
                    cancel();
                }
            } else {
                InterfaceC0051a interfaceC0051a = this.f174c;
                if (interfaceC0051a != null) {
                    interfaceC0051a.cancel();
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.activity.OnBackPressedDispatcher$a */
    private class C0050a implements InterfaceC0051a {

        /* JADX INFO: renamed from: a */
        private final AbstractC0052b f176a;

        C0050a(AbstractC0052b abstractC0052b) {
            this.f176a = abstractC0052b;
        }

        @Override // androidx.activity.InterfaceC0051a
        public void cancel() {
            OnBackPressedDispatcher.this.f171b.remove(this.f176a);
            this.f176a.m313e(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f170a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    /* JADX INFO: renamed from: a */
    public void m306a(InterfaceC0396j interfaceC0396j, AbstractC0052b abstractC0052b) {
        AbstractC0392f lifecycle = interfaceC0396j.getLifecycle();
        if (lifecycle.mo2995b() == AbstractC0392f.c.DESTROYED) {
            return;
        }
        abstractC0052b.m309a(new LifecycleOnBackPressedCancellable(lifecycle, abstractC0052b));
    }

    /* JADX INFO: renamed from: b */
    InterfaceC0051a m307b(AbstractC0052b abstractC0052b) {
        this.f171b.add(abstractC0052b);
        C0050a c0050a = new C0050a(abstractC0052b);
        abstractC0052b.m309a(c0050a);
        return c0050a;
    }

    /* JADX INFO: renamed from: c */
    public void m308c() {
        Iterator<AbstractC0052b> itDescendingIterator = this.f171b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            AbstractC0052b next = itDescendingIterator.next();
            if (next.m311c()) {
                next.mo310b();
                return;
            }
        }
        Runnable runnable = this.f170a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
