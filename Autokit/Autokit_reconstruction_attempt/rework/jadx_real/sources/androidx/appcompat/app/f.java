package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.z0;
import c.a.o.b;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f126b = -100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c.d.b<WeakReference<f>> f127c = new c.d.b<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f128d = new Object();

    f() {
    }

    static void A(f fVar) {
        synchronized (f128d) {
            B(fVar);
        }
    }

    private static void B(f fVar) {
        synchronized (f128d) {
            Iterator<WeakReference<f>> it = f127c.iterator();
            while (it.hasNext()) {
                f fVar2 = it.next().get();
                if (fVar2 == fVar || fVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    public static void D(boolean z) {
        z0.b(z);
    }

    public static void H(int i) {
        if ((i == -1 || i == 0 || i == 1 || i == 2 || i == 3) && f126b != i) {
            f126b = i;
            f();
        }
    }

    static void c(f fVar) {
        synchronized (f128d) {
            B(fVar);
            f127c.add(new WeakReference<>(fVar));
        }
    }

    private static void f() {
        synchronized (f128d) {
            Iterator<WeakReference<f>> it = f127c.iterator();
            while (it.hasNext()) {
                f fVar = it.next().get();
                if (fVar != null) {
                    fVar.e();
                }
            }
        }
    }

    public static f i(Activity activity, e eVar) {
        return new g(activity, eVar);
    }

    public static f j(Dialog dialog, e eVar) {
        return new g(dialog, eVar);
    }

    public static int l() {
        return f126b;
    }

    public abstract boolean C(int i);

    public abstract void E(int i);

    public abstract void F(View view);

    public abstract void G(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void I(Toolbar toolbar);

    public void J(int i) {
    }

    public abstract void K(CharSequence charSequence);

    public abstract c.a.o.b L(b.a aVar);

    public abstract void d(View view, ViewGroup.LayoutParams layoutParams);

    public abstract boolean e();

    @Deprecated
    public void g(Context context) {
    }

    public Context h(Context context) {
        g(context);
        return context;
    }

    public abstract <T extends View> T k(int i);

    public abstract b m();

    public int n() {
        return -100;
    }

    public abstract MenuInflater o();

    public abstract a p();

    public abstract void q();

    public abstract void r();

    public abstract void s(Configuration configuration);

    public abstract void t(Bundle bundle);

    public abstract void u();

    public abstract void v(Bundle bundle);

    public abstract void w();

    public abstract void x(Bundle bundle);

    public abstract void y();

    public abstract void z();
}
