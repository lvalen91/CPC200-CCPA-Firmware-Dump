package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class OnBackPressedDispatcher {
    private final Runnable a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayDeque<b> f68b = new ArrayDeque<>();

    private class LifecycleOnBackPressedCancellable implements h, androidx.activity.a {
        private final f a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final b f69b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.activity.a f70c;

        LifecycleOnBackPressedCancellable(f fVar, b bVar) {
            this.a = fVar;
            this.f69b = bVar;
            fVar.a(this);
        }

        @Override // androidx.activity.a
        public void cancel() {
            this.a.c(this);
            this.f69b.e(this);
            androidx.activity.a aVar = this.f70c;
            if (aVar != null) {
                aVar.cancel();
                this.f70c = null;
            }
        }

        @Override // androidx.lifecycle.h
        public void d(j jVar, f.b bVar) {
            if (bVar == f.b.ON_START) {
                this.f70c = OnBackPressedDispatcher.this.b(this.f69b);
                return;
            }
            if (bVar != f.b.ON_STOP) {
                if (bVar == f.b.ON_DESTROY) {
                    cancel();
                }
            } else {
                androidx.activity.a aVar = this.f70c;
                if (aVar != null) {
                    aVar.cancel();
                }
            }
        }
    }

    private class a implements androidx.activity.a {
        private final b a;

        a(b bVar) {
            this.a = bVar;
        }

        @Override // androidx.activity.a
        public void cancel() {
            OnBackPressedDispatcher.this.f68b.remove(this.a);
            this.a.e(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    public void a(j jVar, b bVar) {
        f lifecycle = jVar.getLifecycle();
        if (lifecycle.b() == f.c.DESTROYED) {
            return;
        }
        bVar.a(new LifecycleOnBackPressedCancellable(lifecycle, bVar));
    }

    androidx.activity.a b(b bVar) {
        this.f68b.add(bVar);
        a aVar = new a(bVar);
        bVar.a(aVar);
        return aVar;
    }

    public void c() {
        Iterator<b> itDescendingIterator = this.f68b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            b next = itDescendingIterator.next();
            if (next.c()) {
                next.b();
                return;
            }
        }
        Runnable runnable = this.a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
