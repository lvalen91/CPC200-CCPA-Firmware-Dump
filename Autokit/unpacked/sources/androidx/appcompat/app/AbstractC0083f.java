package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.C0205z0;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import p016c.p017a.p024o.AbstractC0512b;
import p016c.p032d.C0535b;

/* JADX INFO: renamed from: androidx.appcompat.app.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0083f {

    /* JADX INFO: renamed from: b */
    private static int f335b = -100;

    /* JADX INFO: renamed from: c */
    private static final C0535b<WeakReference<AbstractC0083f>> f336c = new C0535b<>();

    /* JADX INFO: renamed from: d */
    private static final Object f337d = new Object();

    AbstractC0083f() {
    }

    /* JADX INFO: renamed from: A */
    static void m430A(AbstractC0083f abstractC0083f) {
        synchronized (f337d) {
            m431B(abstractC0083f);
        }
    }

    /* JADX INFO: renamed from: B */
    private static void m431B(AbstractC0083f abstractC0083f) {
        synchronized (f337d) {
            Iterator<WeakReference<AbstractC0083f>> it = f336c.iterator();
            while (it.hasNext()) {
                AbstractC0083f abstractC0083f2 = it.next().get();
                if (abstractC0083f2 == abstractC0083f || abstractC0083f2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* JADX INFO: renamed from: D */
    public static void m432D(boolean z) {
        C0205z0.m1437b(z);
    }

    /* JADX INFO: renamed from: H */
    public static void m433H(int i) {
        if ((i == -1 || i == 0 || i == 1 || i == 2 || i == 3) && f335b != i) {
            f335b = i;
            m435f();
        }
    }

    /* JADX INFO: renamed from: c */
    static void m434c(AbstractC0083f abstractC0083f) {
        synchronized (f337d) {
            m431B(abstractC0083f);
            f336c.add(new WeakReference<>(abstractC0083f));
        }
    }

    /* JADX INFO: renamed from: f */
    private static void m435f() {
        synchronized (f337d) {
            Iterator<WeakReference<AbstractC0083f>> it = f336c.iterator();
            while (it.hasNext()) {
                AbstractC0083f abstractC0083f = it.next().get();
                if (abstractC0083f != null) {
                    abstractC0083f.mo448e();
                }
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public static AbstractC0083f m436i(Activity activity, InterfaceC0082e interfaceC0082e) {
        return new LayoutInflaterFactory2C0084g(activity, interfaceC0082e);
    }

    /* JADX INFO: renamed from: j */
    public static AbstractC0083f m437j(Dialog dialog, InterfaceC0082e interfaceC0082e) {
        return new LayoutInflaterFactory2C0084g(dialog, interfaceC0082e);
    }

    /* JADX INFO: renamed from: l */
    public static int m438l() {
        return f335b;
    }

    /* JADX INFO: renamed from: C */
    public abstract boolean mo439C(int i);

    /* JADX INFO: renamed from: E */
    public abstract void mo440E(int i);

    /* JADX INFO: renamed from: F */
    public abstract void mo441F(View view);

    /* JADX INFO: renamed from: G */
    public abstract void mo442G(View view, ViewGroup.LayoutParams layoutParams);

    /* JADX INFO: renamed from: I */
    public abstract void mo443I(Toolbar toolbar);

    /* JADX INFO: renamed from: J */
    public void mo444J(int i) {
    }

    /* JADX INFO: renamed from: K */
    public abstract void mo445K(CharSequence charSequence);

    /* JADX INFO: renamed from: L */
    public abstract AbstractC0512b mo446L(AbstractC0512b.a aVar);

    /* JADX INFO: renamed from: d */
    public abstract void mo447d(View view, ViewGroup.LayoutParams layoutParams);

    /* JADX INFO: renamed from: e */
    public abstract boolean mo448e();

    @Deprecated
    /* JADX INFO: renamed from: g */
    public void m449g(Context context) {
    }

    /* JADX INFO: renamed from: h */
    public Context mo450h(Context context) {
        m449g(context);
        return context;
    }

    /* JADX INFO: renamed from: k */
    public abstract <T extends View> T mo451k(int i);

    /* JADX INFO: renamed from: m */
    public abstract InterfaceC0079b mo452m();

    /* JADX INFO: renamed from: n */
    public int mo453n() {
        return -100;
    }

    /* JADX INFO: renamed from: o */
    public abstract MenuInflater mo454o();

    /* JADX INFO: renamed from: p */
    public abstract AbstractC0078a mo455p();

    /* JADX INFO: renamed from: q */
    public abstract void mo456q();

    /* JADX INFO: renamed from: r */
    public abstract void mo457r();

    /* JADX INFO: renamed from: s */
    public abstract void mo458s(Configuration configuration);

    /* JADX INFO: renamed from: t */
    public abstract void mo459t(Bundle bundle);

    /* JADX INFO: renamed from: u */
    public abstract void mo460u();

    /* JADX INFO: renamed from: v */
    public abstract void mo461v(Bundle bundle);

    /* JADX INFO: renamed from: w */
    public abstract void mo462w();

    /* JADX INFO: renamed from: x */
    public abstract void mo463x(Bundle bundle);

    /* JADX INFO: renamed from: y */
    public abstract void mo464y();

    /* JADX INFO: renamed from: z */
    public abstract void mo465z();
}
