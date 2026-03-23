package cn.manstep.phonemirrorBox.p075i0;

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
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.p006j.C0332a;
import androidx.databinding.p006j.C0333b;
import androidx.lifecycle.C0401o;
import cn.manstep.phonemirrorBox.p079m0.p080a.ViewOnClickListenerC0918a;
import cn.manstep.phonemirrorBox.p091x0.C1006d;
import cn.manstep.phonemirrorBox.p091x0.C1007e;
import cn.manstep.phonemirrorBox.p091x0.C1011i;
import cn.manstep.phonemirrorBox.p091x0.C1013k;
import cn.manstep.phonemirrorBox.widget.WaveformView;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.n */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0868n extends AbstractC0867m implements ViewOnClickListenerC0918a.a {

    /* JADX INFO: renamed from: B0 */
    private static final ViewDataBinding.C0319g f5290B0 = null;

    /* JADX INFO: renamed from: C0 */
    private static final SparseIntArray f5291C0;

    /* JADX INFO: renamed from: A0 */
    private long f5292A0;

    /* JADX INFO: renamed from: M */
    private final ConstraintLayout f5293M;

    /* JADX INFO: renamed from: N */
    private final TextView f5294N;

    /* JADX INFO: renamed from: O */
    private final LinearLayout f5295O;

    /* JADX INFO: renamed from: P */
    private final RadioButton f5296P;

    /* JADX INFO: renamed from: Q */
    private final RadioButton f5297Q;

    /* JADX INFO: renamed from: R */
    private final RadioButton f5298R;

    /* JADX INFO: renamed from: S */
    private final RadioButton f5299S;

    /* JADX INFO: renamed from: T */
    private final SwitchCompat f5300T;

    /* JADX INFO: renamed from: U */
    private final SwitchCompat f5301U;

    /* JADX INFO: renamed from: V */
    private final SwitchCompat f5302V;

    /* JADX INFO: renamed from: W */
    private final TextView f5303W;

    /* JADX INFO: renamed from: X */
    private final TextView f5304X;

    /* JADX INFO: renamed from: Y */
    private final LinearLayout f5305Y;

    /* JADX INFO: renamed from: Z */
    private final TextView f5306Z;

    /* JADX INFO: renamed from: a0 */
    private final ImageView f5307a0;

    /* JADX INFO: renamed from: b0 */
    private final LinearLayout f5308b0;

    /* JADX INFO: renamed from: c0 */
    private final LinearLayout f5309c0;

    /* JADX INFO: renamed from: d0 */
    private final LinearLayout f5310d0;

    /* JADX INFO: renamed from: e0 */
    private final Button f5311e0;

    /* JADX INFO: renamed from: f0 */
    private final TextView f5312f0;

    /* JADX INFO: renamed from: g0 */
    private final TextView f5313g0;

    /* JADX INFO: renamed from: h0 */
    private final TextView f5314h0;

    /* JADX INFO: renamed from: i0 */
    private final LinearLayout f5315i0;

    /* JADX INFO: renamed from: j0 */
    private final TextView f5316j0;

    /* JADX INFO: renamed from: k0 */
    private final LinearLayout f5317k0;

    /* JADX INFO: renamed from: l0 */
    private final View.OnClickListener f5318l0;

    /* JADX INFO: renamed from: m0 */
    private final View.OnClickListener f5319m0;

    /* JADX INFO: renamed from: n0 */
    private final View.OnClickListener f5320n0;

    /* JADX INFO: renamed from: o0 */
    private final View.OnClickListener f5321o0;

    /* JADX INFO: renamed from: p0 */
    private final View.OnClickListener f5322p0;

    /* JADX INFO: renamed from: q0 */
    private final View.OnClickListener f5323q0;

    /* JADX INFO: renamed from: r0 */
    private final View.OnClickListener f5324r0;

    /* JADX INFO: renamed from: s0 */
    private final View.OnClickListener f5325s0;

    /* JADX INFO: renamed from: t0 */
    private final View.OnClickListener f5326t0;

    /* JADX INFO: renamed from: u0 */
    private final View.OnClickListener f5327u0;

    /* JADX INFO: renamed from: v0 */
    private final View.OnClickListener f5328v0;

    /* JADX INFO: renamed from: w0 */
    private final View.OnClickListener f5329w0;

    /* JADX INFO: renamed from: x0 */
    private final View.OnClickListener f5330x0;

    /* JADX INFO: renamed from: y0 */
    private final View.OnClickListener f5331y0;

    /* JADX INFO: renamed from: z0 */
    private final View.OnClickListener f5332z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5291C0 = sparseIntArray;
        sparseIntArray.put(2131296880, 29);
        f5291C0.put(2131296370, 30);
        f5291C0.put(2131296591, 31);
        f5291C0.put(2131296934, 32);
        f5291C0.put(2131296935, 33);
        f5291C0.put(2131296475, 34);
        f5291C0.put(2131296476, 35);
        f5291C0.put(2131296810, 36);
        f5291C0.put(2131296814, 37);
        f5291C0.put(2131296815, 38);
        f5291C0.put(2131296456, 39);
        f5291C0.put(2131296464, 40);
        f5291C0.put(2131296463, 41);
        f5291C0.put(2131296513, 42);
        f5291C0.put(2131296398, 43);
        f5291C0.put(2131296541, 44);
        f5291C0.put(2131296446, 45);
    }

    public C0868n(InterfaceC0327e interfaceC0327e, View view) {
        this(interfaceC0327e, view, ViewDataBinding.m2325y(interfaceC0327e, view, 46, f5290B0, f5291C0));
    }

    /* JADX INFO: renamed from: Q */
    private boolean m6422Q(C0401o<Integer> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 32768;
        }
        return true;
    }

    /* JADX INFO: renamed from: R */
    private boolean m6423R(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 2;
        }
        return true;
    }

    /* JADX INFO: renamed from: S */
    private boolean m6424S(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 1;
        }
        return true;
    }

    /* JADX INFO: renamed from: T */
    private boolean m6425T(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 2048;
        }
        return true;
    }

    /* JADX INFO: renamed from: U */
    private boolean m6426U(C0401o<Boolean> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 8192;
        }
        return true;
    }

    /* JADX INFO: renamed from: V */
    private boolean m6427V(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 8;
        }
        return true;
    }

    /* JADX INFO: renamed from: W */
    private boolean m6428W(C0401o<Boolean> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 16;
        }
        return true;
    }

    /* JADX INFO: renamed from: X */
    private boolean m6429X(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 1024;
        }
        return true;
    }

    /* JADX INFO: renamed from: Y */
    private boolean m6430Y(C0401o<Boolean> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 512;
        }
        return true;
    }

    /* JADX INFO: renamed from: Z */
    private boolean m6431Z(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 4;
        }
        return true;
    }

    /* JADX INFO: renamed from: a0 */
    private boolean m6432a0(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 128;
        }
        return true;
    }

    /* JADX INFO: renamed from: b0 */
    private boolean m6433b0(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 256;
        }
        return true;
    }

    /* JADX INFO: renamed from: c0 */
    private boolean m6434c0(C0401o<String> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 16384;
        }
        return true;
    }

    /* JADX INFO: renamed from: d0 */
    private boolean m6435d0(C0401o<Boolean> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 4096;
        }
        return true;
    }

    /* JADX INFO: renamed from: e0 */
    private boolean m6436e0(C0401o<Integer> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 32;
        }
        return true;
    }

    /* JADX INFO: renamed from: f0 */
    private boolean m6437f0(C0401o<Boolean> c0401o, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f5292A0 |= 64;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.p075i0.AbstractC0867m
    /* JADX INFO: renamed from: L */
    public void mo6418L(C1006d c1006d) {
        this.f5282J = c1006d;
        synchronized (this) {
            this.f5292A0 |= 131072;
        }
        m2350d(1);
        super.m2327D();
    }

    @Override // cn.manstep.phonemirrorBox.p075i0.AbstractC0867m
    /* JADX INFO: renamed from: M */
    public void mo6419M(C1007e c1007e) {
        this.f5281I = c1007e;
        synchronized (this) {
            this.f5292A0 |= 524288;
        }
        m2350d(3);
        super.m2327D();
    }

    @Override // cn.manstep.phonemirrorBox.p075i0.AbstractC0867m
    /* JADX INFO: renamed from: N */
    public void mo6420N(C1011i c1011i) {
        this.f5283K = c1011i;
        synchronized (this) {
            this.f5292A0 |= 262144;
        }
        m2350d(6);
        super.m2327D();
    }

    @Override // cn.manstep.phonemirrorBox.p075i0.AbstractC0867m
    /* JADX INFO: renamed from: O */
    public void mo6421O(C1013k c1013k) {
        this.f5284L = c1013k;
        synchronized (this) {
            this.f5292A0 |= 65536;
        }
        m2350d(7);
        super.m2327D();
    }

    /* JADX INFO: renamed from: P */
    public void m6438P() {
        synchronized (this) {
            this.f5292A0 = 1048576L;
        }
        m2327D();
    }

    @Override // cn.manstep.phonemirrorBox.p079m0.p080a.ViewOnClickListenerC0918a.a
    /* JADX INFO: renamed from: b */
    public final void mo6367b(int i, View view) {
        switch (i) {
            case 1:
                C1013k c1013k = this.f5284L;
                if (c1013k != null) {
                    c1013k.m7743g0(4);
                }
                break;
            case 2:
                C1013k c1013k2 = this.f5284L;
                if (c1013k2 != null) {
                    c1013k2.m7743g0(1);
                }
                break;
            case 3:
                C1013k c1013k3 = this.f5284L;
                if (c1013k3 != null) {
                    c1013k3.m7743g0(5);
                }
                break;
            case 4:
                C1013k c1013k4 = this.f5284L;
                if (c1013k4 != null) {
                    c1013k4.m7743g0(3);
                }
                break;
            case 5:
                C1011i c1011i = this.f5283K;
                if (c1011i != null) {
                    c1011i.m7665P(view);
                }
                break;
            case 6:
                C1011i c1011i2 = this.f5283K;
                if (c1011i2 != null) {
                    c1011i2.m7666Q(view);
                }
                break;
            case 7:
                C1007e c1007e = this.f5281I;
                if (c1007e != null) {
                    c1007e.m7587F(view);
                }
                break;
            case 8:
                C1007e c1007e2 = this.f5281I;
                if (c1007e2 != null) {
                    c1007e2.m7588G(view);
                }
                break;
            case 9:
                C1007e c1007e3 = this.f5281I;
                if (c1007e3 != null) {
                    c1007e3.m7584C(view);
                }
                break;
            case 10:
                C1007e c1007e4 = this.f5281I;
                if (c1007e4 != null) {
                    c1007e4.m7595l();
                }
                break;
            case 11:
                C1007e c1007e5 = this.f5281I;
                if (c1007e5 != null) {
                    c1007e5.m7593j();
                }
                break;
            case 12:
                C1007e c1007e6 = this.f5281I;
                if (c1007e6 != null) {
                    c1007e6.m7583B();
                }
                break;
            case 13:
                C1007e c1007e7 = this.f5281I;
                if (c1007e7 != null) {
                    c1007e7.m7594k();
                }
                break;
            case 14:
                C1007e c1007e8 = this.f5281I;
                if (c1007e8 != null) {
                    c1007e8.m7591J();
                }
                break;
            case 15:
                C1007e c1007e9 = this.f5281I;
                if (c1007e9 != null) {
                    c1007e9.m7592K();
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
    /* JADX INFO: renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void mo2332n() {
        long j;
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i2;
        boolean zM2307F;
        String str;
        String str2;
        String str3;
        String str4;
        String strM2959e;
        String str5;
        String str6;
        String str7;
        String str8;
        boolean z5;
        boolean z6;
        int i3;
        int i4;
        String str9;
        String strM2959e2;
        String strM2959e3;
        String strM2959e4;
        boolean zM2307F2;
        String strM2959e5;
        long j2;
        boolean z7;
        String strM2959e6;
        int i5;
        String str10;
        boolean zM2307F3;
        boolean z8;
        String strM2959e7;
        String str11;
        String strM2959e8;
        long j3;
        String str12;
        int i6;
        C0401o<Boolean> c0401oM7599q;
        C0401o<String> c0401oM7598p;
        C0401o<String> c0401oM7602u;
        C0401o<Boolean> c0401oM7603v;
        C0401o<String> c0401oM7606y;
        long j4;
        boolean z9;
        boolean z10;
        boolean z11;
        synchronized (this) {
            j = this.f5292A0;
            this.f5292A0 = 0L;
        }
        C1013k c1013k = this.f5284L;
        C1006d c1006d = this.f5282J;
        C1011i c1011i = this.f5283K;
        C1007e c1007e = this.f5281I;
        String strM2959e9 = null;
        if ((1114208 & j) != 0) {
            if ((j & 1114144) != 0) {
                C0401o<Integer> c0401oM7764w = c1013k != null ? c1013k.m7764w() : null;
                m2331J(5, c0401oM7764w);
                int iM2306E = ViewDataBinding.m2306E(c0401oM7764w != null ? c0401oM7764w.m2959e() : null);
                z9 = iM2306E == 3;
                z10 = iM2306E == 1;
                z11 = iM2306E == 4;
                z = iM2306E == 5;
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
                C0401o<Boolean> c0401oM7721I = c1013k != null ? c1013k.m7721I() : null;
                m2331J(6, c0401oM7721I);
                boolean zM2307F4 = ViewDataBinding.m2307F(c0401oM7721I != null ? c0401oM7721I.m2959e() : null);
                if (j5 != 0) {
                    j |= zM2307F4 ? 4194304L : 2097152L;
                }
                i = zM2307F4 ? 8 : 0;
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
            C0401o<Integer> c0401oM7577v = c1006d != null ? c1006d.m7577v() : null;
            m2331J(15, c0401oM7577v);
            boolean z12 = ViewDataBinding.m2306E(c0401oM7577v != null ? c0401oM7577v.m2959e() : null) == 0;
            if (j6 != 0) {
                j |= z12 ? 67108864L : 33554432L;
            }
            if (z12) {
                i2 = 8;
            }
        }
        if ((j & 1314816) != 0) {
            C0401o<Boolean> c0401oM7684y = c1011i != null ? c1011i.m7684y() : null;
            m2331J(12, c0401oM7684y);
            zM2307F = ViewDataBinding.m2307F(c0401oM7684y != null ? c0401oM7684y.m2959e() : null);
        } else {
            zM2307F = false;
        }
        if ((1601439 & j) == 0) {
            str = null;
            str2 = null;
            str3 = null;
            str4 = null;
            strM2959e = null;
            str5 = null;
            str6 = null;
            str7 = null;
            str8 = null;
            z5 = false;
            z6 = false;
            i3 = 0;
            i4 = 0;
        } else if ((j & 1572865) == 0) {
            strM2959e = null;
            if ((j & 1572866) == 0) {
                strM2959e2 = null;
                if ((j & 1572868) == 0) {
                    strM2959e3 = null;
                    if ((j & 1572872) == 0) {
                        strM2959e4 = null;
                        if ((j & 1572880) == 0) {
                            C0401o<Boolean> c0401oM7601t = c1007e != null ? c1007e.m7601t() : null;
                            m2331J(4, c0401oM7601t);
                            zM2307F2 = ViewDataBinding.m2307F(c0401oM7601t != null ? c0401oM7601t.m2959e() : null);
                        } else {
                            zM2307F2 = false;
                        }
                        if ((j & 1572992) == 0) {
                            strM2959e5 = null;
                            j2 = j & 1573120;
                            if (j2 == 0) {
                                if (c1007e != null) {
                                    c0401oM7606y = c1007e.m7606y();
                                    z7 = zM2307F2;
                                } else {
                                    z7 = zM2307F2;
                                    c0401oM7606y = null;
                                }
                                m2331J(8, c0401oM7606y);
                                strM2959e6 = c0401oM7606y != null ? c0401oM7606y.m2959e() : null;
                                boolean z13 = (strM2959e6 != null ? strM2959e6.length() : 0) > 0;
                                if (j2 != 0) {
                                    j |= z13 ? 268435456L : 134217728L;
                                }
                                if (!z13) {
                                    i5 = 8;
                                }
                                if ((j & 1573376) != 0) {
                                    if (c1007e != null) {
                                        str10 = strM2959e5;
                                        c0401oM7603v = c1007e.m7603v();
                                    } else {
                                        str10 = strM2959e5;
                                        c0401oM7603v = null;
                                    }
                                    m2331J(9, c0401oM7603v);
                                    zM2307F3 = ViewDataBinding.m2307F(c0401oM7603v != null ? c0401oM7603v.m2959e() : null);
                                } else {
                                    str10 = strM2959e5;
                                    zM2307F3 = false;
                                }
                                if ((j & 1573888) != 0) {
                                    if (c1007e != null) {
                                        c0401oM7602u = c1007e.m7602u();
                                        z8 = zM2307F3;
                                    } else {
                                        z8 = zM2307F3;
                                        c0401oM7602u = null;
                                    }
                                    m2331J(10, c0401oM7602u);
                                    if (c0401oM7602u != null) {
                                        strM2959e7 = c0401oM7602u.m2959e();
                                    }
                                    if ((j & 1574912) == 0) {
                                        if (c1007e != null) {
                                            c0401oM7598p = c1007e.m7598p();
                                            str11 = strM2959e7;
                                        } else {
                                            str11 = strM2959e7;
                                            c0401oM7598p = null;
                                        }
                                        m2331J(11, c0401oM7598p);
                                        if (c0401oM7598p != null) {
                                            strM2959e8 = c0401oM7598p.m2959e();
                                        }
                                        j3 = j & 1581056;
                                        if (j3 != 0) {
                                            if (c1007e != null) {
                                                c0401oM7599q = c1007e.m7599q();
                                                str12 = strM2959e8;
                                            } else {
                                                str12 = strM2959e8;
                                                c0401oM7599q = null;
                                            }
                                            m2331J(13, c0401oM7599q);
                                            boolean zM2307F5 = ViewDataBinding.m2307F(c0401oM7599q != null ? c0401oM7599q.m2959e() : null);
                                            if (j3 != 0) {
                                                j |= zM2307F5 ? 16777216L : 8388608L;
                                            }
                                            if (!zM2307F5) {
                                                i6 = 8;
                                            }
                                            if ((1589248 & j) != 0) {
                                                C0401o<String> c0401oM7607z = c1007e != null ? c1007e.m7607z() : null;
                                                m2331J(14, c0401oM7607z);
                                                if (c0401oM7607z != null) {
                                                    strM2959e9 = c0401oM7607z.m2959e();
                                                }
                                            }
                                            str5 = strM2959e3;
                                            str6 = strM2959e4;
                                            str8 = strM2959e6;
                                            z5 = z7;
                                            str7 = strM2959e9;
                                            str2 = str10;
                                            z6 = z8;
                                            str3 = str11;
                                            str = str12;
                                            str4 = strM2959e2;
                                            i3 = i6;
                                            i4 = i5;
                                        } else {
                                            str12 = strM2959e8;
                                        }
                                        i6 = 0;
                                        if ((1589248 & j) != 0) {
                                        }
                                        str5 = strM2959e3;
                                        str6 = strM2959e4;
                                        str8 = strM2959e6;
                                        z5 = z7;
                                        str7 = strM2959e9;
                                        str2 = str10;
                                        z6 = z8;
                                        str3 = str11;
                                        str = str12;
                                        str4 = strM2959e2;
                                        i3 = i6;
                                        i4 = i5;
                                    } else {
                                        str11 = strM2959e7;
                                    }
                                    strM2959e8 = null;
                                    j3 = j & 1581056;
                                    if (j3 != 0) {
                                    }
                                    i6 = 0;
                                    if ((1589248 & j) != 0) {
                                    }
                                    str5 = strM2959e3;
                                    str6 = strM2959e4;
                                    str8 = strM2959e6;
                                    z5 = z7;
                                    str7 = strM2959e9;
                                    str2 = str10;
                                    z6 = z8;
                                    str3 = str11;
                                    str = str12;
                                    str4 = strM2959e2;
                                    i3 = i6;
                                    i4 = i5;
                                } else {
                                    z8 = zM2307F3;
                                }
                                strM2959e7 = null;
                                if ((j & 1574912) == 0) {
                                }
                                strM2959e8 = null;
                                j3 = j & 1581056;
                                if (j3 != 0) {
                                }
                                i6 = 0;
                                if ((1589248 & j) != 0) {
                                }
                                str5 = strM2959e3;
                                str6 = strM2959e4;
                                str8 = strM2959e6;
                                z5 = z7;
                                str7 = strM2959e9;
                                str2 = str10;
                                z6 = z8;
                                str3 = str11;
                                str = str12;
                                str4 = strM2959e2;
                                i3 = i6;
                                i4 = i5;
                            } else {
                                z7 = zM2307F2;
                                strM2959e6 = null;
                            }
                            i5 = 0;
                            if ((j & 1573376) != 0) {
                            }
                            if ((j & 1573888) != 0) {
                            }
                            strM2959e7 = null;
                            if ((j & 1574912) == 0) {
                            }
                            strM2959e8 = null;
                            j3 = j & 1581056;
                            if (j3 != 0) {
                            }
                            i6 = 0;
                            if ((1589248 & j) != 0) {
                            }
                            str5 = strM2959e3;
                            str6 = strM2959e4;
                            str8 = strM2959e6;
                            z5 = z7;
                            str7 = strM2959e9;
                            str2 = str10;
                            z6 = z8;
                            str3 = str11;
                            str = str12;
                            str4 = strM2959e2;
                            i3 = i6;
                            i4 = i5;
                        } else {
                            C0401o<String> c0401oM7605x = c1007e != null ? c1007e.m7605x() : null;
                            m2331J(7, c0401oM7605x);
                            if (c0401oM7605x != null) {
                                strM2959e5 = c0401oM7605x.m2959e();
                            }
                            j2 = j & 1573120;
                            if (j2 == 0) {
                            }
                            i5 = 0;
                            if ((j & 1573376) != 0) {
                            }
                            if ((j & 1573888) != 0) {
                            }
                            strM2959e7 = null;
                            if ((j & 1574912) == 0) {
                            }
                            strM2959e8 = null;
                            j3 = j & 1581056;
                            if (j3 != 0) {
                            }
                            i6 = 0;
                            if ((1589248 & j) != 0) {
                            }
                            str5 = strM2959e3;
                            str6 = strM2959e4;
                            str8 = strM2959e6;
                            z5 = z7;
                            str7 = strM2959e9;
                            str2 = str10;
                            z6 = z8;
                            str3 = str11;
                            str = str12;
                            str4 = strM2959e2;
                            i3 = i6;
                            i4 = i5;
                        }
                    } else {
                        C0401o<String> c0401oM7600s = c1007e != null ? c1007e.m7600s() : null;
                        m2331J(3, c0401oM7600s);
                        if (c0401oM7600s != null) {
                            strM2959e4 = c0401oM7600s.m2959e();
                        }
                        if ((j & 1572880) == 0) {
                        }
                        if ((j & 1572992) == 0) {
                        }
                    }
                } else {
                    C0401o<String> c0401oM7604w = c1007e != null ? c1007e.m7604w() : null;
                    m2331J(2, c0401oM7604w);
                    if (c0401oM7604w != null) {
                        strM2959e3 = c0401oM7604w.m2959e();
                    }
                    if ((j & 1572872) == 0) {
                    }
                }
            } else {
                C0401o<String> c0401oM7596m = c1007e != null ? c1007e.m7596m() : null;
                m2331J(1, c0401oM7596m);
                if (c0401oM7596m != null) {
                    strM2959e2 = c0401oM7596m.m2959e();
                }
                if ((j & 1572868) == 0) {
                }
            }
        } else {
            C0401o<String> c0401oM7597n = c1007e != null ? c1007e.m7597n() : null;
            m2331J(0, c0401oM7597n);
            if (c0401oM7597n != null) {
                strM2959e = c0401oM7597n.m2959e();
            }
            if ((j & 1572866) == 0) {
            }
        }
        String str13 = str;
        if ((j & 1048576) != 0) {
            str9 = strM2959e;
            this.f5286w.setOnClickListener(this.f5323q0);
            this.f5287x.setOnClickListener(this.f5331y0);
            this.f5276D.setOnClickListener(this.f5321o0);
            this.f5296P.setOnClickListener(this.f5318l0);
            this.f5297Q.setOnClickListener(this.f5320n0);
            this.f5298R.setOnClickListener(this.f5324r0);
            this.f5299S.setOnClickListener(this.f5326t0);
            this.f5300T.setOnClickListener(this.f5319m0);
            this.f5301U.setOnClickListener(this.f5332z0);
            this.f5302V.setOnClickListener(this.f5327u0);
            this.f5307a0.setOnClickListener(this.f5329w0);
            this.f5308b0.setOnClickListener(this.f5322p0);
            this.f5309c0.setOnClickListener(this.f5325s0);
            this.f5310d0.setOnClickListener(this.f5328v0);
            this.f5311e0.setOnClickListener(this.f5330x0);
        } else {
            str9 = strM2959e;
        }
        if ((j & 1581056) != 0) {
            this.f5286w.setVisibility(i3);
        }
        if ((j & 1572880) != 0) {
            C0332a.m2366a(this.f5287x, z5);
        }
        if ((j & 1314816) != 0) {
            C0332a.m2366a(this.f5276D, zM2307F);
        }
        if ((j & 1572992) != 0) {
            C0333b.m2369b(this.f5294N, str2);
        }
        if ((1114176 & j) != 0) {
            this.f5295O.setVisibility(i);
        }
        if ((1114144 & j) != 0) {
            C0332a.m2366a(this.f5296P, z4);
            C0332a.m2366a(this.f5297Q, z3);
            C0332a.m2366a(this.f5298R, z);
            C0332a.m2366a(this.f5299S, z2);
        }
        if ((j & 1573376) != 0) {
            C0332a.m2366a(this.f5301U, z6);
        }
        if ((j & 1573888) != 0) {
            C0333b.m2369b(this.f5303W, str3);
        }
        if ((j & 1572866) != 0) {
            C0333b.m2369b(this.f5304X, str4);
        }
        if ((j & 1212416) != 0) {
            this.f5305Y.setVisibility(i2);
            this.f5315i0.setVisibility(i2);
        }
        if ((j & 1572865) != 0) {
            C0333b.m2369b(this.f5306Z, str9);
        }
        if ((1574912 & j) != 0) {
            C0333b.m2369b(this.f5312f0, str13);
        }
        if ((j & 1572868) != 0) {
            C0333b.m2369b(this.f5313g0, str5);
        }
        if ((j & 1572872) != 0) {
            C0333b.m2369b(this.f5314h0, str6);
        }
        if ((1589248 & j) != 0) {
            C0333b.m2369b(this.f5316j0, str7);
        }
        if ((j & 1573120) != 0) {
            this.f5317k0.setVisibility(i4);
            C0333b.m2369b(this.f5280H, str8);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: v */
    public boolean mo2335v() {
        synchronized (this) {
            return this.f5292A0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* JADX INFO: renamed from: z */
    protected boolean mo2336z(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m6424S((C0401o) obj, i2);
            case 1:
                return m6423R((C0401o) obj, i2);
            case 2:
                return m6431Z((C0401o) obj, i2);
            case 3:
                return m6427V((C0401o) obj, i2);
            case 4:
                return m6428W((C0401o) obj, i2);
            case 5:
                return m6436e0((C0401o) obj, i2);
            case 6:
                return m6437f0((C0401o) obj, i2);
            case 7:
                return m6432a0((C0401o) obj, i2);
            case 8:
                return m6433b0((C0401o) obj, i2);
            case 9:
                return m6430Y((C0401o) obj, i2);
            case 10:
                return m6429X((C0401o) obj, i2);
            case 11:
                return m6425T((C0401o) obj, i2);
            case 12:
                return m6435d0((C0401o) obj, i2);
            case 13:
                return m6426U((C0401o) obj, i2);
            case 14:
                return m6434c0((C0401o) obj, i2);
            case 15:
                return m6422Q((C0401o) obj, i2);
            default:
                return false;
        }
    }

    private C0868n(InterfaceC0327e interfaceC0327e, View view, Object[] objArr) {
        super(interfaceC0327e, view, 16, (ImageView) objArr[30], (Button) objArr[28], (SwitchCompat) objArr[17], (LinearLayout) objArr[43], (WaveformView) objArr[45], (LinearLayout) objArr[39], (TextView) objArr[41], (SeekBar) objArr[40], (LinearLayout) objArr[34], (TextView) objArr[35], (SwitchCompat) objArr[16], (LinearLayout) objArr[42], (LinearLayout) objArr[44], (RelativeLayout) objArr[31], (LinearLayout) objArr[36], (SeekBar) objArr[37], (TextView) objArr[38], (RelativeLayout) objArr[29], (TextView) objArr[9], (View) objArr[32], (View) objArr[33]);
        this.f5292A0 = -1L;
        this.f5286w.setTag(null);
        this.f5287x.setTag(null);
        this.f5276D.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f5293M = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.f5294N = textView;
        textView.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[10];
        this.f5295O = linearLayout;
        linearLayout.setTag(null);
        RadioButton radioButton = (RadioButton) objArr[11];
        this.f5296P = radioButton;
        radioButton.setTag(null);
        RadioButton radioButton2 = (RadioButton) objArr[12];
        this.f5297Q = radioButton2;
        radioButton2.setTag(null);
        RadioButton radioButton3 = (RadioButton) objArr[13];
        this.f5298R = radioButton3;
        radioButton3.setTag(null);
        RadioButton radioButton4 = (RadioButton) objArr[14];
        this.f5299S = radioButton4;
        radioButton4.setTag(null);
        SwitchCompat switchCompat = (SwitchCompat) objArr[15];
        this.f5300T = switchCompat;
        switchCompat.setTag(null);
        SwitchCompat switchCompat2 = (SwitchCompat) objArr[18];
        this.f5301U = switchCompat2;
        switchCompat2.setTag(null);
        SwitchCompat switchCompat3 = (SwitchCompat) objArr[19];
        this.f5302V = switchCompat3;
        switchCompat3.setTag(null);
        TextView textView2 = (TextView) objArr[2];
        this.f5303W = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) objArr[20];
        this.f5304X = textView3;
        textView3.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[21];
        this.f5305Y = linearLayout2;
        linearLayout2.setTag(null);
        TextView textView4 = (TextView) objArr[22];
        this.f5306Z = textView4;
        textView4.setTag(null);
        ImageView imageView = (ImageView) objArr[23];
        this.f5307a0 = imageView;
        imageView.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) objArr[24];
        this.f5308b0 = linearLayout3;
        linearLayout3.setTag(null);
        LinearLayout linearLayout4 = (LinearLayout) objArr[25];
        this.f5309c0 = linearLayout4;
        linearLayout4.setTag(null);
        LinearLayout linearLayout5 = (LinearLayout) objArr[26];
        this.f5310d0 = linearLayout5;
        linearLayout5.setTag(null);
        Button button = (Button) objArr[27];
        this.f5311e0 = button;
        button.setTag(null);
        TextView textView5 = (TextView) objArr[3];
        this.f5312f0 = textView5;
        textView5.setTag(null);
        TextView textView6 = (TextView) objArr[4];
        this.f5313g0 = textView6;
        textView6.setTag(null);
        TextView textView7 = (TextView) objArr[5];
        this.f5314h0 = textView7;
        textView7.setTag(null);
        LinearLayout linearLayout6 = (LinearLayout) objArr[6];
        this.f5315i0 = linearLayout6;
        linearLayout6.setTag(null);
        TextView textView8 = (TextView) objArr[7];
        this.f5316j0 = textView8;
        textView8.setTag(null);
        LinearLayout linearLayout7 = (LinearLayout) objArr[8];
        this.f5317k0 = linearLayout7;
        linearLayout7.setTag(null);
        this.f5280H.setTag(null);
        m2329H(view);
        this.f5318l0 = new ViewOnClickListenerC0918a(this, 1);
        this.f5319m0 = new ViewOnClickListenerC0918a(this, 5);
        this.f5320n0 = new ViewOnClickListenerC0918a(this, 2);
        this.f5321o0 = new ViewOnClickListenerC0918a(this, 6);
        this.f5322p0 = new ViewOnClickListenerC0918a(this, 11);
        this.f5323q0 = new ViewOnClickListenerC0918a(this, 15);
        this.f5324r0 = new ViewOnClickListenerC0918a(this, 3);
        this.f5325s0 = new ViewOnClickListenerC0918a(this, 12);
        this.f5326t0 = new ViewOnClickListenerC0918a(this, 4);
        this.f5327u0 = new ViewOnClickListenerC0918a(this, 9);
        this.f5328v0 = new ViewOnClickListenerC0918a(this, 13);
        this.f5329w0 = new ViewOnClickListenerC0918a(this, 10);
        this.f5330x0 = new ViewOnClickListenerC0918a(this, 14);
        this.f5331y0 = new ViewOnClickListenerC0918a(this, 7);
        this.f5332z0 = new ViewOnClickListenerC0918a(this, 8);
        m6438P();
    }
}
