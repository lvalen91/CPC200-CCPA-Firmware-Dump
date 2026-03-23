package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.m0.a.a;
import cn.manstep.phonemirrorBox.m0.a.c;
import cn.manstep.phonemirrorBox.util.AutoFitTextView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class p extends o implements a.InterfaceC0091a, c.a {
    private static final ViewDataBinding.g N = null;
    private static final SparseIntArray O;
    private final ConstraintLayout B;
    private final TextView C;
    private final TextView D;
    private final CustomImageView E;
    private final View.OnClickListener F;
    private final View.OnLongClickListener G;
    private final View.OnClickListener H;
    private final View.OnClickListener I;
    private final View.OnClickListener J;
    private final View.OnClickListener K;
    private final View.OnClickListener L;
    private long M;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        O = sparseIntArray;
        sparseIntArray.put(2131296897, 9);
        O.put(2131296507, 10);
        O.put(2131296259, 11);
    }

    public p(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 12, N, O));
    }

    private boolean P(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.M |= 2;
        }
        return true;
    }

    private boolean Q(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.M |= 4;
        }
        return true;
    }

    private boolean R(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.M |= 1;
        }
        return true;
    }

    private boolean S(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.M |= 8;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.i0.o
    public void N(cn.manstep.phonemirrorBox.x0.g gVar) {
        this.A = gVar;
        synchronized (this) {
            this.M |= 16;
        }
        d(8);
        super.D();
    }

    public void O() {
        synchronized (this) {
            this.M = 32L;
        }
        D();
    }

    @Override // cn.manstep.phonemirrorBox.m0.a.c.a
    public final boolean a(int i, View view) {
        cn.manstep.phonemirrorBox.x0.g gVar = this.A;
        if (gVar != null) {
            return gVar.s(view);
        }
        return false;
    }

    @Override // cn.manstep.phonemirrorBox.m0.a.a.InterfaceC0091a
    public final void b(int i, View view) {
        if (i == 1) {
            cn.manstep.phonemirrorBox.x0.g gVar = this.A;
            if (gVar != null) {
                gVar.t();
                return;
            }
            return;
        }
        if (i == 2) {
            cn.manstep.phonemirrorBox.x0.g gVar2 = this.A;
            if (gVar2 != null) {
                gVar2.C();
                return;
            }
            return;
        }
        if (i == 3) {
            cn.manstep.phonemirrorBox.x0.g gVar3 = this.A;
            if (gVar3 != null) {
                gVar3.C();
                return;
            }
            return;
        }
        if (i == 4) {
            cn.manstep.phonemirrorBox.x0.g gVar4 = this.A;
            if (gVar4 != null) {
                gVar4.O(view);
                return;
            }
            return;
        }
        if (i == 6) {
            cn.manstep.phonemirrorBox.x0.g gVar5 = this.A;
            if (gVar5 != null) {
                gVar5.N(view);
                return;
            }
            return;
        }
        if (i != 7) {
            return;
        }
        cn.manstep.phonemirrorBox.x0.g gVar6 = this.A;
        if (gVar6 != null) {
            gVar6.r(view);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00be  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void n() {
        long j;
        int iE;
        int i;
        String str;
        String str2;
        String strE;
        int iE2;
        String strE2;
        synchronized (this) {
            j = this.M;
            this.M = 0L;
        }
        cn.manstep.phonemirrorBox.x0.g gVar = this.A;
        int i2 = 0;
        if ((63 & j) != 0) {
            long j2 = j & 49;
            if (j2 != 0) {
                androidx.lifecycle.o<String> oVarX = gVar != null ? gVar.x() : null;
                J(0, oVarX);
                strE = oVarX != null ? oVarX.e() : null;
                boolean z = (strE != null ? strE.length() : 0) > 0;
                if (j2 != 0) {
                    j |= z ? 128L : 64L;
                }
                i = z ? 0 : 8;
            } else {
                i = 0;
                strE = null;
            }
            if ((j & 50) != 0) {
                androidx.lifecycle.o<Integer> oVarU = gVar != null ? gVar.u() : null;
                J(1, oVarU);
                iE2 = ViewDataBinding.E(oVarU != null ? oVarU.e() : null);
            } else {
                iE2 = 0;
            }
            if ((j & 52) == 0) {
                strE2 = null;
                if ((j & 56) == 0) {
                    androidx.lifecycle.o<Integer> oVarY = gVar != null ? gVar.y() : null;
                    J(3, oVarY);
                    iE = ViewDataBinding.E(oVarY != null ? oVarY.e() : null);
                    i2 = iE2;
                    str = strE2;
                    str2 = strE;
                } else {
                    i2 = iE2;
                    str = strE2;
                    str2 = strE;
                    iE = 0;
                }
            } else {
                androidx.lifecycle.o<String> oVarV = gVar != null ? gVar.v() : null;
                J(2, oVarV);
                if (oVarV != null) {
                    strE2 = oVarV.e();
                }
                if ((j & 56) == 0) {
                }
            }
        } else {
            iE = 0;
            i = 0;
            str = null;
            str2 = null;
        }
        if ((32 & j) != 0) {
            this.v.setOnClickListener(this.F);
            this.w.setOnClickListener(this.I);
            this.x.setOnClickListener(this.L);
            this.y.setOnClickListener(this.J);
            this.D.setOnClickListener(this.H);
            this.E.setOnClickListener(this.K);
            cn.manstep.phonemirrorBox.t.b(this.z, this.G);
        }
        if ((50 & j) != 0) {
            cn.manstep.phonemirrorBox.t.a(this.x, i2);
        }
        if ((49 & j) != 0) {
            androidx.databinding.j.b.b(this.C, str2);
            this.C.setVisibility(i);
        }
        if ((j & 52) != 0) {
            androidx.databinding.j.b.b(this.D, str);
        }
        if ((j & 56) != 0) {
            cn.manstep.phonemirrorBox.t.a(this.E, iE);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.M != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        if (i == 0) {
            return R((androidx.lifecycle.o) obj, i2);
        }
        if (i == 1) {
            return P((androidx.lifecycle.o) obj, i2);
        }
        if (i == 2) {
            return Q((androidx.lifecycle.o) obj, i2);
        }
        if (i != 3) {
            return false;
        }
        return S((androidx.lifecycle.o) obj, i2);
    }

    private p(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 4, (ImageView) objArr[11], (TextView) objArr[8], (Button) objArr[2], (FrameLayout) objArr[10], (ImageView) objArr[3], (ImageView) objArr[7], (TextView) objArr[9], (AutoFitTextView) objArr[6]);
        this.M = -1L;
        this.v.setTag(null);
        this.w.setTag(null);
        this.x.setTag(null);
        this.y.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.B = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.C = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) objArr[4];
        this.D = textView2;
        textView2.setTag(null);
        CustomImageView customImageView = (CustomImageView) objArr[5];
        this.E = customImageView;
        customImageView.setTag(null);
        this.z.setTag(null);
        H(view);
        this.F = new cn.manstep.phonemirrorBox.m0.a.a(this, 7);
        this.G = new cn.manstep.phonemirrorBox.m0.a.c(this, 5);
        this.H = new cn.manstep.phonemirrorBox.m0.a.a(this, 3);
        this.I = new cn.manstep.phonemirrorBox.m0.a.a(this, 1);
        this.J = new cn.manstep.phonemirrorBox.m0.a.a(this, 6);
        this.K = new cn.manstep.phonemirrorBox.m0.a.a(this, 4);
        this.L = new cn.manstep.phonemirrorBox.m0.a.a(this, 2);
        O();
    }
}
