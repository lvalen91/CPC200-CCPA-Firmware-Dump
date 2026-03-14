package c.e.b.k;

import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class l extends e {
    public ArrayList<e> p0 = new ArrayList<>();

    public void a(e eVar) {
        this.p0.add(eVar);
        if (eVar.I() != null) {
            ((l) eVar.I()).c1(eVar);
        }
        eVar.M0(this);
    }

    public ArrayList<e> a1() {
        return this.p0;
    }

    public void b1() {
        ArrayList<e> arrayList = this.p0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            e eVar = this.p0.get(i);
            if (eVar instanceof l) {
                ((l) eVar).b1();
            }
        }
    }

    public void c1(e eVar) {
        this.p0.remove(eVar);
        eVar.h0();
    }

    public void d1() {
        this.p0.clear();
    }

    @Override // c.e.b.k.e
    public void h0() {
        this.p0.clear();
        super.h0();
    }

    @Override // c.e.b.k.e
    public void j0(c.e.b.c cVar) {
        super.j0(cVar);
        int size = this.p0.size();
        for (int i = 0; i < size; i++) {
            this.p0.get(i).j0(cVar);
        }
    }
}
