package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.m0.a.a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f extends e implements a.InterfaceC0091a {
    private static final ViewDataBinding.g B0 = null;
    private static final SparseIntArray C0;
    private final RadioButton A;
    private long A0;
    private final RadioButton B;
    private final RadioButton C;
    private final RadioButton D;
    private final RadioButton E;
    private final RadioButton F;
    private final CustomImageView G;
    private final RadioButton H;
    private final TextView I;
    private final RadioButton J;
    private final CustomImageView K;
    private final RadioButton L;
    private final RadioButton M;
    private final LinearLayout N;
    private final RadioButton O;
    private final RadioButton P;
    private final ImageView Q;
    private final AppCompatButton R;
    private final ImageView S;
    private final TextView T;
    private final ImageView U;
    private final TextView V;
    private final ImageView W;
    private final RadioButton X;
    private final RadioButton Y;
    private final View.OnClickListener Z;
    private final View.OnClickListener a0;
    private final View.OnClickListener b0;
    private final View.OnClickListener c0;
    private final View.OnClickListener d0;
    private final View.OnClickListener e0;
    private final View.OnClickListener f0;
    private final View.OnClickListener g0;
    private final View.OnClickListener h0;
    private final View.OnClickListener i0;
    private final View.OnClickListener j0;
    private final View.OnClickListener k0;
    private final View.OnClickListener l0;
    private final View.OnClickListener m0;
    private final View.OnClickListener n0;
    private final View.OnClickListener o0;
    private final View.OnClickListener p0;
    private final View.OnClickListener q0;
    private final View.OnClickListener r0;
    private final View.OnClickListener s0;
    private final View.OnClickListener t0;
    private final View.OnClickListener u0;
    private final View.OnClickListener v0;
    private final ConstraintLayout w;
    private final View.OnClickListener w0;
    private final ImageView x;
    private final View.OnClickListener x0;
    private final RadioButton y;
    private final View.OnClickListener y0;
    private final RadioButton z;
    private final View.OnClickListener z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        C0 = sparseIntArray;
        sparseIntArray.put(2131296880, 29);
        C0.put(2131296370, 30);
        C0.put(2131296591, 31);
        C0.put(2131296934, 32);
        C0.put(2131296935, 33);
    }

    public f(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 34, B0, C0));
    }

    private boolean O(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 128;
        }
        return true;
    }

    private boolean P(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 16;
        }
        return true;
    }

    private boolean Q(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 512;
        }
        return true;
    }

    private boolean R(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 256;
        }
        return true;
    }

    private boolean S(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 8;
        }
        return true;
    }

    private boolean T(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 1;
        }
        return true;
    }

    private boolean U(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 2;
        }
        return true;
    }

    private boolean V(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 4;
        }
        return true;
    }

    private boolean W(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 32;
        }
        return true;
    }

    private boolean X(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 64;
        }
        return true;
    }

    private boolean Y(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 1024;
        }
        return true;
    }

    private boolean Z(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 2048;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.i0.e
    public void L(cn.manstep.phonemirrorBox.x0.i iVar) {
        this.v = iVar;
        synchronized (this) {
            this.A0 |= 8192;
        }
        d(5);
        super.D();
    }

    @Override // cn.manstep.phonemirrorBox.i0.e
    public void M(cn.manstep.phonemirrorBox.x0.k kVar) {
    }

    public void N() {
        synchronized (this) {
            this.A0 = 16384L;
        }
        D();
    }

    @Override // cn.manstep.phonemirrorBox.m0.a.a.InterfaceC0091a
    public final void b(int i, View view) {
        switch (i) {
            case 1:
                cn.manstep.phonemirrorBox.x0.i iVar = this.v;
                if (iVar != null) {
                    iVar.S();
                }
                break;
            case 2:
                cn.manstep.phonemirrorBox.x0.i iVar2 = this.v;
                if (iVar2 != null) {
                    iVar2.M();
                }
                break;
            case 3:
                cn.manstep.phonemirrorBox.x0.i iVar3 = this.v;
                if (iVar3 != null) {
                    iVar3.M();
                }
                break;
            case 4:
                cn.manstep.phonemirrorBox.x0.i iVar4 = this.v;
                if (iVar4 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar = iVar4.y;
                    if (mVar != null) {
                        mVar.q();
                    }
                }
                break;
            case 5:
                cn.manstep.phonemirrorBox.x0.i iVar5 = this.v;
                if (iVar5 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar2 = iVar5.y;
                    if (mVar2 != null) {
                        mVar2.q();
                    }
                }
                break;
            case 6:
                cn.manstep.phonemirrorBox.x0.i iVar6 = this.v;
                if (iVar6 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar3 = iVar6.y;
                    if (mVar3 != null) {
                        mVar3.t();
                    }
                }
                break;
            case 7:
                cn.manstep.phonemirrorBox.x0.i iVar7 = this.v;
                if (iVar7 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar4 = iVar7.y;
                    if (mVar4 != null) {
                        mVar4.t();
                    }
                }
                break;
            case 8:
                cn.manstep.phonemirrorBox.x0.i iVar8 = this.v;
                if (iVar8 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar5 = iVar8.y;
                    if (mVar5 != null) {
                        mVar5.v(24);
                    }
                }
                break;
            case 9:
                cn.manstep.phonemirrorBox.x0.i iVar9 = this.v;
                if (iVar9 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar6 = iVar9.y;
                    if (mVar6 != null) {
                        mVar6.v(5);
                    }
                }
                break;
            case 10:
                cn.manstep.phonemirrorBox.x0.i iVar10 = this.v;
                if (iVar10 != null) {
                    iVar10.I(true);
                }
                break;
            case 11:
                cn.manstep.phonemirrorBox.x0.i iVar11 = this.v;
                if (iVar11 != null) {
                    iVar11.I(false);
                }
                break;
            case 12:
                cn.manstep.phonemirrorBox.x0.i iVar12 = this.v;
                if (iVar12 != null) {
                    iVar12.B(true);
                }
                break;
            case 13:
                cn.manstep.phonemirrorBox.x0.i iVar13 = this.v;
                if (iVar13 != null) {
                    iVar13.B(false);
                }
                break;
            case 14:
                cn.manstep.phonemirrorBox.x0.i iVar14 = this.v;
                if (iVar14 != null) {
                    iVar14.O(true);
                }
                break;
            case 15:
                cn.manstep.phonemirrorBox.x0.i iVar15 = this.v;
                if (iVar15 != null) {
                    iVar15.O(false);
                }
                break;
            case 16:
                cn.manstep.phonemirrorBox.x0.i iVar16 = this.v;
                if (iVar16 != null) {
                    iVar16.G(true);
                }
                break;
            case 17:
                cn.manstep.phonemirrorBox.x0.i iVar17 = this.v;
                if (iVar17 != null) {
                    iVar17.G(false);
                }
                break;
            case 18:
                cn.manstep.phonemirrorBox.x0.i iVar18 = this.v;
                if (iVar18 != null) {
                    iVar18.T(view, this.G.getResources().getString(2131689507));
                }
                break;
            case 19:
                cn.manstep.phonemirrorBox.x0.i iVar19 = this.v;
                if (iVar19 != null) {
                    iVar19.J(true);
                }
                break;
            case 20:
                cn.manstep.phonemirrorBox.x0.i iVar20 = this.v;
                if (iVar20 != null) {
                    iVar20.J(false);
                }
                break;
            case 21:
                cn.manstep.phonemirrorBox.x0.i iVar21 = this.v;
                if (iVar21 != null) {
                    iVar21.T(view, this.K.getResources().getString(2131689576));
                }
                break;
            case 22:
                cn.manstep.phonemirrorBox.x0.i iVar22 = this.v;
                if (iVar22 != null) {
                    iVar22.H(true);
                }
                break;
            case 23:
                cn.manstep.phonemirrorBox.x0.i iVar23 = this.v;
                if (iVar23 != null) {
                    iVar23.H(false);
                }
                break;
            case 24:
                cn.manstep.phonemirrorBox.x0.i iVar24 = this.v;
                if (iVar24 != null) {
                    iVar24.D(0);
                }
                break;
            case 25:
                cn.manstep.phonemirrorBox.x0.i iVar25 = this.v;
                if (iVar25 != null) {
                    iVar25.D(1);
                }
                break;
            case 26:
                cn.manstep.phonemirrorBox.x0.i iVar26 = this.v;
                if (iVar26 != null) {
                    iVar26.k();
                }
                break;
            case 27:
                cn.manstep.phonemirrorBox.x0.i iVar27 = this.v;
                if (iVar27 != null) {
                    iVar27.R(view);
                }
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0060 A[PHI: r2
      0x0060: PHI (r2v3 long) = (r2v0 long), (r2v8 long) binds: [B:9:0x002e, B:23:0x005b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0140  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void n() {
        long j;
        String str;
        String str2;
        String str3;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean zF;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean zF2;
        int i;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        int i2;
        boolean z17;
        boolean zF3;
        String strE;
        String strE2;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        long j2;
        boolean z22;
        boolean z23;
        String strValueOf;
        String str4;
        boolean zF4;
        boolean z24;
        boolean z25;
        boolean zF5;
        boolean zF6;
        long j3;
        androidx.lifecycle.o<Boolean> oVarP;
        androidx.lifecycle.o<Boolean> oVarQ;
        int i3;
        androidx.lifecycle.o<Boolean> oVarL;
        androidx.lifecycle.o<Integer> oVarX;
        synchronized (this) {
            j = this.A0;
            this.A0 = 0L;
        }
        cn.manstep.phonemirrorBox.x0.i iVar = this.v;
        if ((28671 & j) != 0) {
            long j4 = j & 24577;
            if (j4 == 0) {
                i2 = 0;
                if ((j & 24578) == 0) {
                    androidx.lifecycle.o<Boolean> oVarT = iVar != null ? iVar.t() : null;
                    J(1, oVarT);
                    Boolean boolE = oVarT != null ? oVarT.e() : null;
                    zF3 = ViewDataBinding.F(boolE);
                    z17 = boolE == Boolean.FALSE;
                } else {
                    z17 = false;
                    zF3 = false;
                }
                if ((j & 27712) == 0) {
                    cn.manstep.phonemirrorBox.x0.m mVar = iVar != null ? iVar.y : null;
                    if ((j & 24640) == 0) {
                        strE = null;
                        if ((j & 25600) == 0) {
                            strE2 = null;
                            if ((j & 26624) == 0) {
                                androidx.lifecycle.o<Integer> oVarO = mVar != null ? mVar.o() : null;
                                J(11, oVarO);
                                int iE = ViewDataBinding.E(oVarO != null ? oVarO.e() : null);
                                z19 = iE == 5;
                                z18 = iE != 5;
                            }
                            if ((j & 24580) == 0) {
                                androidx.lifecycle.o<Boolean> oVarU = iVar != null ? iVar.u() : null;
                                J(2, oVarU);
                                Boolean boolE2 = oVarU != null ? oVarU.e() : null;
                                z8 = boolE2 == Boolean.FALSE;
                                zF = ViewDataBinding.F(boolE2);
                            } else {
                                zF = false;
                                z8 = false;
                            }
                            if ((j & 24584) == 0) {
                                androidx.lifecycle.o<Boolean> oVarR = iVar != null ? iVar.r() : null;
                                J(3, oVarR);
                                Boolean boolE3 = oVarR != null ? oVarR.e() : null;
                                zF2 = ViewDataBinding.F(boolE3);
                                z20 = boolE3 == Boolean.FALSE;
                            } else {
                                z20 = false;
                                zF2 = false;
                            }
                            if ((j & 24592) == 0) {
                                androidx.lifecycle.o<Integer> oVarN = iVar != null ? iVar.n() : null;
                                J(4, oVarN);
                                int iE2 = ViewDataBinding.E(oVarN != null ? oVarN.e() : null);
                                z22 = iE2 == 0;
                                z21 = iE2 == 1;
                                j2 = 24608;
                            } else {
                                z21 = false;
                                j2 = 24608;
                                z22 = false;
                            }
                            if ((j & j2) == 0) {
                                if (iVar != null) {
                                    z23 = z20;
                                    oVarX = iVar.x();
                                } else {
                                    z23 = z20;
                                    oVarX = null;
                                }
                                J(5, oVarX);
                                strValueOf = String.valueOf(ViewDataBinding.E(oVarX != null ? oVarX.e() : null));
                            } else {
                                z23 = z20;
                                strValueOf = null;
                            }
                            if ((j & 24704) == 0) {
                                if (iVar != null) {
                                    oVarL = iVar.l();
                                    str4 = strValueOf;
                                } else {
                                    str4 = strValueOf;
                                    oVarL = null;
                                }
                                J(7, oVarL);
                                Boolean boolE4 = oVarL != null ? oVarL.e() : null;
                                z7 = boolE4 == Boolean.FALSE;
                                zF4 = ViewDataBinding.F(boolE4);
                            } else {
                                str4 = strValueOf;
                                zF4 = false;
                                z7 = false;
                            }
                            if ((j & 24832) == 0) {
                                if (iVar != null) {
                                    z25 = z21;
                                    i3 = 8;
                                    z24 = zF4;
                                    oVarQ = iVar.q();
                                } else {
                                    z24 = zF4;
                                    z25 = z21;
                                    oVarQ = null;
                                    i3 = 8;
                                }
                                J(i3, oVarQ);
                                zF5 = ViewDataBinding.F(oVarQ != null ? oVarQ.e() : null);
                                zF6 = ViewDataBinding.F(Boolean.valueOf(!zF5));
                            } else {
                                z24 = zF4;
                                z25 = z21;
                                zF5 = false;
                                zF6 = false;
                            }
                            if ((j & 25088) == 0) {
                                if (iVar != null) {
                                    oVarP = iVar.p();
                                    j3 = j;
                                } else {
                                    j3 = j;
                                    oVarP = null;
                                }
                                J(9, oVarP);
                                Boolean boolE5 = oVarP != null ? oVarP.e() : null;
                                boolean zF7 = ViewDataBinding.F(boolE5);
                                boolean z26 = boolE5 == Boolean.FALSE;
                                i = i2;
                                str2 = strE;
                                z = z17;
                                z13 = z18;
                                str3 = strE2;
                                z14 = z19;
                                z12 = z25;
                                z6 = zF3;
                                z11 = z22;
                                z5 = z26;
                                str = str4;
                                z4 = zF7;
                                z9 = zF5;
                                z10 = zF6;
                                z3 = z23;
                                z2 = z24;
                                j = j3;
                            } else {
                                i = i2;
                                str2 = strE;
                                z = z17;
                                z13 = z18;
                                str3 = strE2;
                                z14 = z19;
                                z12 = z25;
                                z6 = zF3;
                                z11 = z22;
                                str = str4;
                                z4 = false;
                                z5 = false;
                                z9 = zF5;
                                z10 = zF6;
                                z3 = z23;
                                z2 = z24;
                            }
                        } else {
                            androidx.lifecycle.o<String> oVarN2 = mVar != null ? mVar.n() : null;
                            J(10, oVarN2);
                            if (oVarN2 != null) {
                                strE2 = oVarN2.e();
                            }
                            if ((j & 26624) == 0) {
                            }
                            if ((j & 24580) == 0) {
                            }
                            if ((j & 24584) == 0) {
                            }
                            if ((j & 24592) == 0) {
                            }
                            if ((j & j2) == 0) {
                            }
                            if ((j & 24704) == 0) {
                            }
                            if ((j & 24832) == 0) {
                            }
                            if ((j & 25088) == 0) {
                            }
                        }
                    } else {
                        androidx.lifecycle.o<String> oVarL2 = mVar != null ? mVar.l() : null;
                        J(6, oVarL2);
                        if (oVarL2 != null) {
                            strE = oVarL2.e();
                        }
                        if ((j & 25600) == 0) {
                        }
                    }
                } else {
                    strE = null;
                    strE2 = null;
                }
                z18 = false;
                z19 = false;
                if ((j & 24580) == 0) {
                }
                if ((j & 24584) == 0) {
                }
                if ((j & 24592) == 0) {
                }
                if ((j & j2) == 0) {
                }
                if ((j & 24704) == 0) {
                }
                if ((j & 24832) == 0) {
                }
                if ((j & 25088) == 0) {
                }
            } else {
                androidx.lifecycle.o<Boolean> oVarS = iVar != null ? iVar.s() : null;
                J(0, oVarS);
                boolean zF8 = ViewDataBinding.F(oVarS != null ? oVarS.e() : null);
                if (j4 != 0) {
                    j |= zF8 ? 65536L : 32768L;
                }
                if (zF8) {
                    i2 = 8;
                }
                if ((j & 24578) == 0) {
                }
                if ((j & 27712) == 0) {
                }
                z18 = false;
                z19 = false;
                if ((j & 24580) == 0) {
                }
                if ((j & 24584) == 0) {
                }
                if ((j & 24592) == 0) {
                }
                if ((j & j2) == 0) {
                }
                if ((j & 24704) == 0) {
                }
                if ((j & 24832) == 0) {
                }
                if ((j & 25088) == 0) {
                }
            }
        } else {
            str = null;
            str2 = null;
            str3 = null;
            z = false;
            z2 = false;
            z3 = false;
            z4 = false;
            z5 = false;
            z6 = false;
            z7 = false;
            zF = false;
            z8 = false;
            z9 = false;
            z10 = false;
            zF2 = false;
            i = 0;
            z11 = false;
            z12 = false;
            z13 = false;
            z14 = false;
        }
        if ((j & 16384) != 0) {
            z16 = z10;
            z15 = z9;
            this.x.setOnClickListener(this.m0);
            this.y.setOnClickListener(this.u0);
            this.z.setOnClickListener(this.Z);
            this.A.setOnClickListener(this.g0);
            this.B.setOnClickListener(this.s0);
            this.C.setOnClickListener(this.x0);
            this.D.setOnClickListener(this.e0);
            this.E.setOnClickListener(this.j0);
            this.F.setOnClickListener(this.q0);
            this.G.setOnClickListener(this.v0);
            this.H.setOnClickListener(this.b0);
            this.I.setOnClickListener(this.z0);
            this.J.setOnClickListener(this.h0);
            this.K.setOnClickListener(this.o0);
            this.L.setOnClickListener(this.t0);
            this.M.setOnClickListener(this.f0);
            this.O.setOnClickListener(this.l0);
            this.P.setOnClickListener(this.r0);
            this.Q.setOnClickListener(this.y0);
            this.R.setOnClickListener(this.c0);
            this.S.setOnClickListener(this.d0);
            this.T.setOnClickListener(this.k0);
            this.U.setOnClickListener(this.p0);
            this.V.setOnClickListener(this.w0);
            this.W.setOnClickListener(this.a0);
            this.X.setOnClickListener(this.i0);
            this.Y.setOnClickListener(this.n0);
        } else {
            z15 = z9;
            z16 = z10;
        }
        if ((j & 24578) != 0) {
            androidx.databinding.j.a.a(this.y, z6);
            androidx.databinding.j.a.a(this.z, z);
        }
        if ((j & 24704) != 0) {
            androidx.databinding.j.a.a(this.A, z2);
            androidx.databinding.j.a.a(this.B, z7);
        }
        if ((j & 24584) != 0) {
            androidx.databinding.j.a.a(this.C, zF2);
            androidx.databinding.j.a.a(this.D, z3);
        }
        if ((j & 25088) != 0) {
            androidx.databinding.j.a.a(this.E, z4);
            androidx.databinding.j.a.a(this.F, z5);
        }
        if ((j & 24580) != 0) {
            androidx.databinding.j.a.a(this.H, zF);
            androidx.databinding.j.a.a(this.J, z8);
        }
        if ((24608 & j) != 0) {
            androidx.databinding.j.b.b(this.I, str);
        }
        if ((24832 & j) != 0) {
            androidx.databinding.j.a.a(this.L, z15);
            androidx.databinding.j.a.a(this.M, z16);
        }
        if ((j & 24577) != 0) {
            this.N.setVisibility(i);
        }
        if ((j & 24592) != 0) {
            androidx.databinding.j.a.a(this.O, z11);
            androidx.databinding.j.a.a(this.P, z12);
        }
        if ((j & 24640) != 0) {
            androidx.databinding.j.b.b(this.T, str2);
        }
        if ((25600 & j) != 0) {
            androidx.databinding.j.b.b(this.V, str3);
        }
        if ((j & 26624) != 0) {
            androidx.databinding.j.a.a(this.X, z13);
            androidx.databinding.j.a.a(this.Y, z14);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.A0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return T((androidx.lifecycle.o) obj, i2);
            case 1:
                return U((androidx.lifecycle.o) obj, i2);
            case 2:
                return V((androidx.lifecycle.o) obj, i2);
            case 3:
                return S((androidx.lifecycle.o) obj, i2);
            case 4:
                return P((androidx.lifecycle.o) obj, i2);
            case 5:
                return W((androidx.lifecycle.o) obj, i2);
            case 6:
                return X((androidx.lifecycle.o) obj, i2);
            case 7:
                return O((androidx.lifecycle.o) obj, i2);
            case 8:
                return R((androidx.lifecycle.o) obj, i2);
            case 9:
                return Q((androidx.lifecycle.o) obj, i2);
            case 10:
                return Y((androidx.lifecycle.o) obj, i2);
            case 11:
                return Z((androidx.lifecycle.o) obj, i2);
            default:
                return false;
        }
    }

    private f(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 12, (Button) objArr[30], (RelativeLayout) objArr[31], (RelativeLayout) objArr[29], (View) objArr[32], (View) objArr[33]);
        this.A0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.w = constraintLayout;
        constraintLayout.setTag(null);
        ImageView imageView = (ImageView) objArr[1];
        this.x = imageView;
        imageView.setTag(null);
        RadioButton radioButton = (RadioButton) objArr[10];
        this.y = radioButton;
        radioButton.setTag(null);
        RadioButton radioButton2 = (RadioButton) objArr[11];
        this.z = radioButton2;
        radioButton2.setTag(null);
        RadioButton radioButton3 = (RadioButton) objArr[12];
        this.A = radioButton3;
        radioButton3.setTag(null);
        RadioButton radioButton4 = (RadioButton) objArr[13];
        this.B = radioButton4;
        radioButton4.setTag(null);
        RadioButton radioButton5 = (RadioButton) objArr[14];
        this.C = radioButton5;
        radioButton5.setTag(null);
        RadioButton radioButton6 = (RadioButton) objArr[15];
        this.D = radioButton6;
        radioButton6.setTag(null);
        RadioButton radioButton7 = (RadioButton) objArr[16];
        this.E = radioButton7;
        radioButton7.setTag(null);
        RadioButton radioButton8 = (RadioButton) objArr[17];
        this.F = radioButton8;
        radioButton8.setTag(null);
        CustomImageView customImageView = (CustomImageView) objArr[18];
        this.G = customImageView;
        customImageView.setTag(null);
        RadioButton radioButton9 = (RadioButton) objArr[19];
        this.H = radioButton9;
        radioButton9.setTag(null);
        TextView textView = (TextView) objArr[2];
        this.I = textView;
        textView.setTag(null);
        RadioButton radioButton10 = (RadioButton) objArr[20];
        this.J = radioButton10;
        radioButton10.setTag(null);
        CustomImageView customImageView2 = (CustomImageView) objArr[21];
        this.K = customImageView2;
        customImageView2.setTag(null);
        RadioButton radioButton11 = (RadioButton) objArr[22];
        this.L = radioButton11;
        radioButton11.setTag(null);
        RadioButton radioButton12 = (RadioButton) objArr[23];
        this.M = radioButton12;
        radioButton12.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[24];
        this.N = linearLayout;
        linearLayout.setTag(null);
        RadioButton radioButton13 = (RadioButton) objArr[25];
        this.O = radioButton13;
        radioButton13.setTag(null);
        RadioButton radioButton14 = (RadioButton) objArr[26];
        this.P = radioButton14;
        radioButton14.setTag(null);
        ImageView imageView2 = (ImageView) objArr[27];
        this.Q = imageView2;
        imageView2.setTag(null);
        AppCompatButton appCompatButton = (AppCompatButton) objArr[28];
        this.R = appCompatButton;
        appCompatButton.setTag(null);
        ImageView imageView3 = (ImageView) objArr[3];
        this.S = imageView3;
        imageView3.setTag(null);
        TextView textView2 = (TextView) objArr[4];
        this.T = textView2;
        textView2.setTag(null);
        ImageView imageView4 = (ImageView) objArr[5];
        this.U = imageView4;
        imageView4.setTag(null);
        TextView textView3 = (TextView) objArr[6];
        this.V = textView3;
        textView3.setTag(null);
        ImageView imageView5 = (ImageView) objArr[7];
        this.W = imageView5;
        imageView5.setTag(null);
        RadioButton radioButton15 = (RadioButton) objArr[8];
        this.X = radioButton15;
        radioButton15.setTag(null);
        RadioButton radioButton16 = (RadioButton) objArr[9];
        this.Y = radioButton16;
        radioButton16.setTag(null);
        H(view);
        this.Z = new cn.manstep.phonemirrorBox.m0.a.a(this, 11);
        this.a0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 7);
        this.b0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 19);
        this.c0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 27);
        this.d0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 3);
        this.e0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 15);
        this.f0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 23);
        this.g0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 12);
        this.h0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 20);
        this.i0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 8);
        this.j0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 16);
        this.k0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 4);
        this.l0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 24);
        this.m0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 1);
        this.n0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 9);
        this.o0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 21);
        this.p0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 5);
        this.q0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 17);
        this.r0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 25);
        this.s0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 13);
        this.t0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 22);
        this.u0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 10);
        this.v0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 18);
        this.w0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 6);
        this.x0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 14);
        this.y0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 26);
        this.z0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 2);
        N();
    }
}
