package cn.manstep.phonemirrorBox.p075i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0864j extends AbstractC0863i {

    /* JADX INFO: renamed from: x */
    private static final ViewDataBinding.C0319g f5263x = null;

    /* JADX INFO: renamed from: y */
    private static final SparseIntArray f5264y;

    /* JADX INFO: renamed from: v */
    private final ConstraintLayout f5265v;

    /* JADX INFO: renamed from: w */
    private long f5266w;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5264y = sparseIntArray;
        sparseIntArray.put(2131296521, 1);
        f5264y.put(2131296524, 2);
        f5264y.put(2131296370, 3);
        f5264y.put(2131296532, 4);
        f5264y.put(2131296870, 5);
    }

    public C0864j(InterfaceC0327e interfaceC0327e, View view) {
        this(interfaceC0327e, view, ViewDataBinding.m2325y(interfaceC0327e, view, 6, f5263x, f5264y));
    }

    /* JADX INFO: renamed from: L */
    public void m6414L() {
        synchronized (this) {
            this.f5266w = 1L;
        }
        m2327D();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: n */
    protected void mo2332n() {
        synchronized (this) {
            this.f5266w = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: v */
    public boolean mo2335v() {
        synchronized (this) {
            return this.f5266w != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: z */
    protected boolean mo2336z(int i, Object obj, int i2) {
        return false;
    }

    private C0864j(InterfaceC0327e interfaceC0327e, View view, Object[] objArr) {
        super(interfaceC0327e, view, 0, (Button) objArr[3], (Guideline) objArr[1], (Guideline) objArr[2], (ImageView) objArr[4], (TextView) objArr[5]);
        this.f5266w = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f5265v = constraintLayout;
        constraintLayout.setTag(null);
        m2329H(view);
        m6414L();
    }
}
