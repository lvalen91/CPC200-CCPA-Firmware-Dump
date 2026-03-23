package cn.manstep.phonemirrorBox.p075i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.p006j.C0333b;
import androidx.lifecycle.C0401o;
import cn.manstep.phonemirrorBox.p091x0.C1009g;
import p093d.p099c.p100a.p101a.C1221f;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0866l extends AbstractC0865k {

    /* JADX INFO: renamed from: A */
    private static final SparseIntArray f5268A;

    /* JADX INFO: renamed from: z */
    private static final ViewDataBinding.C0319g f5269z = null;

    /* JADX INFO: renamed from: w */
    private final ConstraintLayout f5270w;

    /* JADX INFO: renamed from: x */
    private final TextView f5271x;

    /* JADX INFO: renamed from: y */
    private long f5272y;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5268A = sparseIntArray;
        sparseIntArray.put(2131296952, 2);
        f5268A.put(2131296870, 3);
        f5268A.put(2131296565, 4);
        f5268A.put(2131296525, 5);
        f5268A.put(C1221f.guideline, 6);
    }

    public C0866l(InterfaceC0327e interfaceC0327e, View view) {
        this(interfaceC0327e, view, ViewDataBinding.m2325y(interfaceC0327e, view, 7, f5269z, f5268A));
    }

    /* JADX INFO: renamed from: N */
    private boolean m6416N(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5272y |= 1;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.p075i0.AbstractC0865k
    /* JADX INFO: renamed from: L */
    public void mo6415L(C1009g c1009g) {
        this.f5267v = c1009g;
        synchronized (this) {
            this.f5272y |= 2;
        }
        m2350d(8);
        super.m2327D();
    }

    /* JADX INFO: renamed from: M */
    public void m6417M() {
        synchronized (this) {
            this.f5272y = 4L;
        }
        m2327D();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: n */
    protected void mo2332n() {
        long j;
        synchronized (this) {
            j = this.f5272y;
            this.f5272y = 0L;
        }
        C1009g c1009g = this.f5267v;
        long j2 = j & 7;
        String strM2959e = null;
        if (j2 != 0) {
            C0401o<String> c0401oM7639w = c1009g != null ? c1009g.m7639w() : null;
            m2331J(0, c0401oM7639w);
            if (c0401oM7639w != null) {
                strM2959e = c0401oM7639w.m2959e();
            }
        }
        if (j2 != 0) {
            C0333b.m2369b(this.f5271x, strM2959e);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: v */
    public boolean mo2335v() {
        synchronized (this) {
            return this.f5272y != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: z */
    protected boolean mo2336z(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m6416N((C0401o) obj, i2);
    }

    private C0866l(InterfaceC0327e interfaceC0327e, View view, Object[] objArr) {
        super(interfaceC0327e, view, 1, (Guideline) objArr[6], (Guideline) objArr[5], (ImageView) objArr[4], (TextView) objArr[3], (ImageView) objArr[2]);
        this.f5272y = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f5270w = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.f5271x = textView;
        textView.setTag(null);
        m2329H(view);
        m6417M();
    }
}
