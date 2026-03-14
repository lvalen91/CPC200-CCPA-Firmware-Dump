package cn.manstep.phonemirrorBox.p075i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.p006j.C0332a;
import androidx.databinding.p006j.C0333b;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.p079m0.p080a.ViewOnClickListenerC0918a;
import cn.manstep.phonemirrorBox.p091x0.C1012j;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0858d extends AbstractC0857c implements ViewOnClickListenerC0918a.a {

    /* JADX INFO: renamed from: G */
    private static final ViewDataBinding.C0319g f5099G = null;

    /* JADX INFO: renamed from: H */
    private static final SparseIntArray f5100H;

    /* JADX INFO: renamed from: B */
    private final ConstraintLayout f5101B;

    /* JADX INFO: renamed from: C */
    private final View.OnClickListener f5102C;

    /* JADX INFO: renamed from: D */
    private final View.OnClickListener f5103D;

    /* JADX INFO: renamed from: E */
    private final View.OnClickListener f5104E;

    /* JADX INFO: renamed from: F */
    private long f5105F;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5100H = sparseIntArray;
        sparseIntArray.put(2131296871, 6);
        f5100H.put(2131296874, 7);
        f5100H.put(2131296758, 8);
    }

    public C0858d(InterfaceC0327e interfaceC0327e, View view) {
        this(interfaceC0327e, view, ViewDataBinding.m2325y(interfaceC0327e, view, 9, f5099G, f5100H));
    }

    /* JADX INFO: renamed from: L */
    public void m6368L() {
        synchronized (this) {
            this.f5105F = 2L;
        }
        m2327D();
    }

    @Override // cn.manstep.phonemirrorBox.p079m0.p080a.ViewOnClickListenerC0918a.a
    /* JADX INFO: renamed from: b */
    public final void mo6367b(int i, View view) {
        if (i == 1) {
            C1012j c1012j = this.f5093A;
            if (c1012j != null) {
                c1012j.m7691c(view);
                throw null;
            }
            return;
        }
        if (i == 2) {
            C1012j c1012j2 = this.f5093A;
            if (c1012j2 != null) {
                c1012j2.m7689a(-5);
                throw null;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        C1012j c1012j3 = this.f5093A;
        if (c1012j3 != null) {
            c1012j3.m7689a(5);
            throw null;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: n */
    protected void mo2332n() {
        long j;
        synchronized (this) {
            j = this.f5105F;
            this.f5105F = 0L;
        }
        C1012j c1012j = this.f5093A;
        long j2 = 3 & j;
        if (j2 != 0 && c1012j != null) {
            c1012j.m7690b();
            throw null;
        }
        if (j2 != 0) {
            C0333b.m2369b(this.f5094v, null);
            C0332a.m2366a(this.f5096x, false);
            C0332a.m2367b(this.f5096x, null, null);
        }
        if ((j & 2) != 0) {
            this.f5095w.setOnClickListener(this.f5104E);
            this.f5097y.setOnClickListener(this.f5102C);
            this.f5098z.setOnClickListener(this.f5103D);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: v */
    public boolean mo2335v() {
        synchronized (this) {
            return this.f5105F != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: z */
    protected boolean mo2336z(int i, Object obj, int i2) {
        return false;
    }

    private C0858d(InterfaceC0327e interfaceC0327e, View view, Object[] objArr) {
        super(interfaceC0327e, view, 0, (EditText) objArr[4], (ImageView) objArr[1], (Switch) objArr[2], (CustomImageView) objArr[3], (CustomImageView) objArr[5], (ScrollView) objArr[8], (TextView) objArr[6], (View) objArr[7]);
        this.f5105F = -1L;
        this.f5094v.setTag(null);
        this.f5095w.setTag(null);
        this.f5096x.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f5101B = constraintLayout;
        constraintLayout.setTag(null);
        this.f5097y.setTag(null);
        this.f5098z.setTag(null);
        m2329H(view);
        this.f5102C = new ViewOnClickListenerC0918a(this, 2);
        this.f5103D = new ViewOnClickListenerC0918a(this, 3);
        this.f5104E = new ViewOnClickListenerC0918a(this, 1);
        m6368L();
    }
}
