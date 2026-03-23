package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.customview.SelectTextSettingsItem;
import cn.manstep.phonemirrorBox.m0.a.a;
import cn.manstep.phonemirrorBox.m0.a.b;
import cn.manstep.phonemirrorBox.x0.k;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class t extends s implements a.InterfaceC0091a, b.a {
    private static final ViewDataBinding.g u1 = null;
    private static final SparseIntArray v1;
    private final LinearLayout A;
    private final View.OnClickListener A0;
    private final SelectTextSettingsItem B;
    private final View.OnClickListener B0;
    private final RadioButton C;
    private final View.OnClickListener C0;
    private final RadioButton D;
    private final View.OnClickListener D0;
    private final ConstraintLayout E;
    private final View.OnClickListener E0;
    private final RadioButton F;
    private final View.OnClickListener F0;
    private final RadioButton G;
    private final View.OnClickListener G0;
    private final RadioButton H;
    private final View.OnClickListener H0;
    private final RadioButton I;
    private final View.OnClickListener I0;
    private final ConstraintLayout J;
    private final View.OnClickListener J0;
    private final RadioButton K;
    private final View.OnClickListener K0;
    private final Button L;
    private final View.OnClickListener L0;
    private final RadioButton M;
    private final View.OnClickListener M0;
    private final RadioButton N;
    private final View.OnClickListener N0;
    private final RadioButton O;
    private final View.OnClickListener O0;
    private final RadioButton P;
    private final View.OnClickListener P0;
    private final ConstraintLayout Q;
    private final View.OnClickListener Q0;
    private final RadioButton R;
    private final View.OnClickListener R0;
    private final RadioButton S;
    private final View.OnClickListener S0;
    private final RadioButton T;
    private final View.OnClickListener T0;
    private final RadioButton U;
    private final View.OnClickListener U0;
    private final ConstraintLayout V;
    private final View.OnClickListener V0;
    private final Button W;
    private final View.OnClickListener W0;
    private final RadioButton X;
    private final View.OnClickListener X0;
    private final RadioButton Y;
    private final View.OnClickListener Y0;
    private final RadioButton Z;
    private final View.OnClickListener Z0;
    private final RadioButton a0;
    private final View.OnClickListener a1;
    private final ConstraintLayout b0;
    private final View.OnClickListener b1;
    private final TextView c0;
    private final View.OnClickListener c1;
    private final RadioButton d0;
    private final k.InterfaceC0106k d1;
    private final RadioButton e0;
    private final View.OnClickListener e1;
    private final ConstraintLayout f0;
    private final View.OnClickListener f1;
    private final RadioButton g0;
    private final View.OnClickListener g1;
    private final RadioButton h0;
    private final View.OnClickListener h1;
    private final RadioButton i0;
    private final View.OnClickListener i1;
    private final RadioButton j0;
    private final View.OnClickListener j1;
    private final RadioButton k0;
    private final View.OnClickListener k1;
    private final RadioButton l0;
    private final View.OnClickListener l1;
    private final RadioButton m0;
    private final View.OnClickListener m1;
    private final RadioButton n0;
    private final View.OnClickListener n1;
    private final RadioButton o0;
    private final View.OnClickListener o1;
    private final RadioButton p0;
    private final View.OnClickListener p1;
    private final ConstraintLayout q0;
    private final View.OnClickListener q1;
    private final CustomImageView r0;
    private final View.OnClickListener r1;
    private final RadioButton s0;
    private final View.OnClickListener s1;
    private final LinearLayout t0;
    private long t1;
    private final TextView u0;
    private final RadioButton v0;
    private final RadioButton w0;
    private final RadioButton x0;
    private final SelectTextSettingsItem y0;
    private final View.OnClickListener z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        v1 = sparseIntArray;
        sparseIntArray.put(2131296758, 55);
        v1.put(2131296959, 56);
        v1.put(2131296538, 57);
        v1.put(2131296401, 58);
        v1.put(2131296441, 59);
        v1.put(2131296357, 60);
        v1.put(2131296539, 61);
        v1.put(2131296923, 62);
        v1.put(2131296373, 63);
        v1.put(2131296386, 64);
        v1.put(2131296894, 65);
        v1.put(2131296369, 66);
        v1.put(2131296896, 67);
        v1.put(2131296371, 68);
    }

    public t(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 69, u1, v1));
    }

    private boolean O(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 16384;
        }
        return true;
    }

    private boolean P(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 2048;
        }
        return true;
    }

    private boolean Q(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 524288;
        }
        return true;
    }

    private boolean R(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 1048576;
        }
        return true;
    }

    private boolean S(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 8388608;
        }
        return true;
    }

    private boolean T(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 1024;
        }
        return true;
    }

    private boolean U(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 4096;
        }
        return true;
    }

    private boolean V(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 8;
        }
        return true;
    }

    private boolean W(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 32;
        }
        return true;
    }

    private boolean X(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 512;
        }
        return true;
    }

    private boolean Y(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 4194304;
        }
        return true;
    }

    private boolean Z(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 2097152;
        }
        return true;
    }

    private boolean a0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 8192;
        }
        return true;
    }

    private boolean b0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 2;
        }
        return true;
    }

    private boolean c0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 256;
        }
        return true;
    }

    private boolean d0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 16;
        }
        return true;
    }

    private boolean e0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 128;
        }
        return true;
    }

    private boolean f0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 262144;
        }
        return true;
    }

    private boolean g0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 131072;
        }
        return true;
    }

    private boolean h0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 65536;
        }
        return true;
    }

    private boolean i0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 64;
        }
        return true;
    }

    private boolean j0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 1;
        }
        return true;
    }

    private boolean k0(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 4;
        }
        return true;
    }

    private boolean l0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.t1 |= 32768;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.i0.s
    public void L(cn.manstep.phonemirrorBox.x0.i iVar) {
    }

    @Override // cn.manstep.phonemirrorBox.i0.s
    public void M(cn.manstep.phonemirrorBox.x0.k kVar) {
        this.z = kVar;
        synchronized (this) {
            this.t1 |= 16777216;
        }
        d(7);
        super.D();
    }

    public void N() {
        synchronized (this) {
            this.t1 = 67108864L;
        }
        D();
    }

    @Override // cn.manstep.phonemirrorBox.m0.a.a.InterfaceC0091a
    public final void b(int i, View view) {
        switch (i) {
            case 1:
                cn.manstep.phonemirrorBox.x0.k kVar = this.z;
                if (kVar != null) {
                    kVar.d0();
                }
                break;
            case 2:
                cn.manstep.phonemirrorBox.x0.k kVar2 = this.z;
                if (kVar2 != null) {
                    kVar2.d0();
                }
                break;
            case 3:
                cn.manstep.phonemirrorBox.x0.k kVar3 = this.z;
                if (kVar3 != null) {
                    kVar3.s();
                }
                break;
            case 4:
                cn.manstep.phonemirrorBox.x0.k kVar4 = this.z;
                if (kVar4 != null) {
                    kVar4.u0(1);
                }
                break;
            case 5:
                cn.manstep.phonemirrorBox.x0.k kVar5 = this.z;
                if (kVar5 != null) {
                    kVar5.u0(2);
                }
                break;
            case 6:
                cn.manstep.phonemirrorBox.x0.k kVar6 = this.z;
                if (kVar6 != null) {
                    kVar6.u0(3);
                }
                break;
            case 7:
                cn.manstep.phonemirrorBox.x0.k kVar7 = this.z;
                if (kVar7 != null) {
                    kVar7.p0(1);
                }
                break;
            case 8:
                cn.manstep.phonemirrorBox.x0.k kVar8 = this.z;
                if (kVar8 != null) {
                    kVar8.p0(0);
                }
                break;
            case 9:
                cn.manstep.phonemirrorBox.x0.k kVar9 = this.z;
                if (kVar9 != null) {
                    kVar9.F0(view);
                }
                break;
            case 10:
                cn.manstep.phonemirrorBox.x0.k kVar10 = this.z;
                if (kVar10 != null) {
                    kVar10.s0(view);
                }
                break;
            case 11:
                cn.manstep.phonemirrorBox.x0.k kVar11 = this.z;
                if (kVar11 != null) {
                    kVar11.t0(2);
                }
                break;
            case 12:
                cn.manstep.phonemirrorBox.x0.k kVar12 = this.z;
                if (kVar12 != null) {
                    kVar12.t0(3);
                }
                break;
            case 13:
                cn.manstep.phonemirrorBox.x0.k kVar13 = this.z;
                if (kVar13 != null) {
                    kVar13.g0(4);
                }
                break;
            case 14:
                cn.manstep.phonemirrorBox.x0.k kVar14 = this.z;
                if (kVar14 != null) {
                    kVar14.g0(1);
                }
                break;
            case 15:
                cn.manstep.phonemirrorBox.x0.k kVar15 = this.z;
                if (kVar15 != null) {
                    kVar15.g0(2);
                }
                break;
            case 16:
                cn.manstep.phonemirrorBox.x0.k kVar16 = this.z;
                if (kVar16 != null) {
                    kVar16.g0(3);
                }
                break;
            case 17:
                cn.manstep.phonemirrorBox.x0.k kVar17 = this.z;
                if (kVar17 != null) {
                    kVar17.f0(480);
                }
                break;
            case 18:
                cn.manstep.phonemirrorBox.x0.k kVar18 = this.z;
                if (kVar18 != null) {
                    kVar18.f0(720);
                }
                break;
            case 19:
                cn.manstep.phonemirrorBox.x0.k kVar19 = this.z;
                if (kVar19 != null) {
                    kVar19.f0(1080);
                }
                break;
            case 20:
                cn.manstep.phonemirrorBox.x0.k kVar20 = this.z;
                if (kVar20 != null) {
                    kVar20.I0(1);
                }
                break;
            case 21:
                cn.manstep.phonemirrorBox.x0.k kVar21 = this.z;
                if (kVar21 != null) {
                    kVar21.I0(0);
                }
                break;
            case 22:
                cn.manstep.phonemirrorBox.x0.k kVar22 = this.z;
                if (kVar22 != null) {
                    kVar22.q0(0);
                }
                break;
            case 23:
                cn.manstep.phonemirrorBox.x0.k kVar23 = this.z;
                if (kVar23 != null) {
                    kVar23.q0(120);
                }
                break;
            case 24:
                cn.manstep.phonemirrorBox.x0.k kVar24 = this.z;
                if (kVar24 != null) {
                    kVar24.q0(160);
                }
                break;
            case 25:
                cn.manstep.phonemirrorBox.x0.k kVar25 = this.z;
                if (kVar25 != null) {
                    kVar25.q0(240);
                }
                break;
            case 26:
                cn.manstep.phonemirrorBox.x0.k kVar26 = this.z;
                if (kVar26 != null) {
                    kVar26.e0(view);
                }
                break;
            case 27:
                cn.manstep.phonemirrorBox.x0.k kVar27 = this.z;
                if (kVar27 != null) {
                    kVar27.A0(1);
                }
                break;
            case 28:
                cn.manstep.phonemirrorBox.x0.k kVar28 = this.z;
                if (kVar28 != null) {
                    kVar28.A0(0);
                }
                break;
            case 29:
                cn.manstep.phonemirrorBox.x0.k kVar29 = this.z;
                if (kVar29 != null) {
                    kVar29.A0(2);
                }
                break;
            case 30:
                cn.manstep.phonemirrorBox.x0.k kVar30 = this.z;
                if (kVar30 != null) {
                    kVar30.B0();
                }
                break;
            case 31:
                cn.manstep.phonemirrorBox.x0.k kVar31 = this.z;
                if (kVar31 != null) {
                    kVar31.B0();
                }
                break;
            case 32:
                cn.manstep.phonemirrorBox.x0.k kVar32 = this.z;
                if (kVar32 != null) {
                    kVar32.w0(true);
                }
                break;
            case 33:
                cn.manstep.phonemirrorBox.x0.k kVar33 = this.z;
                if (kVar33 != null) {
                    kVar33.w0(false);
                }
                break;
            case 34:
                cn.manstep.phonemirrorBox.x0.k kVar34 = this.z;
                if (kVar34 != null) {
                    kVar34.C0(2);
                }
                break;
            case 35:
                cn.manstep.phonemirrorBox.x0.k kVar35 = this.z;
                if (kVar35 != null) {
                    kVar35.C0(1);
                }
                break;
            case 36:
                cn.manstep.phonemirrorBox.x0.k kVar36 = this.z;
                if (kVar36 != null) {
                    kVar36.y0(true);
                }
                break;
            case 37:
                cn.manstep.phonemirrorBox.x0.k kVar37 = this.z;
                if (kVar37 != null) {
                    kVar37.y0(false);
                }
                break;
            case 38:
                cn.manstep.phonemirrorBox.x0.k kVar38 = this.z;
                if (kVar38 != null) {
                    kVar38.v0(0);
                }
                break;
            case 39:
                cn.manstep.phonemirrorBox.x0.k kVar39 = this.z;
                if (kVar39 != null) {
                    kVar39.v0(1);
                }
                break;
            case 40:
                cn.manstep.phonemirrorBox.x0.k kVar40 = this.z;
                if (kVar40 != null) {
                    kVar40.v0(2);
                }
                break;
            case 41:
                cn.manstep.phonemirrorBox.x0.k kVar41 = this.z;
                if (kVar41 != null) {
                    kVar41.x0(true, view);
                }
                break;
            case 42:
                cn.manstep.phonemirrorBox.x0.k kVar42 = this.z;
                if (kVar42 != null) {
                    kVar42.x0(false, view);
                }
                break;
            case 43:
                cn.manstep.phonemirrorBox.x0.k kVar43 = this.z;
                if (kVar43 != null) {
                    kVar43.t();
                }
                break;
            case 44:
                cn.manstep.phonemirrorBox.x0.k kVar44 = this.z;
                if (kVar44 != null) {
                    kVar44.t();
                }
                break;
            case 45:
                cn.manstep.phonemirrorBox.x0.k kVar45 = this.z;
                if (kVar45 != null) {
                    kVar45.r();
                }
                break;
        }
    }

    @Override // cn.manstep.phonemirrorBox.m0.a.b.a
    public final void c(int i, View view) {
        cn.manstep.phonemirrorBox.x0.k kVar = this.z;
        if (kVar != null) {
            kVar.J0(view);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x01a0 A[PHI: r2
      0x01a0: PHI (r2v13 long) = (r2v12 long), (r2v46 long) binds: [B:92:0x016a, B:106:0x019b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x055a  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x05ad  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x05ec  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x05fc  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0628  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0637  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x067e  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x06ff  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x073d  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0751  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x010a A[PHI: r2
      0x010a: PHI (r2v11 long) = (r2v1 long), (r2v48 long) binds: [B:54:0x00d3, B:68:0x0105] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x016c  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void n() {
        long j;
        int i;
        int i2;
        int i3;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        boolean z;
        boolean z2;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        int i6;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i7;
        boolean z15;
        boolean z16;
        boolean z17;
        int i8;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        boolean z23;
        boolean z24;
        int i9;
        boolean z25;
        boolean z26;
        boolean z27;
        int i10;
        int i11;
        boolean z28;
        boolean z29;
        boolean z30;
        boolean z31;
        int i12;
        int i13;
        boolean z32;
        boolean z33;
        boolean z34;
        boolean z35;
        int i14;
        boolean z36;
        boolean z37;
        boolean z38;
        int i15;
        String strE;
        String str6;
        long j2;
        int i16;
        boolean z39;
        boolean z40;
        long j3;
        boolean z41;
        boolean z42;
        boolean z43;
        int i17;
        boolean z44;
        long j4;
        boolean z45;
        boolean z46;
        int i18;
        long j5;
        int i19;
        int i20;
        boolean z47;
        boolean z48;
        boolean z49;
        long j6;
        boolean z50;
        boolean z51;
        boolean z52;
        boolean z53;
        boolean z54;
        long j7;
        boolean z55;
        boolean z56;
        int i21;
        boolean z57;
        boolean z58;
        boolean z59;
        boolean z60;
        boolean z61;
        int i22;
        int i23;
        boolean z62;
        boolean z63;
        boolean z64;
        boolean z65;
        boolean z66;
        boolean z67;
        long j8;
        boolean z68;
        boolean z69;
        int i24;
        boolean z70;
        boolean z71;
        boolean z72;
        boolean z73;
        boolean z74;
        boolean z75;
        boolean z76;
        boolean z77;
        boolean z78;
        boolean zF;
        boolean zF2;
        long j9;
        boolean z79;
        boolean z80;
        boolean z81;
        boolean z82;
        boolean zF3;
        boolean zF4;
        long j10;
        boolean z83;
        boolean z84;
        String strE2;
        int i25;
        String str7;
        int i26;
        String strE3;
        String str8;
        boolean zF5;
        boolean zF6;
        boolean z85;
        boolean z86;
        boolean z87;
        boolean z88;
        androidx.lifecycle.o<Integer> oVarG;
        androidx.lifecycle.o<Boolean> oVarH;
        androidx.lifecycle.o<String> oVarY;
        androidx.lifecycle.o<String> oVarX;
        androidx.lifecycle.o<Boolean> oVarN;
        androidx.lifecycle.o<Integer> oVarO;
        androidx.lifecycle.o<Boolean> oVarP;
        androidx.lifecycle.o<Integer> oVarX2;
        androidx.lifecycle.o<Integer> oVarU;
        androidx.lifecycle.o<Boolean> oVarI;
        androidx.lifecycle.o<Integer> oVarC;
        androidx.lifecycle.o<Integer> oVarW;
        int i27;
        boolean z89;
        androidx.lifecycle.o<Integer> oVarB;
        androidx.lifecycle.o<Integer> oVarF;
        int i28;
        boolean z90;
        int i29;
        androidx.lifecycle.o<Boolean> oVarK;
        androidx.lifecycle.o<Boolean> oVarM;
        int i30;
        boolean z91;
        synchronized (this) {
            j = this.t1;
            this.t1 = 0L;
        }
        cn.manstep.phonemirrorBox.x0.k kVar = this.z;
        if ((j & 67108864) != 0) {
            boolean z92 = cn.manstep.phonemirrorBox.x0.k.S;
            boolean z93 = cn.manstep.phonemirrorBox.x0.k.T;
            if ((j & 9007199321849856L) != 0) {
                j = z92 ? j | 1099511627776L : j | 549755813888L;
            }
            if ((j & 67108864) != 0) {
                j = z92 ? j | 4398046511104L : j | 2199023255552L;
            }
            if ((j & 67108864) != 0) {
                j |= z93 ? 17592186044416L : 8796093022208L;
            }
            i3 = z92 ? 8 : 0;
            i = z92 ? 0 : 8;
            i2 = z93 ? 0 : 8;
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        String strE4 = null;
        if ((j & 100663295) != 0) {
            if ((j & 83886081) != 0) {
                androidx.lifecycle.o<Integer> oVarS = kVar != null ? kVar.S() : null;
                J(0, oVarS);
                int iE = ViewDataBinding.E(oVarS != null ? oVarS.e() : null);
                z38 = iE == 1;
                z37 = iE == 2;
            } else {
                z37 = false;
                z38 = false;
            }
            long j11 = j & 83886082;
            if (j11 == 0) {
                i15 = 0;
                if ((j & 83886084) == 0) {
                    strE = null;
                    if ((j & 83886088) == 0) {
                        androidx.lifecycle.o<Integer> oVarD = kVar != null ? kVar.D() : null;
                        J(3, oVarD);
                        str6 = String.valueOf(ViewDataBinding.E(oVarD != null ? oVarD.e() : null)) + "fps";
                    } else {
                        str6 = null;
                    }
                    j2 = j & 83886096;
                    if (j2 == 0) {
                        i16 = 0;
                        if ((j & 83886112) == 0) {
                            androidx.lifecycle.o<Integer> oVarE = kVar != null ? kVar.E() : null;
                            J(5, oVarE);
                            int iE2 = ViewDataBinding.E(oVarE != null ? oVarE.e() : null);
                            z40 = iE2 == 3;
                            z39 = iE2 == 2;
                        } else {
                            z39 = false;
                            z40 = false;
                        }
                        j3 = j & 83886144;
                        if (j3 == 0) {
                            androidx.lifecycle.o<Integer> oVarR = kVar != null ? kVar.R() : null;
                            J(6, oVarR);
                            int iE3 = ViewDataBinding.E(oVarR != null ? oVarR.e() : null);
                            z41 = z39;
                            boolean z94 = iE3 == 0;
                            if (iE3 == 1) {
                                i30 = 2;
                                z91 = true;
                            } else {
                                i30 = 2;
                                z91 = false;
                            }
                            boolean z95 = iE3 == i30;
                            if (j3 != 0) {
                                j |= z95 ? 4294967296L : 2147483648L;
                            }
                            z44 = z94;
                            i17 = z95 ? 0 : 8;
                            z43 = z95;
                            z42 = z91;
                        } else {
                            z41 = z39;
                            z42 = false;
                            z43 = false;
                            i17 = 0;
                            z44 = false;
                        }
                        j4 = j & 83886208;
                        if (j4 == 0) {
                            if (kVar != null) {
                                z46 = z40;
                                z45 = z42;
                                oVarM = kVar.M();
                            } else {
                                z45 = z42;
                                z46 = z40;
                                oVarM = null;
                            }
                            J(7, oVarM);
                            boolean z96 = (oVarM != null ? oVarM.e() : null) == Boolean.TRUE;
                            if (j4 != 0) {
                                j |= z96 ? 274877906944L : 137438953472L;
                            }
                            if (!z96) {
                                i18 = 8;
                            }
                            j5 = j & 83886336;
                            if (j5 != 0) {
                                if (kVar != null) {
                                    oVarK = kVar.K();
                                    i19 = i18;
                                } else {
                                    i19 = i18;
                                    oVarK = null;
                                }
                                J(8, oVarK);
                                boolean zF7 = ViewDataBinding.F(oVarK != null ? oVarK.e() : null);
                                if (j5 != 0) {
                                    j |= zF7 ? 70368744177664L : 35184372088832L;
                                }
                                int i31 = zF7 ? 8 : 0;
                                if ((j & 83886592) == 0) {
                                    if (kVar != null) {
                                        i20 = i31;
                                        oVarF = kVar.F();
                                    } else {
                                        i20 = i31;
                                        oVarF = null;
                                    }
                                    J(9, oVarF);
                                    int iE4 = ViewDataBinding.E(oVarF != null ? oVarF.e() : null);
                                    if (iE4 == 3) {
                                        i28 = 1;
                                        z90 = true;
                                    } else {
                                        i28 = 1;
                                        z90 = false;
                                    }
                                    if (iE4 == i28) {
                                        i29 = 2;
                                        z49 = true;
                                    } else {
                                        i29 = 2;
                                        z49 = false;
                                    }
                                    z47 = iE4 == i29;
                                    z48 = z90;
                                } else {
                                    i20 = i31;
                                    z47 = false;
                                    z48 = false;
                                    z49 = false;
                                }
                                j6 = j & 83887104;
                                if (j6 == 0) {
                                    if (kVar != null) {
                                        z51 = z48;
                                        z50 = z47;
                                        oVarB = kVar.B();
                                    } else {
                                        z50 = z47;
                                        z51 = z48;
                                        oVarB = null;
                                    }
                                    J(10, oVarB);
                                    int iE5 = ViewDataBinding.E(oVarB != null ? oVarB.e() : null);
                                    z52 = z37;
                                    z54 = iE5 == 0;
                                    z53 = iE5 == 1;
                                    if (j6 != 0) {
                                        j |= z54 ? 4503599627370496L : 2251799813685248L;
                                    }
                                    int i32 = z54 ? 8 : 0;
                                    j7 = j & 83888128;
                                    if (j7 != 0) {
                                        if (kVar != null) {
                                            z56 = z54;
                                            z55 = z53;
                                            oVarW = kVar.w();
                                        } else {
                                            z55 = z53;
                                            z56 = z54;
                                            oVarW = null;
                                        }
                                        J(11, oVarW);
                                        int iE6 = ViewDataBinding.E(oVarW != null ? oVarW.e() : null);
                                        i21 = i32;
                                        z59 = iE6 == 2;
                                        if (iE6 == 3) {
                                            i27 = 1;
                                            z89 = true;
                                        } else {
                                            i27 = 1;
                                            z89 = false;
                                        }
                                        z57 = z38;
                                        boolean z97 = iE6 == i27;
                                        z58 = iE6 == 4;
                                        if (j7 != 0) {
                                            j |= z59 ? 1073741824L : 536870912L;
                                        }
                                        if ((j & 83888128) != 0) {
                                            j |= z97 ? 268435456L : 134217728L;
                                        }
                                        i22 = z97 ? 0 : 8;
                                        i23 = 8;
                                        z61 = z97;
                                        z60 = z89;
                                    } else {
                                        z55 = z53;
                                        z56 = z54;
                                        i21 = i32;
                                        z57 = z38;
                                        z58 = false;
                                        z59 = false;
                                        z60 = false;
                                        z61 = false;
                                        i22 = 0;
                                        i23 = 0;
                                    }
                                    if ((j & 83890176) != 0) {
                                        if (kVar != null) {
                                            z63 = z59;
                                            z62 = z58;
                                            oVarC = kVar.C();
                                        } else {
                                            z62 = z58;
                                            z63 = z59;
                                            oVarC = null;
                                        }
                                        J(12, oVarC);
                                        int iE7 = ViewDataBinding.E(oVarC != null ? oVarC.e() : null);
                                        boolean z98 = iE7 == 240;
                                        z67 = iE7 == 160;
                                        boolean z99 = iE7 == 120;
                                        z64 = iE7 == 0;
                                        boolean z100 = z98;
                                        z66 = z99;
                                        z65 = z100;
                                    } else {
                                        z62 = z58;
                                        z63 = z59;
                                        z64 = false;
                                        z65 = false;
                                        z66 = false;
                                        z67 = false;
                                    }
                                    j8 = j & 83894272;
                                    if (j8 != 0) {
                                        if (kVar != null) {
                                            z69 = z65;
                                            z68 = z64;
                                            oVarI = kVar.I();
                                        } else {
                                            z68 = z64;
                                            z69 = z65;
                                            oVarI = null;
                                        }
                                        J(13, oVarI);
                                        boolean zF8 = ViewDataBinding.F(oVarI != null ? oVarI.e() : null);
                                        if (j8 != 0) {
                                            j |= zF8 ? 281474976710656L : 140737488355328L;
                                        }
                                        int i33 = zF8 ? 8 : 0;
                                        if ((j & 83902464) == 0) {
                                            if (kVar != null) {
                                                oVarU = kVar.u();
                                                i24 = i33;
                                            } else {
                                                i24 = i33;
                                                oVarU = null;
                                            }
                                            J(14, oVarU);
                                            int iE8 = ViewDataBinding.E(oVarU != null ? oVarU.e() : null);
                                            boolean z101 = iE8 == 480;
                                            z72 = iE8 == 1080;
                                            z70 = iE8 == 720;
                                            z71 = z101;
                                        } else {
                                            i24 = i33;
                                            z70 = false;
                                            z71 = false;
                                            z72 = false;
                                        }
                                        if ((j & 83918848) == 0) {
                                            if (kVar != null) {
                                                z74 = z71;
                                                z73 = z70;
                                                oVarX2 = kVar.X();
                                            } else {
                                                z73 = z70;
                                                z74 = z71;
                                                oVarX2 = null;
                                            }
                                            J(15, oVarX2);
                                            int iE9 = ViewDataBinding.E(oVarX2 != null ? oVarX2.e() : null);
                                            boolean z102 = iE9 == 0;
                                            z75 = iE9 == 1;
                                            z76 = z102;
                                        } else {
                                            z73 = z70;
                                            z74 = z71;
                                            z75 = false;
                                            z76 = false;
                                        }
                                        if ((j & 83951616) == 0) {
                                            if (kVar != null) {
                                                z78 = z76;
                                                z77 = z75;
                                                oVarP = kVar.P();
                                            } else {
                                                z77 = z75;
                                                z78 = z76;
                                                oVarP = null;
                                            }
                                            J(16, oVarP);
                                            zF = ViewDataBinding.F(oVarP != null ? oVarP.e() : null);
                                            zF2 = ViewDataBinding.F(Boolean.valueOf(!zF));
                                        } else {
                                            z77 = z75;
                                            z78 = z76;
                                            zF = false;
                                            zF2 = false;
                                        }
                                        j9 = j & 84017152;
                                        if (j9 == 0) {
                                            if (kVar != null) {
                                                z80 = zF2;
                                                z79 = zF;
                                                oVarO = kVar.O();
                                            } else {
                                                z79 = zF;
                                                z80 = zF2;
                                                oVarO = null;
                                            }
                                            J(17, oVarO);
                                            z81 = ViewDataBinding.E(oVarO != null ? oVarO.e() : null) == 2;
                                            if (j9 != 0) {
                                                j = z81 ? j | 18014398509481984L : j | 9007199254740992L;
                                            }
                                        } else {
                                            z79 = zF;
                                            z80 = zF2;
                                            z81 = false;
                                        }
                                        if ((j & 84148224) == 0) {
                                            if (kVar != null) {
                                                oVarN = kVar.N();
                                                z82 = z81;
                                            } else {
                                                z82 = z81;
                                                oVarN = null;
                                            }
                                            J(18, oVarN);
                                            zF3 = ViewDataBinding.F(oVarN != null ? oVarN.e() : null);
                                            zF4 = ViewDataBinding.F(Boolean.valueOf(!zF3));
                                        } else {
                                            z82 = z81;
                                            zF3 = false;
                                            zF4 = false;
                                        }
                                        j10 = j & 84410368;
                                        if (j10 == 0) {
                                            if (kVar != null) {
                                                z84 = zF4;
                                                z83 = zF3;
                                                oVarX = kVar.x();
                                            } else {
                                                z83 = zF3;
                                                z84 = zF4;
                                                oVarX = null;
                                            }
                                            J(19, oVarX);
                                            strE2 = oVarX != null ? oVarX.e() : null;
                                            boolean z103 = (strE2 != null ? strE2.length() : 0) > 0;
                                            if (j10 != 0) {
                                                j |= z103 ? 1125899906842624L : 562949953421312L;
                                            }
                                            if (!z103) {
                                                i25 = 8;
                                            }
                                            if ((j & 84934656) != 0) {
                                                if (kVar != null) {
                                                    i26 = i25;
                                                    str7 = strE2;
                                                    oVarY = kVar.y();
                                                } else {
                                                    str7 = strE2;
                                                    i26 = i25;
                                                    oVarY = null;
                                                }
                                                J(20, oVarY);
                                                if (oVarY != null) {
                                                    strE3 = oVarY.e();
                                                }
                                                if ((j & 85983232) == 0) {
                                                    if (kVar != null) {
                                                        oVarH = kVar.H();
                                                        str8 = strE3;
                                                    } else {
                                                        str8 = strE3;
                                                        oVarH = null;
                                                    }
                                                    J(21, oVarH);
                                                    zF5 = ViewDataBinding.F(oVarH != null ? oVarH.e() : null);
                                                    zF6 = ViewDataBinding.F(Boolean.valueOf(!zF5));
                                                } else {
                                                    str8 = strE3;
                                                    zF5 = false;
                                                    zF6 = false;
                                                }
                                                if ((j & 88080384) == 0) {
                                                    if (kVar != null) {
                                                        z86 = zF6;
                                                        z85 = zF5;
                                                        oVarG = kVar.G();
                                                    } else {
                                                        z85 = zF5;
                                                        z86 = zF6;
                                                        oVarG = null;
                                                    }
                                                    J(22, oVarG);
                                                    int iE10 = ViewDataBinding.E(oVarG != null ? oVarG.e() : null);
                                                    z87 = iE10 == 1;
                                                    z88 = iE10 == 0;
                                                    boolean z104 = iE10 == 2;
                                                    if ((92274688 & j) != 0) {
                                                        androidx.lifecycle.o<String> oVarA = kVar != null ? kVar.A() : null;
                                                        J(23, oVarA);
                                                        if (oVarA != null) {
                                                            strE4 = oVarA.e();
                                                        }
                                                    }
                                                    z27 = z43;
                                                    i10 = i15;
                                                    str4 = strE;
                                                    i11 = i17;
                                                    str2 = strE4;
                                                    i8 = i19;
                                                    z28 = z87;
                                                    z29 = z88;
                                                    z30 = z44;
                                                    z10 = z45;
                                                    z3 = z41;
                                                    i7 = i20;
                                                    z6 = z46;
                                                    z8 = z50;
                                                    z31 = z49;
                                                    i12 = i22;
                                                    i13 = i23;
                                                    z22 = z51;
                                                    z25 = z52;
                                                    z = z55;
                                                    z7 = z56;
                                                    z26 = z57;
                                                    z16 = z63;
                                                    z32 = z66;
                                                    z33 = z67;
                                                    z13 = z73;
                                                    z11 = z68;
                                                    z20 = z69;
                                                    z34 = z72;
                                                    z12 = z77;
                                                    z19 = z78;
                                                    z2 = z82;
                                                    z18 = z83;
                                                    z17 = z79;
                                                    z23 = z80;
                                                    str3 = str7;
                                                    i9 = i26;
                                                    z24 = z84;
                                                    str5 = str8;
                                                    z9 = z85;
                                                    z21 = z86;
                                                    z35 = z104;
                                                    z15 = z60;
                                                    z5 = z61;
                                                    str = str6;
                                                    z4 = z62;
                                                    i4 = i24;
                                                    i6 = i16;
                                                    i5 = i21;
                                                    z14 = z74;
                                                } else {
                                                    z85 = zF5;
                                                    z86 = zF6;
                                                    z87 = false;
                                                    z88 = false;
                                                }
                                                if ((92274688 & j) != 0) {
                                                }
                                                z27 = z43;
                                                i10 = i15;
                                                str4 = strE;
                                                i11 = i17;
                                                str2 = strE4;
                                                i8 = i19;
                                                z28 = z87;
                                                z29 = z88;
                                                z30 = z44;
                                                z10 = z45;
                                                z3 = z41;
                                                i7 = i20;
                                                z6 = z46;
                                                z8 = z50;
                                                z31 = z49;
                                                i12 = i22;
                                                i13 = i23;
                                                z22 = z51;
                                                z25 = z52;
                                                z = z55;
                                                z7 = z56;
                                                z26 = z57;
                                                z16 = z63;
                                                z32 = z66;
                                                z33 = z67;
                                                z13 = z73;
                                                z11 = z68;
                                                z20 = z69;
                                                z34 = z72;
                                                z12 = z77;
                                                z19 = z78;
                                                z2 = z82;
                                                z18 = z83;
                                                z17 = z79;
                                                z23 = z80;
                                                str3 = str7;
                                                i9 = i26;
                                                z24 = z84;
                                                str5 = str8;
                                                z9 = z85;
                                                z21 = z86;
                                                z35 = z104;
                                                z15 = z60;
                                                z5 = z61;
                                                str = str6;
                                                z4 = z62;
                                                i4 = i24;
                                                i6 = i16;
                                                i5 = i21;
                                                z14 = z74;
                                            } else {
                                                str7 = strE2;
                                                i26 = i25;
                                            }
                                            strE3 = null;
                                            if ((j & 85983232) == 0) {
                                            }
                                            if ((j & 88080384) == 0) {
                                            }
                                            if ((92274688 & j) != 0) {
                                            }
                                            z27 = z43;
                                            i10 = i15;
                                            str4 = strE;
                                            i11 = i17;
                                            str2 = strE4;
                                            i8 = i19;
                                            z28 = z87;
                                            z29 = z88;
                                            z30 = z44;
                                            z10 = z45;
                                            z3 = z41;
                                            i7 = i20;
                                            z6 = z46;
                                            z8 = z50;
                                            z31 = z49;
                                            i12 = i22;
                                            i13 = i23;
                                            z22 = z51;
                                            z25 = z52;
                                            z = z55;
                                            z7 = z56;
                                            z26 = z57;
                                            z16 = z63;
                                            z32 = z66;
                                            z33 = z67;
                                            z13 = z73;
                                            z11 = z68;
                                            z20 = z69;
                                            z34 = z72;
                                            z12 = z77;
                                            z19 = z78;
                                            z2 = z82;
                                            z18 = z83;
                                            z17 = z79;
                                            z23 = z80;
                                            str3 = str7;
                                            i9 = i26;
                                            z24 = z84;
                                            str5 = str8;
                                            z9 = z85;
                                            z21 = z86;
                                            z35 = z104;
                                            z15 = z60;
                                            z5 = z61;
                                            str = str6;
                                            z4 = z62;
                                            i4 = i24;
                                            i6 = i16;
                                            i5 = i21;
                                            z14 = z74;
                                        } else {
                                            z83 = zF3;
                                            z84 = zF4;
                                            strE2 = null;
                                        }
                                        i25 = 0;
                                        if ((j & 84934656) != 0) {
                                        }
                                        strE3 = null;
                                        if ((j & 85983232) == 0) {
                                        }
                                        if ((j & 88080384) == 0) {
                                        }
                                        if ((92274688 & j) != 0) {
                                        }
                                        z27 = z43;
                                        i10 = i15;
                                        str4 = strE;
                                        i11 = i17;
                                        str2 = strE4;
                                        i8 = i19;
                                        z28 = z87;
                                        z29 = z88;
                                        z30 = z44;
                                        z10 = z45;
                                        z3 = z41;
                                        i7 = i20;
                                        z6 = z46;
                                        z8 = z50;
                                        z31 = z49;
                                        i12 = i22;
                                        i13 = i23;
                                        z22 = z51;
                                        z25 = z52;
                                        z = z55;
                                        z7 = z56;
                                        z26 = z57;
                                        z16 = z63;
                                        z32 = z66;
                                        z33 = z67;
                                        z13 = z73;
                                        z11 = z68;
                                        z20 = z69;
                                        z34 = z72;
                                        z12 = z77;
                                        z19 = z78;
                                        z2 = z82;
                                        z18 = z83;
                                        z17 = z79;
                                        z23 = z80;
                                        str3 = str7;
                                        i9 = i26;
                                        z24 = z84;
                                        str5 = str8;
                                        z9 = z85;
                                        z21 = z86;
                                        z35 = z104;
                                        z15 = z60;
                                        z5 = z61;
                                        str = str6;
                                        z4 = z62;
                                        i4 = i24;
                                        i6 = i16;
                                        i5 = i21;
                                        z14 = z74;
                                    } else {
                                        z68 = z64;
                                        z69 = z65;
                                    }
                                    if ((j & 83902464) == 0) {
                                    }
                                    if ((j & 83918848) == 0) {
                                    }
                                    if ((j & 83951616) == 0) {
                                    }
                                    j9 = j & 84017152;
                                    if (j9 == 0) {
                                    }
                                    if ((j & 84148224) == 0) {
                                    }
                                    j10 = j & 84410368;
                                    if (j10 == 0) {
                                    }
                                    i25 = 0;
                                    if ((j & 84934656) != 0) {
                                    }
                                    strE3 = null;
                                    if ((j & 85983232) == 0) {
                                    }
                                    if ((j & 88080384) == 0) {
                                    }
                                    if ((92274688 & j) != 0) {
                                    }
                                    z27 = z43;
                                    i10 = i15;
                                    str4 = strE;
                                    i11 = i17;
                                    str2 = strE4;
                                    i8 = i19;
                                    z28 = z87;
                                    z29 = z88;
                                    z30 = z44;
                                    z10 = z45;
                                    z3 = z41;
                                    i7 = i20;
                                    z6 = z46;
                                    z8 = z50;
                                    z31 = z49;
                                    i12 = i22;
                                    i13 = i23;
                                    z22 = z51;
                                    z25 = z52;
                                    z = z55;
                                    z7 = z56;
                                    z26 = z57;
                                    z16 = z63;
                                    z32 = z66;
                                    z33 = z67;
                                    z13 = z73;
                                    z11 = z68;
                                    z20 = z69;
                                    z34 = z72;
                                    z12 = z77;
                                    z19 = z78;
                                    z2 = z82;
                                    z18 = z83;
                                    z17 = z79;
                                    z23 = z80;
                                    str3 = str7;
                                    i9 = i26;
                                    z24 = z84;
                                    str5 = str8;
                                    z9 = z85;
                                    z21 = z86;
                                    z35 = z104;
                                    z15 = z60;
                                    z5 = z61;
                                    str = str6;
                                    z4 = z62;
                                    i4 = i24;
                                    i6 = i16;
                                    i5 = i21;
                                    z14 = z74;
                                } else {
                                    z50 = z47;
                                    z51 = z48;
                                    z52 = z37;
                                    z53 = false;
                                    z54 = false;
                                }
                                j7 = j & 83888128;
                                if (j7 != 0) {
                                }
                                if ((j & 83890176) != 0) {
                                }
                                j8 = j & 83894272;
                                if (j8 != 0) {
                                }
                                if ((j & 83902464) == 0) {
                                }
                                if ((j & 83918848) == 0) {
                                }
                                if ((j & 83951616) == 0) {
                                }
                                j9 = j & 84017152;
                                if (j9 == 0) {
                                }
                                if ((j & 84148224) == 0) {
                                }
                                j10 = j & 84410368;
                                if (j10 == 0) {
                                }
                                i25 = 0;
                                if ((j & 84934656) != 0) {
                                }
                                strE3 = null;
                                if ((j & 85983232) == 0) {
                                }
                                if ((j & 88080384) == 0) {
                                }
                                if ((92274688 & j) != 0) {
                                }
                                z27 = z43;
                                i10 = i15;
                                str4 = strE;
                                i11 = i17;
                                str2 = strE4;
                                i8 = i19;
                                z28 = z87;
                                z29 = z88;
                                z30 = z44;
                                z10 = z45;
                                z3 = z41;
                                i7 = i20;
                                z6 = z46;
                                z8 = z50;
                                z31 = z49;
                                i12 = i22;
                                i13 = i23;
                                z22 = z51;
                                z25 = z52;
                                z = z55;
                                z7 = z56;
                                z26 = z57;
                                z16 = z63;
                                z32 = z66;
                                z33 = z67;
                                z13 = z73;
                                z11 = z68;
                                z20 = z69;
                                z34 = z72;
                                z12 = z77;
                                z19 = z78;
                                z2 = z82;
                                z18 = z83;
                                z17 = z79;
                                z23 = z80;
                                str3 = str7;
                                i9 = i26;
                                z24 = z84;
                                str5 = str8;
                                z9 = z85;
                                z21 = z86;
                                z35 = z104;
                                z15 = z60;
                                z5 = z61;
                                str = str6;
                                z4 = z62;
                                i4 = i24;
                                i6 = i16;
                                i5 = i21;
                                z14 = z74;
                            } else {
                                i19 = i18;
                            }
                            if ((j & 83886592) == 0) {
                            }
                            j6 = j & 83887104;
                            if (j6 == 0) {
                            }
                            j7 = j & 83888128;
                            if (j7 != 0) {
                            }
                            if ((j & 83890176) != 0) {
                            }
                            j8 = j & 83894272;
                            if (j8 != 0) {
                            }
                            if ((j & 83902464) == 0) {
                            }
                            if ((j & 83918848) == 0) {
                            }
                            if ((j & 83951616) == 0) {
                            }
                            j9 = j & 84017152;
                            if (j9 == 0) {
                            }
                            if ((j & 84148224) == 0) {
                            }
                            j10 = j & 84410368;
                            if (j10 == 0) {
                            }
                            i25 = 0;
                            if ((j & 84934656) != 0) {
                            }
                            strE3 = null;
                            if ((j & 85983232) == 0) {
                            }
                            if ((j & 88080384) == 0) {
                            }
                            if ((92274688 & j) != 0) {
                            }
                            z27 = z43;
                            i10 = i15;
                            str4 = strE;
                            i11 = i17;
                            str2 = strE4;
                            i8 = i19;
                            z28 = z87;
                            z29 = z88;
                            z30 = z44;
                            z10 = z45;
                            z3 = z41;
                            i7 = i20;
                            z6 = z46;
                            z8 = z50;
                            z31 = z49;
                            i12 = i22;
                            i13 = i23;
                            z22 = z51;
                            z25 = z52;
                            z = z55;
                            z7 = z56;
                            z26 = z57;
                            z16 = z63;
                            z32 = z66;
                            z33 = z67;
                            z13 = z73;
                            z11 = z68;
                            z20 = z69;
                            z34 = z72;
                            z12 = z77;
                            z19 = z78;
                            z2 = z82;
                            z18 = z83;
                            z17 = z79;
                            z23 = z80;
                            str3 = str7;
                            i9 = i26;
                            z24 = z84;
                            str5 = str8;
                            z9 = z85;
                            z21 = z86;
                            z35 = z104;
                            z15 = z60;
                            z5 = z61;
                            str = str6;
                            z4 = z62;
                            i4 = i24;
                            i6 = i16;
                            i5 = i21;
                            z14 = z74;
                        } else {
                            z45 = z42;
                            z46 = z40;
                        }
                        i18 = 0;
                        j5 = j & 83886336;
                        if (j5 != 0) {
                        }
                        if ((j & 83886592) == 0) {
                        }
                        j6 = j & 83887104;
                        if (j6 == 0) {
                        }
                        j7 = j & 83888128;
                        if (j7 != 0) {
                        }
                        if ((j & 83890176) != 0) {
                        }
                        j8 = j & 83894272;
                        if (j8 != 0) {
                        }
                        if ((j & 83902464) == 0) {
                        }
                        if ((j & 83918848) == 0) {
                        }
                        if ((j & 83951616) == 0) {
                        }
                        j9 = j & 84017152;
                        if (j9 == 0) {
                        }
                        if ((j & 84148224) == 0) {
                        }
                        j10 = j & 84410368;
                        if (j10 == 0) {
                        }
                        i25 = 0;
                        if ((j & 84934656) != 0) {
                        }
                        strE3 = null;
                        if ((j & 85983232) == 0) {
                        }
                        if ((j & 88080384) == 0) {
                        }
                        if ((92274688 & j) != 0) {
                        }
                        z27 = z43;
                        i10 = i15;
                        str4 = strE;
                        i11 = i17;
                        str2 = strE4;
                        i8 = i19;
                        z28 = z87;
                        z29 = z88;
                        z30 = z44;
                        z10 = z45;
                        z3 = z41;
                        i7 = i20;
                        z6 = z46;
                        z8 = z50;
                        z31 = z49;
                        i12 = i22;
                        i13 = i23;
                        z22 = z51;
                        z25 = z52;
                        z = z55;
                        z7 = z56;
                        z26 = z57;
                        z16 = z63;
                        z32 = z66;
                        z33 = z67;
                        z13 = z73;
                        z11 = z68;
                        z20 = z69;
                        z34 = z72;
                        z12 = z77;
                        z19 = z78;
                        z2 = z82;
                        z18 = z83;
                        z17 = z79;
                        z23 = z80;
                        str3 = str7;
                        i9 = i26;
                        z24 = z84;
                        str5 = str8;
                        z9 = z85;
                        z21 = z86;
                        z35 = z104;
                        z15 = z60;
                        z5 = z61;
                        str = str6;
                        z4 = z62;
                        i4 = i24;
                        i6 = i16;
                        i5 = i21;
                        z14 = z74;
                    } else {
                        androidx.lifecycle.o<Boolean> oVarL = kVar != null ? kVar.L() : null;
                        J(4, oVarL);
                        boolean zF9 = ViewDataBinding.F(oVarL != null ? oVarL.e() : null);
                        if (j2 != 0) {
                            j |= zF9 ? 17179869184L : 8589934592L;
                        }
                        if (zF9) {
                            i16 = 8;
                        }
                        if ((j & 83886112) == 0) {
                        }
                        j3 = j & 83886144;
                        if (j3 == 0) {
                        }
                        j4 = j & 83886208;
                        if (j4 == 0) {
                        }
                        i18 = 0;
                        j5 = j & 83886336;
                        if (j5 != 0) {
                        }
                        if ((j & 83886592) == 0) {
                        }
                        j6 = j & 83887104;
                        if (j6 == 0) {
                        }
                        j7 = j & 83888128;
                        if (j7 != 0) {
                        }
                        if ((j & 83890176) != 0) {
                        }
                        j8 = j & 83894272;
                        if (j8 != 0) {
                        }
                        if ((j & 83902464) == 0) {
                        }
                        if ((j & 83918848) == 0) {
                        }
                        if ((j & 83951616) == 0) {
                        }
                        j9 = j & 84017152;
                        if (j9 == 0) {
                        }
                        if ((j & 84148224) == 0) {
                        }
                        j10 = j & 84410368;
                        if (j10 == 0) {
                        }
                        i25 = 0;
                        if ((j & 84934656) != 0) {
                        }
                        strE3 = null;
                        if ((j & 85983232) == 0) {
                        }
                        if ((j & 88080384) == 0) {
                        }
                        if ((92274688 & j) != 0) {
                        }
                        z27 = z43;
                        i10 = i15;
                        str4 = strE;
                        i11 = i17;
                        str2 = strE4;
                        i8 = i19;
                        z28 = z87;
                        z29 = z88;
                        z30 = z44;
                        z10 = z45;
                        z3 = z41;
                        i7 = i20;
                        z6 = z46;
                        z8 = z50;
                        z31 = z49;
                        i12 = i22;
                        i13 = i23;
                        z22 = z51;
                        z25 = z52;
                        z = z55;
                        z7 = z56;
                        z26 = z57;
                        z16 = z63;
                        z32 = z66;
                        z33 = z67;
                        z13 = z73;
                        z11 = z68;
                        z20 = z69;
                        z34 = z72;
                        z12 = z77;
                        z19 = z78;
                        z2 = z82;
                        z18 = z83;
                        z17 = z79;
                        z23 = z80;
                        str3 = str7;
                        i9 = i26;
                        z24 = z84;
                        str5 = str8;
                        z9 = z85;
                        z21 = z86;
                        z35 = z104;
                        z15 = z60;
                        z5 = z61;
                        str = str6;
                        z4 = z62;
                        i4 = i24;
                        i6 = i16;
                        i5 = i21;
                        z14 = z74;
                    }
                } else {
                    androidx.lifecycle.o<String> oVarV = kVar != null ? kVar.V() : null;
                    J(2, oVarV);
                    if (oVarV != null) {
                        strE = oVarV.e();
                    }
                    if ((j & 83886088) == 0) {
                    }
                    j2 = j & 83886096;
                    if (j2 == 0) {
                    }
                }
            } else {
                androidx.lifecycle.o<Boolean> oVarJ = kVar != null ? kVar.J() : null;
                J(1, oVarJ);
                boolean zF10 = ViewDataBinding.F(oVarJ != null ? oVarJ.e() : null);
                if (j11 != 0) {
                    j |= zF10 ? 68719476736L : 34359738368L;
                }
                if (zF10) {
                    i15 = 8;
                }
                if ((j & 83886084) == 0) {
                }
            }
        } else {
            str = null;
            str2 = null;
            str3 = null;
            str4 = null;
            str5 = null;
            z = false;
            z2 = false;
            z3 = false;
            i4 = 0;
            z4 = false;
            i5 = 0;
            i6 = 0;
            z5 = false;
            z6 = false;
            z7 = false;
            z8 = false;
            z9 = false;
            z10 = false;
            z11 = false;
            z12 = false;
            z13 = false;
            z14 = false;
            i7 = 0;
            z15 = false;
            z16 = false;
            z17 = false;
            i8 = 0;
            z18 = false;
            z19 = false;
            z20 = false;
            z21 = false;
            z22 = false;
            z23 = false;
            z24 = false;
            i9 = 0;
            z25 = false;
            z26 = false;
            z27 = false;
            i10 = 0;
            i11 = 0;
            z28 = false;
            z29 = false;
            z30 = false;
            z31 = false;
            i12 = 0;
            i13 = 0;
            z32 = false;
            z33 = false;
            z34 = false;
            z35 = false;
        }
        if ((j & 9007199254740992L) != 0) {
            boolean z105 = cn.manstep.phonemirrorBox.x0.k.S;
            if ((j & 9007199321849856L) != 0) {
                j = z105 ? j | 1099511627776L : j | 549755813888L;
            }
            if ((j & 67108864) != 0) {
                j |= z105 ? 4398046511104L : 2199023255552L;
            }
            i3 = z105 ? 8 : 0;
        }
        boolean z106 = z5;
        int i34 = i3;
        long j12 = j & 84017152;
        if (j12 != 0) {
            i14 = z2 ? 8 : i34;
        } else {
            i14 = 0;
        }
        int i35 = i14;
        if ((j & 67108864) != 0) {
            z36 = z4;
            this.v.setOnClickListener(this.l1);
            this.B.setOnClickListener(this.J0);
            this.C.setOnClickListener(this.A0);
            this.D.setOnClickListener(this.C0);
            this.F.setOnClickListener(this.m1);
            this.G.setOnClickListener(this.q1);
            this.H.setOnClickListener(this.c1);
            this.I.setOnClickListener(this.Z0);
            this.K.setOnClickListener(this.g1);
            this.L.setOnClickListener(this.s1);
            this.M.setOnClickListener(this.S0);
            this.N.setOnClickListener(this.L0);
            this.O.setOnClickListener(this.M0);
            this.P.setOnClickListener(this.G0);
            this.Q.setVisibility(i);
            this.R.setOnClickListener(this.K0);
            this.S.setOnClickListener(this.z0);
            this.T.setOnClickListener(this.D0);
            this.U.setOnClickListener(this.k1);
            this.W.setOnClickListener(this.b1);
            this.X.setOnClickListener(this.r1);
            this.Y.setOnClickListener(this.p1);
            this.Z.setOnClickListener(this.a1);
            this.a0.setOnClickListener(this.O0);
            this.b0.setOnClickListener(this.R0);
            this.c0.setOnClickListener(this.i1);
            this.d0.setOnClickListener(this.o1);
            this.e0.setOnClickListener(this.X0);
            this.f0.setVisibility(i34);
            this.g0.setOnClickListener(this.e1);
            this.h0.setOnClickListener(this.h1);
            this.i0.setOnClickListener(this.F0);
            this.j0.setOnClickListener(this.I0);
            this.k0.setOnClickListener(this.B0);
            this.l0.setOnClickListener(this.E0);
            this.m0.setOnClickListener(this.U0);
            this.n0.setOnClickListener(this.W0);
            this.o0.setOnClickListener(this.P0);
            this.p0.setOnClickListener(this.Q0);
            this.q0.setOnClickListener(this.j1);
            this.r0.setOnClickListener(this.n1);
            this.s0.setOnClickListener(this.f1);
            this.v0.setOnClickListener(this.T0);
            this.w0.setOnClickListener(this.V0);
            this.x0.setOnClickListener(this.N0);
            this.y0.setOnClickListener(this.H0);
            this.w.setVisibility(i2);
            this.x.setOnClickListener(this.Y0);
            cn.manstep.phonemirrorBox.x0.k.D0(this.y, this.d1);
        } else {
            z36 = z4;
        }
        if ((j & 83887104) != 0) {
            this.B.setVisibility(i5);
            androidx.databinding.j.a.a(this.w0, z);
            androidx.databinding.j.a.a(this.x0, z7);
        }
        if ((j & 83886088) != 0) {
            SelectTextSettingsItem.f(this.B, str);
        }
        if ((83886112 & j) != 0) {
            androidx.databinding.j.a.a(this.C, z3);
            androidx.databinding.j.a.a(this.D, z6);
        }
        if ((j & 83886096) != 0) {
            this.D.setVisibility(i6);
            this.I.setVisibility(i6);
        }
        if ((83894272 & j) != 0) {
            this.E.setVisibility(i4);
        }
        if ((j & 83888128) != 0) {
            androidx.databinding.j.a.a(this.F, z36);
            androidx.databinding.j.a.a(this.G, z106);
            androidx.databinding.j.a.a(this.H, z16);
            this.H.setVisibility(i13);
            androidx.databinding.j.a.a(this.I, z15);
            this.J.setVisibility(i12);
        }
        if ((83886336 & j) != 0) {
            this.F.setVisibility(i7);
        }
        if ((j & 83886082) != 0) {
            this.G.setVisibility(i10);
        }
        if ((83902464 & j) != 0) {
            androidx.databinding.j.a.a(this.K, z14);
            androidx.databinding.j.a.a(this.M, z13);
            androidx.databinding.j.a.a(this.N, z34);
        }
        if ((83918848 & j) != 0) {
            androidx.databinding.j.a.a(this.O, z12);
            androidx.databinding.j.a.a(this.P, z19);
        }
        if ((83890176 & j) != 0) {
            androidx.databinding.j.a.a(this.R, z11);
            androidx.databinding.j.a.a(this.S, z32);
            androidx.databinding.j.a.a(this.T, z33);
            androidx.databinding.j.a.a(this.U, z20);
        }
        if (j12 != 0) {
            this.V.setVisibility(i35);
        }
        if ((83886144 & j) != 0) {
            androidx.databinding.j.a.a(this.Y, z10);
            androidx.databinding.j.a.a(this.Z, z30);
            androidx.databinding.j.a.a(this.a0, z27);
            this.b0.setVisibility(i11);
        }
        if ((92274688 & j) != 0) {
            androidx.databinding.j.b.b(this.c0, str2);
        }
        if ((85983232 & j) != 0) {
            androidx.databinding.j.a.a(this.d0, z9);
            androidx.databinding.j.a.a(this.e0, z21);
        }
        if ((j & 83886081) != 0) {
            androidx.databinding.j.a.a(this.g0, z25);
            androidx.databinding.j.a.a(this.i0, z26);
        }
        if ((83886592 & j) != 0) {
            androidx.databinding.j.a.a(this.h0, z31);
            androidx.databinding.j.a.a(this.s0, z8);
            androidx.databinding.j.a.a(this.v0, z22);
        }
        if ((83951616 & j) != 0) {
            androidx.databinding.j.a.a(this.j0, z17);
            androidx.databinding.j.a.a(this.k0, z23);
        }
        if ((88080384 & j) != 0) {
            androidx.databinding.j.a.a(this.l0, z29);
            androidx.databinding.j.a.a(this.m0, z28);
            androidx.databinding.j.a.a(this.n0, z35);
        }
        if ((83886208 & j) != 0) {
            this.n0.setVisibility(i8);
        }
        if ((84148224 & j) != 0) {
            androidx.databinding.j.a.a(this.o0, z18);
            androidx.databinding.j.a.a(this.p0, z24);
        }
        if ((84410368 & j) != 0) {
            this.t0.setVisibility(i9);
            androidx.databinding.j.b.b(this.u0, str3);
        }
        if ((j & 83886084) != 0) {
            SelectTextSettingsItem.f(this.y0, str4);
        }
        if ((j & 84934656) != 0) {
            androidx.databinding.j.b.b(this.y, str5);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.t1 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return j0((androidx.lifecycle.o) obj, i2);
            case 1:
                return b0((androidx.lifecycle.o) obj, i2);
            case 2:
                return k0((androidx.lifecycle.o) obj, i2);
            case 3:
                return V((androidx.lifecycle.o) obj, i2);
            case 4:
                return d0((androidx.lifecycle.o) obj, i2);
            case 5:
                return W((androidx.lifecycle.o) obj, i2);
            case 6:
                return i0((androidx.lifecycle.o) obj, i2);
            case 7:
                return e0((androidx.lifecycle.o) obj, i2);
            case 8:
                return c0((androidx.lifecycle.o) obj, i2);
            case 9:
                return X((androidx.lifecycle.o) obj, i2);
            case 10:
                return T((androidx.lifecycle.o) obj, i2);
            case 11:
                return P((androidx.lifecycle.o) obj, i2);
            case 12:
                return U((androidx.lifecycle.o) obj, i2);
            case 13:
                return a0((androidx.lifecycle.o) obj, i2);
            case 14:
                return O((androidx.lifecycle.o) obj, i2);
            case 15:
                return l0((androidx.lifecycle.o) obj, i2);
            case 16:
                return h0((androidx.lifecycle.o) obj, i2);
            case 17:
                return g0((androidx.lifecycle.o) obj, i2);
            case 18:
                return f0((androidx.lifecycle.o) obj, i2);
            case 19:
                return Q((androidx.lifecycle.o) obj, i2);
            case 20:
                return R((androidx.lifecycle.o) obj, i2);
            case 21:
                return Z((androidx.lifecycle.o) obj, i2);
            case 22:
                return Y((androidx.lifecycle.o) obj, i2);
            case 23:
                return S((androidx.lifecycle.o) obj, i2);
            default:
                return false;
        }
    }

    private t(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 24, (ConstraintLayout) objArr[60], (Button) objArr[66], (Button) objArr[68], (Button) objArr[63], (Button) objArr[64], (ConstraintLayout) objArr[58], (CustomImageView) objArr[59], (RadioGroup) objArr[57], (RadioGroup) objArr[61], (ImageView) objArr[1], (LinearLayout) objArr[54], (ScrollView) objArr[55], (TextView) objArr[65], (TextView) objArr[67], (TextView) objArr[50], (TextView) objArr[62], (TextView) objArr[51], (LinearLayout) objArr[56]);
        this.t1 = -1L;
        this.v.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.A = linearLayout;
        linearLayout.setTag(null);
        SelectTextSettingsItem selectTextSettingsItem = (SelectTextSettingsItem) objArr[10];
        this.B = selectTextSettingsItem;
        selectTextSettingsItem.setTag(null);
        RadioButton radioButton = (RadioButton) objArr[11];
        this.C = radioButton;
        radioButton.setTag(null);
        RadioButton radioButton2 = (RadioButton) objArr[12];
        this.D = radioButton2;
        radioButton2.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[13];
        this.E = constraintLayout;
        constraintLayout.setTag(null);
        RadioButton radioButton3 = (RadioButton) objArr[14];
        this.F = radioButton3;
        radioButton3.setTag(null);
        RadioButton radioButton4 = (RadioButton) objArr[15];
        this.G = radioButton4;
        radioButton4.setTag(null);
        RadioButton radioButton5 = (RadioButton) objArr[16];
        this.H = radioButton5;
        radioButton5.setTag(null);
        RadioButton radioButton6 = (RadioButton) objArr[17];
        this.I = radioButton6;
        radioButton6.setTag(null);
        ConstraintLayout constraintLayout2 = (ConstraintLayout) objArr[18];
        this.J = constraintLayout2;
        constraintLayout2.setTag(null);
        RadioButton radioButton7 = (RadioButton) objArr[19];
        this.K = radioButton7;
        radioButton7.setTag(null);
        Button button = (Button) objArr[2];
        this.L = button;
        button.setTag(null);
        RadioButton radioButton8 = (RadioButton) objArr[20];
        this.M = radioButton8;
        radioButton8.setTag(null);
        RadioButton radioButton9 = (RadioButton) objArr[21];
        this.N = radioButton9;
        radioButton9.setTag(null);
        RadioButton radioButton10 = (RadioButton) objArr[22];
        this.O = radioButton10;
        radioButton10.setTag(null);
        RadioButton radioButton11 = (RadioButton) objArr[23];
        this.P = radioButton11;
        radioButton11.setTag(null);
        ConstraintLayout constraintLayout3 = (ConstraintLayout) objArr[24];
        this.Q = constraintLayout3;
        constraintLayout3.setTag(null);
        RadioButton radioButton12 = (RadioButton) objArr[25];
        this.R = radioButton12;
        radioButton12.setTag(null);
        RadioButton radioButton13 = (RadioButton) objArr[26];
        this.S = radioButton13;
        radioButton13.setTag(null);
        RadioButton radioButton14 = (RadioButton) objArr[27];
        this.T = radioButton14;
        radioButton14.setTag(null);
        RadioButton radioButton15 = (RadioButton) objArr[28];
        this.U = radioButton15;
        radioButton15.setTag(null);
        ConstraintLayout constraintLayout4 = (ConstraintLayout) objArr[29];
        this.V = constraintLayout4;
        constraintLayout4.setTag(null);
        Button button2 = (Button) objArr[3];
        this.W = button2;
        button2.setTag(null);
        RadioButton radioButton16 = (RadioButton) objArr[30];
        this.X = radioButton16;
        radioButton16.setTag(null);
        RadioButton radioButton17 = (RadioButton) objArr[31];
        this.Y = radioButton17;
        radioButton17.setTag(null);
        RadioButton radioButton18 = (RadioButton) objArr[32];
        this.Z = radioButton18;
        radioButton18.setTag(null);
        RadioButton radioButton19 = (RadioButton) objArr[33];
        this.a0 = radioButton19;
        radioButton19.setTag(null);
        ConstraintLayout constraintLayout5 = (ConstraintLayout) objArr[34];
        this.b0 = constraintLayout5;
        constraintLayout5.setTag(null);
        TextView textView = (TextView) objArr[35];
        this.c0 = textView;
        textView.setTag(null);
        RadioButton radioButton20 = (RadioButton) objArr[36];
        this.d0 = radioButton20;
        radioButton20.setTag(null);
        RadioButton radioButton21 = (RadioButton) objArr[37];
        this.e0 = radioButton21;
        radioButton21.setTag(null);
        ConstraintLayout constraintLayout6 = (ConstraintLayout) objArr[38];
        this.f0 = constraintLayout6;
        constraintLayout6.setTag(null);
        RadioButton radioButton22 = (RadioButton) objArr[39];
        this.g0 = radioButton22;
        radioButton22.setTag(null);
        RadioButton radioButton23 = (RadioButton) objArr[4];
        this.h0 = radioButton23;
        radioButton23.setTag(null);
        RadioButton radioButton24 = (RadioButton) objArr[40];
        this.i0 = radioButton24;
        radioButton24.setTag(null);
        RadioButton radioButton25 = (RadioButton) objArr[41];
        this.j0 = radioButton25;
        radioButton25.setTag(null);
        RadioButton radioButton26 = (RadioButton) objArr[42];
        this.k0 = radioButton26;
        radioButton26.setTag(null);
        RadioButton radioButton27 = (RadioButton) objArr[43];
        this.l0 = radioButton27;
        radioButton27.setTag(null);
        RadioButton radioButton28 = (RadioButton) objArr[44];
        this.m0 = radioButton28;
        radioButton28.setTag(null);
        RadioButton radioButton29 = (RadioButton) objArr[45];
        this.n0 = radioButton29;
        radioButton29.setTag(null);
        RadioButton radioButton30 = (RadioButton) objArr[46];
        this.o0 = radioButton30;
        radioButton30.setTag(null);
        RadioButton radioButton31 = (RadioButton) objArr[47];
        this.p0 = radioButton31;
        radioButton31.setTag(null);
        ConstraintLayout constraintLayout7 = (ConstraintLayout) objArr[48];
        this.q0 = constraintLayout7;
        constraintLayout7.setTag(null);
        CustomImageView customImageView = (CustomImageView) objArr[49];
        this.r0 = customImageView;
        customImageView.setTag(null);
        RadioButton radioButton32 = (RadioButton) objArr[5];
        this.s0 = radioButton32;
        radioButton32.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[52];
        this.t0 = linearLayout2;
        linearLayout2.setTag(null);
        TextView textView2 = (TextView) objArr[53];
        this.u0 = textView2;
        textView2.setTag(null);
        RadioButton radioButton33 = (RadioButton) objArr[6];
        this.v0 = radioButton33;
        radioButton33.setTag(null);
        RadioButton radioButton34 = (RadioButton) objArr[7];
        this.w0 = radioButton34;
        radioButton34.setTag(null);
        RadioButton radioButton35 = (RadioButton) objArr[8];
        this.x0 = radioButton35;
        radioButton35.setTag(null);
        SelectTextSettingsItem selectTextSettingsItem2 = (SelectTextSettingsItem) objArr[9];
        this.y0 = selectTextSettingsItem2;
        selectTextSettingsItem2.setTag(null);
        this.w.setTag(null);
        this.x.setTag(null);
        this.y.setTag(null);
        H(view);
        this.z0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 23);
        this.A0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 11);
        this.B0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 37);
        this.C0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 12);
        this.D0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 24);
        this.E0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 38);
        this.F0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 35);
        this.G0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 21);
        this.H0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 9);
        this.I0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 36);
        this.J0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 10);
        this.K0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 22);
        this.L0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 19);
        this.M0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 20);
        this.N0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 8);
        this.O0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 29);
        this.P0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 41);
        this.Q0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 42);
        this.R0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 30);
        this.S0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 18);
        this.T0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 6);
        this.U0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 39);
        this.V0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 7);
        this.W0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 40);
        this.X0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 33);
        this.Y0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 45);
        this.Z0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 16);
        this.a1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 28);
        this.b1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 3);
        this.c1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 15);
        this.d1 = new cn.manstep.phonemirrorBox.m0.a.b(this, 46);
        this.e1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 34);
        this.f1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 5);
        this.g1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 17);
        this.h1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 4);
        this.i1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 31);
        this.j1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 43);
        this.k1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 25);
        this.l1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 1);
        this.m1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 13);
        this.n1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 44);
        this.o1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 32);
        this.p1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 27);
        this.q1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 14);
        this.r1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 26);
        this.s1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 2);
        N();
    }
}
