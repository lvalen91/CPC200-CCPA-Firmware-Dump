package c.c.a;

import android.content.res.ColorStateList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class c implements f {
    c() {
    }

    private g n(e eVar) {
        return (g) eVar.d();
    }

    @Override // c.c.a.f
    public float a(e eVar) {
        return n(eVar).c();
    }

    @Override // c.c.a.f
    public float b(e eVar) {
        return n(eVar).d();
    }

    @Override // c.c.a.f
    public float c(e eVar) {
        return b(eVar) * 2.0f;
    }

    @Override // c.c.a.f
    public float d(e eVar) {
        return b(eVar) * 2.0f;
    }

    @Override // c.c.a.f
    public void e(e eVar) {
        l(eVar, a(eVar));
    }

    @Override // c.c.a.f
    public ColorStateList f(e eVar) {
        return n(eVar).b();
    }

    @Override // c.c.a.f
    public void g(e eVar, float f) {
        eVar.b().setElevation(f);
    }

    @Override // c.c.a.f
    public void h(e eVar, float f) {
        n(eVar).h(f);
    }

    @Override // c.c.a.f
    public void i(e eVar) {
        l(eVar, a(eVar));
    }

    @Override // c.c.a.f
    public void j(e eVar, ColorStateList colorStateList) {
        n(eVar).f(colorStateList);
    }

    @Override // c.c.a.f
    public float k(e eVar) {
        return eVar.b().getElevation();
    }

    @Override // c.c.a.f
    public void l(e eVar, float f) {
        n(eVar).g(f, eVar.c(), eVar.f());
        o(eVar);
    }

    @Override // c.c.a.f
    public void m() {
    }

    public void o(e eVar) {
        if (!eVar.c()) {
            eVar.a(0, 0, 0, 0);
            return;
        }
        float fA = a(eVar);
        float fB = b(eVar);
        int iCeil = (int) Math.ceil(h.c(fA, fB, eVar.f()));
        int iCeil2 = (int) Math.ceil(h.d(fA, fB, eVar.f()));
        eVar.a(iCeil, iCeil2, iCeil, iCeil2);
    }
}
