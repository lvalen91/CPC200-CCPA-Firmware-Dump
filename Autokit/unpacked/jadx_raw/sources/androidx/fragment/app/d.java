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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    private Handler a0;
    private boolean j0;
    private Dialog l0;
    private boolean m0;
    private boolean n0;
    private boolean o0;
    private Runnable b0 = new a();
    private DialogInterface.OnCancelListener c0 = new b();
    private DialogInterface.OnDismissListener d0 = new c();
    private int e0 = 0;
    private int f0 = 0;
    private boolean g0 = true;
    private boolean h0 = true;
    private int i0 = -1;
    private androidx.lifecycle.p<androidx.lifecycle.j> k0 = new C0032d();
    private boolean p0 = false;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            d.this.d0.onDismiss(d.this.l0);
        }
    }

    class b implements DialogInterface.OnCancelListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        @SuppressLint({"SyntheticAccessor"})
        public void onCancel(DialogInterface dialogInterface) {
            if (d.this.l0 != null) {
                d dVar = d.this;
                dVar.onCancel(dVar.l0);
            }
        }
    }

    class c implements DialogInterface.OnDismissListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        @SuppressLint({"SyntheticAccessor"})
        public void onDismiss(DialogInterface dialogInterface) {
            if (d.this.l0 != null) {
                d dVar = d.this;
                dVar.onDismiss(dVar.l0);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.d$d, reason: collision with other inner class name */
    class C0032d implements androidx.lifecycle.p<androidx.lifecycle.j> {
        C0032d() {
        }

        @Override // androidx.lifecycle.p
        @SuppressLint({"SyntheticAccessor"})
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void c(androidx.lifecycle.j jVar) {
            if (jVar == null || !d.this.h0) {
                return;
            }
            View viewL1 = d.this.L1();
            if (viewL1.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            if (d.this.l0 != null) {
                if (n.E0(3)) {
                    String str = "DialogFragment " + this + " setting the content view on " + d.this.l0;
                }
                d.this.l0.setContentView(viewL1);
            }
        }
    }

    class e extends g {
        final /* synthetic */ g a;

        e(g gVar) {
            this.a = gVar;
        }

        @Override // androidx.fragment.app.g
        public View c(int i) {
            return this.a.d() ? this.a.c(i) : d.this.p2(i);
        }

        @Override // androidx.fragment.app.g
        public boolean d() {
            return this.a.d() || d.this.q2();
        }
    }

    private void l2(boolean z, boolean z2) {
        if (this.n0) {
            return;
        }
        this.n0 = true;
        this.o0 = false;
        Dialog dialog = this.l0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.l0.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.a0.getLooper()) {
                    onDismiss(this.l0);
                } else {
                    this.a0.post(this.b0);
                }
            }
        }
        this.m0 = true;
        if (this.i0 >= 0) {
            X().U0(this.i0, 1);
            this.i0 = -1;
            return;
        }
        w wVarL = X().l();
        wVarL.o(this);
        if (z) {
            wVarL.i();
        } else {
            wVarL.h();
        }
    }

    private void r2(Bundle bundle) {
        if (this.h0 && !this.p0) {
            try {
                this.j0 = true;
                Dialog dialogO2 = o2(bundle);
                this.l0 = dialogO2;
                if (this.h0) {
                    t2(dialogO2, this.e0);
                    Context contextK = K();
                    if (contextK instanceof Activity) {
                        this.l0.setOwnerActivity((Activity) contextK);
                    }
                    this.l0.setCancelable(this.g0);
                    this.l0.setOnCancelListener(this.c0);
                    this.l0.setOnDismissListener(this.d0);
                    this.p0 = true;
                } else {
                    this.l0 = null;
                }
            } finally {
                this.j0 = false;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void E0(Context context) {
        super.E0(context);
        m0().g(this.k0);
        if (this.o0) {
            return;
        }
        this.n0 = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void H0(Bundle bundle) {
        super.H0(bundle);
        this.a0 = new Handler();
        this.h0 = this.y == 0;
        if (bundle != null) {
            this.e0 = bundle.getInt("android:style", 0);
            this.f0 = bundle.getInt("android:theme", 0);
            this.g0 = bundle.getBoolean("android:cancelable", true);
            this.h0 = bundle.getBoolean("android:showsDialog", this.h0);
            this.i0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void O0() {
        super.O0();
        Dialog dialog = this.l0;
        if (dialog != null) {
            this.m0 = true;
            dialog.setOnDismissListener(null);
            this.l0.dismiss();
            if (!this.n0) {
                onDismiss(this.l0);
            }
            this.l0 = null;
            this.p0 = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void P0() {
        super.P0();
        if (!this.o0 && !this.n0) {
            this.n0 = true;
        }
        m0().j(this.k0);
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater Q0(Bundle bundle) {
        LayoutInflater layoutInflaterQ0 = super.Q0(bundle);
        if (this.h0 && !this.j0) {
            r2(bundle);
            if (n.E0(2)) {
                String str = "get layout inflater for DialogFragment " + this + " from dialog context";
            }
            Dialog dialog = this.l0;
            return dialog != null ? layoutInflaterQ0.cloneInContext(dialog.getContext()) : layoutInflaterQ0;
        }
        if (n.E0(2)) {
            String str2 = "getting layout inflater for DialogFragment " + this;
            if (this.h0) {
                String str3 = "mCreatingDialog = true: " + str2;
            } else {
                String str4 = "mShowsDialog = false: " + str2;
            }
        }
        return layoutInflaterQ0;
    }

    @Override // androidx.fragment.app.Fragment
    public void d1(Bundle bundle) {
        super.d1(bundle);
        Dialog dialog = this.l0;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i = this.e0;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f0;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.g0;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.h0;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.i0;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void e1() {
        super.e1();
        Dialog dialog = this.l0;
        if (dialog != null) {
            this.m0 = false;
            dialog.show();
            View decorView = this.l0.getWindow().getDecorView();
            androidx.lifecycle.z.a(decorView, this);
            androidx.lifecycle.a0.a(decorView, this);
            androidx.savedstate.d.a(decorView, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void f1() {
        super.f1();
        Dialog dialog = this.l0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void h1(Bundle bundle) {
        Bundle bundle2;
        super.h1(bundle);
        if (this.l0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.l0.onRestoreInstanceState(bundle2);
    }

    public void j2() {
        l2(false, false);
    }

    public void k2() {
        l2(true, false);
    }

    public Dialog m2() {
        return this.l0;
    }

    public int n2() {
        return this.f0;
    }

    @Override // androidx.fragment.app.Fragment
    void o1(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.o1(layoutInflater, viewGroup, bundle);
        if (this.I != null || this.l0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.l0.onRestoreInstanceState(bundle2);
    }

    public Dialog o2(Bundle bundle) {
        if (n.E0(3)) {
            String str = "onCreateDialog called for DialogFragment " + this;
        }
        return new Dialog(K1(), n2());
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.m0) {
            return;
        }
        if (n.E0(3)) {
            String str = "onDismiss called for DialogFragment " + this;
        }
        l2(true, true);
    }

    View p2(int i) {
        Dialog dialog = this.l0;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    boolean q2() {
        return this.p0;
    }

    public final Dialog s2() {
        Dialog dialogM2 = m2();
        if (dialogM2 != null) {
            return dialogM2;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    public void t2(Dialog dialog, int i) {
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

    public void u2(n nVar, String str) {
        this.n0 = false;
        this.o0 = true;
        w wVarL = nVar.l();
        wVarL.e(this, str);
        wVarL.h();
    }

    @Override // androidx.fragment.app.Fragment
    g y() {
        return new e(super.y());
    }
}
