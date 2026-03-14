package c.e.b.k.m;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class j extends p {
    public j(c.e.b.k.e eVar) {
        super(eVar);
        eVar.f1138d.f();
        eVar.e.f();
        this.f = ((c.e.b.k.g) eVar).b1();
    }

    private void q(f fVar) {
        this.h.k.add(fVar);
        fVar.l.add(this.h);
    }

    @Override // c.e.b.k.m.p, c.e.b.k.m.d
    public void a(d dVar) {
        f fVar = this.h;
        if (fVar.f1152c && !fVar.j) {
            this.h.d((int) ((fVar.l.get(0).g * ((c.e.b.k.g) this.f1163b).e1()) + 0.5f));
        }
    }

    @Override // c.e.b.k.m.p
    void d() {
        c.e.b.k.g gVar = (c.e.b.k.g) this.f1163b;
        int iC1 = gVar.c1();
        int iD1 = gVar.d1();
        gVar.e1();
        if (gVar.b1() == 1) {
            if (iC1 != -1) {
                this.h.l.add(this.f1163b.R.f1138d.h);
                this.f1163b.R.f1138d.h.k.add(this.h);
                this.h.f = iC1;
            } else if (iD1 != -1) {
                this.h.l.add(this.f1163b.R.f1138d.i);
                this.f1163b.R.f1138d.i.k.add(this.h);
                this.h.f = -iD1;
            } else {
                f fVar = this.h;
                fVar.f1151b = true;
                fVar.l.add(this.f1163b.R.f1138d.i);
                this.f1163b.R.f1138d.i.k.add(this.h);
            }
            q(this.f1163b.f1138d.h);
            q(this.f1163b.f1138d.i);
            return;
        }
        if (iC1 != -1) {
            this.h.l.add(this.f1163b.R.e.h);
            this.f1163b.R.e.h.k.add(this.h);
            this.h.f = iC1;
        } else if (iD1 != -1) {
            this.h.l.add(this.f1163b.R.e.i);
            this.f1163b.R.e.i.k.add(this.h);
            this.h.f = -iD1;
        } else {
            f fVar2 = this.h;
            fVar2.f1151b = true;
            fVar2.l.add(this.f1163b.R.e.i);
            this.f1163b.R.e.i.k.add(this.h);
        }
        q(this.f1163b.e.h);
        q(this.f1163b.e.i);
    }

    @Override // c.e.b.k.m.p
    public void e() {
        if (((c.e.b.k.g) this.f1163b).b1() == 1) {
            this.f1163b.V0(this.h.g);
        } else {
            this.f1163b.W0(this.h.g);
        }
    }

    @Override // c.e.b.k.m.p
    void f() {
        this.h.c();
    }

    @Override // c.e.b.k.m.p
    boolean m() {
        return false;
    }
}
