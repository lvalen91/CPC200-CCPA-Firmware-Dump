package p016c.p033e.p037b.p038k.p039m;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: c.e.b.k.m.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0571f implements InterfaceC0569d {

    /* JADX INFO: renamed from: d */
    AbstractC0581p f3643d;

    /* JADX INFO: renamed from: f */
    int f3645f;

    /* JADX INFO: renamed from: g */
    public int f3646g;

    /* JADX INFO: renamed from: a */
    public InterfaceC0569d f3640a = null;

    /* JADX INFO: renamed from: b */
    public boolean f3641b = false;

    /* JADX INFO: renamed from: c */
    public boolean f3642c = false;

    /* JADX INFO: renamed from: e */
    a f3644e = a.UNKNOWN;

    /* JADX INFO: renamed from: h */
    int f3647h = 1;

    /* JADX INFO: renamed from: i */
    C0572g f3648i = null;

    /* JADX INFO: renamed from: j */
    public boolean f3649j = false;

    /* JADX INFO: renamed from: k */
    List<InterfaceC0569d> f3650k = new ArrayList();

    /* JADX INFO: renamed from: l */
    List<C0571f> f3651l = new ArrayList();

    /* JADX INFO: renamed from: c.e.b.k.m.f$a */
    enum a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public C0571f(AbstractC0581p abstractC0581p) {
        this.f3643d = abstractC0581p;
    }

    @Override // p016c.p033e.p037b.p038k.p039m.InterfaceC0569d
    /* JADX INFO: renamed from: a */
    public void mo4603a(InterfaceC0569d interfaceC0569d) {
        Iterator<C0571f> it = this.f3651l.iterator();
        while (it.hasNext()) {
            if (!it.next().f3649j) {
                return;
            }
        }
        this.f3642c = true;
        InterfaceC0569d interfaceC0569d2 = this.f3640a;
        if (interfaceC0569d2 != null) {
            interfaceC0569d2.mo4603a(this);
        }
        if (this.f3641b) {
            this.f3643d.mo4603a(this);
            return;
        }
        C0571f c0571f = null;
        int i = 0;
        for (C0571f c0571f2 : this.f3651l) {
            if (!(c0571f2 instanceof C0572g)) {
                i++;
                c0571f = c0571f2;
            }
        }
        if (c0571f != null && i == 1 && c0571f.f3649j) {
            C0572g c0572g = this.f3648i;
            if (c0572g != null) {
                if (!c0572g.f3649j) {
                    return;
                } else {
                    this.f3645f = this.f3647h * c0572g.f3646g;
                }
            }
            mo4625d(c0571f.f3646g + this.f3645f);
        }
        InterfaceC0569d interfaceC0569d3 = this.f3640a;
        if (interfaceC0569d3 != null) {
            interfaceC0569d3.mo4603a(this);
        }
    }

    /* JADX INFO: renamed from: b */
    public void m4623b(InterfaceC0569d interfaceC0569d) {
        this.f3650k.add(interfaceC0569d);
        if (this.f3649j) {
            interfaceC0569d.mo4603a(interfaceC0569d);
        }
    }

    /* JADX INFO: renamed from: c */
    public void m4624c() {
        this.f3651l.clear();
        this.f3650k.clear();
        this.f3649j = false;
        this.f3646g = 0;
        this.f3642c = false;
        this.f3641b = false;
    }

    /* JADX INFO: renamed from: d */
    public void mo4625d(int i) {
        if (this.f3649j) {
            return;
        }
        this.f3649j = true;
        this.f3646g = i;
        for (InterfaceC0569d interfaceC0569d : this.f3650k) {
            interfaceC0569d.mo4603a(interfaceC0569d);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3643d.f3679b.m4523r());
        sb.append(":");
        sb.append(this.f3644e);
        sb.append("(");
        sb.append(this.f3649j ? Integer.valueOf(this.f3646g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f3651l.size());
        sb.append(":d=");
        sb.append(this.f3650k.size());
        sb.append(">");
        return sb.toString();
    }
}
