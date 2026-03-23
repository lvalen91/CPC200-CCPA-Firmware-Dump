package p016c.p033e.p037b.p038k;

import java.util.ArrayList;
import java.util.Arrays;
import p016c.p033e.p037b.p038k.p039m.C0574i;
import p016c.p033e.p037b.p038k.p039m.C0580o;

/* JADX INFO: renamed from: c.e.b.k.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0562i extends C0558e implements InterfaceC0561h {

    /* JADX INFO: renamed from: p0 */
    public C0558e[] f3609p0 = new C0558e[4];

    /* JADX INFO: renamed from: q0 */
    public int f3610q0 = 0;

    @Override // p016c.p033e.p037b.p038k.InterfaceC0561h
    /* JADX INFO: renamed from: a */
    public void mo4582a(C0558e c0558e) {
        if (c0558e == this || c0558e == null) {
            return;
        }
        int i = this.f3610q0 + 1;
        C0558e[] c0558eArr = this.f3609p0;
        if (i > c0558eArr.length) {
            this.f3609p0 = (C0558e[]) Arrays.copyOf(c0558eArr, c0558eArr.length * 2);
        }
        C0558e[] c0558eArr2 = this.f3609p0;
        int i2 = this.f3610q0;
        c0558eArr2[i2] = c0558e;
        this.f3610q0 = i2 + 1;
    }

    /* JADX INFO: renamed from: a1 */
    public void m4585a1(ArrayList<C0580o> arrayList, int i, C0580o c0580o) {
        for (int i2 = 0; i2 < this.f3610q0; i2++) {
            c0580o.m4650a(this.f3609p0[i2]);
        }
        for (int i3 = 0; i3 < this.f3610q0; i3++) {
            C0574i.m4635a(this.f3609p0[i3], i, arrayList, c0580o);
        }
    }

    @Override // p016c.p033e.p037b.p038k.InterfaceC0561h
    /* JADX INFO: renamed from: b */
    public void mo4583b(C0559f c0559f) {
    }

    /* JADX INFO: renamed from: b1 */
    public int m4586b1(int i) {
        int i2;
        int i3;
        for (int i4 = 0; i4 < this.f3610q0; i4++) {
            C0558e c0558e = this.f3609p0[i4];
            if (i == 0 && (i3 = c0558e.f3560m0) != -1) {
                return i3;
            }
            if (i == 1 && (i2 = c0558e.f3562n0) != -1) {
                return i2;
            }
        }
        return -1;
    }

    @Override // p016c.p033e.p037b.p038k.InterfaceC0561h
    /* JADX INFO: renamed from: c */
    public void mo4584c() {
        this.f3610q0 = 0;
        Arrays.fill(this.f3609p0, (Object) null);
    }
}
