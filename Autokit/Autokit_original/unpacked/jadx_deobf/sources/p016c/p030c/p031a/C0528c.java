package p016c.p030c.p031a;

import android.content.res.ColorStateList;

/* JADX INFO: renamed from: c.c.a.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0528c implements InterfaceC0531f {
    C0528c() {
    }

    /* JADX INFO: renamed from: n */
    private C0532g m4178n(InterfaceC0530e interfaceC0530e) {
        return (C0532g) interfaceC0530e.m4197d();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: a */
    public float mo4179a(InterfaceC0530e interfaceC0530e) {
        return m4178n(interfaceC0530e).m4204c();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: b */
    public float mo4180b(InterfaceC0530e interfaceC0530e) {
        return m4178n(interfaceC0530e).m4205d();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: c */
    public float mo4181c(InterfaceC0530e interfaceC0530e) {
        return mo4180b(interfaceC0530e) * 2.0f;
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: d */
    public float mo4182d(InterfaceC0530e interfaceC0530e) {
        return mo4180b(interfaceC0530e) * 2.0f;
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: e */
    public void mo4183e(InterfaceC0530e interfaceC0530e) {
        mo4190l(interfaceC0530e, mo4179a(interfaceC0530e));
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: f */
    public ColorStateList mo4184f(InterfaceC0530e interfaceC0530e) {
        return m4178n(interfaceC0530e).m4203b();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: g */
    public void mo4185g(InterfaceC0530e interfaceC0530e, float f) {
        interfaceC0530e.m4195b().setElevation(f);
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: h */
    public void mo4186h(InterfaceC0530e interfaceC0530e, float f) {
        m4178n(interfaceC0530e).m4208h(f);
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: i */
    public void mo4187i(InterfaceC0530e interfaceC0530e) {
        mo4190l(interfaceC0530e, mo4179a(interfaceC0530e));
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: j */
    public void mo4188j(InterfaceC0530e interfaceC0530e, ColorStateList colorStateList) {
        m4178n(interfaceC0530e).m4206f(colorStateList);
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: k */
    public float mo4189k(InterfaceC0530e interfaceC0530e) {
        return interfaceC0530e.m4195b().getElevation();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: l */
    public void mo4190l(InterfaceC0530e interfaceC0530e, float f) {
        m4178n(interfaceC0530e).m4207g(f, interfaceC0530e.m4196c(), interfaceC0530e.m4199f());
        m4191o(interfaceC0530e);
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: m */
    public void mo4176m() {
    }

    /* JADX INFO: renamed from: o */
    public void m4191o(InterfaceC0530e interfaceC0530e) {
        if (!interfaceC0530e.m4196c()) {
            interfaceC0530e.m4194a(0, 0, 0, 0);
            return;
        }
        float fMo4179a = mo4179a(interfaceC0530e);
        float fMo4180b = mo4180b(interfaceC0530e);
        int iCeil = (int) Math.ceil(C0533h.m4211c(fMo4179a, fMo4180b, interfaceC0530e.m4199f()));
        int iCeil2 = (int) Math.ceil(C0533h.m4212d(fMo4179a, fMo4180b, interfaceC0530e.m4199f()));
        interfaceC0530e.m4194a(iCeil, iCeil2, iCeil, iCeil2);
    }
}
