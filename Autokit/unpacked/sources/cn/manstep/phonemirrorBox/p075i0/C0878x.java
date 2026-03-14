package cn.manstep.phonemirrorBox.p075i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.p006j.C0333b;
import androidx.lifecycle.C0401o;
import cn.manstep.phonemirrorBox.p091x0.C1010h;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.x */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0878x extends AbstractC0877w {

    /* JADX INFO: renamed from: C */
    private static final ViewDataBinding.C0319g f5474C = null;

    /* JADX INFO: renamed from: D */
    private static final SparseIntArray f5475D;

    /* JADX INFO: renamed from: A */
    private final TextView f5476A;

    /* JADX INFO: renamed from: B */
    private long f5477B;

    /* JADX INFO: renamed from: z */
    private final ConstraintLayout f5478z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5475D = sparseIntArray;
        sparseIntArray.put(2131296880, 3);
        f5475D.put(2131296370, 4);
        f5475D.put(2131296380, 5);
    }

    public C0878x(InterfaceC0327e interfaceC0327e, View view) {
        this(interfaceC0327e, view, ViewDataBinding.m2325y(interfaceC0327e, view, 6, f5474C, f5475D));
    }

    /* JADX INFO: renamed from: N */
    private boolean m6480N(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5477B |= 2;
        }
        return true;
    }

    /* JADX INFO: renamed from: O */
    private boolean m6481O(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5477B |= 1;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.p075i0.AbstractC0877w
    /* JADX INFO: renamed from: L */
    public void mo6479L(C1010h c1010h) {
        this.f5473y = c1010h;
        synchronized (this) {
            this.f5477B |= 4;
        }
        m2350d(8);
        super.m2327D();
    }

    /* JADX INFO: renamed from: M */
    public void m6482M() {
        synchronized (this) {
            this.f5477B = 8L;
        }
        m2327D();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void mo2332n() {
        long j;
        String strM2959e;
        synchronized (this) {
            j = this.f5477B;
            this.f5477B = 0L;
        }
        C1010h c1010h = this.f5473y;
        String strM2959e2 = null;
        if ((15 & j) == 0) {
            strM2959e = null;
        } else if ((j & 13) == 0) {
            strM2959e = null;
            if ((j & 14) != 0) {
                C0401o<String> c0401oM7644j = c1010h != null ? c1010h.m7644j() : null;
                m2331J(1, c0401oM7644j);
                if (c0401oM7644j != null) {
                    strM2959e2 = c0401oM7644j.m2959e();
                }
            }
        } else {
            C0401o<String> c0401oM7645k = c1010h != null ? c1010h.m7645k() : null;
            m2331J(0, c0401oM7645k);
            if (c0401oM7645k != null) {
                strM2959e = c0401oM7645k.m2959e();
            }
            if ((j & 14) != 0) {
            }
        }
        if ((14 & j) != 0) {
            C0333b.m2369b(this.f5472x, strM2959e2);
        }
        if ((j & 13) != 0) {
            C0333b.m2369b(this.f5476A, strM2959e);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: v */
    public boolean mo2335v() {
        synchronized (this) {
            return this.f5477B != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: z */
    protected boolean mo2336z(int i, Object obj, int i2) {
        if (i == 0) {
            return m6481O((C0401o) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return m6480N((C0401o) obj, i2);
    }

    private C0878x(InterfaceC0327e interfaceC0327e, View view, Object[] objArr) {
        super(interfaceC0327e, view, 2, (Button) objArr[4], (Button) objArr[5], (EditText) objArr[2], (ConstraintLayout) objArr[3]);
        this.f5477B = -1L;
        this.f5472x.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f5478z = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.f5476A = textView;
        textView.setTag(null);
        m2329H(view);
        m6482M();
    }
}
