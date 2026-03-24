package c.e.b.k.m;

import c.e.b.k.m.f;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class k extends p {
    public k(c.e.b.k.e eVar) {
        super(eVar);
    }

    private void q(f fVar) {
        this.h.k.add(fVar);
        fVar.l.add(this.h);
    }

    @Override // c.e.b.k.m.p, c.e.b.k.m.d
    public void a(d dVar) {
        c.e.b.k.a aVar = (c.e.b.k.a) this.f1163b;
        int iE1 = aVar.e1();
        Iterator<f> it = this.h.l.iterator();
        int i = 0;
        int i2 = -1;
        while (it.hasNext()) {
            int i3 = it.next().g;
            if (i2 == -1 || i3 < i2) {
                i2 = i3;
            }
            if (i < i3) {
                i = i3;
            }
        }
        if (iE1 == 0 || iE1 == 2) {
            this.h.d(i2 + aVar.f1());
        } else {
            this.h.d(i + aVar.f1());
        }
    }

    @Override // c.e.b.k.m.p
    void d() {
        c.e.b.k.e eVar = this.f1163b;
        if (eVar instanceof c.e.b.k.a) {
            this.h.f1151b = true;
            c.e.b.k.a aVar = (c.e.b.k.a) eVar;
            int iE1 = aVar.e1();
            boolean zD1 = aVar.d1();
            int i = 0;
            if (iE1 == 0) {
                this.h.e = f.a.LEFT;
                while (i < aVar.q0) {
                    c.e.b.k.e eVar2 = aVar.p0[i];
                    if (zD1 || eVar2.Q() != 8) {
                        f fVar = eVar2.f1138d.h;
                        fVar.k.add(this.h);
                        this.h.l.add(fVar);
                    }
                    i++;
                }
                q(this.f1163b.f1138d.h);
                q(this.f1163b.f1138d.i);
                return;
            }
            if (iE1 == 1) {
                this.h.e = f.a.RIGHT;
                while (i < aVar.q0) {
                    c.e.b.k.e eVar3 = aVar.p0[i];
                    if (zD1 || eVar3.Q() != 8) {
                        f fVar2 = eVar3.f1138d.i;
                        fVar2.k.add(this.h);
                        this.h.l.add(fVar2);
                    }
                    i++;
                }
                q(this.f1163b.f1138d.h);
                q(this.f1163b.f1138d.i);
                return;
            }
            if (iE1 == 2) {
                this.h.e = f.a.TOP;
                while (i < aVar.q0) {
                    c.e.b.k.e eVar4 = aVar.p0[i];
                    if (zD1 || eVar4.Q() != 8) {
                        f fVar3 = eVar4.e.h;
                        fVar3.k.add(this.h);
                        this.h.l.add(fVar3);
                    }
                    i++;
                }
                q(this.f1163b.e.h);
                q(this.f1163b.e.i);
                return;
            }
            if (iE1 != 3) {
                return;
            }
            this.h.e = f.a.BOTTOM;
            while (i < aVar.q0) {
                c.e.b.k.e eVar5 = aVar.p0[i];
                if (zD1 || eVar5.Q() != 8) {
                    f fVar4 = eVar5.e.i;
                    fVar4.k.add(this.h);
                    this.h.l.add(fVar4);
                }
                i++;
            }
            q(this.f1163b.e.h);
            q(this.f1163b.e.i);
        }
    }

    @Override // c.e.b.k.m.p
    public void e() {
        c.e.b.k.e eVar = this.f1163b;
        if (eVar instanceof c.e.b.k.a) {
            int iE1 = ((c.e.b.k.a) eVar).e1();
            if (iE1 == 0 || iE1 == 1) {
                this.f1163b.V0(this.h.g);
            } else {
                this.f1163b.W0(this.h.g);
            }
        }
    }

    @Override // c.e.b.k.m.p
    void f() {
        this.f1164c = null;
        this.h.c();
    }

    @Override // c.e.b.k.m.p
    boolean m() {
        return false;
    }
}
