package c.e.b.k.m;

import c.e.b.k.d;
import c.e.b.k.e;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class p implements d {
    public int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    c.e.b.k.e f1163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    m f1164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected e.b f1165d;
    g e = new g(this);
    public int f = 0;
    boolean g = false;
    public f h = new f(this);
    public f i = new f(this);
    protected b j = b.NONE;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d.b.values().length];
            a = iArr;
            try {
                iArr[d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[d.b.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[d.b.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[d.b.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[d.b.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    enum b {
        NONE,
        START,
        END,
        CENTER
    }

    public p(c.e.b.k.e eVar) {
        this.f1163b = eVar;
    }

    private void l(int i, int i2) {
        int i3 = this.a;
        if (i3 == 0) {
            this.e.d(g(i2, i));
            return;
        }
        if (i3 == 1) {
            this.e.d(Math.min(g(this.e.m, i), i2));
            return;
        }
        if (i3 == 2) {
            c.e.b.k.e eVarI = this.f1163b.I();
            if (eVarI != null) {
                if ((i == 0 ? eVarI.f1138d : eVarI.e).e.j) {
                    c.e.b.k.e eVar = this.f1163b;
                    this.e.d(g((int) ((r8.e.g * (i == 0 ? eVar.s : eVar.v)) + 0.5f), i));
                    return;
                }
                return;
            }
            return;
        }
        if (i3 != 3) {
            return;
        }
        c.e.b.k.e eVar2 = this.f1163b;
        l lVar = eVar2.f1138d;
        e.b bVar = lVar.f1165d;
        e.b bVar2 = e.b.MATCH_CONSTRAINT;
        if (bVar == bVar2 && lVar.a == 3) {
            n nVar = eVar2.e;
            if (nVar.f1165d == bVar2 && nVar.a == 3) {
                return;
            }
        }
        c.e.b.k.e eVar3 = this.f1163b;
        if ((i == 0 ? eVar3.e : eVar3.f1138d).e.j) {
            float fT = this.f1163b.t();
            this.e.d(i == 1 ? (int) ((r8.e.g / fT) + 0.5f) : (int) ((fT * r8.e.g) + 0.5f));
        }
    }

    @Override // c.e.b.k.m.d
    public void a(d dVar) {
    }

    protected final void b(f fVar, f fVar2, int i) {
        fVar.l.add(fVar2);
        fVar.f = i;
        fVar2.k.add(fVar);
    }

    protected final void c(f fVar, f fVar2, int i, g gVar) {
        fVar.l.add(fVar2);
        fVar.l.add(this.e);
        fVar.h = i;
        fVar.i = gVar;
        fVar2.k.add(fVar);
        gVar.k.add(fVar);
    }

    abstract void d();

    abstract void e();

    abstract void f();

    protected final int g(int i, int i2) {
        int iMax;
        if (i2 == 0) {
            c.e.b.k.e eVar = this.f1163b;
            int i3 = eVar.r;
            iMax = Math.max(eVar.q, i);
            if (i3 > 0) {
                iMax = Math.min(i3, i);
            }
            if (iMax == i) {
                return i;
            }
        } else {
            c.e.b.k.e eVar2 = this.f1163b;
            int i4 = eVar2.u;
            iMax = Math.max(eVar2.t, i);
            if (i4 > 0) {
                iMax = Math.min(i4, i);
            }
            if (iMax == i) {
                return i;
            }
        }
        return iMax;
    }

    protected final f h(c.e.b.k.d dVar) {
        c.e.b.k.d dVar2 = dVar.f;
        if (dVar2 == null) {
            return null;
        }
        c.e.b.k.e eVar = dVar2.f1132d;
        int i = a.a[dVar2.e.ordinal()];
        if (i == 1) {
            return eVar.f1138d.h;
        }
        if (i == 2) {
            return eVar.f1138d.i;
        }
        if (i == 3) {
            return eVar.e.h;
        }
        if (i == 4) {
            return eVar.e.k;
        }
        if (i != 5) {
            return null;
        }
        return eVar.e.i;
    }

    protected final f i(c.e.b.k.d dVar, int i) {
        c.e.b.k.d dVar2 = dVar.f;
        if (dVar2 == null) {
            return null;
        }
        c.e.b.k.e eVar = dVar2.f1132d;
        p pVar = i == 0 ? eVar.f1138d : eVar.e;
        int i2 = a.a[dVar.f.e.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return null;
                    }
                }
            }
            return pVar.i;
        }
        return pVar.h;
    }

    public long j() {
        if (this.e.j) {
            return r0.g;
        }
        return 0L;
    }

    public boolean k() {
        return this.g;
    }

    abstract boolean m();

    protected void n(d dVar, c.e.b.k.d dVar2, c.e.b.k.d dVar3, int i) {
        f fVarH = h(dVar2);
        f fVarH2 = h(dVar3);
        if (fVarH.j && fVarH2.j) {
            int iE = fVarH.g + dVar2.e();
            int iE2 = fVarH2.g - dVar3.e();
            int i2 = iE2 - iE;
            if (!this.e.j && this.f1165d == e.b.MATCH_CONSTRAINT) {
                l(i, i2);
            }
            g gVar = this.e;
            if (gVar.j) {
                if (gVar.g == i2) {
                    this.h.d(iE);
                    this.i.d(iE2);
                    return;
                }
                c.e.b.k.e eVar = this.f1163b;
                float fW = i == 0 ? eVar.w() : eVar.M();
                if (fVarH == fVarH2) {
                    iE = fVarH.g;
                    iE2 = fVarH2.g;
                    fW = 0.5f;
                }
                this.h.d((int) (iE + 0.5f + (((iE2 - iE) - this.e.g) * fW)));
                this.i.d(this.h.g + this.e.g);
            }
        }
    }

    protected void o(d dVar) {
    }

    protected void p(d dVar) {
    }
}
