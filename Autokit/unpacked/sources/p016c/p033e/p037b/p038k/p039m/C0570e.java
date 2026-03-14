package p016c.p033e.p037b.p038k.p039m;

import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.C0559f;
import p016c.p033e.p037b.p038k.C0560g;
import p016c.p033e.p037b.p038k.C0562i;
import p016c.p033e.p037b.p038k.p039m.C0567b;

/* JADX INFO: renamed from: c.e.b.k.m.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0570e {

    /* JADX INFO: renamed from: a */
    private C0559f f3632a;

    /* JADX INFO: renamed from: d */
    private C0559f f3635d;

    /* JADX INFO: renamed from: f */
    private C0567b.b f3637f;

    /* JADX INFO: renamed from: g */
    private C0567b.a f3638g;

    /* JADX INFO: renamed from: h */
    ArrayList<C0578m> f3639h;

    /* JADX INFO: renamed from: b */
    private boolean f3633b = true;

    /* JADX INFO: renamed from: c */
    private boolean f3634c = true;

    /* JADX INFO: renamed from: e */
    private ArrayList<AbstractC0581p> f3636e = new ArrayList<>();

    public C0570e(C0559f c0559f) {
        new ArrayList();
        this.f3637f = null;
        this.f3638g = new C0567b.a();
        this.f3639h = new ArrayList<>();
        this.f3632a = c0559f;
        this.f3635d = c0559f;
    }

    /* JADX INFO: renamed from: a */
    private void m4609a(C0571f c0571f, int i, int i2, C0571f c0571f2, ArrayList<C0578m> arrayList, C0578m c0578m) {
        AbstractC0581p abstractC0581p = c0571f.f3643d;
        if (abstractC0581p.f3680c == null) {
            C0559f c0559f = this.f3632a;
            if (abstractC0581p == c0559f.f3541d || abstractC0581p == c0559f.f3543e) {
                return;
            }
            if (c0578m == null) {
                c0578m = new C0578m(abstractC0581p, i2);
                arrayList.add(c0578m);
            }
            abstractC0581p.f3680c = c0578m;
            c0578m.m4645a(abstractC0581p);
            for (InterfaceC0569d interfaceC0569d : abstractC0581p.f3685h.f3650k) {
                if (interfaceC0569d instanceof C0571f) {
                    m4609a((C0571f) interfaceC0569d, i, 0, c0571f2, arrayList, c0578m);
                }
            }
            for (InterfaceC0569d interfaceC0569d2 : abstractC0581p.f3686i.f3650k) {
                if (interfaceC0569d2 instanceof C0571f) {
                    m4609a((C0571f) interfaceC0569d2, i, 1, c0571f2, arrayList, c0578m);
                }
            }
            if (i == 1 && (abstractC0581p instanceof C0579n)) {
                for (InterfaceC0569d interfaceC0569d3 : ((C0579n) abstractC0581p).f3669k.f3650k) {
                    if (interfaceC0569d3 instanceof C0571f) {
                        m4609a((C0571f) interfaceC0569d3, i, 2, c0571f2, arrayList, c0578m);
                    }
                }
            }
            for (C0571f c0571f3 : abstractC0581p.f3685h.f3651l) {
                if (c0571f3 == c0571f2) {
                    c0578m.f3666a = true;
                }
                m4609a(c0571f3, i, 0, c0571f2, arrayList, c0578m);
            }
            for (C0571f c0571f4 : abstractC0581p.f3686i.f3651l) {
                if (c0571f4 == c0571f2) {
                    c0578m.f3666a = true;
                }
                m4609a(c0571f4, i, 1, c0571f2, arrayList, c0578m);
            }
            if (i == 1 && (abstractC0581p instanceof C0579n)) {
                Iterator<C0571f> it = ((C0579n) abstractC0581p).f3669k.f3651l.iterator();
                while (it.hasNext()) {
                    m4609a(it.next(), i, 2, c0571f2, arrayList, c0578m);
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    private boolean m4610b(C0559f c0559f) {
        int iM4481R;
        int iM4531v;
        int i;
        for (C0558e c0558e : c0559f.f3613p0) {
            C0558e.b[] bVarArr = c0558e.f3525Q;
            C0558e.b bVar = bVarArr[0];
            C0558e.b bVar2 = bVarArr[1];
            if (c0558e.m4479Q() == 8) {
                c0558e.f3535a = true;
            } else {
                if (c0558e.f3567s < 1.0f && bVar == C0558e.b.MATCH_CONSTRAINT) {
                    c0558e.f3561n = 2;
                }
                if (c0558e.f3570v < 1.0f && bVar2 == C0558e.b.MATCH_CONSTRAINT) {
                    c0558e.f3563o = 2;
                }
                if (c0558e.m4527t() > CropImageView.DEFAULT_ASPECT_RATIO) {
                    if (bVar == C0558e.b.MATCH_CONSTRAINT && (bVar2 == C0558e.b.WRAP_CONTENT || bVar2 == C0558e.b.FIXED)) {
                        c0558e.f3561n = 3;
                    } else if (bVar2 == C0558e.b.MATCH_CONSTRAINT && (bVar == C0558e.b.WRAP_CONTENT || bVar == C0558e.b.FIXED)) {
                        c0558e.f3563o = 3;
                    } else {
                        C0558e.b bVar3 = C0558e.b.MATCH_CONSTRAINT;
                        if (bVar == bVar3 && bVar2 == bVar3) {
                            if (c0558e.f3561n == 0) {
                                c0558e.f3561n = 3;
                            }
                            if (c0558e.f3563o == 0) {
                                c0558e.f3563o = 3;
                            }
                        }
                    }
                }
                if (bVar == C0558e.b.MATCH_CONSTRAINT && c0558e.f3561n == 1 && (c0558e.f3514F.f3493f == null || c0558e.f3516H.f3493f == null)) {
                    bVar = C0558e.b.WRAP_CONTENT;
                }
                C0558e.b bVar4 = bVar;
                if (bVar2 == C0558e.b.MATCH_CONSTRAINT && c0558e.f3563o == 1 && (c0558e.f3515G.f3493f == null || c0558e.f3517I.f3493f == null)) {
                    bVar2 = C0558e.b.WRAP_CONTENT;
                }
                C0558e.b bVar5 = bVar2;
                C0577l c0577l = c0558e.f3541d;
                c0577l.f3681d = bVar4;
                c0577l.f3678a = c0558e.f3561n;
                C0579n c0579n = c0558e.f3543e;
                c0579n.f3681d = bVar5;
                c0579n.f3678a = c0558e.f3563o;
                if ((bVar4 == C0558e.b.MATCH_PARENT || bVar4 == C0558e.b.FIXED || bVar4 == C0558e.b.WRAP_CONTENT) && (bVar5 == C0558e.b.MATCH_PARENT || bVar5 == C0558e.b.FIXED || bVar5 == C0558e.b.WRAP_CONTENT)) {
                    int iM4481R2 = c0558e.m4481R();
                    if (bVar4 == C0558e.b.MATCH_PARENT) {
                        iM4481R = (c0559f.m4481R() - c0558e.f3514F.f3494g) - c0558e.f3516H.f3494g;
                        bVar4 = C0558e.b.FIXED;
                    } else {
                        iM4481R = iM4481R2;
                    }
                    int iM4531v2 = c0558e.m4531v();
                    if (bVar5 == C0558e.b.MATCH_PARENT) {
                        iM4531v = (c0559f.m4531v() - c0558e.f3515G.f3494g) - c0558e.f3517I.f3494g;
                        bVar5 = C0558e.b.FIXED;
                    } else {
                        iM4531v = iM4531v2;
                    }
                    m4613l(c0558e, bVar4, iM4481R, bVar5, iM4531v);
                    c0558e.f3541d.f3682e.mo4625d(c0558e.m4481R());
                    c0558e.f3543e.f3682e.mo4625d(c0558e.m4531v());
                    c0558e.f3535a = true;
                } else {
                    if (bVar4 == C0558e.b.MATCH_CONSTRAINT && (bVar5 == C0558e.b.WRAP_CONTENT || bVar5 == C0558e.b.FIXED)) {
                        int i2 = c0558e.f3561n;
                        if (i2 == 3) {
                            C0558e.b bVar6 = C0558e.b.WRAP_CONTENT;
                            if (bVar5 == bVar6) {
                                m4613l(c0558e, bVar6, 0, bVar6, 0);
                            }
                            int iM4531v3 = c0558e.m4531v();
                            int i3 = (int) ((iM4531v3 * c0558e.f3529U) + 0.5f);
                            C0558e.b bVar7 = C0558e.b.FIXED;
                            m4613l(c0558e, bVar7, i3, bVar7, iM4531v3);
                            c0558e.f3541d.f3682e.mo4625d(c0558e.m4481R());
                            c0558e.f3543e.f3682e.mo4625d(c0558e.m4531v());
                            c0558e.f3535a = true;
                        } else if (i2 == 1) {
                            m4613l(c0558e, C0558e.b.WRAP_CONTENT, 0, bVar5, 0);
                            c0558e.f3541d.f3682e.f3661m = c0558e.m4481R();
                        } else if (i2 == 2) {
                            C0558e.b[] bVarArr2 = c0559f.f3525Q;
                            if (bVarArr2[0] == C0558e.b.FIXED || bVarArr2[0] == C0558e.b.MATCH_PARENT) {
                                m4613l(c0558e, C0558e.b.FIXED, (int) ((c0558e.f3567s * c0559f.m4481R()) + 0.5f), bVar5, c0558e.m4531v());
                                c0558e.f3541d.f3682e.mo4625d(c0558e.m4481R());
                                c0558e.f3543e.f3682e.mo4625d(c0558e.m4531v());
                                c0558e.f3535a = true;
                            }
                        } else {
                            C0557d[] c0557dArr = c0558e.f3522N;
                            if (c0557dArr[0].f3493f == null || c0557dArr[1].f3493f == null) {
                                m4613l(c0558e, C0558e.b.WRAP_CONTENT, 0, bVar5, 0);
                                c0558e.f3541d.f3682e.mo4625d(c0558e.m4481R());
                                c0558e.f3543e.f3682e.mo4625d(c0558e.m4531v());
                                c0558e.f3535a = true;
                            }
                        }
                    }
                    if (bVar5 == C0558e.b.MATCH_CONSTRAINT && (bVar4 == C0558e.b.WRAP_CONTENT || bVar4 == C0558e.b.FIXED)) {
                        int i4 = c0558e.f3563o;
                        if (i4 == 3) {
                            C0558e.b bVar8 = C0558e.b.WRAP_CONTENT;
                            if (bVar4 == bVar8) {
                                m4613l(c0558e, bVar8, 0, bVar8, 0);
                            }
                            int iM4481R3 = c0558e.m4481R();
                            float f = c0558e.f3529U;
                            if (c0558e.m4529u() == -1) {
                                f = 1.0f / f;
                            }
                            C0558e.b bVar9 = C0558e.b.FIXED;
                            m4613l(c0558e, bVar9, iM4481R3, bVar9, (int) ((iM4481R3 * f) + 0.5f));
                            c0558e.f3541d.f3682e.mo4625d(c0558e.m4481R());
                            c0558e.f3543e.f3682e.mo4625d(c0558e.m4531v());
                            c0558e.f3535a = true;
                        } else if (i4 == 1) {
                            m4613l(c0558e, bVar4, 0, C0558e.b.WRAP_CONTENT, 0);
                            c0558e.f3543e.f3682e.f3661m = c0558e.m4531v();
                        } else if (i4 == 2) {
                            C0558e.b[] bVarArr3 = c0559f.f3525Q;
                            if (bVarArr3[1] == C0558e.b.FIXED || bVarArr3[1] == C0558e.b.MATCH_PARENT) {
                                m4613l(c0558e, bVar4, c0558e.m4481R(), C0558e.b.FIXED, (int) ((c0558e.f3570v * c0559f.m4531v()) + 0.5f));
                                c0558e.f3541d.f3682e.mo4625d(c0558e.m4481R());
                                c0558e.f3543e.f3682e.mo4625d(c0558e.m4531v());
                                c0558e.f3535a = true;
                            }
                        } else {
                            C0557d[] c0557dArr2 = c0558e.f3522N;
                            if (c0557dArr2[2].f3493f == null || c0557dArr2[3].f3493f == null) {
                                m4613l(c0558e, C0558e.b.WRAP_CONTENT, 0, bVar5, 0);
                                c0558e.f3541d.f3682e.mo4625d(c0558e.m4481R());
                                c0558e.f3543e.f3682e.mo4625d(c0558e.m4531v());
                                c0558e.f3535a = true;
                            }
                        }
                    }
                    C0558e.b bVar10 = C0558e.b.MATCH_CONSTRAINT;
                    if (bVar4 == bVar10 && bVar5 == bVar10) {
                        int i5 = c0558e.f3561n;
                        if (i5 == 1 || (i = c0558e.f3563o) == 1) {
                            C0558e.b bVar11 = C0558e.b.WRAP_CONTENT;
                            m4613l(c0558e, bVar11, 0, bVar11, 0);
                            c0558e.f3541d.f3682e.f3661m = c0558e.m4481R();
                            c0558e.f3543e.f3682e.f3661m = c0558e.m4531v();
                        } else if (i == 2 && i5 == 2) {
                            C0558e.b[] bVarArr4 = c0559f.f3525Q;
                            C0558e.b bVar12 = bVarArr4[0];
                            C0558e.b bVar13 = C0558e.b.FIXED;
                            if (bVar12 == bVar13 || bVarArr4[0] == bVar13) {
                                C0558e.b[] bVarArr5 = c0559f.f3525Q;
                                C0558e.b bVar14 = bVarArr5[1];
                                C0558e.b bVar15 = C0558e.b.FIXED;
                                if (bVar14 == bVar15 || bVarArr5[1] == bVar15) {
                                    float f2 = c0558e.f3567s;
                                    int iM4531v4 = (int) ((c0558e.f3570v * c0559f.m4531v()) + 0.5f);
                                    C0558e.b bVar16 = C0558e.b.FIXED;
                                    m4613l(c0558e, bVar16, (int) ((f2 * c0559f.m4481R()) + 0.5f), bVar16, iM4531v4);
                                    c0558e.f3541d.f3682e.mo4625d(c0558e.m4481R());
                                    c0558e.f3543e.f3682e.mo4625d(c0558e.m4531v());
                                    c0558e.f3535a = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: e */
    private int m4611e(C0559f c0559f, int i) {
        int size = this.f3639h.size();
        long jMax = 0;
        for (int i2 = 0; i2 < size; i2++) {
            jMax = Math.max(jMax, this.f3639h.get(i2).m4646b(c0559f, i));
        }
        return (int) jMax;
    }

    /* JADX INFO: renamed from: i */
    private void m4612i(AbstractC0581p abstractC0581p, int i, ArrayList<C0578m> arrayList) {
        for (InterfaceC0569d interfaceC0569d : abstractC0581p.f3685h.f3650k) {
            if (interfaceC0569d instanceof C0571f) {
                m4609a((C0571f) interfaceC0569d, i, 0, abstractC0581p.f3686i, arrayList, null);
            } else if (interfaceC0569d instanceof AbstractC0581p) {
                m4609a(((AbstractC0581p) interfaceC0569d).f3685h, i, 0, abstractC0581p.f3686i, arrayList, null);
            }
        }
        for (InterfaceC0569d interfaceC0569d2 : abstractC0581p.f3686i.f3650k) {
            if (interfaceC0569d2 instanceof C0571f) {
                m4609a((C0571f) interfaceC0569d2, i, 1, abstractC0581p.f3685h, arrayList, null);
            } else if (interfaceC0569d2 instanceof AbstractC0581p) {
                m4609a(((AbstractC0581p) interfaceC0569d2).f3686i, i, 1, abstractC0581p.f3685h, arrayList, null);
            }
        }
        if (i == 1) {
            for (InterfaceC0569d interfaceC0569d3 : ((C0579n) abstractC0581p).f3669k.f3650k) {
                if (interfaceC0569d3 instanceof C0571f) {
                    m4609a((C0571f) interfaceC0569d3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    /* JADX INFO: renamed from: l */
    private void m4613l(C0558e c0558e, C0558e.b bVar, int i, C0558e.b bVar2, int i2) {
        C0567b.a aVar = this.f3638g;
        aVar.f3620a = bVar;
        aVar.f3621b = bVar2;
        aVar.f3622c = i;
        aVar.f3623d = i2;
        this.f3637f.mo1465a(c0558e, aVar);
        c0558e.m4488U0(this.f3638g.f3624e);
        c0558e.m4532v0(this.f3638g.f3625f);
        c0558e.m4530u0(this.f3638g.f3627h);
        c0558e.m4510k0(this.f3638g.f3626g);
    }

    /* JADX INFO: renamed from: c */
    public void m4614c() {
        m4615d(this.f3636e);
        this.f3639h.clear();
        C0578m.f3665d = 0;
        m4612i(this.f3632a.f3541d, 0, this.f3639h);
        m4612i(this.f3632a.f3543e, 1, this.f3639h);
        this.f3633b = false;
    }

    /* JADX INFO: renamed from: d */
    public void m4615d(ArrayList<AbstractC0581p> arrayList) {
        arrayList.clear();
        this.f3635d.f3541d.mo4606f();
        this.f3635d.f3543e.mo4606f();
        arrayList.add(this.f3635d.f3541d);
        arrayList.add(this.f3635d.f3543e);
        HashSet hashSet = null;
        for (C0558e c0558e : this.f3635d.f3613p0) {
            if (c0558e instanceof C0560g) {
                arrayList.add(new C0575j(c0558e));
            } else {
                if (c0558e.m4496Z()) {
                    if (c0558e.f3537b == null) {
                        c0558e.f3537b = new C0568c(c0558e, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(c0558e.f3537b);
                } else {
                    arrayList.add(c0558e.f3541d);
                }
                if (c0558e.m4499b0()) {
                    if (c0558e.f3539c == null) {
                        c0558e.f3539c = new C0568c(c0558e, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(c0558e.f3539c);
                } else {
                    arrayList.add(c0558e.f3543e);
                }
                if (c0558e instanceof C0562i) {
                    arrayList.add(new C0576k(c0558e));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<AbstractC0581p> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().mo4606f();
        }
        for (AbstractC0581p abstractC0581p : arrayList) {
            if (abstractC0581p.f3679b != this.f3635d) {
                abstractC0581p.mo4604d();
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public boolean m4616f(boolean z) {
        boolean z2;
        boolean z3 = true;
        boolean z4 = z & true;
        if (this.f3633b || this.f3634c) {
            for (C0558e c0558e : this.f3632a.f3613p0) {
                c0558e.m4511l();
                c0558e.f3535a = false;
                c0558e.f3541d.m4642r();
                c0558e.f3543e.m4647q();
            }
            this.f3632a.m4511l();
            C0559f c0559f = this.f3632a;
            c0559f.f3535a = false;
            c0559f.f3541d.m4642r();
            this.f3632a.f3543e.m4647q();
            this.f3634c = false;
        }
        if (m4610b(this.f3635d)) {
            return false;
        }
        this.f3632a.m4490V0(0);
        this.f3632a.m4492W0(0);
        C0558e.b bVarM4525s = this.f3632a.m4525s(0);
        C0558e.b bVarM4525s2 = this.f3632a.m4525s(1);
        if (this.f3633b) {
            m4614c();
        }
        int iM4483S = this.f3632a.m4483S();
        int iM4485T = this.f3632a.m4485T();
        this.f3632a.f3541d.f3685h.mo4625d(iM4483S);
        this.f3632a.f3543e.f3685h.mo4625d(iM4485T);
        m4621m();
        C0558e.b bVar = C0558e.b.WRAP_CONTENT;
        if (bVarM4525s == bVar || bVarM4525s2 == bVar) {
            if (z4) {
                Iterator<AbstractC0581p> it = this.f3636e.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (!it.next().mo4608m()) {
                        z4 = false;
                        break;
                    }
                }
            }
            if (z4 && bVarM4525s == C0558e.b.WRAP_CONTENT) {
                this.f3632a.m4540z0(C0558e.b.FIXED);
                C0559f c0559f2 = this.f3632a;
                c0559f2.m4488U0(m4611e(c0559f2, 0));
                C0559f c0559f3 = this.f3632a;
                c0559f3.f3541d.f3682e.mo4625d(c0559f3.m4481R());
            }
            if (z4 && bVarM4525s2 == C0558e.b.WRAP_CONTENT) {
                this.f3632a.m4480Q0(C0558e.b.FIXED);
                C0559f c0559f4 = this.f3632a;
                c0559f4.m4532v0(m4611e(c0559f4, 1));
                C0559f c0559f5 = this.f3632a;
                c0559f5.f3543e.f3682e.mo4625d(c0559f5.m4531v());
            }
        }
        C0558e.b[] bVarArr = this.f3632a.f3525Q;
        if (bVarArr[0] == C0558e.b.FIXED || bVarArr[0] == C0558e.b.MATCH_PARENT) {
            int iM4481R = this.f3632a.m4481R() + iM4483S;
            this.f3632a.f3541d.f3686i.mo4625d(iM4481R);
            this.f3632a.f3541d.f3682e.mo4625d(iM4481R - iM4483S);
            m4621m();
            C0558e.b[] bVarArr2 = this.f3632a.f3525Q;
            if (bVarArr2[1] == C0558e.b.FIXED || bVarArr2[1] == C0558e.b.MATCH_PARENT) {
                int iM4531v = this.f3632a.m4531v() + iM4485T;
                this.f3632a.f3543e.f3686i.mo4625d(iM4531v);
                this.f3632a.f3543e.f3682e.mo4625d(iM4531v - iM4485T);
            }
            m4621m();
            z2 = true;
        } else {
            z2 = false;
        }
        for (AbstractC0581p abstractC0581p : this.f3636e) {
            if (abstractC0581p.f3679b != this.f3632a || abstractC0581p.f3684g) {
                abstractC0581p.mo4605e();
            }
        }
        for (AbstractC0581p abstractC0581p2 : this.f3636e) {
            if (z2 || abstractC0581p2.f3679b != this.f3632a) {
                if (!abstractC0581p2.f3685h.f3649j || ((!abstractC0581p2.f3686i.f3649j && !(abstractC0581p2 instanceof C0575j)) || (!abstractC0581p2.f3682e.f3649j && !(abstractC0581p2 instanceof C0568c) && !(abstractC0581p2 instanceof C0575j)))) {
                    z3 = false;
                    break;
                }
            }
        }
        this.f3632a.m4540z0(bVarM4525s);
        this.f3632a.m4480Q0(bVarM4525s2);
        return z3;
    }

    /* JADX INFO: renamed from: g */
    public boolean m4617g(boolean z) {
        if (this.f3633b) {
            for (C0558e c0558e : this.f3632a.f3613p0) {
                c0558e.m4511l();
                c0558e.f3535a = false;
                C0577l c0577l = c0558e.f3541d;
                c0577l.f3682e.f3649j = false;
                c0577l.f3684g = false;
                c0577l.m4642r();
                C0579n c0579n = c0558e.f3543e;
                c0579n.f3682e.f3649j = false;
                c0579n.f3684g = false;
                c0579n.m4647q();
            }
            this.f3632a.m4511l();
            C0559f c0559f = this.f3632a;
            c0559f.f3535a = false;
            C0577l c0577l2 = c0559f.f3541d;
            c0577l2.f3682e.f3649j = false;
            c0577l2.f3684g = false;
            c0577l2.m4642r();
            C0579n c0579n2 = this.f3632a.f3543e;
            c0579n2.f3682e.f3649j = false;
            c0579n2.f3684g = false;
            c0579n2.m4647q();
            m4614c();
        }
        if (m4610b(this.f3635d)) {
            return false;
        }
        this.f3632a.m4490V0(0);
        this.f3632a.m4492W0(0);
        this.f3632a.f3541d.f3685h.mo4625d(0);
        this.f3632a.f3543e.f3685h.mo4625d(0);
        return true;
    }

    /* JADX INFO: renamed from: h */
    public boolean m4618h(boolean z, int i) {
        boolean z2;
        C0558e.b bVar;
        boolean z3 = true;
        boolean z4 = z & true;
        C0558e.b bVarM4525s = this.f3632a.m4525s(0);
        C0558e.b bVarM4525s2 = this.f3632a.m4525s(1);
        int iM4483S = this.f3632a.m4483S();
        int iM4485T = this.f3632a.m4485T();
        if (z4 && (bVarM4525s == (bVar = C0558e.b.WRAP_CONTENT) || bVarM4525s2 == bVar)) {
            Iterator<AbstractC0581p> it = this.f3636e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AbstractC0581p next = it.next();
                if (next.f3683f == i && !next.mo4608m()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && bVarM4525s == C0558e.b.WRAP_CONTENT) {
                    this.f3632a.m4540z0(C0558e.b.FIXED);
                    C0559f c0559f = this.f3632a;
                    c0559f.m4488U0(m4611e(c0559f, 0));
                    C0559f c0559f2 = this.f3632a;
                    c0559f2.f3541d.f3682e.mo4625d(c0559f2.m4481R());
                }
            } else if (z4 && bVarM4525s2 == C0558e.b.WRAP_CONTENT) {
                this.f3632a.m4480Q0(C0558e.b.FIXED);
                C0559f c0559f3 = this.f3632a;
                c0559f3.m4532v0(m4611e(c0559f3, 1));
                C0559f c0559f4 = this.f3632a;
                c0559f4.f3543e.f3682e.mo4625d(c0559f4.m4531v());
            }
        }
        if (i == 0) {
            C0558e.b[] bVarArr = this.f3632a.f3525Q;
            if (bVarArr[0] == C0558e.b.FIXED || bVarArr[0] == C0558e.b.MATCH_PARENT) {
                int iM4481R = this.f3632a.m4481R() + iM4483S;
                this.f3632a.f3541d.f3686i.mo4625d(iM4481R);
                this.f3632a.f3541d.f3682e.mo4625d(iM4481R - iM4483S);
                z2 = true;
            }
            z2 = false;
        } else {
            C0558e.b[] bVarArr2 = this.f3632a.f3525Q;
            if (bVarArr2[1] == C0558e.b.FIXED || bVarArr2[1] == C0558e.b.MATCH_PARENT) {
                int iM4531v = this.f3632a.m4531v() + iM4485T;
                this.f3632a.f3543e.f3686i.mo4625d(iM4531v);
                this.f3632a.f3543e.f3682e.mo4625d(iM4531v - iM4485T);
                z2 = true;
            }
            z2 = false;
        }
        m4621m();
        for (AbstractC0581p abstractC0581p : this.f3636e) {
            if (abstractC0581p.f3683f == i && (abstractC0581p.f3679b != this.f3632a || abstractC0581p.f3684g)) {
                abstractC0581p.mo4605e();
            }
        }
        for (AbstractC0581p abstractC0581p2 : this.f3636e) {
            if (abstractC0581p2.f3683f == i && (z2 || abstractC0581p2.f3679b != this.f3632a)) {
                if (!abstractC0581p2.f3685h.f3649j || !abstractC0581p2.f3686i.f3649j || (!(abstractC0581p2 instanceof C0568c) && !abstractC0581p2.f3682e.f3649j)) {
                    z3 = false;
                    break;
                }
            }
        }
        this.f3632a.m4540z0(bVarM4525s);
        this.f3632a.m4480Q0(bVarM4525s2);
        return z3;
    }

    /* JADX INFO: renamed from: j */
    public void m4619j() {
        this.f3633b = true;
    }

    /* JADX INFO: renamed from: k */
    public void m4620k() {
        this.f3634c = true;
    }

    /* JADX INFO: renamed from: m */
    public void m4621m() {
        C0572g c0572g;
        for (C0558e c0558e : this.f3632a.f3613p0) {
            if (!c0558e.f3535a) {
                C0558e.b[] bVarArr = c0558e.f3525Q;
                boolean z = false;
                C0558e.b bVar = bVarArr[0];
                C0558e.b bVar2 = bVarArr[1];
                int i = c0558e.f3561n;
                int i2 = c0558e.f3563o;
                boolean z2 = bVar == C0558e.b.WRAP_CONTENT || (bVar == C0558e.b.MATCH_CONSTRAINT && i == 1);
                if (bVar2 == C0558e.b.WRAP_CONTENT || (bVar2 == C0558e.b.MATCH_CONSTRAINT && i2 == 1)) {
                    z = true;
                }
                C0572g c0572g2 = c0558e.f3541d.f3682e;
                boolean z3 = c0572g2.f3649j;
                C0572g c0572g3 = c0558e.f3543e.f3682e;
                boolean z4 = c0572g3.f3649j;
                if (z3 && z4) {
                    C0558e.b bVar3 = C0558e.b.FIXED;
                    m4613l(c0558e, bVar3, c0572g2.f3646g, bVar3, c0572g3.f3646g);
                    c0558e.f3535a = true;
                } else if (z3 && z) {
                    m4613l(c0558e, C0558e.b.FIXED, c0558e.f3541d.f3682e.f3646g, C0558e.b.WRAP_CONTENT, c0558e.f3543e.f3682e.f3646g);
                    if (bVar2 == C0558e.b.MATCH_CONSTRAINT) {
                        c0558e.f3543e.f3682e.f3661m = c0558e.m4531v();
                    } else {
                        c0558e.f3543e.f3682e.mo4625d(c0558e.m4531v());
                        c0558e.f3535a = true;
                    }
                } else if (z4 && z2) {
                    m4613l(c0558e, C0558e.b.WRAP_CONTENT, c0558e.f3541d.f3682e.f3646g, C0558e.b.FIXED, c0558e.f3543e.f3682e.f3646g);
                    if (bVar == C0558e.b.MATCH_CONSTRAINT) {
                        c0558e.f3541d.f3682e.f3661m = c0558e.m4481R();
                    } else {
                        c0558e.f3541d.f3682e.mo4625d(c0558e.m4481R());
                        c0558e.f3535a = true;
                    }
                }
                if (c0558e.f3535a && (c0572g = c0558e.f3543e.f3670l) != null) {
                    c0572g.mo4625d(c0558e.m4515n());
                }
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public void m4622n(C0567b.b bVar) {
        this.f3637f = bVar;
    }
}
