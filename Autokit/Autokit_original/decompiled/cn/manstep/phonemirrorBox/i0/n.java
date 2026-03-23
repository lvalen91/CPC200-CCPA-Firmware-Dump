package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.m0.a.a;
import cn.manstep.phonemirrorBox.widget.WaveformView;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class n extends m implements a.InterfaceC0091a {
    private static final ViewDataBinding.g B0 = null;
    private static final SparseIntArray C0;
    private long A0;
    private final ConstraintLayout M;
    private final TextView N;
    private final LinearLayout O;
    private final RadioButton P;
    private final RadioButton Q;
    private final RadioButton R;
    private final RadioButton S;
    private final SwitchCompat T;
    private final SwitchCompat U;
    private final SwitchCompat V;
    private final TextView W;
    private final TextView X;
    private final LinearLayout Y;
    private final TextView Z;
    private final ImageView a0;
    private final LinearLayout b0;
    private final LinearLayout c0;
    private final LinearLayout d0;
    private final Button e0;
    private final TextView f0;
    private final TextView g0;
    private final TextView h0;
    private final LinearLayout i0;
    private final TextView j0;
    private final LinearLayout k0;
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
    private final View.OnClickListener w0;
    private final View.OnClickListener x0;
    private final View.OnClickListener y0;
    private final View.OnClickListener z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        C0 = sparseIntArray;
        sparseIntArray.put(2131296880, 29);
        C0.put(2131296370, 30);
        C0.put(2131296591, 31);
        C0.put(2131296934, 32);
        C0.put(2131296935, 33);
        C0.put(2131296475, 34);
        C0.put(2131296476, 35);
        C0.put(2131296810, 36);
        C0.put(2131296814, 37);
        C0.put(2131296815, 38);
        C0.put(2131296456, 39);
        C0.put(2131296464, 40);
        C0.put(2131296463, 41);
        C0.put(2131296513, 42);
        C0.put(2131296398, 43);
        C0.put(2131296541, 44);
        C0.put(2131296446, 45);
    }

    public n(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 46, B0, C0));
    }

    private boolean Q(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 32768;
        }
        return true;
    }

    private boolean R(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 2;
        }
        return true;
    }

    private boolean S(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 1;
        }
        return true;
    }

    private boolean T(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 2048;
        }
        return true;
    }

    private boolean U(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 8192;
        }
        return true;
    }

    private boolean V(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 8;
        }
        return true;
    }

    private boolean W(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 16;
        }
        return true;
    }

    private boolean X(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 1024;
        }
        return true;
    }

    private boolean Y(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 512;
        }
        return true;
    }

    private boolean Z(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 4;
        }
        return true;
    }

    private boolean a0(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 128;
        }
        return true;
    }

    private boolean b0(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 256;
        }
        return true;
    }

    private boolean c0(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 16384;
        }
        return true;
    }

    private boolean d0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 4096;
        }
        return true;
    }

    private boolean e0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 32;
        }
        return true;
    }

    private boolean f0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.A0 |= 64;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.i0.m
    public void L(cn.manstep.phonemirrorBox.x0.d dVar) {
        this.J = dVar;
        synchronized (this) {
            this.A0 |= 131072;
        }
        d(1);
        super.D();
    }

    @Override // cn.manstep.phonemirrorBox.i0.m
    public void M(cn.manstep.phonemirrorBox.x0.e eVar) {
        this.I = eVar;
        synchronized (this) {
            this.A0 |= 524288;
        }
        d(3);
        super.D();
    }

    @Override // cn.manstep.phonemirrorBox.i0.m
    public void N(cn.manstep.phonemirrorBox.x0.i iVar) {
        this.K = iVar;
        synchronized (this) {
            this.A0 |= 262144;
        }
        d(6);
        super.D();
    }

    @Override // cn.manstep.phonemirrorBox.i0.m
    public void O(cn.manstep.phonemirrorBox.x0.k kVar) {
        this.L = kVar;
        synchronized (this) {
            this.A0 |= 65536;
        }
        d(7);
        super.D();
    }

    public void P() {
        synchronized (this) {
            this.A0 = 1048576L;
        }
        D();
    }

    @Override // cn.manstep.phonemirrorBox.m0.a.a.InterfaceC0091a
    public final void b(int i, View view) {
        switch (i) {
            case 1:
                cn.manstep.phonemirrorBox.x0.k kVar = this.L;
                if (kVar != null) {
                    kVar.g0(4);
                }
                break;
            case 2:
                cn.manstep.phonemirrorBox.x0.k kVar2 = this.L;
                if (kVar2 != null) {
                    kVar2.g0(1);
                }
                break;
            case 3:
                cn.manstep.phonemirrorBox.x0.k kVar3 = this.L;
                if (kVar3 != null) {
                    kVar3.g0(5);
                }
                break;
            case 4:
                cn.manstep.phonemirrorBox.x0.k kVar4 = this.L;
                if (kVar4 != null) {
                    kVar4.g0(3);
                }
                break;
            case 5:
                cn.manstep.phonemirrorBox.x0.i iVar = this.K;
                if (iVar != null) {
                    iVar.P(view);
                }
                break;
            case 6:
                cn.manstep.phonemirrorBox.x0.i iVar2 = this.K;
                if (iVar2 != null) {
                    iVar2.Q(view);
                }
                break;
            case 7:
                cn.manstep.phonemirrorBox.x0.e eVar = this.I;
                if (eVar != null) {
                    eVar.F(view);
                }
                break;
            case 8:
                cn.manstep.phonemirrorBox.x0.e eVar2 = this.I;
                if (eVar2 != null) {
                    eVar2.G(view);
                }
                break;
            case 9:
                cn.manstep.phonemirrorBox.x0.e eVar3 = this.I;
                if (eVar3 != null) {
                    eVar3.C(view);
                }
                break;
            case 10:
                cn.manstep.phonemirrorBox.x0.e eVar4 = this.I;
                if (eVar4 != null) {
                    eVar4.l();
                }
                break;
            case 11:
                cn.manstep.phonemirrorBox.x0.e eVar5 = this.I;
                if (eVar5 != null) {
                    eVar5.j();
                }
                break;
            case 12:
                cn.manstep.phonemirrorBox.x0.e eVar6 = this.I;
                if (eVar6 != null) {
                    eVar6.B();
                }
                break;
            case 13:
                cn.manstep.phonemirrorBox.x0.e eVar7 = this.I;
                if (eVar7 != null) {
                    eVar7.k();
                }
                break;
            case 14:
                cn.manstep.phonemirrorBox.x0.e eVar8 = this.I;
                if (eVar8 != null) {
                    eVar8.J();
                }
                break;
            case 15:
                cn.manstep.phonemirrorBox.x0.e eVar9 = this.I;
                if (eVar9 != null) {
                    eVar9.K();
                }
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f8 A[PHI: r2
      0x00f8: PHI (r2v2 long) = (r2v1 long), (r2v15 long) binds: [B:54:0x00c1, B:72:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x016a  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void n() {
        long j;
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i2;
        boolean zF;
        String str;
        String str2;
        String str3;
        String str4;
        String strE;
        String str5;
        String str6;
        String str7;
        String str8;
        boolean z5;
        boolean z6;
        int i3;
        int i4;
        String str9;
        String strE2;
        String strE3;
        String strE4;
        boolean zF2;
        String strE5;
        long j2;
        boolean z7;
        String strE6;
        int i5;
        String str10;
        boolean zF3;
        boolean z8;
        String strE7;
        String str11;
        String strE8;
        long j3;
        String str12;
        int i6;
        androidx.lifecycle.o<Boolean> oVarQ;
        androidx.lifecycle.o<String> oVarP;
        androidx.lifecycle.o<String> oVarU;
        androidx.lifecycle.o<Boolean> oVarV;
        androidx.lifecycle.o<String> oVarY;
        long j4;
        boolean z9;
        boolean z10;
        boolean z11;
        synchronized (this) {
            j = this.A0;
            this.A0 = 0L;
        }
        cn.manstep.phonemirrorBox.x0.k kVar = this.L;
        cn.manstep.phonemirrorBox.x0.d dVar = this.J;
        cn.manstep.phonemirrorBox.x0.i iVar = this.K;
        cn.manstep.phonemirrorBox.x0.e eVar = this.I;
        String strE9 = null;
        if ((1114208 & j) != 0) {
            if ((j & 1114144) != 0) {
                androidx.lifecycle.o<Integer> oVarW = kVar != null ? kVar.w() : null;
                J(5, oVarW);
                int iE = ViewDataBinding.E(oVarW != null ? oVarW.e() : null);
                z9 = iE == 3;
                z10 = iE == 1;
                z11 = iE == 4;
                z = iE == 5;
                j4 = 1114176;
            } else {
                z = false;
                j4 = 1114176;
                z9 = false;
                z10 = false;
                z11 = false;
            }
            long j5 = j & j4;
            if (j5 != 0) {
                androidx.lifecycle.o<Boolean> oVarI = kVar != null ? kVar.I() : null;
                J(6, oVarI);
                boolean zF4 = ViewDataBinding.F(oVarI != null ? oVarI.e() : null);
                if (j5 != 0) {
                    j |= zF4 ? 4194304L : 2097152L;
                }
                i = zF4 ? 8 : 0;
                z2 = z9;
                z3 = z10;
                z4 = z11;
            } else {
                z2 = z9;
                z3 = z10;
                z4 = z11;
                i = 0;
            }
        } else {
            i = 0;
            z = false;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        long j6 = j & 1212416;
        if (j6 == 0) {
            i2 = 0;
        } else {
            androidx.lifecycle.o<Integer> oVarV2 = dVar != null ? dVar.v() : null;
            J(15, oVarV2);
            boolean z12 = ViewDataBinding.E(oVarV2 != null ? oVarV2.e() : null) == 0;
            if (j6 != 0) {
                j |= z12 ? 67108864L : 33554432L;
            }
            if (z12) {
                i2 = 8;
            }
        }
        if ((j & 1314816) != 0) {
            androidx.lifecycle.o<Boolean> oVarY2 = iVar != null ? iVar.y() : null;
            J(12, oVarY2);
            zF = ViewDataBinding.F(oVarY2 != null ? oVarY2.e() : null);
        } else {
            zF = false;
        }
        if ((1601439 & j) == 0) {
            str = null;
            str2 = null;
            str3 = null;
            str4 = null;
            strE = null;
            str5 = null;
            str6 = null;
            str7 = null;
            str8 = null;
            z5 = false;
            z6 = false;
            i3 = 0;
            i4 = 0;
        } else if ((j & 1572865) == 0) {
            strE = null;
            if ((j & 1572866) == 0) {
                strE2 = null;
                if ((j & 1572868) == 0) {
                    strE3 = null;
                    if ((j & 1572872) == 0) {
                        strE4 = null;
                        if ((j & 1572880) == 0) {
                            androidx.lifecycle.o<Boolean> oVarT = eVar != null ? eVar.t() : null;
                            J(4, oVarT);
                            zF2 = ViewDataBinding.F(oVarT != null ? oVarT.e() : null);
                        } else {
                            zF2 = false;
                        }
                        if ((j & 1572992) == 0) {
                            strE5 = null;
                            j2 = j & 1573120;
                            if (j2 == 0) {
                                if (eVar != null) {
                                    oVarY = eVar.y();
                                    z7 = zF2;
                                } else {
                                    z7 = zF2;
                                    oVarY = null;
                                }
                                J(8, oVarY);
                                strE6 = oVarY != null ? oVarY.e() : null;
                                boolean z13 = (strE6 != null ? strE6.length() : 0) > 0;
                                if (j2 != 0) {
                                    j |= z13 ? 268435456L : 134217728L;
                                }
                                if (!z13) {
                                    i5 = 8;
                                }
                                if ((j & 1573376) != 0) {
                                    if (eVar != null) {
                                        str10 = strE5;
                                        oVarV = eVar.v();
                                    } else {
                                        str10 = strE5;
                                        oVarV = null;
                                    }
                                    J(9, oVarV);
                                    zF3 = ViewDataBinding.F(oVarV != null ? oVarV.e() : null);
                                } else {
                                    str10 = strE5;
                                    zF3 = false;
                                }
                                if ((j & 1573888) != 0) {
                                    if (eVar != null) {
                                        oVarU = eVar.u();
                                        z8 = zF3;
                                    } else {
                                        z8 = zF3;
                                        oVarU = null;
                                    }
                                    J(10, oVarU);
                                    if (oVarU != null) {
                                        strE7 = oVarU.e();
                                    }
                                    if ((j & 1574912) == 0) {
                                        if (eVar != null) {
                                            oVarP = eVar.p();
                                            str11 = strE7;
                                        } else {
                                            str11 = strE7;
                                            oVarP = null;
                                        }
                                        J(11, oVarP);
                                        if (oVarP != null) {
                                            strE8 = oVarP.e();
                                        }
                                        j3 = j & 1581056;
                                        if (j3 != 0) {
                                            if (eVar != null) {
                                                oVarQ = eVar.q();
                                                str12 = strE8;
                                            } else {
                                                str12 = strE8;
                                                oVarQ = null;
                                            }
                                            J(13, oVarQ);
                                            boolean zF5 = ViewDataBinding.F(oVarQ != null ? oVarQ.e() : null);
                                            if (j3 != 0) {
                                                j |= zF5 ? 16777216L : 8388608L;
                                            }
                                            if (!zF5) {
                                                i6 = 8;
                                            }
                                            if ((1589248 & j) != 0) {
                                                androidx.lifecycle.o<String> oVarZ = eVar != null ? eVar.z() : null;
                                                J(14, oVarZ);
                                                if (oVarZ != null) {
                                                    strE9 = oVarZ.e();
                                                }
                                            }
                                            str5 = strE3;
                                            str6 = strE4;
                                            str8 = strE6;
                                            z5 = z7;
                                            str7 = strE9;
                                            str2 = str10;
                                            z6 = z8;
                                            str3 = str11;
                                            str = str12;
                                            str4 = strE2;
                                            i3 = i6;
                                            i4 = i5;
                                        } else {
                                            str12 = strE8;
                                        }
                                        i6 = 0;
                                        if ((1589248 & j) != 0) {
                                        }
                                        str5 = strE3;
                                        str6 = strE4;
                                        str8 = strE6;
                                        z5 = z7;
                                        str7 = strE9;
                                        str2 = str10;
                                        z6 = z8;
                                        str3 = str11;
                                        str = str12;
                                        str4 = strE2;
                                        i3 = i6;
                                        i4 = i5;
                                    } else {
                                        str11 = strE7;
                                    }
                                    strE8 = null;
                                    j3 = j & 1581056;
                                    if (j3 != 0) {
                                    }
                                    i6 = 0;
                                    if ((1589248 & j) != 0) {
                                    }
                                    str5 = strE3;
                                    str6 = strE4;
                                    str8 = strE6;
                                    z5 = z7;
                                    str7 = strE9;
                                    str2 = str10;
                                    z6 = z8;
                                    str3 = str11;
                                    str = str12;
                                    str4 = strE2;
                                    i3 = i6;
                                    i4 = i5;
                                } else {
                                    z8 = zF3;
                                }
                                strE7 = null;
                                if ((j & 1574912) == 0) {
                                }
                                strE8 = null;
                                j3 = j & 1581056;
                                if (j3 != 0) {
                                }
                                i6 = 0;
                                if ((1589248 & j) != 0) {
                                }
                                str5 = strE3;
                                str6 = strE4;
                                str8 = strE6;
                                z5 = z7;
                                str7 = strE9;
                                str2 = str10;
                                z6 = z8;
                                str3 = str11;
                                str = str12;
                                str4 = strE2;
                                i3 = i6;
                                i4 = i5;
                            } else {
                                z7 = zF2;
                                strE6 = null;
                            }
                            i5 = 0;
                            if ((j & 1573376) != 0) {
                            }
                            if ((j & 1573888) != 0) {
                            }
                            strE7 = null;
                            if ((j & 1574912) == 0) {
                            }
                            strE8 = null;
                            j3 = j & 1581056;
                            if (j3 != 0) {
                            }
                            i6 = 0;
                            if ((1589248 & j) != 0) {
                            }
                            str5 = strE3;
                            str6 = strE4;
                            str8 = strE6;
                            z5 = z7;
                            str7 = strE9;
                            str2 = str10;
                            z6 = z8;
                            str3 = str11;
                            str = str12;
                            str4 = strE2;
                            i3 = i6;
                            i4 = i5;
                        } else {
                            androidx.lifecycle.o<String> oVarX = eVar != null ? eVar.x() : null;
                            J(7, oVarX);
                            if (oVarX != null) {
                                strE5 = oVarX.e();
                            }
                            j2 = j & 1573120;
                            if (j2 == 0) {
                            }
                            i5 = 0;
                            if ((j & 1573376) != 0) {
                            }
                            if ((j & 1573888) != 0) {
                            }
                            strE7 = null;
                            if ((j & 1574912) == 0) {
                            }
                            strE8 = null;
                            j3 = j & 1581056;
                            if (j3 != 0) {
                            }
                            i6 = 0;
                            if ((1589248 & j) != 0) {
                            }
                            str5 = strE3;
                            str6 = strE4;
                            str8 = strE6;
                            z5 = z7;
                            str7 = strE9;
                            str2 = str10;
                            z6 = z8;
                            str3 = str11;
                            str = str12;
                            str4 = strE2;
                            i3 = i6;
                            i4 = i5;
                        }
                    } else {
                        androidx.lifecycle.o<String> oVarS = eVar != null ? eVar.s() : null;
                        J(3, oVarS);
                        if (oVarS != null) {
                            strE4 = oVarS.e();
                        }
                        if ((j & 1572880) == 0) {
                        }
                        if ((j & 1572992) == 0) {
                        }
                    }
                } else {
                    androidx.lifecycle.o<String> oVarW2 = eVar != null ? eVar.w() : null;
                    J(2, oVarW2);
                    if (oVarW2 != null) {
                        strE3 = oVarW2.e();
                    }
                    if ((j & 1572872) == 0) {
                    }
                }
            } else {
                androidx.lifecycle.o<String> oVarM = eVar != null ? eVar.m() : null;
                J(1, oVarM);
                if (oVarM != null) {
                    strE2 = oVarM.e();
                }
                if ((j & 1572868) == 0) {
                }
            }
        } else {
            androidx.lifecycle.o<String> oVarN = eVar != null ? eVar.n() : null;
            J(0, oVarN);
            if (oVarN != null) {
                strE = oVarN.e();
            }
            if ((j & 1572866) == 0) {
            }
        }
        String str13 = str;
        if ((j & 1048576) != 0) {
            str9 = strE;
            this.w.setOnClickListener(this.q0);
            this.x.setOnClickListener(this.y0);
            this.D.setOnClickListener(this.o0);
            this.P.setOnClickListener(this.l0);
            this.Q.setOnClickListener(this.n0);
            this.R.setOnClickListener(this.r0);
            this.S.setOnClickListener(this.t0);
            this.T.setOnClickListener(this.m0);
            this.U.setOnClickListener(this.z0);
            this.V.setOnClickListener(this.u0);
            this.a0.setOnClickListener(this.w0);
            this.b0.setOnClickListener(this.p0);
            this.c0.setOnClickListener(this.s0);
            this.d0.setOnClickListener(this.v0);
            this.e0.setOnClickListener(this.x0);
        } else {
            str9 = strE;
        }
        if ((j & 1581056) != 0) {
            this.w.setVisibility(i3);
        }
        if ((j & 1572880) != 0) {
            androidx.databinding.j.a.a(this.x, z5);
        }
        if ((j & 1314816) != 0) {
            androidx.databinding.j.a.a(this.D, zF);
        }
        if ((j & 1572992) != 0) {
            androidx.databinding.j.b.b(this.N, str2);
        }
        if ((1114176 & j) != 0) {
            this.O.setVisibility(i);
        }
        if ((1114144 & j) != 0) {
            androidx.databinding.j.a.a(this.P, z4);
            androidx.databinding.j.a.a(this.Q, z3);
            androidx.databinding.j.a.a(this.R, z);
            androidx.databinding.j.a.a(this.S, z2);
        }
        if ((j & 1573376) != 0) {
            androidx.databinding.j.a.a(this.U, z6);
        }
        if ((j & 1573888) != 0) {
            androidx.databinding.j.b.b(this.W, str3);
        }
        if ((j & 1572866) != 0) {
            androidx.databinding.j.b.b(this.X, str4);
        }
        if ((j & 1212416) != 0) {
            this.Y.setVisibility(i2);
            this.i0.setVisibility(i2);
        }
        if ((j & 1572865) != 0) {
            androidx.databinding.j.b.b(this.Z, str9);
        }
        if ((1574912 & j) != 0) {
            androidx.databinding.j.b.b(this.f0, str13);
        }
        if ((j & 1572868) != 0) {
            androidx.databinding.j.b.b(this.g0, str5);
        }
        if ((j & 1572872) != 0) {
            androidx.databinding.j.b.b(this.h0, str6);
        }
        if ((1589248 & j) != 0) {
            androidx.databinding.j.b.b(this.j0, str7);
        }
        if ((j & 1573120) != 0) {
            this.k0.setVisibility(i4);
            androidx.databinding.j.b.b(this.H, str8);
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
                return S((androidx.lifecycle.o) obj, i2);
            case 1:
                return R((androidx.lifecycle.o) obj, i2);
            case 2:
                return Z((androidx.lifecycle.o) obj, i2);
            case 3:
                return V((androidx.lifecycle.o) obj, i2);
            case 4:
                return W((androidx.lifecycle.o) obj, i2);
            case 5:
                return e0((androidx.lifecycle.o) obj, i2);
            case 6:
                return f0((androidx.lifecycle.o) obj, i2);
            case 7:
                return a0((androidx.lifecycle.o) obj, i2);
            case 8:
                return b0((androidx.lifecycle.o) obj, i2);
            case 9:
                return Y((androidx.lifecycle.o) obj, i2);
            case 10:
                return X((androidx.lifecycle.o) obj, i2);
            case 11:
                return T((androidx.lifecycle.o) obj, i2);
            case 12:
                return d0((androidx.lifecycle.o) obj, i2);
            case 13:
                return U((androidx.lifecycle.o) obj, i2);
            case 14:
                return c0((androidx.lifecycle.o) obj, i2);
            case 15:
                return Q((androidx.lifecycle.o) obj, i2);
            default:
                return false;
        }
    }

    private n(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 16, (ImageView) objArr[30], (Button) objArr[28], (SwitchCompat) objArr[17], (LinearLayout) objArr[43], (WaveformView) objArr[45], (LinearLayout) objArr[39], (TextView) objArr[41], (SeekBar) objArr[40], (LinearLayout) objArr[34], (TextView) objArr[35], (SwitchCompat) objArr[16], (LinearLayout) objArr[42], (LinearLayout) objArr[44], (RelativeLayout) objArr[31], (LinearLayout) objArr[36], (SeekBar) objArr[37], (TextView) objArr[38], (RelativeLayout) objArr[29], (TextView) objArr[9], (View) objArr[32], (View) objArr[33]);
        this.A0 = -1L;
        this.w.setTag(null);
        this.x.setTag(null);
        this.D.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.M = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.N = textView;
        textView.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[10];
        this.O = linearLayout;
        linearLayout.setTag(null);
        RadioButton radioButton = (RadioButton) objArr[11];
        this.P = radioButton;
        radioButton.setTag(null);
        RadioButton radioButton2 = (RadioButton) objArr[12];
        this.Q = radioButton2;
        radioButton2.setTag(null);
        RadioButton radioButton3 = (RadioButton) objArr[13];
        this.R = radioButton3;
        radioButton3.setTag(null);
        RadioButton radioButton4 = (RadioButton) objArr[14];
        this.S = radioButton4;
        radioButton4.setTag(null);
        SwitchCompat switchCompat = (SwitchCompat) objArr[15];
        this.T = switchCompat;
        switchCompat.setTag(null);
        SwitchCompat switchCompat2 = (SwitchCompat) objArr[18];
        this.U = switchCompat2;
        switchCompat2.setTag(null);
        SwitchCompat switchCompat3 = (SwitchCompat) objArr[19];
        this.V = switchCompat3;
        switchCompat3.setTag(null);
        TextView textView2 = (TextView) objArr[2];
        this.W = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) objArr[20];
        this.X = textView3;
        textView3.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[21];
        this.Y = linearLayout2;
        linearLayout2.setTag(null);
        TextView textView4 = (TextView) objArr[22];
        this.Z = textView4;
        textView4.setTag(null);
        ImageView imageView = (ImageView) objArr[23];
        this.a0 = imageView;
        imageView.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) objArr[24];
        this.b0 = linearLayout3;
        linearLayout3.setTag(null);
        LinearLayout linearLayout4 = (LinearLayout) objArr[25];
        this.c0 = linearLayout4;
        linearLayout4.setTag(null);
        LinearLayout linearLayout5 = (LinearLayout) objArr[26];
        this.d0 = linearLayout5;
        linearLayout5.setTag(null);
        Button button = (Button) objArr[27];
        this.e0 = button;
        button.setTag(null);
        TextView textView5 = (TextView) objArr[3];
        this.f0 = textView5;
        textView5.setTag(null);
        TextView textView6 = (TextView) objArr[4];
        this.g0 = textView6;
        textView6.setTag(null);
        TextView textView7 = (TextView) objArr[5];
        this.h0 = textView7;
        textView7.setTag(null);
        LinearLayout linearLayout6 = (LinearLayout) objArr[6];
        this.i0 = linearLayout6;
        linearLayout6.setTag(null);
        TextView textView8 = (TextView) objArr[7];
        this.j0 = textView8;
        textView8.setTag(null);
        LinearLayout linearLayout7 = (LinearLayout) objArr[8];
        this.k0 = linearLayout7;
        linearLayout7.setTag(null);
        this.H.setTag(null);
        H(view);
        this.l0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 1);
        this.m0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 5);
        this.n0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 2);
        this.o0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 6);
        this.p0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 11);
        this.q0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 15);
        this.r0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 3);
        this.s0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 12);
        this.t0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 4);
        this.u0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 9);
        this.v0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 13);
        this.w0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 10);
        this.x0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 14);
        this.y0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 7);
        this.z0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 8);
        P();
    }
}
