package p016c.p033e.p037b.p038k;

import java.util.ArrayList;
import p016c.p033e.p037b.C0546c;

/* JADX INFO: renamed from: c.e.b.k.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0565l extends C0558e {

    /* JADX INFO: renamed from: p0 */
    public ArrayList<C0558e> f3613p0 = new ArrayList<>();

    /* JADX INFO: renamed from: a */
    public void m4591a(C0558e c0558e) {
        this.f3613p0.add(c0558e);
        if (c0558e.m4463I() != null) {
            ((C0565l) c0558e.m4463I()).m4593c1(c0558e);
        }
        c0558e.m4472M0(this);
    }

    /* JADX INFO: renamed from: a1 */
    public ArrayList<C0558e> m4592a1() {
        return this.f3613p0;
    }

    /* JADX INFO: renamed from: b1 */
    public void mo4553b1() {
        ArrayList<C0558e> arrayList = this.f3613p0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0558e c0558e = this.f3613p0.get(i);
            if (c0558e instanceof C0565l) {
                ((C0565l) c0558e).mo4553b1();
            }
        }
    }

    /* JADX INFO: renamed from: c1 */
    public void m4593c1(C0558e c0558e) {
        this.f3613p0.remove(c0558e);
        c0558e.mo4505h0();
    }

    /* JADX INFO: renamed from: d1 */
    public void m4594d1() {
        this.f3613p0.clear();
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: h0 */
    public void mo4505h0() {
        this.f3613p0.clear();
        super.mo4505h0();
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: j0 */
    public void mo4508j0(C0546c c0546c) {
        super.mo4508j0(c0546c);
        int size = this.f3613p0.size();
        for (int i = 0; i < size; i++) {
            this.f3613p0.get(i).mo4508j0(c0546c);
        }
    }
}
