package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LiveData;
import cn.manstep.phonemirrorBox.m0.a.a;
import cn.manstep.phonemirrorBox.widget.WaveformView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h extends g implements a.InterfaceC0091a {
    private static final ViewDataBinding.g k1 = null;
    private static final SparseIntArray l1;
    private final TextView A0;
    private final View.OnClickListener B0;
    private final View.OnClickListener C0;
    private final View.OnClickListener D0;
    private final View.OnClickListener E0;
    private final View.OnClickListener F0;
    private final View.OnClickListener G0;
    private final View.OnClickListener H0;
    private final View.OnClickListener I0;
    private final View.OnClickListener J0;
    private final View.OnClickListener K0;
    private final View.OnClickListener L0;
    private final View.OnClickListener M0;
    private final ConstraintLayout N;
    private final View.OnClickListener N0;
    private final LinearLayout O;
    private final View.OnClickListener O0;
    private final LinearLayout P;
    private final View.OnClickListener P0;
    private final TextView Q;
    private final View.OnClickListener Q0;
    private final ImageView R;
    private final View.OnClickListener R0;
    private final LinearLayout S;
    private final View.OnClickListener S0;
    private final TextView T;
    private final View.OnClickListener T0;
    private final LinearLayout U;
    private final View.OnClickListener U0;
    private final CheckBox V;
    private final View.OnClickListener V0;
    private final CheckBox W;
    private final View.OnClickListener W0;
    private final LinearLayout X;
    private final View.OnClickListener X0;
    private final LinearLayout Y;
    private final View.OnClickListener Y0;
    private final TextView Z;
    private final View.OnClickListener Z0;
    private final ImageView a0;
    private final View.OnClickListener a1;
    private final LinearLayout b0;
    private final View.OnClickListener b1;
    private final TextView c0;
    private final View.OnClickListener c1;
    private final LinearLayout d0;
    private final View.OnClickListener d1;
    private final LinearLayout e0;
    private final View.OnClickListener e1;
    private final TextView f0;
    private final View.OnClickListener f1;
    private final ImageView g0;
    private final View.OnClickListener g1;
    private final LinearLayout h0;
    private androidx.databinding.g h1;
    private final TextView i0;
    private androidx.databinding.g i1;
    private final SwitchCompat j0;
    private long j1;
    private final LinearLayout k0;
    private final TextView l0;
    private final LinearLayout m0;
    private final RadioButton n0;
    private final RadioButton o0;
    private final RadioButton p0;
    private final RadioButton q0;
    private final RadioButton r0;
    private final LinearLayout s0;
    private final LinearLayout t0;
    private final LinearLayout u0;
    private final LinearLayout v0;
    private final LinearLayout w0;
    private final TextView x0;
    private final ImageView y0;
    private final LinearLayout z0;

    class a implements androidx.databinding.g {
        a() {
        }

        @Override // androidx.databinding.g
        public void a() {
            boolean zIsChecked = h.this.V.isChecked();
            cn.manstep.phonemirrorBox.x0.a aVar = h.this.M;
            if (aVar != null) {
                androidx.lifecycle.o<Boolean> oVarY = aVar.y();
                if (oVarY != null) {
                    oVarY.k(Boolean.valueOf(zIsChecked));
                }
            }
        }
    }

    class b implements androidx.databinding.g {
        b() {
        }

        @Override // androidx.databinding.g
        public void a() {
            boolean zIsChecked = h.this.W.isChecked();
            cn.manstep.phonemirrorBox.x0.a aVar = h.this.M;
            if (aVar != null) {
                androidx.lifecycle.o<Boolean> oVarM = aVar.M();
                if (oVarM != null) {
                    oVarM.k(Boolean.valueOf(zIsChecked));
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        l1 = sparseIntArray;
        sparseIntArray.put(2131296880, 50);
        l1.put(2131296370, 51);
        l1.put(2131296405, 52);
        l1.put(2131296591, 53);
        l1.put(2131296934, 54);
        l1.put(2131296935, 55);
        l1.put(2131296716, 56);
        l1.put(2131296719, 57);
        l1.put(2131296715, 58);
        l1.put(2131296718, 59);
        l1.put(2131296735, 60);
        l1.put(2131296717, 61);
        l1.put(2131296950, 62);
        l1.put(2131296949, 63);
        l1.put(2131296951, 64);
        l1.put(2131296563, 65);
    }

    public h(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 66, k1, l1));
    }

    private boolean Q(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 4194304;
        }
        return true;
    }

    private boolean R(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 16384;
        }
        return true;
    }

    private boolean S(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 2048;
        }
        return true;
    }

    private boolean T(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 128;
        }
        return true;
    }

    private boolean U(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 262144;
        }
        return true;
    }

    private boolean V(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 2097152;
        }
        return true;
    }

    private boolean W(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 2;
        }
        return true;
    }

    private boolean X(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 32;
        }
        return true;
    }

    private boolean Y(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 1048576;
        }
        return true;
    }

    private boolean Z(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 8388608;
        }
        return true;
    }

    private boolean a0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 4096;
        }
        return true;
    }

    private boolean b0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 8192;
        }
        return true;
    }

    private boolean c0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 64;
        }
        return true;
    }

    private boolean d0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 256;
        }
        return true;
    }

    private boolean e0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 16;
        }
        return true;
    }

    private boolean f0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 65536;
        }
        return true;
    }

    private boolean g0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 16777216;
        }
        return true;
    }

    private boolean h0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 32768;
        }
        return true;
    }

    private boolean i0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 512;
        }
        return true;
    }

    private boolean j0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 4;
        }
        return true;
    }

    private boolean k0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 1;
        }
        return true;
    }

    private boolean l0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 131072;
        }
        return true;
    }

    private boolean m0(androidx.lifecycle.o<Boolean> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 1024;
        }
        return true;
    }

    private boolean n0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 8;
        }
        return true;
    }

    private boolean o0(androidx.lifecycle.o<Integer> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.j1 |= 524288;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.i0.g
    public void L(cn.manstep.phonemirrorBox.x0.e eVar) {
    }

    @Override // cn.manstep.phonemirrorBox.i0.g
    public void M(cn.manstep.phonemirrorBox.x0.a aVar) {
        this.M = aVar;
        synchronized (this) {
            this.j1 |= 33554432;
        }
        d(8);
        super.D();
    }

    public void P() {
        synchronized (this) {
            this.j1 = 134217728L;
        }
        D();
    }

    @Override // cn.manstep.phonemirrorBox.m0.a.a.InterfaceC0091a
    public final void b(int i, View view) {
        switch (i) {
            case 1:
                cn.manstep.phonemirrorBox.x0.a aVar = this.M;
                if (aVar != null) {
                    aVar.Q();
                }
                break;
            case 2:
                cn.manstep.phonemirrorBox.x0.a aVar2 = this.M;
                if (aVar2 != null) {
                    aVar2.W(view);
                }
                break;
            case 3:
                cn.manstep.phonemirrorBox.x0.a aVar3 = this.M;
                if (aVar3 != null) {
                    aVar3.Z();
                }
                break;
            case 4:
                cn.manstep.phonemirrorBox.x0.a aVar4 = this.M;
                if (aVar4 != null) {
                    aVar4.Z();
                }
                break;
            case 5:
                cn.manstep.phonemirrorBox.x0.a aVar5 = this.M;
                if (aVar5 != null) {
                    aVar5.Z();
                }
                break;
            case 6:
                cn.manstep.phonemirrorBox.x0.a aVar6 = this.M;
                if (aVar6 != null) {
                    aVar6.Y();
                }
                break;
            case 7:
                cn.manstep.phonemirrorBox.x0.a aVar7 = this.M;
                if (aVar7 != null) {
                    aVar7.j0();
                }
                break;
            case 8:
                cn.manstep.phonemirrorBox.x0.a aVar8 = this.M;
                if (aVar8 != null) {
                    aVar8.j0();
                }
                break;
            case 9:
                cn.manstep.phonemirrorBox.x0.a aVar9 = this.M;
                if (aVar9 != null) {
                    aVar9.j0();
                }
                break;
            case 10:
                cn.manstep.phonemirrorBox.x0.a aVar10 = this.M;
                if (aVar10 != null) {
                    aVar10.i0();
                }
                break;
            case 11:
                cn.manstep.phonemirrorBox.x0.a aVar11 = this.M;
                if (aVar11 != null) {
                    aVar11.U();
                }
                break;
            case 12:
                cn.manstep.phonemirrorBox.x0.a aVar12 = this.M;
                if (aVar12 != null) {
                    aVar12.U();
                }
                break;
            case 13:
                cn.manstep.phonemirrorBox.x0.a aVar13 = this.M;
                if (aVar13 != null) {
                    aVar13.U();
                }
                break;
            case 14:
                cn.manstep.phonemirrorBox.x0.a aVar14 = this.M;
                if (aVar14 != null) {
                    aVar14.T();
                }
                break;
            case 15:
                cn.manstep.phonemirrorBox.x0.a aVar15 = this.M;
                if (aVar15 != null) {
                    aVar15.g0();
                }
                break;
            case 16:
                cn.manstep.phonemirrorBox.x0.a aVar16 = this.M;
                if (aVar16 != null) {
                    aVar16.g0();
                }
                break;
            case 17:
                cn.manstep.phonemirrorBox.x0.a aVar17 = this.M;
                if (aVar17 != null) {
                    aVar17.g0();
                }
                break;
            case 18:
                cn.manstep.phonemirrorBox.x0.a aVar18 = this.M;
                if (aVar18 != null) {
                    aVar18.f0();
                }
                break;
            case 19:
                cn.manstep.phonemirrorBox.x0.a aVar19 = this.M;
                if (aVar19 != null) {
                    aVar19.d0();
                }
                break;
            case 20:
                cn.manstep.phonemirrorBox.x0.a aVar20 = this.M;
                if (aVar20 != null) {
                    aVar20.h0(16000);
                }
                break;
            case 21:
                cn.manstep.phonemirrorBox.x0.a aVar21 = this.M;
                if (aVar21 != null) {
                    aVar21.h0(48000);
                }
                break;
            case 22:
                cn.manstep.phonemirrorBox.x0.a aVar22 = this.M;
                if (aVar22 != null) {
                    aVar22.c0(1);
                }
                break;
            case 23:
                cn.manstep.phonemirrorBox.x0.a aVar23 = this.M;
                if (aVar23 != null) {
                    aVar23.c0(2);
                }
                break;
            case 24:
                cn.manstep.phonemirrorBox.x0.a aVar24 = this.M;
                if (aVar24 != null) {
                    aVar24.c0(3);
                }
                break;
            case 25:
                cn.manstep.phonemirrorBox.x0.a aVar25 = this.M;
                if (aVar25 != null) {
                    aVar25.X(0, view);
                }
                break;
            case 26:
                cn.manstep.phonemirrorBox.x0.a aVar26 = this.M;
                if (aVar26 != null) {
                    aVar26.X(1, view);
                }
                break;
            case 27:
                cn.manstep.phonemirrorBox.x0.a aVar27 = this.M;
                if (aVar27 != null) {
                    aVar27.X(2, view);
                }
                break;
            case 28:
                cn.manstep.phonemirrorBox.x0.a aVar28 = this.M;
                if (aVar28 != null) {
                    aVar28.X(3, view);
                }
                break;
            case 29:
                cn.manstep.phonemirrorBox.x0.a aVar29 = this.M;
                if (aVar29 != null) {
                    aVar29.X(4, view);
                }
                break;
            case 30:
                cn.manstep.phonemirrorBox.x0.a aVar30 = this.M;
                if (aVar30 != null) {
                    aVar30.X(5, view);
                }
                break;
            case 31:
                cn.manstep.phonemirrorBox.x0.a aVar31 = this.M;
                if (aVar31 != null) {
                    aVar31.X(6, view);
                }
                break;
            case 32:
                cn.manstep.phonemirrorBox.x0.a aVar32 = this.M;
                if (aVar32 != null) {
                    aVar32.X(7, view);
                }
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:203:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0523  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0584  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x060a  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x06b9  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x06da  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x06e5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x06ea  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x06f2  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x070d  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x071a  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x073b  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0746  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0774  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x078a  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0880  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x088e  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x08a8  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x08cb  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x08d8  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x08fb  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x090a  */
    /* JADX WARN: Removed duplicated region for block: B:489:0x0919  */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0928  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0937  */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0944  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0951  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0960  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x096f  */
    /* JADX WARN: Removed duplicated region for block: B:510:0x098c  */
    /* JADX WARN: Removed duplicated region for block: B:513:0x09a2  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x09c8  */
    /* JADX WARN: Removed duplicated region for block: B:519:0x09d7  */
    /* JADX WARN: Removed duplicated region for block: B:522:0x09e6  */
    /* JADX WARN: Removed duplicated region for block: B:525:0x09f5  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0a04  */
    /* JADX WARN: Removed duplicated region for block: B:531:0x0a13  */
    /* JADX WARN: Removed duplicated region for block: B:534:0x0a20  */
    /* JADX WARN: Removed duplicated region for block: B:537:0x0a2f  */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0a3e  */
    /* JADX WARN: Removed duplicated region for block: B:543:0x0a4d  */
    /* JADX WARN: Removed duplicated region for block: B:550:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void n() {
        long j;
        String str;
        String str2;
        int i;
        boolean z;
        String str3;
        boolean z2;
        boolean z3;
        String str4;
        int i2;
        int i3;
        String str5;
        int i4;
        int i5;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        int i6;
        String str6;
        boolean z10;
        String str7;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        int i7;
        String str8;
        boolean z16;
        String str9;
        boolean z17;
        boolean z18;
        int i8;
        String str10;
        int i9;
        long j2;
        int i10;
        int i11;
        long j3;
        int i12;
        int i13;
        long j4;
        int i14;
        int i15;
        long j5;
        boolean z19;
        String str11;
        String str12;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        String str13;
        boolean z20;
        boolean z21;
        String strValueOf;
        boolean zF;
        String strValueOf2;
        String strValueOf3;
        boolean z22;
        int iE;
        long j6;
        boolean z23;
        boolean zF2;
        String strValueOf4;
        boolean zF3;
        String strValueOf5;
        int i21;
        int i22;
        int i23;
        String str14;
        boolean zF4;
        boolean z24;
        boolean zF5;
        boolean z25;
        boolean zF6;
        boolean z26;
        boolean zF7;
        int i24;
        boolean z27;
        int i25;
        String strValueOf6;
        String str15;
        String strValueOf7;
        long j7;
        String str16;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        boolean z28;
        boolean z29;
        boolean z30;
        boolean zF8;
        boolean z31;
        String strValueOf8;
        String str17;
        boolean zF9;
        boolean z32;
        boolean zF10;
        boolean z33;
        String strValueOf9;
        String str18;
        boolean zF11;
        long j8;
        LiveData<Boolean> liveDataA;
        androidx.lifecycle.o<Integer> oVarW;
        LiveData<Boolean> liveDataA2;
        LiveData<Boolean> liveDataA3;
        androidx.lifecycle.o<Integer> oVarO;
        LiveData<Boolean> liveDataA4;
        androidx.lifecycle.o<Integer> oVarK;
        androidx.lifecycle.o<Boolean> oVarE;
        long j9;
        long j10;
        androidx.lifecycle.o<Integer> oVarG;
        androidx.lifecycle.o<Integer> oVarX;
        androidx.lifecycle.o<Boolean> oVarZ;
        androidx.lifecycle.o<Boolean> oVarY;
        LiveData<Boolean> liveDataA5;
        androidx.lifecycle.o<Boolean> oVarM;
        long j11;
        long j12;
        int i31;
        androidx.lifecycle.o<Integer> oVarC;
        androidx.lifecycle.o<Integer> oVar;
        synchronized (this) {
            j = this.j1;
            this.j1 = 0L;
        }
        cn.manstep.phonemirrorBox.x0.a aVar = this.M;
        if ((201326591 & j) != 0) {
            if ((j & 167772161) != 0) {
                androidx.lifecycle.o<Integer> oVarJ = aVar != null ? aVar.J() : null;
                J(0, oVarJ);
                strValueOf = String.valueOf(ViewDataBinding.E(oVarJ != null ? oVarJ.e() : null));
            } else {
                strValueOf = null;
            }
            if ((j & 167772162) != 0) {
                LiveData<Boolean> liveDataA6 = aVar != null ? aVar.A(4) : null;
                J(1, liveDataA6);
                zF = ViewDataBinding.F(liveDataA6 != null ? liveDataA6.e() : null);
            } else {
                zF = false;
            }
            if ((j & 167772164) != 0) {
                androidx.lifecycle.o<Integer> oVarI = aVar != null ? aVar.I() : null;
                J(2, oVarI);
                strValueOf2 = String.valueOf(ViewDataBinding.E(oVarI != null ? oVarI.e() : null));
            } else {
                strValueOf2 = null;
            }
            if ((j & 167772168) != 0) {
                androidx.lifecycle.o<Integer> oVarN = aVar != null ? aVar.N() : null;
                J(3, oVarN);
                strValueOf3 = String.valueOf(ViewDataBinding.E(oVarN != null ? oVarN.e() : null));
            } else {
                strValueOf3 = null;
            }
            long j13 = j & 167772176;
            if (j13 != 0) {
                if (aVar != null) {
                    androidx.lifecycle.o<Integer> oVarD = aVar.D();
                    z22 = aVar.f1960d;
                    oVar = oVarD;
                } else {
                    z22 = false;
                    oVar = null;
                }
                J(4, oVar);
                if (j13 != 0) {
                    j = z22 ? j | 2305843009213693952L : j | 1152921504606846976L;
                }
                iE = ViewDataBinding.E(oVar != null ? oVar.e() : null);
                z23 = iE > 0;
                if ((j & 167772176) != 0) {
                    j = z23 ? j | 137438953472L | 140737488355328L | 2251799813685248L | 576460752303423488L : j | 68719476736L | 70368744177664L | 1125899906842624L | 288230376151711744L;
                }
                if ((j & 2305843009213693952L) != 0) {
                    j |= z23 ? 562949953421312L : 281474976710656L;
                }
                j6 = 167772192;
            } else {
                z22 = false;
                iE = 0;
                j6 = 167772192;
                z23 = false;
            }
            if ((j & j6) != 0) {
                LiveData<Boolean> liveDataA7 = aVar != null ? aVar.A(5) : null;
                J(5, liveDataA7);
                zF2 = ViewDataBinding.F(liveDataA7 != null ? liveDataA7.e() : null);
            } else {
                zF2 = false;
            }
            if ((j & 167772224) != 0) {
                androidx.lifecycle.o<Integer> oVarB = aVar != null ? aVar.B() : null;
                J(6, oVarB);
                strValueOf4 = String.valueOf(ViewDataBinding.E(oVarB != null ? oVarB.e() : null));
            } else {
                strValueOf4 = null;
            }
            if ((j & 167772288) != 0) {
                LiveData<Boolean> liveDataA8 = aVar != null ? aVar.A(1) : null;
                J(7, liveDataA8);
                zF3 = ViewDataBinding.F(liveDataA8 != null ? liveDataA8.e() : null);
            } else {
                zF3 = false;
            }
            if ((j & 167772416) != 0) {
                if (aVar != null) {
                    oVarC = aVar.C();
                    i31 = 8;
                } else {
                    i31 = 8;
                    oVarC = null;
                }
                J(i31, oVarC);
                strValueOf5 = String.valueOf(ViewDataBinding.E(oVarC != null ? oVarC.e() : null));
            } else {
                strValueOf5 = null;
            }
            long j14 = j & 167772672;
            if (j14 != 0) {
                androidx.lifecycle.o<Boolean> oVarH = aVar != null ? aVar.H() : null;
                J(9, oVarH);
                boolean zF12 = ViewDataBinding.F(oVarH != null ? oVarH.e() : null);
                if (j14 != 0) {
                    if (zF12) {
                        j11 = j | 8796093022208L;
                        j12 = 35184372088832L;
                    } else {
                        j11 = j | 4398046511104L;
                        j12 = 17592186044416L;
                    }
                    j = j11 | j12;
                }
                i22 = zF12 ? 8 : 0;
                i21 = zF12 ? 0 : 8;
            } else {
                i21 = 0;
                i22 = 0;
            }
            if ((j & 167773184) != 0) {
                if (aVar != null) {
                    str14 = strValueOf5;
                    i23 = i21;
                    oVarM = aVar.M();
                } else {
                    i23 = i21;
                    str14 = strValueOf5;
                    oVarM = null;
                }
                J(10, oVarM);
                zF4 = ViewDataBinding.F(oVarM != null ? oVarM.e() : null);
            } else {
                i23 = i21;
                str14 = strValueOf5;
                zF4 = false;
            }
            if ((j & 167774208) != 0) {
                if (aVar != null) {
                    z24 = zF4;
                    liveDataA5 = aVar.A(0);
                } else {
                    z24 = zF4;
                    liveDataA5 = null;
                }
                J(11, liveDataA5);
                zF5 = ViewDataBinding.F(liveDataA5 != null ? liveDataA5.e() : null);
            } else {
                z24 = zF4;
                zF5 = false;
            }
            if ((j & 167776256) != 0) {
                if (aVar != null) {
                    oVarY = aVar.y();
                    z25 = zF5;
                } else {
                    z25 = zF5;
                    oVarY = null;
                }
                J(12, oVarY);
                zF6 = ViewDataBinding.F(oVarY != null ? oVarY.e() : null);
            } else {
                z25 = zF5;
                zF6 = false;
            }
            long j15 = j & 167780352;
            if (j15 != 0) {
                if (aVar != null) {
                    oVarZ = aVar.z();
                    z26 = zF6;
                } else {
                    z26 = zF6;
                    oVarZ = null;
                }
                J(13, oVarZ);
                zF7 = ViewDataBinding.F(oVarZ != null ? oVarZ.e() : null);
                boolean z34 = !zF7;
                if (j15 != 0) {
                    j |= z34 ? 536870912L : 268435456L;
                }
                if (!z34) {
                    i24 = 8;
                }
                if ((j & 167788544) == 0) {
                    if (aVar != null) {
                        i25 = i24;
                        z27 = zF7;
                        oVarX = aVar.x();
                    } else {
                        z27 = zF7;
                        i25 = i24;
                        oVarX = null;
                    }
                    J(14, oVarX);
                    strValueOf6 = String.valueOf(ViewDataBinding.E(oVarX != null ? oVarX.e() : null));
                } else {
                    z27 = zF7;
                    i25 = i24;
                    strValueOf6 = null;
                }
                if ((j & 167804928) == 0) {
                    if (aVar != null) {
                        oVarG = aVar.G();
                        str15 = strValueOf6;
                    } else {
                        str15 = strValueOf6;
                        oVarG = null;
                    }
                    J(15, oVarG);
                    strValueOf7 = String.valueOf(ViewDataBinding.E(oVarG != null ? oVarG.e() : null));
                } else {
                    str15 = strValueOf6;
                    strValueOf7 = null;
                }
                j7 = j & 167837696;
                if (j7 == 0) {
                    if (aVar != null) {
                        oVarE = aVar.E();
                        str16 = strValueOf7;
                    } else {
                        str16 = strValueOf7;
                        oVarE = null;
                    }
                    J(16, oVarE);
                    boolean zF13 = ViewDataBinding.F(oVarE != null ? oVarE.e() : null);
                    if (j7 != 0) {
                        if (zF13) {
                            j9 = j | 2147483648L;
                            j10 = 34359738368L;
                        } else {
                            j9 = j | 1073741824;
                            j10 = 17179869184L;
                        }
                        j = j9 | j10;
                    }
                    i27 = zF13 ? 0 : 8;
                    i28 = zF13 ? 8 : 0;
                    boolean z35 = !zF13;
                    if ((j & 167837696) != 0) {
                        j |= z35 ? 8589934592L : 4294967296L;
                    }
                    i26 = z35 ? 0 : 8;
                } else {
                    str16 = strValueOf7;
                    i26 = 0;
                    i27 = 0;
                    i28 = 0;
                }
                if ((j & 167903232) == 0) {
                    if (aVar != null) {
                        i30 = i27;
                        i29 = i26;
                        oVarK = aVar.K();
                    } else {
                        i29 = i26;
                        i30 = i27;
                        oVarK = null;
                    }
                    J(17, oVarK);
                    int iE2 = ViewDataBinding.E(oVarK != null ? oVarK.e() : null);
                    boolean z36 = iE2 == 16000;
                    z28 = iE2 == 48000;
                    z29 = z36;
                } else {
                    i29 = i26;
                    i30 = i27;
                    z28 = false;
                    z29 = false;
                }
                boolean z37 = z28;
                if ((j & 168034304) == 0) {
                    if (aVar != null) {
                        liveDataA4 = aVar.A(2);
                        z30 = z29;
                    } else {
                        z30 = z29;
                        liveDataA4 = null;
                    }
                    J(18, liveDataA4);
                    zF8 = ViewDataBinding.F(liveDataA4 != null ? liveDataA4.e() : null);
                } else {
                    z30 = z29;
                    zF8 = false;
                }
                if ((j & 168296448) == 0) {
                    if (aVar != null) {
                        oVarO = aVar.O();
                        z31 = zF8;
                    } else {
                        z31 = zF8;
                        oVarO = null;
                    }
                    J(19, oVarO);
                    strValueOf8 = String.valueOf(ViewDataBinding.E(oVarO != null ? oVarO.e() : null));
                } else {
                    z31 = zF8;
                    strValueOf8 = null;
                }
                if ((j & 168820736) == 0) {
                    if (aVar != null) {
                        liveDataA3 = aVar.A(6);
                        str17 = strValueOf8;
                    } else {
                        str17 = strValueOf8;
                        liveDataA3 = null;
                    }
                    J(20, liveDataA3);
                    zF9 = ViewDataBinding.F(liveDataA3 != null ? liveDataA3.e() : null);
                } else {
                    str17 = strValueOf8;
                    zF9 = false;
                }
                if ((j & 169869312) == 0) {
                    if (aVar != null) {
                        liveDataA2 = aVar.A(3);
                        z32 = zF9;
                    } else {
                        z32 = zF9;
                        liveDataA2 = null;
                    }
                    J(21, liveDataA2);
                    zF10 = ViewDataBinding.F(liveDataA2 != null ? liveDataA2.e() : null);
                } else {
                    z32 = zF9;
                    zF10 = false;
                }
                if ((j & 171966464) == 0) {
                    if (aVar != null) {
                        oVarW = aVar.w();
                        z33 = zF10;
                    } else {
                        z33 = zF10;
                        oVarW = null;
                    }
                    J(22, oVarW);
                    strValueOf9 = String.valueOf(ViewDataBinding.E(oVarW != null ? oVarW.e() : null));
                } else {
                    z33 = zF10;
                    strValueOf9 = null;
                }
                if ((j & 176160768) == 0) {
                    if (aVar != null) {
                        liveDataA = aVar.A(7);
                        str18 = strValueOf9;
                    } else {
                        str18 = strValueOf9;
                        liveDataA = null;
                    }
                    J(23, liveDataA);
                    zF11 = ViewDataBinding.F(liveDataA != null ? liveDataA.e() : null);
                } else {
                    str18 = strValueOf9;
                    zF11 = false;
                }
                j8 = j & 184549376;
                if (j8 == 0) {
                    androidx.lifecycle.o<Integer> oVarF = aVar != null ? aVar.F() : null;
                    J(24, oVarF);
                    int iE3 = ViewDataBinding.E(oVarF != null ? oVarF.e() : null);
                    boolean z38 = zF11;
                    boolean z39 = iE3 == 2;
                    boolean z40 = iE3 == 3;
                    boolean z41 = iE3 == 1;
                    if (j8 != 0) {
                        j |= z40 ? 36028797018963968L : 18014398509481984L;
                    }
                    i7 = z40 ? 0 : 8;
                    z16 = zF;
                    str9 = strValueOf4;
                    z17 = zF3;
                    i2 = iE;
                    z18 = zF2;
                    i8 = i22;
                    str8 = str14;
                    i5 = i25;
                    z2 = z26;
                    str3 = str15;
                    i = i29;
                    str6 = str16;
                    i4 = i30;
                    z11 = z31;
                    z13 = z32;
                    z12 = z33;
                    z14 = z38;
                    z15 = z39;
                    z6 = z41;
                    str5 = strValueOf;
                    str = strValueOf3;
                    z10 = z23;
                    i6 = i23;
                    z = z24;
                    z4 = z25;
                    z3 = z27;
                    z7 = z37;
                    z8 = z30;
                    z5 = z40;
                    z9 = z22;
                    str2 = str17;
                    str4 = str18;
                } else {
                    boolean z42 = zF11;
                    z16 = zF;
                    str9 = strValueOf4;
                    str = strValueOf3;
                    z17 = zF3;
                    i2 = iE;
                    z18 = zF2;
                    i8 = i22;
                    str8 = str14;
                    z3 = z27;
                    i5 = i25;
                    z2 = z26;
                    str3 = str15;
                    i = i29;
                    str6 = str16;
                    i4 = i30;
                    z11 = z31;
                    str2 = str17;
                    z13 = z32;
                    z12 = z33;
                    z14 = z42;
                    z6 = false;
                    z15 = false;
                    i7 = 0;
                    str5 = strValueOf;
                    z9 = z22;
                    z10 = z23;
                    i6 = i23;
                    z = z24;
                    z4 = z25;
                    z7 = z37;
                    z8 = z30;
                    str4 = str18;
                    z5 = false;
                }
                int i32 = i28;
                str7 = strValueOf2;
                i3 = i32;
            } else {
                z26 = zF6;
                zF7 = false;
            }
            i24 = 0;
            if ((j & 167788544) == 0) {
            }
            if ((j & 167804928) == 0) {
            }
            j7 = j & 167837696;
            if (j7 == 0) {
            }
            if ((j & 167903232) == 0) {
            }
            boolean z372 = z28;
            if ((j & 168034304) == 0) {
            }
            if ((j & 168296448) == 0) {
            }
            if ((j & 168820736) == 0) {
            }
            if ((j & 169869312) == 0) {
            }
            if ((j & 171966464) == 0) {
            }
            if ((j & 176160768) == 0) {
            }
            j8 = j & 184549376;
            if (j8 == 0) {
            }
            int i322 = i28;
            str7 = strValueOf2;
            i3 = i322;
        } else {
            str = null;
            str2 = null;
            i = 0;
            z = false;
            str3 = null;
            z2 = false;
            z3 = false;
            str4 = null;
            i2 = 0;
            i3 = 0;
            str5 = null;
            i4 = 0;
            i5 = 0;
            z4 = false;
            z5 = false;
            z6 = false;
            z7 = false;
            z8 = false;
            z9 = false;
            i6 = 0;
            str6 = null;
            z10 = false;
            str7 = null;
            z11 = false;
            z12 = false;
            z13 = false;
            z14 = false;
            z15 = false;
            i7 = 0;
            str8 = null;
            z16 = false;
            str9 = null;
            z17 = false;
            z18 = false;
            i8 = 0;
        }
        long j16 = j & 137438953472L;
        if (j16 != 0) {
            str10 = str5;
            boolean z43 = i2 == 3;
            if (j16 != 0) {
                j |= z43 ? 144115188075855872L : 72057594037927936L;
            }
            if (!z43) {
                i9 = 8;
            }
            j2 = j & 140737488355328L;
            if (j2 == 0) {
                i10 = i9;
                boolean z44 = i2 == 4;
                if (j2 != 0) {
                    j |= z44 ? 549755813888L : 274877906944L;
                }
                if (!z44) {
                    i11 = 8;
                }
                int i33 = ((j & 2305843009213693952L) == 0 || !z10) ? 0 : 8;
                j3 = j & 2251799813685248L;
                if (j3 != 0) {
                    i12 = i11;
                    boolean z45 = i2 == 2;
                    if (j3 != 0) {
                        j |= z45 ? 9007199254740992L : 4503599627370496L;
                    }
                    if (!z45) {
                        i13 = 8;
                    }
                    j4 = j & 576460752303423488L;
                    if (j4 == 0) {
                        i14 = i13;
                        boolean z46 = i2 == 1;
                        if (j4 != 0) {
                            j |= z46 ? 2199023255552L : 1099511627776L;
                        }
                        if (!z46) {
                            i15 = 8;
                        }
                        j5 = j & 167772176;
                        if (j5 != 0) {
                            i20 = z10 ? i10 : 0;
                            if (!z10) {
                                i12 = 0;
                            }
                            if (!z10) {
                                i14 = 0;
                            }
                            int i34 = z10 ? i15 : 0;
                            int i35 = z9 ? i33 : 8;
                            z19 = z;
                            str12 = str4;
                            i18 = i35;
                            i19 = i14;
                            i16 = i34;
                            int i36 = i12;
                            str11 = str3;
                            i17 = i36;
                        } else {
                            z19 = z;
                            str11 = str3;
                            str12 = str4;
                            i16 = 0;
                            i17 = 0;
                            i18 = 0;
                            i19 = 0;
                            i20 = 0;
                        }
                        if ((j & 134217728) != 0) {
                            z20 = z2;
                            str13 = str;
                            this.v.setOnClickListener(this.W0);
                            this.P.setOnClickListener(this.L0);
                            this.Q.setOnClickListener(this.E0);
                            this.R.setOnClickListener(this.G0);
                            this.S.setOnClickListener(this.D0);
                            z21 = z3;
                            androidx.databinding.j.a.b(this.V, null, this.h1);
                            androidx.databinding.j.a.b(this.W, null, this.i1);
                            this.X.setOnClickListener(this.b1);
                            this.Z.setOnClickListener(this.e1);
                            this.a0.setOnClickListener(this.U0);
                            this.b0.setOnClickListener(this.a1);
                            this.e0.setOnClickListener(this.X0);
                            this.f0.setOnClickListener(this.O0);
                            this.g0.setOnClickListener(this.Q0);
                            this.h0.setOnClickListener(this.J0);
                            this.j0.setOnClickListener(this.Z0);
                            this.k0.setOnClickListener(this.K0);
                            this.n0.setOnClickListener(this.F0);
                            this.o0.setOnClickListener(this.f1);
                            this.p0.setOnClickListener(this.g1);
                            this.q0.setOnClickListener(this.c1);
                            this.r0.setOnClickListener(this.d1);
                            this.w0.setOnClickListener(this.P0);
                            this.x0.setOnClickListener(this.N0);
                            this.y0.setOnClickListener(this.S0);
                            this.z0.setOnClickListener(this.I0);
                            this.D.setOnClickListener(this.V0);
                            this.E.setOnClickListener(this.T0);
                            this.F.setOnClickListener(this.Y0);
                            this.G.setOnClickListener(this.M0);
                            this.H.setOnClickListener(this.R0);
                            this.I.setOnClickListener(this.H0);
                            this.J.setOnClickListener(this.B0);
                            this.K.setOnClickListener(this.C0);
                        } else {
                            str13 = str;
                            z20 = z2;
                            z21 = z3;
                        }
                        if ((j & 167837696) != 0) {
                            this.v.setVisibility(i);
                            this.V.setVisibility(i3);
                            this.W.setVisibility(i3);
                            this.v0.setVisibility(i4);
                        }
                        if (j5 != 0) {
                            this.O.setVisibility(i20);
                            this.U.setVisibility(i19);
                            this.Y.setVisibility(i18);
                            this.d0.setVisibility(i17);
                            this.t0.setVisibility(i16);
                        }
                        if ((168296448 & j) != 0) {
                            androidx.databinding.j.b.b(this.Q, str2);
                        }
                        if ((167780352 & j) != 0) {
                            this.S.setVisibility(i5);
                            this.b0.setVisibility(i5);
                            this.h0.setVisibility(i5);
                            androidx.databinding.j.a.a(this.j0, z21);
                            this.z0.setVisibility(i5);
                        }
                        if ((j & 167772168) != 0) {
                            androidx.databinding.j.b.b(this.T, str13);
                        }
                        if ((167776256 & j) != 0) {
                            androidx.databinding.j.a.a(this.V, z20);
                        }
                        if ((167773184 & j) != 0) {
                            androidx.databinding.j.a.a(this.W, z19);
                        }
                        if ((167788544 & j) != 0) {
                            androidx.databinding.j.b.b(this.Z, str11);
                        }
                        if ((171966464 & j) != 0) {
                            androidx.databinding.j.b.b(this.c0, str12);
                        }
                        if ((j & 167772161) != 0) {
                            androidx.databinding.j.b.b(this.f0, str10);
                        }
                        if ((j & 167772164) != 0) {
                            androidx.databinding.j.b.b(this.i0, str7);
                        }
                        if ((167804928 & j) != 0) {
                            androidx.databinding.j.b.b(this.l0, str6);
                        }
                        if ((167772672 & j) != 0) {
                            int i37 = i8;
                            this.m0.setVisibility(i37);
                            this.u0.setVisibility(i37);
                            this.L.setVisibility(i6);
                        }
                        if ((167903232 & j) != 0) {
                            androidx.databinding.j.a.a(this.n0, z8);
                            androidx.databinding.j.a.a(this.o0, z7);
                        }
                        if ((184549376 & j) != 0) {
                            androidx.databinding.j.a.a(this.p0, z6);
                            androidx.databinding.j.a.a(this.q0, z15);
                            androidx.databinding.j.a.a(this.r0, z5);
                            this.s0.setVisibility(i7);
                        }
                        if ((167772416 & j) != 0) {
                            androidx.databinding.j.b.b(this.x0, str8);
                        }
                        if ((167772224 & j) != 0) {
                            androidx.databinding.j.b.b(this.A0, str9);
                        }
                        if ((167774208 & j) != 0) {
                            androidx.databinding.j.a.a(this.D, z4);
                        }
                        if ((167772288 & j) != 0) {
                            androidx.databinding.j.a.a(this.E, z17);
                        }
                        if ((168034304 & j) != 0) {
                            androidx.databinding.j.a.a(this.F, z11);
                        }
                        if ((169869312 & j) != 0) {
                            androidx.databinding.j.a.a(this.G, z12);
                        }
                        if ((j & 167772162) != 0) {
                            androidx.databinding.j.a.a(this.H, z16);
                        }
                        if ((167772192 & j) != 0) {
                            androidx.databinding.j.a.a(this.I, z18);
                        }
                        if ((168820736 & j) != 0) {
                            androidx.databinding.j.a.a(this.J, z13);
                        }
                        if ((j & 176160768) != 0) {
                            androidx.databinding.j.a.a(this.K, z14);
                            return;
                        }
                        return;
                    }
                    i14 = i13;
                    i15 = 0;
                    j5 = j & 167772176;
                    if (j5 != 0) {
                    }
                    if ((j & 134217728) != 0) {
                    }
                    if ((j & 167837696) != 0) {
                    }
                    if (j5 != 0) {
                    }
                    if ((168296448 & j) != 0) {
                    }
                    if ((167780352 & j) != 0) {
                    }
                    if ((j & 167772168) != 0) {
                    }
                    if ((167776256 & j) != 0) {
                    }
                    if ((167773184 & j) != 0) {
                    }
                    if ((167788544 & j) != 0) {
                    }
                    if ((171966464 & j) != 0) {
                    }
                    if ((j & 167772161) != 0) {
                    }
                    if ((j & 167772164) != 0) {
                    }
                    if ((167804928 & j) != 0) {
                    }
                    if ((167772672 & j) != 0) {
                    }
                    if ((167903232 & j) != 0) {
                    }
                    if ((184549376 & j) != 0) {
                    }
                    if ((167772416 & j) != 0) {
                    }
                    if ((167772224 & j) != 0) {
                    }
                    if ((167774208 & j) != 0) {
                    }
                    if ((167772288 & j) != 0) {
                    }
                    if ((168034304 & j) != 0) {
                    }
                    if ((169869312 & j) != 0) {
                    }
                    if ((j & 167772162) != 0) {
                    }
                    if ((167772192 & j) != 0) {
                    }
                    if ((168820736 & j) != 0) {
                    }
                    if ((j & 176160768) != 0) {
                    }
                } else {
                    i12 = i11;
                }
                i13 = 0;
                j4 = j & 576460752303423488L;
                if (j4 == 0) {
                }
                i15 = 0;
                j5 = j & 167772176;
                if (j5 != 0) {
                }
                if ((j & 134217728) != 0) {
                }
                if ((j & 167837696) != 0) {
                }
                if (j5 != 0) {
                }
                if ((168296448 & j) != 0) {
                }
                if ((167780352 & j) != 0) {
                }
                if ((j & 167772168) != 0) {
                }
                if ((167776256 & j) != 0) {
                }
                if ((167773184 & j) != 0) {
                }
                if ((167788544 & j) != 0) {
                }
                if ((171966464 & j) != 0) {
                }
                if ((j & 167772161) != 0) {
                }
                if ((j & 167772164) != 0) {
                }
                if ((167804928 & j) != 0) {
                }
                if ((167772672 & j) != 0) {
                }
                if ((167903232 & j) != 0) {
                }
                if ((184549376 & j) != 0) {
                }
                if ((167772416 & j) != 0) {
                }
                if ((167772224 & j) != 0) {
                }
                if ((167774208 & j) != 0) {
                }
                if ((167772288 & j) != 0) {
                }
                if ((168034304 & j) != 0) {
                }
                if ((169869312 & j) != 0) {
                }
                if ((j & 167772162) != 0) {
                }
                if ((167772192 & j) != 0) {
                }
                if ((168820736 & j) != 0) {
                }
                if ((j & 176160768) != 0) {
                }
            } else {
                i10 = i9;
            }
            i11 = 0;
            if ((j & 2305843009213693952L) == 0) {
            }
            j3 = j & 2251799813685248L;
            if (j3 != 0) {
            }
            i13 = 0;
            j4 = j & 576460752303423488L;
            if (j4 == 0) {
            }
            i15 = 0;
            j5 = j & 167772176;
            if (j5 != 0) {
            }
            if ((j & 134217728) != 0) {
            }
            if ((j & 167837696) != 0) {
            }
            if (j5 != 0) {
            }
            if ((168296448 & j) != 0) {
            }
            if ((167780352 & j) != 0) {
            }
            if ((j & 167772168) != 0) {
            }
            if ((167776256 & j) != 0) {
            }
            if ((167773184 & j) != 0) {
            }
            if ((167788544 & j) != 0) {
            }
            if ((171966464 & j) != 0) {
            }
            if ((j & 167772161) != 0) {
            }
            if ((j & 167772164) != 0) {
            }
            if ((167804928 & j) != 0) {
            }
            if ((167772672 & j) != 0) {
            }
            if ((167903232 & j) != 0) {
            }
            if ((184549376 & j) != 0) {
            }
            if ((167772416 & j) != 0) {
            }
            if ((167772224 & j) != 0) {
            }
            if ((167774208 & j) != 0) {
            }
            if ((167772288 & j) != 0) {
            }
            if ((168034304 & j) != 0) {
            }
            if ((169869312 & j) != 0) {
            }
            if ((j & 167772162) != 0) {
            }
            if ((167772192 & j) != 0) {
            }
            if ((168820736 & j) != 0) {
            }
            if ((j & 176160768) != 0) {
            }
        } else {
            str10 = str5;
        }
        i9 = 0;
        j2 = j & 140737488355328L;
        if (j2 == 0) {
        }
        i11 = 0;
        if ((j & 2305843009213693952L) == 0) {
        }
        j3 = j & 2251799813685248L;
        if (j3 != 0) {
        }
        i13 = 0;
        j4 = j & 576460752303423488L;
        if (j4 == 0) {
        }
        i15 = 0;
        j5 = j & 167772176;
        if (j5 != 0) {
        }
        if ((j & 134217728) != 0) {
        }
        if ((j & 167837696) != 0) {
        }
        if (j5 != 0) {
        }
        if ((168296448 & j) != 0) {
        }
        if ((167780352 & j) != 0) {
        }
        if ((j & 167772168) != 0) {
        }
        if ((167776256 & j) != 0) {
        }
        if ((167773184 & j) != 0) {
        }
        if ((167788544 & j) != 0) {
        }
        if ((171966464 & j) != 0) {
        }
        if ((j & 167772161) != 0) {
        }
        if ((j & 167772164) != 0) {
        }
        if ((167804928 & j) != 0) {
        }
        if ((167772672 & j) != 0) {
        }
        if ((167903232 & j) != 0) {
        }
        if ((184549376 & j) != 0) {
        }
        if ((167772416 & j) != 0) {
        }
        if ((167772224 & j) != 0) {
        }
        if ((167774208 & j) != 0) {
        }
        if ((167772288 & j) != 0) {
        }
        if ((168034304 & j) != 0) {
        }
        if ((169869312 & j) != 0) {
        }
        if ((j & 167772162) != 0) {
        }
        if ((167772192 & j) != 0) {
        }
        if ((168820736 & j) != 0) {
        }
        if ((j & 176160768) != 0) {
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.j1 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return k0((androidx.lifecycle.o) obj, i2);
            case 1:
                return W((LiveData) obj, i2);
            case 2:
                return j0((androidx.lifecycle.o) obj, i2);
            case 3:
                return n0((androidx.lifecycle.o) obj, i2);
            case 4:
                return e0((androidx.lifecycle.o) obj, i2);
            case 5:
                return X((LiveData) obj, i2);
            case 6:
                return c0((androidx.lifecycle.o) obj, i2);
            case 7:
                return T((LiveData) obj, i2);
            case 8:
                return d0((androidx.lifecycle.o) obj, i2);
            case 9:
                return i0((androidx.lifecycle.o) obj, i2);
            case 10:
                return m0((androidx.lifecycle.o) obj, i2);
            case 11:
                return S((LiveData) obj, i2);
            case 12:
                return a0((androidx.lifecycle.o) obj, i2);
            case 13:
                return b0((androidx.lifecycle.o) obj, i2);
            case 14:
                return R((androidx.lifecycle.o) obj, i2);
            case 15:
                return h0((androidx.lifecycle.o) obj, i2);
            case 16:
                return f0((androidx.lifecycle.o) obj, i2);
            case 17:
                return l0((androidx.lifecycle.o) obj, i2);
            case 18:
                return U((LiveData) obj, i2);
            case 19:
                return o0((androidx.lifecycle.o) obj, i2);
            case 20:
                return Y((LiveData) obj, i2);
            case 21:
                return V((LiveData) obj, i2);
            case 22:
                return Q((androidx.lifecycle.o) obj, i2);
            case 23:
                return Z((LiveData) obj, i2);
            case 24:
                return g0((androidx.lifecycle.o) obj, i2);
            default:
                return false;
        }
    }

    private h(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 25, (ImageView) objArr[51], (Button) objArr[1], (CheckBox) objArr[52], (ImageView) objArr[65], (RelativeLayout) objArr[53], (CheckBox) objArr[58], (CheckBox) objArr[56], (CheckBox) objArr[61], (CheckBox) objArr[59], (CheckBox) objArr[57], (CheckBox) objArr[60], (CheckBox) objArr[39], (CheckBox) objArr[40], (CheckBox) objArr[41], (CheckBox) objArr[42], (CheckBox) objArr[43], (CheckBox) objArr[44], (CheckBox) objArr[45], (CheckBox) objArr[46], (ConstraintLayout) objArr[50], (View) objArr[54], (View) objArr[55], (SeekBar) objArr[63], (TextView) objArr[62], (TextView) objArr[64], (WaveformView) objArr[48]);
        this.h1 = new a();
        this.i1 = new b();
        this.j1 = -1L;
        this.v.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.N = constraintLayout;
        constraintLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[10];
        this.O = linearLayout;
        linearLayout.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[11];
        this.P = linearLayout2;
        linearLayout2.setTag(null);
        TextView textView = (TextView) objArr[12];
        this.Q = textView;
        textView.setTag(null);
        ImageView imageView = (ImageView) objArr[13];
        this.R = imageView;
        imageView.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) objArr[14];
        this.S = linearLayout3;
        linearLayout3.setTag(null);
        TextView textView2 = (TextView) objArr[15];
        this.T = textView2;
        textView2.setTag(null);
        LinearLayout linearLayout4 = (LinearLayout) objArr[16];
        this.U = linearLayout4;
        linearLayout4.setTag(null);
        CheckBox checkBox = (CheckBox) objArr[17];
        this.V = checkBox;
        checkBox.setTag(null);
        CheckBox checkBox2 = (CheckBox) objArr[18];
        this.W = checkBox2;
        checkBox2.setTag(null);
        LinearLayout linearLayout5 = (LinearLayout) objArr[19];
        this.X = linearLayout5;
        linearLayout5.setTag(null);
        LinearLayout linearLayout6 = (LinearLayout) objArr[2];
        this.Y = linearLayout6;
        linearLayout6.setTag(null);
        TextView textView3 = (TextView) objArr[20];
        this.Z = textView3;
        textView3.setTag(null);
        ImageView imageView2 = (ImageView) objArr[21];
        this.a0 = imageView2;
        imageView2.setTag(null);
        LinearLayout linearLayout7 = (LinearLayout) objArr[22];
        this.b0 = linearLayout7;
        linearLayout7.setTag(null);
        TextView textView4 = (TextView) objArr[23];
        this.c0 = textView4;
        textView4.setTag(null);
        LinearLayout linearLayout8 = (LinearLayout) objArr[24];
        this.d0 = linearLayout8;
        linearLayout8.setTag(null);
        LinearLayout linearLayout9 = (LinearLayout) objArr[25];
        this.e0 = linearLayout9;
        linearLayout9.setTag(null);
        TextView textView5 = (TextView) objArr[26];
        this.f0 = textView5;
        textView5.setTag(null);
        ImageView imageView3 = (ImageView) objArr[27];
        this.g0 = imageView3;
        imageView3.setTag(null);
        LinearLayout linearLayout10 = (LinearLayout) objArr[28];
        this.h0 = linearLayout10;
        linearLayout10.setTag(null);
        TextView textView6 = (TextView) objArr[29];
        this.i0 = textView6;
        textView6.setTag(null);
        SwitchCompat switchCompat = (SwitchCompat) objArr[3];
        this.j0 = switchCompat;
        switchCompat.setTag(null);
        LinearLayout linearLayout11 = (LinearLayout) objArr[30];
        this.k0 = linearLayout11;
        linearLayout11.setTag(null);
        TextView textView7 = (TextView) objArr[31];
        this.l0 = textView7;
        textView7.setTag(null);
        LinearLayout linearLayout12 = (LinearLayout) objArr[32];
        this.m0 = linearLayout12;
        linearLayout12.setTag(null);
        RadioButton radioButton = (RadioButton) objArr[33];
        this.n0 = radioButton;
        radioButton.setTag(null);
        RadioButton radioButton2 = (RadioButton) objArr[34];
        this.o0 = radioButton2;
        radioButton2.setTag(null);
        RadioButton radioButton3 = (RadioButton) objArr[35];
        this.p0 = radioButton3;
        radioButton3.setTag(null);
        RadioButton radioButton4 = (RadioButton) objArr[36];
        this.q0 = radioButton4;
        radioButton4.setTag(null);
        RadioButton radioButton5 = (RadioButton) objArr[37];
        this.r0 = radioButton5;
        radioButton5.setTag(null);
        LinearLayout linearLayout13 = (LinearLayout) objArr[38];
        this.s0 = linearLayout13;
        linearLayout13.setTag(null);
        LinearLayout linearLayout14 = (LinearLayout) objArr[4];
        this.t0 = linearLayout14;
        linearLayout14.setTag(null);
        LinearLayout linearLayout15 = (LinearLayout) objArr[47];
        this.u0 = linearLayout15;
        linearLayout15.setTag(null);
        LinearLayout linearLayout16 = (LinearLayout) objArr[49];
        this.v0 = linearLayout16;
        linearLayout16.setTag(null);
        LinearLayout linearLayout17 = (LinearLayout) objArr[5];
        this.w0 = linearLayout17;
        linearLayout17.setTag(null);
        TextView textView8 = (TextView) objArr[6];
        this.x0 = textView8;
        textView8.setTag(null);
        ImageView imageView4 = (ImageView) objArr[7];
        this.y0 = imageView4;
        imageView4.setTag(null);
        LinearLayout linearLayout18 = (LinearLayout) objArr[8];
        this.z0 = linearLayout18;
        linearLayout18.setTag(null);
        TextView textView9 = (TextView) objArr[9];
        this.A0 = textView9;
        textView9.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        this.I.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.L.setTag(null);
        H(view);
        this.B0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 31);
        this.C0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 32);
        this.D0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 10);
        this.E0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 8);
        this.F0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 20);
        this.G0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 9);
        this.H0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 30);
        this.I0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 6);
        this.J0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 18);
        this.K0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 19);
        this.L0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 7);
        this.M0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 28);
        this.N0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 4);
        this.O0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 16);
        this.P0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 3);
        this.Q0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 17);
        this.R0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 29);
        this.S0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 5);
        this.T0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 26);
        this.U0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 13);
        this.V0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 25);
        this.W0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 1);
        this.X0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 15);
        this.Y0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 27);
        this.Z0 = new cn.manstep.phonemirrorBox.m0.a.a(this, 2);
        this.a1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 14);
        this.b1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 11);
        this.c1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 23);
        this.d1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 24);
        this.e1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 12);
        this.f1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 21);
        this.g1 = new cn.manstep.phonemirrorBox.m0.a.a(this, 22);
        P();
    }
}
