package cn.manstep.phonemirrorBox.p075i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.r */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0872r extends AbstractC0871q {

    /* JADX INFO: renamed from: A */
    private static final ViewDataBinding.C0319g f5356A = null;

    /* JADX INFO: renamed from: B */
    private static final SparseIntArray f5357B;

    /* JADX INFO: renamed from: y */
    private final ConstraintLayout f5358y;

    /* JADX INFO: renamed from: z */
    private long f5359z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5357B = sparseIntArray;
        sparseIntArray.put(2131296880, 1);
        f5357B.put(2131296564, 2);
        f5357B.put(2131296601, 3);
        f5357B.put(2131296637, 4);
        f5357B.put(2131296600, 5);
        f5357B.put(2131296598, 6);
    }

    public C0872r(InterfaceC0327e interfaceC0327e, View view) {
        this(interfaceC0327e, view, ViewDataBinding.m2325y(interfaceC0327e, view, 7, f5356A, f5357B));
    }

    /* JADX INFO: renamed from: L */
    public void m6448L() {
        synchronized (this) {
            this.f5359z = 1L;
        }
        m2327D();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: n */
    protected void mo2332n() {
        synchronized (this) {
            this.f5359z = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: v */
    public boolean mo2335v() {
        synchronized (this) {
            return this.f5359z != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: z */
    protected boolean mo2336z(int i, Object obj, int i2) {
        return false;
    }

    private C0872r(InterfaceC0327e interfaceC0327e, View view, Object[] objArr) {
        super(interfaceC0327e, view, 0, (ImageView) objArr[2], (SwitchCompat) objArr[6], (LinearLayout) objArr[5], (LinearLayout) objArr[3], (SwitchCompat) objArr[4], (ConstraintLayout) objArr[1]);
        this.f5359z = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f5358y = constraintLayout;
        constraintLayout.setTag(null);
        m2329H(view);
        m6448L();
    }
}
