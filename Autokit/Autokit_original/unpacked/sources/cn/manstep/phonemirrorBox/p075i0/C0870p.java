package cn.manstep.phonemirrorBox.p075i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.p006j.C0333b;
import androidx.lifecycle.C0401o;
import cn.manstep.phonemirrorBox.C0951t;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.p079m0.p080a.ViewOnClickListenerC0918a;
import cn.manstep.phonemirrorBox.p079m0.p080a.ViewOnLongClickListenerC0920c;
import cn.manstep.phonemirrorBox.p091x0.C1009g;
import cn.manstep.phonemirrorBox.util.AutoFitTextView;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0870p extends AbstractC0869o implements ViewOnClickListenerC0918a.a, ViewOnLongClickListenerC0920c.a {

    /* JADX INFO: renamed from: N */
    private static final ViewDataBinding.C0319g f5339N = null;

    /* JADX INFO: renamed from: O */
    private static final SparseIntArray f5340O;

    /* JADX INFO: renamed from: B */
    private final ConstraintLayout f5341B;

    /* JADX INFO: renamed from: C */
    private final TextView f5342C;

    /* JADX INFO: renamed from: D */
    private final TextView f5343D;

    /* JADX INFO: renamed from: E */
    private final CustomImageView f5344E;

    /* JADX INFO: renamed from: F */
    private final View.OnClickListener f5345F;

    /* JADX INFO: renamed from: G */
    private final View.OnLongClickListener f5346G;

    /* JADX INFO: renamed from: H */
    private final View.OnClickListener f5347H;

    /* JADX INFO: renamed from: I */
    private final View.OnClickListener f5348I;

    /* JADX INFO: renamed from: J */
    private final View.OnClickListener f5349J;

    /* JADX INFO: renamed from: K */
    private final View.OnClickListener f5350K;

    /* JADX INFO: renamed from: L */
    private final View.OnClickListener f5351L;

    /* JADX INFO: renamed from: M */
    private long f5352M;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5340O = sparseIntArray;
        sparseIntArray.put(2131296897, 9);
        f5340O.put(2131296507, 10);
        f5340O.put(2131296259, 11);
    }

    public C0870p(InterfaceC0327e interfaceC0327e, View view) {
        this(interfaceC0327e, view, ViewDataBinding.m2325y(interfaceC0327e, view, 12, f5339N, f5340O));
    }

    /* JADX INFO: renamed from: P */
    private boolean m6442P(C0401o<Integer> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5352M |= 2;
        }
        return true;
    }

    /* JADX INFO: renamed from: Q */
    private boolean m6443Q(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5352M |= 4;
        }
        return true;
    }

    /* JADX INFO: renamed from: R */
    private boolean m6444R(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5352M |= 1;
        }
        return true;
    }

    /* JADX INFO: renamed from: S */
    private boolean m6445S(C0401o<Integer> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5352M |= 8;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.p075i0.AbstractC0869o
    /* JADX INFO: renamed from: N */
    public void mo6441N(C1009g c1009g) {
        this.f5333A = c1009g;
        synchronized (this) {
            this.f5352M |= 16;
        }
        m2350d(8);
        super.m2327D();
    }

    /* JADX INFO: renamed from: O */
    public void m6446O() {
        synchronized (this) {
            this.f5352M = 32L;
        }
        m2327D();
    }

    @Override // cn.manstep.phonemirrorBox.p079m0.p080a.ViewOnLongClickListenerC0920c.a
    /* JADX INFO: renamed from: a */
    public final boolean mo6447a(int i, View view) {
        C1009g c1009g = this.f5333A;
        if (c1009g != null) {
            return c1009g.m7635s(view);
        }
        return false;
    }

    @Override // cn.manstep.phonemirrorBox.p079m0.p080a.ViewOnClickListenerC0918a.a
    /* JADX INFO: renamed from: b */
    public final void mo6367b(int i, View view) {
        if (i == 1) {
            C1009g c1009g = this.f5333A;
            if (c1009g != null) {
                c1009g.m7636t();
                return;
            }
            return;
        }
        if (i == 2) {
            C1009g c1009g2 = this.f5333A;
            if (c1009g2 != null) {
                c1009g2.m7618C();
                return;
            }
            return;
        }
        if (i == 3) {
            C1009g c1009g3 = this.f5333A;
            if (c1009g3 != null) {
                c1009g3.m7618C();
                return;
            }
            return;
        }
        if (i == 4) {
            C1009g c1009g4 = this.f5333A;
            if (c1009g4 != null) {
                c1009g4.m7630O(view);
                return;
            }
            return;
        }
        if (i == 6) {
            C1009g c1009g5 = this.f5333A;
            if (c1009g5 != null) {
                c1009g5.m7629N(view);
                return;
            }
            return;
        }
        if (i != 7) {
            return;
        }
        C1009g c1009g6 = this.f5333A;
        if (c1009g6 != null) {
            c1009g6.m7634r(view);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00be  */
    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void mo2332n() {
        long j;
        int iM2306E;
        int i;
        String str;
        String str2;
        String strM2959e;
        int iM2306E2;
        String strM2959e2;
        synchronized (this) {
            j = this.f5352M;
            this.f5352M = 0L;
        }
        C1009g c1009g = this.f5333A;
        int i2 = 0;
        if ((63 & j) != 0) {
            long j2 = j & 49;
            if (j2 != 0) {
                C0401o<String> c0401oM7640x = c1009g != null ? c1009g.m7640x() : null;
                m2331J(0, c0401oM7640x);
                strM2959e = c0401oM7640x != null ? c0401oM7640x.m2959e() : null;
                boolean z = (strM2959e != null ? strM2959e.length() : 0) > 0;
                if (j2 != 0) {
                    j |= z ? 128L : 64L;
                }
                i = z ? 0 : 8;
            } else {
                i = 0;
                strM2959e = null;
            }
            if ((j & 50) != 0) {
                C0401o<Integer> c0401oM7637u = c1009g != null ? c1009g.m7637u() : null;
                m2331J(1, c0401oM7637u);
                iM2306E2 = ViewDataBinding.m2306E(c0401oM7637u != null ? c0401oM7637u.m2959e() : null);
            } else {
                iM2306E2 = 0;
            }
            if ((j & 52) == 0) {
                strM2959e2 = null;
                if ((j & 56) == 0) {
                    C0401o<Integer> c0401oM7641y = c1009g != null ? c1009g.m7641y() : null;
                    m2331J(3, c0401oM7641y);
                    iM2306E = ViewDataBinding.m2306E(c0401oM7641y != null ? c0401oM7641y.m2959e() : null);
                    i2 = iM2306E2;
                    str = strM2959e2;
                    str2 = strM2959e;
                } else {
                    i2 = iM2306E2;
                    str = strM2959e2;
                    str2 = strM2959e;
                    iM2306E = 0;
                }
            } else {
                C0401o<String> c0401oM7638v = c1009g != null ? c1009g.m7638v() : null;
                m2331J(2, c0401oM7638v);
                if (c0401oM7638v != null) {
                    strM2959e2 = c0401oM7638v.m2959e();
                }
                if ((j & 56) == 0) {
                }
            }
        } else {
            iM2306E = 0;
            i = 0;
            str = null;
            str2 = null;
        }
        if ((32 & j) != 0) {
            this.f5334v.setOnClickListener(this.f5345F);
            this.f5335w.setOnClickListener(this.f5348I);
            this.f5336x.setOnClickListener(this.f5351L);
            this.f5337y.setOnClickListener(this.f5349J);
            this.f5343D.setOnClickListener(this.f5347H);
            this.f5344E.setOnClickListener(this.f5350K);
            C0951t.m6993b(this.f5338z, this.f5346G);
        }
        if ((50 & j) != 0) {
            C0951t.m6992a(this.f5336x, i2);
        }
        if ((49 & j) != 0) {
            C0333b.m2369b(this.f5342C, str2);
            this.f5342C.setVisibility(i);
        }
        if ((j & 52) != 0) {
            C0333b.m2369b(this.f5343D, str);
        }
        if ((j & 56) != 0) {
            C0951t.m6992a(this.f5344E, iM2306E);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: v */
    public boolean mo2335v() {
        synchronized (this) {
            return this.f5352M != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: z */
    protected boolean mo2336z(int i, Object obj, int i2) {
        if (i == 0) {
            return m6444R((C0401o) obj, i2);
        }
        if (i == 1) {
            return m6442P((C0401o) obj, i2);
        }
        if (i == 2) {
            return m6443Q((C0401o) obj, i2);
        }
        if (i != 3) {
            return false;
        }
        return m6445S((C0401o) obj, i2);
    }

    private C0870p(InterfaceC0327e interfaceC0327e, View view, Object[] objArr) {
        super(interfaceC0327e, view, 4, (ImageView) objArr[11], (TextView) objArr[8], (Button) objArr[2], (FrameLayout) objArr[10], (ImageView) objArr[3], (ImageView) objArr[7], (TextView) objArr[9], (AutoFitTextView) objArr[6]);
        this.f5352M = -1L;
        this.f5334v.setTag(null);
        this.f5335w.setTag(null);
        this.f5336x.setTag(null);
        this.f5337y.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f5341B = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.f5342C = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[4];
        this.f5343D = textView2;
        textView2.setTag(null);
        CustomImageView customImageView = (CustomImageView) objArr[5];
        this.f5344E = customImageView;
        customImageView.setTag(null);
        this.f5338z.setTag(null);
        m2329H(view);
        this.f5345F = new ViewOnClickListenerC0918a(this, 7);
        this.f5346G = new ViewOnLongClickListenerC0920c(this, 5);
        this.f5347H = new ViewOnClickListenerC0918a(this, 3);
        this.f5348I = new ViewOnClickListenerC0918a(this, 1);
        this.f5349J = new ViewOnClickListenerC0918a(this, 6);
        this.f5350K = new ViewOnClickListenerC0918a(this, 4);
        this.f5351L = new ViewOnClickListenerC0918a(this, 2);
        m6446O();
    }
}
