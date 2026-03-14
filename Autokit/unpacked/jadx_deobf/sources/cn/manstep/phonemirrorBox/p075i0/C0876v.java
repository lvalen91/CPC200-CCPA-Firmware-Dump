package cn.manstep.phonemirrorBox.p075i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import cn.manstep.phonemirrorBox.p091x0.C1013k;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.v */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0876v extends AbstractC0875u {

    /* JADX INFO: renamed from: y */
    private static final ViewDataBinding.C0319g f5466y = null;

    /* JADX INFO: renamed from: z */
    private static final SparseIntArray f5467z;

    /* JADX INFO: renamed from: w */
    private final ConstraintLayout f5468w;

    /* JADX INFO: renamed from: x */
    private long f5469x;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5467z = sparseIntArray;
        sparseIntArray.put(2131296880, 1);
        f5467z.put(2131296564, 2);
        f5467z.put(2131296509, 3);
        f5467z.put(2131296776, 4);
        f5467z.put(2131296265, 5);
        f5467z.put(2131296883, 6);
        f5467z.put(2131296266, 7);
        f5467z.put(2131296493, 8);
    }

    public C0876v(InterfaceC0327e interfaceC0327e, View view) {
        this(interfaceC0327e, view, ViewDataBinding.m2325y(interfaceC0327e, view, 9, f5466y, f5467z));
    }

    @Override // cn.manstep.phonemirrorBox.p075i0.AbstractC0875u
    /* JADX INFO: renamed from: L */
    public void mo6477L(C1013k c1013k) {
    }

    /* JADX INFO: renamed from: M */
    public void m6478M() {
        synchronized (this) {
            this.f5469x = 2L;
        }
        m2327D();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: n */
    protected void mo2332n() {
        synchronized (this) {
            this.f5469x = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: v */
    public boolean mo2335v() {
        synchronized (this) {
            return this.f5469x != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: z */
    protected boolean mo2336z(int i, Object obj, int i2) {
        return false;
    }

    private C0876v(InterfaceC0327e interfaceC0327e, View view, Object[] objArr) {
        super(interfaceC0327e, view, 0, (RelativeLayout) objArr[5], (RelativeLayout) objArr[7], (RecyclerView) objArr[8], (Button) objArr[3], (ImageView) objArr[2], (Button) objArr[4], (RelativeLayout) objArr[1], (CheckBox) objArr[6]);
        this.f5469x = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f5468w = constraintLayout;
        constraintLayout.setTag(null);
        m2329H(view);
        m6478M();
    }
}
