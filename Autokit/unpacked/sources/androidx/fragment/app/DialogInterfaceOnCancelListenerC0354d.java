package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.C0385a0;
import androidx.lifecycle.C0412z;
import androidx.lifecycle.InterfaceC0396j;
import androidx.lifecycle.InterfaceC0402p;
import androidx.savedstate.C0484d;

/* JADX INFO: renamed from: androidx.fragment.app.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class DialogInterfaceOnCancelListenerC0354d extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: a0 */
    private Handler f2221a0;

    /* JADX INFO: renamed from: j0 */
    private boolean f2230j0;

    /* JADX INFO: renamed from: l0 */
    private Dialog f2232l0;

    /* JADX INFO: renamed from: m0 */
    private boolean f2233m0;

    /* JADX INFO: renamed from: n0 */
    private boolean f2234n0;

    /* JADX INFO: renamed from: o0 */
    private boolean f2235o0;

    /* JADX INFO: renamed from: b0 */
    private Runnable f2222b0 = new a();

    /* JADX INFO: renamed from: c0 */
    private DialogInterface.OnCancelListener f2223c0 = new b();

    /* JADX INFO: renamed from: d0 */
    private DialogInterface.OnDismissListener f2224d0 = new c();

    /* JADX INFO: renamed from: e0 */
    private int f2225e0 = 0;

    /* JADX INFO: renamed from: f0 */
    private int f2226f0 = 0;

    /* JADX INFO: renamed from: g0 */
    private boolean f2227g0 = true;

    /* JADX INFO: renamed from: h0 */
    private boolean f2228h0 = true;

    /* JADX INFO: renamed from: i0 */
    private int f2229i0 = -1;

    /* JADX INFO: renamed from: k0 */
    private InterfaceC0402p<InterfaceC0396j> f2231k0 = new d();

    /* JADX INFO: renamed from: p0 */
    private boolean f2236p0 = false;

    /* JADX INFO: renamed from: androidx.fragment.app.d$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            DialogInterfaceOnCancelListenerC0354d.this.f2224d0.onDismiss(DialogInterfaceOnCancelListenerC0354d.this.f2232l0);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.d$b */
    class b implements DialogInterface.OnCancelListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        @SuppressLint({"SyntheticAccessor"})
        public void onCancel(DialogInterface dialogInterface) {
            if (DialogInterfaceOnCancelListenerC0354d.this.f2232l0 != null) {
                DialogInterfaceOnCancelListenerC0354d dialogInterfaceOnCancelListenerC0354d = DialogInterfaceOnCancelListenerC0354d.this;
                dialogInterfaceOnCancelListenerC0354d.onCancel(dialogInterfaceOnCancelListenerC0354d.f2232l0);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.d$c */
    class c implements DialogInterface.OnDismissListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        @SuppressLint({"SyntheticAccessor"})
        public void onDismiss(DialogInterface dialogInterface) {
            if (DialogInterfaceOnCancelListenerC0354d.this.f2232l0 != null) {
                DialogInterfaceOnCancelListenerC0354d dialogInterfaceOnCancelListenerC0354d = DialogInterfaceOnCancelListenerC0354d.this;
                dialogInterfaceOnCancelListenerC0354d.onDismiss(dialogInterfaceOnCancelListenerC0354d.f2232l0);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.d$d */
    class d implements InterfaceC0402p<InterfaceC0396j> {
        d() {
        }

        @Override // androidx.lifecycle.InterfaceC0402p
        @SuppressLint({"SyntheticAccessor"})
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo2340c(InterfaceC0396j interfaceC0396j) {
            if (interfaceC0396j == null || !DialogInterfaceOnCancelListenerC0354d.this.f2228h0) {
                return;
            }
            View viewM2409L1 = DialogInterfaceOnCancelListenerC0354d.this.m2409L1();
            if (viewM2409L1.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            if (DialogInterfaceOnCancelListenerC0354d.this.f2232l0 != null) {
                if (AbstractC0366n.m2677E0(3)) {
                    String str = "DialogFragment " + this + " setting the content view on " + DialogInterfaceOnCancelListenerC0354d.this.f2232l0;
                }
                DialogInterfaceOnCancelListenerC0354d.this.f2232l0.setContentView(viewM2409L1);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.d$e */
    class e extends AbstractC0359g {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ AbstractC0359g f2241a;

        e(AbstractC0359g abstractC0359g) {
            this.f2241a = abstractC0359g;
        }

        @Override // androidx.fragment.app.AbstractC0359g
        /* JADX INFO: renamed from: c */
        public View mo2509c(int i) {
            return this.f2241a.mo2510d() ? this.f2241a.mo2509c(i) : DialogInterfaceOnCancelListenerC0354d.this.m2611p2(i);
        }

        @Override // androidx.fragment.app.AbstractC0359g
        /* JADX INFO: renamed from: d */
        public boolean mo2510d() {
            return this.f2241a.mo2510d() || DialogInterfaceOnCancelListenerC0354d.this.m2612q2();
        }
    }

    /* JADX INFO: renamed from: l2 */
    private void m2604l2(boolean z, boolean z2) {
        if (this.f2234n0) {
            return;
        }
        this.f2234n0 = true;
        this.f2235o0 = false;
        Dialog dialog = this.f2232l0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f2232l0.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.f2221a0.getLooper()) {
                    onDismiss(this.f2232l0);
                } else {
                    this.f2221a0.post(this.f2222b0);
                }
            }
        }
        this.f2233m0 = true;
        if (this.f2229i0 >= 0) {
            m2441X().m2748U0(this.f2229i0, 1);
            this.f2229i0 = -1;
            return;
        }
        AbstractC0375w abstractC0375wM2774l = m2441X().m2774l();
        abstractC0375wM2774l.mo2532o(this);
        if (z) {
            abstractC0375wM2774l.mo2527i();
        } else {
            abstractC0375wM2774l.mo2526h();
        }
    }

    /* JADX INFO: renamed from: r2 */
    private void m2605r2(Bundle bundle) {
        if (this.f2228h0 && !this.f2236p0) {
            try {
                this.f2230j0 = true;
                Dialog dialogMo2610o2 = mo2610o2(bundle);
                this.f2232l0 = dialogMo2610o2;
                if (this.f2228h0) {
                    m2614t2(dialogMo2610o2, this.f2225e0);
                    Context contextM2404K = m2404K();
                    if (contextM2404K instanceof Activity) {
                        this.f2232l0.setOwnerActivity((Activity) contextM2404K);
                    }
                    this.f2232l0.setCancelable(this.f2227g0);
                    this.f2232l0.setOnCancelListener(this.f2223c0);
                    this.f2232l0.setOnDismissListener(this.f2224d0);
                    this.f2236p0 = true;
                } else {
                    this.f2232l0 = null;
                }
            } finally {
                this.f2230j0 = false;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: E0 */
    public void mo2389E0(Context context) {
        super.mo2389E0(context);
        m2480m0().m2961g(this.f2231k0);
        if (this.f2235o0) {
            return;
        }
        this.f2234n0 = false;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: H0 */
    public void mo2397H0(Bundle bundle) {
        super.mo2397H0(bundle);
        this.f2221a0 = new Handler();
        this.f2228h0 = this.f2094y == 0;
        if (bundle != null) {
            this.f2225e0 = bundle.getInt("android:style", 0);
            this.f2226f0 = bundle.getInt("android:theme", 0);
            this.f2227g0 = bundle.getBoolean("android:cancelable", true);
            this.f2228h0 = bundle.getBoolean("android:showsDialog", this.f2228h0);
            this.f2229i0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: O0 */
    public void mo2416O0() {
        super.mo2416O0();
        Dialog dialog = this.f2232l0;
        if (dialog != null) {
            this.f2233m0 = true;
            dialog.setOnDismissListener(null);
            this.f2232l0.dismiss();
            if (!this.f2234n0) {
                onDismiss(this.f2232l0);
            }
            this.f2232l0 = null;
            this.f2236p0 = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: P0 */
    public void mo2419P0() {
        super.mo2419P0();
        if (!this.f2235o0 && !this.f2234n0) {
            this.f2234n0 = true;
        }
        m2480m0().mo2964j(this.f2231k0);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: Q0 */
    public LayoutInflater mo2422Q0(Bundle bundle) {
        LayoutInflater layoutInflaterMo2422Q0 = super.mo2422Q0(bundle);
        if (this.f2228h0 && !this.f2230j0) {
            m2605r2(bundle);
            if (AbstractC0366n.m2677E0(2)) {
                String str = "get layout inflater for DialogFragment " + this + " from dialog context";
            }
            Dialog dialog = this.f2232l0;
            return dialog != null ? layoutInflaterMo2422Q0.cloneInContext(dialog.getContext()) : layoutInflaterMo2422Q0;
        }
        if (AbstractC0366n.m2677E0(2)) {
            String str2 = "getting layout inflater for DialogFragment " + this;
            if (this.f2228h0) {
                String str3 = "mCreatingDialog = true: " + str2;
            } else {
                String str4 = "mShowsDialog = false: " + str2;
            }
        }
        return layoutInflaterMo2422Q0;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: d1 */
    public void mo2460d1(Bundle bundle) {
        super.mo2460d1(bundle);
        Dialog dialog = this.f2232l0;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i = this.f2225e0;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f2226f0;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.f2227g0;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.f2228h0;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.f2229i0;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: e1 */
    public void mo2463e1() {
        super.mo2463e1();
        Dialog dialog = this.f2232l0;
        if (dialog != null) {
            this.f2233m0 = false;
            dialog.show();
            View decorView = this.f2232l0.getWindow().getDecorView();
            C0412z.m3061a(decorView, this);
            C0385a0.m2978a(decorView, this);
            C0484d.m3993a(decorView, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: f1 */
    public void mo2466f1() {
        super.mo2466f1();
        Dialog dialog = this.f2232l0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: h1 */
    public void mo2471h1(Bundle bundle) {
        Bundle bundle2;
        super.mo2471h1(bundle);
        if (this.f2232l0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f2232l0.onRestoreInstanceState(bundle2);
    }

    /* JADX INFO: renamed from: j2 */
    public void mo2606j2() {
        m2604l2(false, false);
    }

    /* JADX INFO: renamed from: k2 */
    public void m2607k2() {
        m2604l2(true, false);
    }

    /* JADX INFO: renamed from: m2 */
    public Dialog m2608m2() {
        return this.f2232l0;
    }

    /* JADX INFO: renamed from: n2 */
    public int m2609n2() {
        return this.f2226f0;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: o1 */
    void mo2484o1(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.mo2484o1(layoutInflater, viewGroup, bundle);
        if (this.f2054I != null || this.f2232l0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f2232l0.onRestoreInstanceState(bundle2);
    }

    /* JADX INFO: renamed from: o2 */
    public Dialog mo2610o2(Bundle bundle) {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "onCreateDialog called for DialogFragment " + this;
        }
        return new Dialog(m2406K1(), m2609n2());
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f2233m0) {
            return;
        }
        if (AbstractC0366n.m2677E0(3)) {
            String str = "onDismiss called for DialogFragment " + this;
        }
        m2604l2(true, true);
    }

    /* JADX INFO: renamed from: p2 */
    View m2611p2(int i) {
        Dialog dialog = this.f2232l0;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    /* JADX INFO: renamed from: q2 */
    boolean m2612q2() {
        return this.f2236p0;
    }

    /* JADX INFO: renamed from: s2 */
    public final Dialog m2613s2() {
        Dialog dialogM2608m2 = m2608m2();
        if (dialogM2608m2 != null) {
            return dialogM2608m2;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    /* JADX INFO: renamed from: t2 */
    public void m2614t2(Dialog dialog, int i) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            }
            Window window = dialog.getWindow();
            if (window != null) {
                window.addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    /* JADX INFO: renamed from: u2 */
    public void m2615u2(AbstractC0366n abstractC0366n, String str) {
        this.f2234n0 = false;
        this.f2235o0 = true;
        AbstractC0375w abstractC0375wM2774l = abstractC0366n.m2774l();
        abstractC0375wM2774l.m2889e(this, str);
        abstractC0375wM2774l.mo2526h();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: y */
    AbstractC0359g mo2503y() {
        return new e(super.mo2503y());
    }
}
