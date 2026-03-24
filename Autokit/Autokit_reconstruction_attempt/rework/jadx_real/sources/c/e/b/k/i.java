package c.e.b.k;

import c.e.b.k.m.o;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class i extends e implements h {
    public e[] p0 = new e[4];
    public int q0 = 0;

    @Override // c.e.b.k.h
    public void a(e eVar) {
        if (eVar == this || eVar == null) {
            return;
        }
        int i = this.q0 + 1;
        e[] eVarArr = this.p0;
        if (i > eVarArr.length) {
            this.p0 = (e[]) Arrays.copyOf(eVarArr, eVarArr.length * 2);
        }
        e[] eVarArr2 = this.p0;
        int i2 = this.q0;
        eVarArr2[i2] = eVar;
        this.q0 = i2 + 1;
    }

    public void a1(ArrayList<o> arrayList, int i, o oVar) {
        for (int i2 = 0; i2 < this.q0; i2++) {
            oVar.a(this.p0[i2]);
        }
        for (int i3 = 0; i3 < this.q0; i3++) {
            c.e.b.k.m.i.a(this.p0[i3], i, arrayList, oVar);
        }
    }

    @Override // c.e.b.k.h
    public void b(f fVar) {
    }

    public int b1(int i) {
        int i2;
        int i3;
        for (int i4 = 0; i4 < this.q0; i4++) {
            e eVar = this.p0[i4];
            if (i == 0 && (i3 = eVar.m0) != -1) {
                return i3;
            }
            if (i == 1 && (i2 = eVar.n0) != -1) {
                return i2;
            }
        }
        return -1;
    }

    @Override // c.e.b.k.h
    public void c() {
        this.q0 = 0;
        Arrays.fill(this.p0, (Object) null);
    }
}
