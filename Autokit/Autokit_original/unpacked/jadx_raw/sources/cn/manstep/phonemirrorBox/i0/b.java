package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.m0.a.a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b extends a implements a.InterfaceC0091a {
    private static final ViewDataBinding.g M0 = null;
    private static final SparseIntArray N0;
    private final RadioButton A;
    private final View.OnClickListener A0;
    private final RadioButton B;
    private final View.OnClickListener B0;
    private final RadioButton C;
    private final View.OnClickListener C0;
    private final ConstraintLayout D;
    private final View.OnClickListener D0;
    private final RadioButton E;
    private final View.OnClickListener E0;
    private final RadioButton F;
    private final View.OnClickListener F0;
    private final TextView G;
    private final View.OnClickListener G0;
    private final CustomImageView H;
    private final View.OnClickListener H0;
    private final TextView I;
    private final View.OnClickListener I0;
    private final CustomImageView J;
    private final View.OnClickListener J0;
    private final RadioButton K;
    private final View.OnClickListener K0;
    private final RadioButton L;
    private long L0;
    private final RadioButton M;
    private final RadioButton N;
    private final RadioButton O;
    private final RadioButton P;
    private final RadioButton Q;
    private final RadioButton R;
    private final RadioButton S;
    private final RadioButton T;
    private final RadioButton U;
    private final RadioButton V;
    private final RadioButton W;
    private final RadioButton X;
    private final CustomImageView Y;
    private final RadioButton Z;
    private final RadioButton a0;
    private final RadioButton b0;
    private final RadioButton c0;
    private final RadioButton d0;
    private final RadioButton e0;
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
    private final View.OnClickListener w0;
    private final View.OnClickListener x0;
    private final View.OnClickListener y0;
    private final TextView z;
    private final View.OnClickListener z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        N0 = sparseIntArray;
        sparseIntArray.put(2131296564, 34);
        N0.put(2131296382, 35);
        N0.put(2131296871, 36);
        N0.put(2131296758, 37);
        N0.put(2131296737, 38);
        N0.put(2131296350, 39);
        N0.put(2131296508, 40);
        N0.put(2131296675, 41);
        N0.put(2131296682, 42);
        N0.put(2131296680, 43);
        N0.put(2131296943, 44);
        N0.put(2131296946, 45);
        N0.put(2131296944, 46);
        N0.put(2131296352, 47);
        N0.put(2131296351, 48);
        N0.put(2131296728, 49);
        N0.put(2131296727, 50);
        N0.put(2131296948, 51);
        N0.put(2131296674, 52);
        N0.put(2131296673, 53);
        N0.put(2131296684, 54);
        N0.put(2131296681, 55);
        N0.put(2131296947, 56);
        N0.put(2131296945, 57);
        N0.put(2131296633, 58);
        N0.put(2131296634, 59);
        N0.put(2131296632, 60);
        N0.put(2131296636, 61);
        N0.put(2131296635, 62);
        N0.put(2131296502, 63);
        N0.put(2131296730, 64);
        N0.put(2131296729, 65);
        N0.put(2131296579, 66);
        N0.put(2131296925, 67);
        N0.put(2131296556, 68);
        N0.put(2131296378, 69);
        N0.put(2131296848, 70);
        N0.put(2131296384, 71);
        N0.put(2131296693, 72);
    }

    public b(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 73, M0, N0));
    }

    private boolean O(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 32;
        }
        return true;
    }

    private boolean P(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 4096;
        }
        return true;
    }

    private boolean Q(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 16384;
        }
        return true;
    }

    private boolean R(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 8;
        }
        return true;
    }

    private boolean S(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 256;
        }
        return true;
    }

    private boolean T(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 128;
        }
        return true;
    }

    private boolean U(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 2;
        }
        return true;
    }

    private boolean V(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 2048;
        }
        return true;
    }

    private boolean W(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 1;
        }
        return true;
    }

    private boolean X(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 512;
        }
        return true;
    }

    private boolean Y(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 64;
        }
        return true;
    }

    private boolean Z(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 4;
        }
        return true;
    }

    private boolean a0(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 16;
        }
        return true;
    }

    private boolean b0(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 1024;
        }
        return true;
    }

    private boolean c0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 32768;
        }
        return true;
    }

    private boolean d0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.L0 |= 8192;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.i0.a
    public void L(cn.manstep.phonemirrorBox.x0.i iVar) {
        this.y = iVar;
        synchronized (this) {
            this.L0 |= 131072;
        }
        d(5);
        super.D();
    }

    @Override // cn.manstep.phonemirrorBox.i0.a
    public void M(cn.manstep.phonemirrorBox.x0.k kVar) {
        this.x = kVar;
        synchronized (this) {
            this.L0 |= 65536;
        }
        d(7);
        super.D();
    }

    public void N() {
        synchronized (this) {
            this.L0 = 262144L;
        }
        D();
    }

    @Override // cn.manstep.phonemirrorBox.m0.a.a.InterfaceC0091a
    public final void b(int i, View view) {
        switch (i) {
            case 1:
                cn.manstep.phonemirrorBox.x0.i iVar = this.y;
                if (iVar != null) {
                    iVar.N();
                }
                break;
            case 2:
                cn.manstep.phonemirrorBox.x0.i iVar2 = this.y;
                if (iVar2 != null) {
                    iVar2.N();
                }
                break;
            case 3:
                cn.manstep.phonemirrorBox.x0.i iVar3 = this.y;
                if (iVar3 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar = iVar3.y;
                    if (mVar != null) {
                        mVar.v(24);
                    }
                }
                break;
            case 4:
                cn.manstep.phonemirrorBox.x0.i iVar4 = this.y;
                if (iVar4 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar2 = iVar4.y;
                    if (mVar2 != null) {
                        mVar2.v(5);
                    }
                }
                break;
            case 5:
                cn.manstep.phonemirrorBox.x0.i iVar5 = this.y;
                if (iVar5 != null) {
                    iVar5.O(true);
                }
                break;
            case 6:
                cn.manstep.phonemirrorBox.x0.i iVar6 = this.y;
                if (iVar6 != null) {
                    iVar6.O(false);
                }
                break;
            case 7:
                cn.manstep.phonemirrorBox.x0.i iVar7 = this.y;
                if (iVar7 != null) {
                    iVar7.I(true);
                }
                break;
            case 8:
                cn.manstep.phonemirrorBox.x0.i iVar8 = this.y;
                if (iVar8 != null) {
                    iVar8.I(false);
                }
                break;
            case 9:
                cn.manstep.phonemirrorBox.x0.i iVar9 = this.y;
                if (iVar9 != null) {
                    iVar9.K(false);
                }
                break;
            case 10:
                cn.manstep.phonemirrorBox.x0.i iVar10 = this.y;
                if (iVar10 != null) {
                    iVar10.K(true);
                }
                break;
            case 11:
                cn.manstep.phonemirrorBox.x0.i iVar11 = this.y;
                if (iVar11 != null) {
                    iVar11.H(true);
                }
                break;
            case 12:
                cn.manstep.phonemirrorBox.x0.i iVar12 = this.y;
                if (iVar12 != null) {
                    iVar12.H(false);
                }
                break;
            case 13:
                cn.manstep.phonemirrorBox.x0.i iVar13 = this.y;
                if (iVar13 != null) {
                    iVar13.D(0);
                }
                break;
            case 14:
                cn.manstep.phonemirrorBox.x0.i iVar14 = this.y;
                if (iVar14 != null) {
                    iVar14.D(1);
                }
                break;
            case 15:
                cn.manstep.phonemirrorBox.x0.i iVar15 = this.y;
                if (iVar15 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar3 = iVar15.y;
                    if (mVar3 != null) {
                        mVar3.r();
                    }
                }
                break;
            case 16:
                cn.manstep.phonemirrorBox.x0.i iVar16 = this.y;
                if (iVar16 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar4 = iVar16.y;
                    if (mVar4 != null) {
                        mVar4.r();
                    }
                }
                break;
            case 17:
                cn.manstep.phonemirrorBox.x0.i iVar17 = this.y;
                if (iVar17 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar5 = iVar17.y;
                    if (mVar5 != null) {
                        mVar5.u();
                    }
                }
                break;
            case 18:
                cn.manstep.phonemirrorBox.x0.i iVar18 = this.y;
                if (iVar18 != null) {
                    cn.manstep.phonemirrorBox.x0.m mVar6 = iVar18.y;
                    if (mVar6 != null) {
                        mVar6.u();
                    }
                }
                break;
            case 19:
                cn.manstep.phonemirrorBox.x0.i iVar19 = this.y;
                if (iVar19 != null) {
                    iVar19.B(true);
                }
                break;
            case 20:
                cn.manstep.phonemirrorBox.x0.i iVar20 = this.y;
                if (iVar20 != null) {
                    iVar20.B(false);
                }
                break;
            case 21:
                cn.manstep.phonemirrorBox.x0.i iVar21 = this.y;
                if (iVar21 != null) {
                    iVar21.z(view);
                }
                break;
            case 22:
                cn.manstep.phonemirrorBox.x0.i iVar22 = this.y;
                if (iVar22 != null) {
                    iVar22.z(view);
                }
                break;
            case 23:
                cn.manstep.phonemirrorBox.x0.i iVar23 = this.y;
                if (iVar23 != null) {
                    iVar23.G(true);
                }
                break;
            case 24:
                cn.manstep.phonemirrorBox.x0.i iVar24 = this.y;
                if (iVar24 != null) {
                    iVar24.G(false);
                }
                break;
            case 25:
                cn.manstep.phonemirrorBox.x0.i iVar25 = this.y;
                if (iVar25 != null) {
                    iVar25.E(0);
                }
                break;
            case 26:
                cn.manstep.phonemirrorBox.x0.i iVar26 = this.y;
                if (iVar26 != null) {
                    iVar26.E(2);
                }
                break;
            case 27:
                cn.manstep.phonemirrorBox.x0.k kVar = this.x;
                if (kVar != null) {
                    kVar.z0(0, view);
                }
                break;
            case 28:
                cn.manstep.phonemirrorBox.x0.k kVar2 = this.x;
                if (kVar2 != null) {
                    kVar2.z0(2, view);
                }
                break;
            case 29:
                cn.manstep.phonemirrorBox.x0.k kVar3 = this.x;
                if (kVar3 != null) {
                    kVar3.z0(1, view);
                }
                break;
            case 30:
                cn.manstep.phonemirrorBox.x0.i iVar27 = this.y;
                if (iVar27 != null) {
                    iVar27.L(true);
                }
                break;
            case 31:
                cn.manstep.phonemirrorBox.x0.i iVar28 = this.y;
                if (iVar28 != null) {
                    iVar28.L(false);
                }
                break;
            case 32:
                cn.manstep.phonemirrorBox.x0.i iVar29 = this.y;
                if (iVar29 != null) {
                    iVar29.R(view);
                }
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0550  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0577  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0587  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0592  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x05a2  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x05ad  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0629  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x063d  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:310:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x014a  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void n() {
        long j;
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        boolean z4;
        boolean z5;
        long j2;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        int i2;
        boolean z10;
        String strE;
        String strE2;
        String str;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        boolean z23;
        boolean z24;
        boolean z25;
        boolean z26;
        boolean z27;
        boolean z28;
        boolean z29;
        boolean z30;
        boolean zF;
        boolean z31;
        boolean z32;
        boolean z33;
        boolean zF2;
        boolean z34;
        boolean z35;
        String strValueOf;
        String str2;
        boolean z36;
        boolean z37;
        boolean z38;
        boolean z39;
        boolean zF3;
        boolean zF4;
        boolean z40;
        boolean z41;
        boolean zF5;
        boolean zF6;
        boolean z42;
        boolean z43;
        boolean zF7;
        boolean zF8;
        boolean z44;
        boolean z45;
        boolean z46;
        boolean zF9;
        boolean z47;
        boolean z48;
        boolean z49;
        long j3;
        boolean z50;
        boolean z51;
        boolean zF10;
        boolean zF11;
        long j4;
        androidx.lifecycle.o<Integer> oVarN;
        androidx.lifecycle.o<Boolean> oVarS;
        androidx.lifecycle.o<Boolean> oVarV;
        androidx.lifecycle.o<Boolean> oVarP;
        int i3;
        androidx.lifecycle.o<Boolean> oVarQ;
        androidx.lifecycle.o<Boolean> oVarW;
        androidx.lifecycle.o<Boolean> oVarL;
        int i4;
        androidx.lifecycle.o<Integer> oVarO;
        int i5;
        androidx.lifecycle.o<Integer> oVarX;
        int i6;
        androidx.lifecycle.o<Boolean> oVarR;
        synchronized (this) {
            j = this.L0;
            this.L0 = 0L;
        }
        cn.manstep.phonemirrorBox.x0.k kVar = this.x;
        cn.manstep.phonemirrorBox.x0.i iVar = this.y;
        if ((j & 335872) != 0) {
            androidx.lifecycle.o<Integer> oVarQ2 = kVar != null ? kVar.Q() : null;
            J(13, oVarQ2);
            int iE = ViewDataBinding.E(oVarQ2 != null ? oVarQ2.e() : null);
            z2 = iE == 1;
            z3 = iE == 0;
            z = iE == 2;
        } else {
            z = false;
            z2 = false;
            z3 = false;
        }
        long j5 = j & 262144;
        if (j5 != 0) {
            boolean z52 = cn.manstep.phonemirrorBox.x0.k.S;
            if (j5 != 0) {
                j |= z52 ? 1048576L : 524288L;
            }
            i = z52 ? 0 : 8;
        } else {
            i = 0;
        }
        if ((j & 450559) != 0) {
            if ((j & 393217) != 0) {
                androidx.lifecycle.o<Boolean> oVarT = iVar != null ? iVar.t() : null;
                J(0, oVarT);
                Boolean boolE = oVarT != null ? oVarT.e() : null;
                z31 = boolE == Boolean.FALSE;
                zF = ViewDataBinding.F(boolE);
            } else {
                zF = false;
                z31 = false;
            }
            if ((j & 427024) != 0) {
                cn.manstep.phonemirrorBox.x0.m mVar = iVar != null ? iVar.y : null;
                if ((j & 393232) == 0) {
                    strE = null;
                    if ((j & 394240) == 0) {
                        strE2 = null;
                        if ((j & 425984) == 0) {
                            androidx.lifecycle.o<Integer> oVarO2 = mVar != null ? mVar.o() : null;
                            J(15, oVarO2);
                            int iE2 = ViewDataBinding.E(oVarO2 != null ? oVarO2.e() : null);
                            z33 = iE2 == 5;
                            z32 = iE2 != 5;
                        }
                        if ((j & 393218) != 0) {
                            if (iVar != null) {
                                oVarR = iVar.r();
                                i6 = 1;
                            } else {
                                i6 = 1;
                                oVarR = null;
                            }
                            J(i6, oVarR);
                            Boolean boolE2 = oVarR != null ? oVarR.e() : null;
                            z34 = boolE2 == Boolean.FALSE;
                            zF2 = ViewDataBinding.F(boolE2);
                        } else {
                            zF2 = false;
                            z34 = false;
                        }
                        if ((j & 393220) != 0) {
                            if (iVar != null) {
                                oVarX = iVar.x();
                                z35 = zF2;
                                i5 = 2;
                            } else {
                                z35 = zF2;
                                i5 = 2;
                                oVarX = null;
                            }
                            J(i5, oVarX);
                            strValueOf = String.valueOf(ViewDataBinding.E(oVarX != null ? oVarX.e() : null));
                        } else {
                            z35 = zF2;
                            strValueOf = null;
                        }
                        if ((j & 393224) != 0) {
                            if (iVar != null) {
                                oVarO = iVar.o();
                                str2 = strValueOf;
                            } else {
                                str2 = strValueOf;
                                oVarO = null;
                            }
                            J(3, oVarO);
                            int iE3 = ViewDataBinding.E(oVarO != null ? oVarO.e() : null);
                            z37 = iE3 == 2;
                            z36 = iE3 == 0;
                        } else {
                            str2 = strValueOf;
                            z36 = false;
                            z37 = false;
                        }
                        if ((j & 393248) != 0) {
                            if (iVar != null) {
                                z39 = z34;
                                i4 = 5;
                                z38 = z36;
                                oVarL = iVar.l();
                            } else {
                                z38 = z36;
                                z39 = z34;
                                oVarL = null;
                                i4 = 5;
                            }
                            J(i4, oVarL);
                            zF3 = ViewDataBinding.F(oVarL != null ? oVarL.e() : null);
                            zF4 = ViewDataBinding.F(Boolean.valueOf(!zF3));
                        } else {
                            z38 = z36;
                            z39 = z34;
                            zF3 = false;
                            zF4 = false;
                        }
                        if ((j & 393280) != 0) {
                            if (iVar != null) {
                                z41 = zF4;
                                z40 = zF3;
                                oVarW = iVar.w();
                            } else {
                                z40 = zF3;
                                z41 = zF4;
                                oVarW = null;
                            }
                            J(6, oVarW);
                            zF5 = ViewDataBinding.F(oVarW != null ? oVarW.e() : null);
                            zF6 = ViewDataBinding.F(Boolean.valueOf(!zF5));
                        } else {
                            z40 = zF3;
                            z41 = zF4;
                            zF5 = false;
                            zF6 = false;
                        }
                        if ((j & 393344) != 0) {
                            if (iVar != null) {
                                z43 = zF6;
                                z42 = zF5;
                                oVarQ = iVar.q();
                            } else {
                                z42 = zF5;
                                z43 = zF6;
                                oVarQ = null;
                            }
                            J(7, oVarQ);
                            zF7 = ViewDataBinding.F(oVarQ != null ? oVarQ.e() : null);
                            zF8 = ViewDataBinding.F(Boolean.valueOf(!zF7));
                        } else {
                            z42 = zF5;
                            z43 = zF6;
                            zF7 = false;
                            zF8 = false;
                        }
                        if ((j & 393472) != 0) {
                            if (iVar != null) {
                                z45 = zF8;
                                i3 = 8;
                                z44 = zF7;
                                oVarP = iVar.p();
                            } else {
                                z44 = zF7;
                                z45 = zF8;
                                oVarP = null;
                                i3 = 8;
                            }
                            J(i3, oVarP);
                            Boolean boolE3 = oVarP != null ? oVarP.e() : null;
                            zF9 = ViewDataBinding.F(boolE3);
                            z46 = boolE3 == Boolean.FALSE;
                        } else {
                            z44 = zF7;
                            z45 = zF8;
                            z46 = false;
                            zF9 = false;
                        }
                        if ((j & 393728) != 0) {
                            if (iVar != null) {
                                oVarV = iVar.v();
                                z47 = z46;
                            } else {
                                z47 = z46;
                                oVarV = null;
                            }
                            J(9, oVarV);
                            Boolean boolE4 = oVarV != null ? oVarV.e() : null;
                            boolean zF12 = ViewDataBinding.F(boolE4);
                            z48 = boolE4 == Boolean.FALSE;
                            z49 = zF12;
                        } else {
                            z47 = z46;
                            z48 = false;
                            z49 = false;
                        }
                        j3 = j & 395264;
                        if (j3 != 0) {
                            if (iVar != null) {
                                z51 = z49;
                                z50 = z48;
                                oVarS = iVar.s();
                            } else {
                                z50 = z48;
                                z51 = z49;
                                oVarS = null;
                            }
                            J(11, oVarS);
                            boolean zF13 = ViewDataBinding.F(oVarS != null ? oVarS.e() : null);
                            if (j3 != 0) {
                                j |= zF13 ? 4194304L : 2097152L;
                            }
                            int i7 = zF13 ? 8 : 0;
                            if ((397312 & j) == 0) {
                                androidx.lifecycle.o<Boolean> oVarM = iVar != null ? iVar.m() : null;
                                J(12, oVarM);
                                zF10 = ViewDataBinding.F(oVarM != null ? oVarM.e() : null);
                                zF11 = ViewDataBinding.F(Boolean.valueOf(!zF10));
                            } else {
                                zF10 = false;
                                zF11 = false;
                            }
                            if ((j & 409600) == 0) {
                                if (iVar != null) {
                                    oVarN = iVar.n();
                                    j4 = j;
                                } else {
                                    j4 = j;
                                    oVarN = null;
                                }
                                J(14, oVarN);
                                int iE4 = ViewDataBinding.E(oVarN != null ? oVarN.e() : null);
                                boolean z53 = iE4 == 1;
                                z4 = z;
                                z13 = zF10;
                                z14 = zF11;
                                z25 = zF;
                                z5 = z3;
                                z19 = z32;
                                z26 = z31;
                                z18 = z37;
                                z17 = z38;
                                z24 = z39;
                                z20 = z33;
                                z23 = z35;
                                str = str2;
                                z6 = z40;
                                z10 = z41;
                                z21 = z42;
                                z22 = z43;
                                z8 = z44;
                                z15 = zF9;
                                i2 = i7;
                                z16 = z47;
                                z7 = z50;
                                z11 = z51;
                                j2 = 262144;
                                z12 = iE4 == 0;
                                j = j4;
                                boolean z54 = z2;
                                z28 = z53;
                                z9 = z45;
                                z27 = z54;
                            } else {
                                z4 = z;
                                z13 = zF10;
                                z14 = zF11;
                                z25 = zF;
                                z5 = z3;
                                z19 = z32;
                                z26 = z31;
                                z18 = z37;
                                z9 = z45;
                                z17 = z38;
                                z24 = z39;
                                z20 = z33;
                                z23 = z35;
                                str = str2;
                                z6 = z40;
                                z10 = z41;
                                z21 = z42;
                                z22 = z43;
                                z8 = z44;
                                z15 = zF9;
                                i2 = i7;
                                z16 = z47;
                                z7 = z50;
                                z11 = z51;
                                z12 = false;
                                j2 = 262144;
                            }
                        } else {
                            z50 = z48;
                            z51 = z49;
                        }
                        if ((397312 & j) == 0) {
                        }
                        if ((j & 409600) == 0) {
                        }
                    } else {
                        androidx.lifecycle.o<String> oVarN2 = mVar != null ? mVar.n() : null;
                        J(10, oVarN2);
                        if (oVarN2 != null) {
                            strE2 = oVarN2.e();
                        }
                        if ((j & 425984) == 0) {
                        }
                        if ((j & 393218) != 0) {
                        }
                        if ((j & 393220) != 0) {
                        }
                        if ((j & 393224) != 0) {
                        }
                        if ((j & 393248) != 0) {
                        }
                        if ((j & 393280) != 0) {
                        }
                        if ((j & 393344) != 0) {
                        }
                        if ((j & 393472) != 0) {
                        }
                        if ((j & 393728) != 0) {
                        }
                        j3 = j & 395264;
                        if (j3 != 0) {
                        }
                        if ((397312 & j) == 0) {
                        }
                        if ((j & 409600) == 0) {
                        }
                    }
                } else {
                    androidx.lifecycle.o<String> oVarL2 = mVar != null ? mVar.l() : null;
                    J(4, oVarL2);
                    if (oVarL2 != null) {
                        strE = oVarL2.e();
                    }
                    if ((j & 394240) == 0) {
                    }
                }
                if ((j & j2) == 0) {
                    z30 = z10;
                    z29 = z6;
                    this.z.setOnClickListener(this.n0);
                    this.A.setOnClickListener(this.H0);
                    this.B.setOnClickListener(this.w0);
                    this.C.setOnClickListener(this.z0);
                    this.E.setOnClickListener(this.q0);
                    this.F.setOnClickListener(this.s0);
                    this.G.setOnClickListener(this.g0);
                    this.H.setOnClickListener(this.j0);
                    this.I.setOnClickListener(this.C0);
                    this.J.setOnClickListener(this.J0);
                    this.K.setOnClickListener(this.x0);
                    this.L.setOnClickListener(this.G0);
                    this.M.setOnClickListener(this.D0);
                    this.N.setOnClickListener(this.I0);
                    this.O.setOnClickListener(this.v0);
                    this.P.setOnClickListener(this.A0);
                    this.Q.setOnClickListener(this.p0);
                    this.R.setOnClickListener(this.t0);
                    this.S.setOnClickListener(this.f0);
                    this.T.setOnClickListener(this.k0);
                    this.T.setVisibility(i);
                    this.U.setOnClickListener(this.K0);
                    this.V.setOnClickListener(this.E0);
                    this.W.setOnClickListener(this.i0);
                    this.X.setOnClickListener(this.o0);
                    this.Y.setOnClickListener(this.l0);
                    this.Z.setOnClickListener(this.F0);
                    this.a0.setOnClickListener(this.B0);
                    this.b0.setOnClickListener(this.y0);
                    this.c0.setOnClickListener(this.u0);
                    this.d0.setOnClickListener(this.r0);
                    this.e0.setOnClickListener(this.m0);
                    this.w.setOnClickListener(this.h0);
                } else {
                    z29 = z6;
                    z30 = z10;
                }
                if ((j & 393220) != 0) {
                    androidx.databinding.j.b.b(this.z, str);
                }
                if ((j & 393728) != 0) {
                    androidx.databinding.j.a.a(this.A, z11);
                    androidx.databinding.j.a.a(this.e0, z7);
                }
                if ((j & 393344) != 0) {
                    androidx.databinding.j.a.a(this.B, z8);
                    androidx.databinding.j.a.a(this.C, z9);
                }
                if ((j & 395264) != 0) {
                    this.D.setVisibility(i2);
                }
                if ((j & 409600) != 0) {
                    androidx.databinding.j.a.a(this.E, z12);
                    androidx.databinding.j.a.a(this.F, z28);
                }
                if ((j & 393232) != 0) {
                    androidx.databinding.j.b.b(this.G, strE);
                }
                if ((j & 394240) != 0) {
                    androidx.databinding.j.b.b(this.I, strE2);
                }
                if ((j & 393248) != 0) {
                    androidx.databinding.j.a.a(this.K, z29);
                    androidx.databinding.j.a.a(this.L, z30);
                }
                if ((397312 & j) != 0) {
                    androidx.databinding.j.a.a(this.M, z13);
                    androidx.databinding.j.a.a(this.N, z14);
                }
                if ((393472 & j) != 0) {
                    androidx.databinding.j.a.a(this.O, z15);
                    androidx.databinding.j.a.a(this.P, z16);
                }
                if ((j & 393224) != 0) {
                    androidx.databinding.j.a.a(this.Q, z17);
                    androidx.databinding.j.a.a(this.R, z18);
                }
                if ((335872 & j) != 0) {
                    androidx.databinding.j.a.a(this.S, z5);
                    androidx.databinding.j.a.a(this.T, z4);
                    androidx.databinding.j.a.a(this.V, z27);
                }
                if ((j & 425984) != 0) {
                    androidx.databinding.j.a.a(this.U, z19);
                    androidx.databinding.j.a.a(this.Z, z20);
                }
                if ((j & 393280) != 0) {
                    androidx.databinding.j.a.a(this.W, z21);
                    androidx.databinding.j.a.a(this.X, z22);
                }
                if ((j & 393218) != 0) {
                    androidx.databinding.j.a.a(this.a0, z23);
                    androidx.databinding.j.a.a(this.b0, z24);
                }
                if ((j & 393217) == 0) {
                    androidx.databinding.j.a.a(this.c0, z25);
                    androidx.databinding.j.a.a(this.d0, z26);
                    return;
                }
                return;
            }
            strE = null;
            strE2 = null;
            z32 = false;
            z33 = false;
            if ((j & 393218) != 0) {
            }
            if ((j & 393220) != 0) {
            }
            if ((j & 393224) != 0) {
            }
            if ((j & 393248) != 0) {
            }
            if ((j & 393280) != 0) {
            }
            if ((j & 393344) != 0) {
            }
            if ((j & 393472) != 0) {
            }
            if ((j & 393728) != 0) {
            }
            j3 = j & 395264;
            if (j3 != 0) {
            }
            if ((397312 & j) == 0) {
            }
            if ((j & 409600) == 0) {
            }
        } else {
            z4 = z;
            z5 = z3;
            j2 = 262144;
            z6 = false;
            z7 = false;
            z8 = false;
            z9 = false;
            i2 = 0;
            z10 = false;
            strE = null;
            strE2 = null;
            str = null;
            z11 = false;
            z12 = false;
            z13 = false;
            z14 = false;
            z15 = false;
            z16 = false;
            z17 = false;
            z18 = false;
            z19 = false;
            z20 = false;
            z21 = false;
            z22 = false;
            z23 = false;
            z24 = false;
            z25 = false;
            z26 = false;
        }
        z27 = z2;
        z28 = false;
        if ((j & j2) == 0) {
        }
        if ((j & 393220) != 0) {
        }
        if ((j & 393728) != 0) {
        }
        if ((j & 393344) != 0) {
        }
        if ((j & 395264) != 0) {
        }
        if ((j & 409600) != 0) {
        }
        if ((j & 393232) != 0) {
        }
        if ((j & 394240) != 0) {
        }
        if ((j & 393248) != 0) {
        }
        if ((397312 & j) != 0) {
        }
        if ((393472 & j) != 0) {
        }
        if ((j & 393224) != 0) {
        }
        if ((335872 & j) != 0) {
        }
        if ((j & 425984) != 0) {
        }
        if ((j & 393280) != 0) {
        }
        if ((j & 393218) != 0) {
        }
        if ((j & 393217) == 0) {
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.L0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return W((androidx.lifecycle.o) obj, i2);
            case 1:
                return U((androidx.lifecycle.o) obj, i2);
            case 2:
                return Z((androidx.lifecycle.o) obj, i2);
            case 3:
                return R((androidx.lifecycle.o) obj, i2);
            case 4:
                return a0((androidx.lifecycle.o) obj, i2);
            case 5:
                return O((androidx.lifecycle.o) obj, i2);
            case 6:
                return Y((androidx.lifecycle.o) obj, i2);
            case 7:
                return T((androidx.lifecycle.o) obj, i2);
            case 8:
                return S((androidx.lifecycle.o) obj, i2);
            case 9:
                return X((androidx.lifecycle.o) obj, i2);
            case 10:
                return b0((androidx.lifecycle.o) obj, i2);
            case 11:
                return V((androidx.lifecycle.o) obj, i2);
            case 12:
                return P((androidx.lifecycle.o) obj, i2);
            case 13:
                return d0((androidx.lifecycle.o) obj, i2);
            case 14:
                return Q((androidx.lifecycle.o) obj, i2);
            case 15:
                return c0((androidx.lifecycle.o) obj, i2);
            default:
                return false;
        }
    }

    private b(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 16, (CustomImageView) objArr[39], (CustomImageView) objArr[48], (LinearLayout) objArr[47], (CustomImageView) objArr[69], (Button) objArr[35], (CustomImageView) objArr[71], (ConstraintLayout) objArr[63], (LinearLayout) objArr[40], (CustomImageView) objArr[68], (ImageView) objArr[34], (ConstraintLayout) objArr[66], (LinearLayout) objArr[0], (ImageView) objArr[2], (TextView) objArr[62], (SeekBar) objArr[61], (CustomImageView) objArr[60], (LinearLayout) objArr[58], (TextView) objArr[59], (TextView) objArr[53], (SeekBar) objArr[52], (CustomImageView) objArr[41], (TextView) objArr[43], (TextView) objArr[55], (SeekBar) objArr[42], (SeekBar) objArr[54], (LinearLayout) objArr[72], (RadioButton) objArr[50], (RadioButton) objArr[49], (RadioButton) objArr[65], (RadioButton) objArr[64], (CustomImageView) objArr[38], (ScrollView) objArr[37], (LinearLayout) objArr[70], (TextView) objArr[36], (TextView) objArr[67], (TextView) objArr[46], (TextView) objArr[57], (SeekBar) objArr[45], (CustomImageView) objArr[44], (SeekBar) objArr[56], (LinearLayout) objArr[51]);
        this.L0 = -1L;
        this.v.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.z = textView;
        textView.setTag(null);
        RadioButton radioButton = (RadioButton) objArr[10];
        this.A = radioButton;
        radioButton.setTag(null);
        RadioButton radioButton2 = (RadioButton) objArr[11];
        this.B = radioButton2;
        radioButton2.setTag(null);
        RadioButton radioButton3 = (RadioButton) objArr[12];
        this.C = radioButton3;
        radioButton3.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[13];
        this.D = constraintLayout;
        constraintLayout.setTag(null);
        RadioButton radioButton4 = (RadioButton) objArr[14];
        this.E = radioButton4;
        radioButton4.setTag(null);
        RadioButton radioButton5 = (RadioButton) objArr[15];
        this.F = radioButton5;
        radioButton5.setTag(null);
        TextView textView2 = (TextView) objArr[16];
        this.G = textView2;
        textView2.setTag(null);
        CustomImageView customImageView = (CustomImageView) objArr[17];
        this.H = customImageView;
        customImageView.setTag(null);
        TextView textView3 = (TextView) objArr[18];
        this.I = textView3;
        textView3.setTag(null);
        CustomImageView customImageView2 = (CustomImageView) objArr[19];
        this.J = customImageView2;
        customImageView2.setTag(null);
        RadioButton radioButton6 = (RadioButton) objArr[20];
        this.K = radioButton6;
        radioButton6.setTag(null);
        RadioButton radioButton7 = (RadioButton) objArr[21];
        this.L = radioButton7;
        radioButton7.setTag(null);
        RadioButton radioButton8 = (RadioButton) objArr[22];
        this.M = radioButton8;
        radioButton8.setTag(null);
        RadioButton radioButton9 = (RadioButton) objArr[23];
        this.N = radioButton9;
        radioButton9.setTag(null);
        RadioButton radioButton10 = (RadioButton) objArr[24];
        this.O = radioButton10;
        radioButton10.setTag(null);
        RadioButton radioButton11 = (RadioButton) objArr[25];
        this.P = radioButton11;
        radioButton11.setTag(null);
        RadioButton radioButton12 = (RadioButton) objArr[26];
        this.Q = radioButton12;
        radioButton12.setTag(null);
        RadioButton radioButton13 = (RadioButton) objArr[27];
        this.R = radioButton13;
        radioButton13.setTag(null);
        RadioButton radioButton14 = (RadioButton) objArr[28];
        this.S = radioButton14;
        radioButton14.setTag(null);
        RadioButton radioButton15 = (RadioButton) objArr[29];
        this.T = radioButton15;
        radioButton15.setTag(null);
        RadioButton radioButton16 = (RadioButton) objArr[3];
        this.U = radioButton16;
        radioButton16.setTag(null);
        RadioButton radioButton17 = (RadioButton) objArr[30];
        this.V = radioButton17;
        radioButton17.setTag(null);
        RadioButton radioButton18 = (RadioButton) objArr[31];
        this.W = radioButton18;
        radioButton18.setTag(null);
        RadioButton radioButton19 = (RadioButton) objArr[32];
        this.X = radioButton19;
        radioButton19.setTag(null);
        CustomImageView customImageView3 = (CustomImageView) objArr[33];
        this.Y = customImageView3;
        customImageView3.setTag(null);
        RadioButton radioButton20 = (RadioButton) objArr[4];
        this.Z = radioButton20;
        radioButton20.setTag(null);
        RadioButton radioButton21 = (RadioButton) objArr[5];
        this.a0 = radioButton21;
        radioButton21.setTag(null);
        RadioButton radioButton22 = (RadioButton) objArr[6];
        this.b0 = radioButton22;
        radioButton22.setTag(null);
        RadioButton radioButton23 = (RadioButton) objArr[7];
        this.c0 = radioButton23;
        radioButton23.setTag(null);
        RadioButton radioButton24 = (RadioButton) objArr[8];
        this.d0 = radioButton24;
        radioButton24.setTag(null);
        RadioButton radioButton25 = (RadioButton) objArr[9];
        this.e0 = radioButton25;
        radioButton25.setTag(null);
        this.w.setTag(null);
        H(view);
        this.f0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 27);
        this.g0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 15);
        this.h0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 2);
        this.i0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 30);
        this.j0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 16);
        this.k0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 28);
        this.l0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 32);
        this.m0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 9);
        this.n0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 1);
        this.o0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 31);
        this.p0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 25);
        this.q0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 13);
        this.r0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 8);
        this.s0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 14);
        this.t0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 26);
        this.u0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 7);
        this.v0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 23);
        this.w0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 11);
        this.x0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 19);
        this.y0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 6);
        this.z0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 12);
        this.A0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 24);
        this.B0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 5);
        this.C0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 17);
        this.D0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 21);
        this.E0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 29);
        this.F0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 4);
        this.G0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 20);
        this.H0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 10);
        this.I0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 22);
        this.J0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 18);
        this.K0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 3);
        N();
    }
}
