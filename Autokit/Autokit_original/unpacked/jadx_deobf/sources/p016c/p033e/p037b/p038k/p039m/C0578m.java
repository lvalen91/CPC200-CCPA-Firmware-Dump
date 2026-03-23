package p016c.p033e.p037b.p038k.p039m;

import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import p016c.p033e.p037b.p038k.C0559f;

/* JADX INFO: renamed from: c.e.b.k.m.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0578m {

    /* JADX INFO: renamed from: d */
    public static int f3665d;

    /* JADX INFO: renamed from: a */
    public boolean f3666a;

    /* JADX INFO: renamed from: b */
    AbstractC0581p f3667b;

    /* JADX INFO: renamed from: c */
    ArrayList<AbstractC0581p> f3668c = new ArrayList<>();

    public C0578m(AbstractC0581p abstractC0581p, int i) {
        this.f3667b = null;
        f3665d++;
        this.f3667b = abstractC0581p;
    }

    /* JADX INFO: renamed from: c */
    private long m4643c(C0571f c0571f, long j) {
        AbstractC0581p abstractC0581p = c0571f.f3643d;
        if (abstractC0581p instanceof C0576k) {
            return j;
        }
        int size = c0571f.f3650k.size();
        long jMin = j;
        for (int i = 0; i < size; i++) {
            InterfaceC0569d interfaceC0569d = c0571f.f3650k.get(i);
            if (interfaceC0569d instanceof C0571f) {
                C0571f c0571f2 = (C0571f) interfaceC0569d;
                if (c0571f2.f3643d != abstractC0581p) {
                    jMin = Math.min(jMin, m4643c(c0571f2, ((long) c0571f2.f3645f) + j));
                }
            }
        }
        if (c0571f != abstractC0581p.f3686i) {
            return jMin;
        }
        long jMo4607j = j - abstractC0581p.mo4607j();
        return Math.min(Math.min(jMin, m4643c(abstractC0581p.f3685h, jMo4607j)), jMo4607j - ((long) abstractC0581p.f3685h.f3645f));
    }

    /* JADX INFO: renamed from: d */
    private long m4644d(C0571f c0571f, long j) {
        AbstractC0581p abstractC0581p = c0571f.f3643d;
        if (abstractC0581p instanceof C0576k) {
            return j;
        }
        int size = c0571f.f3650k.size();
        long jMax = j;
        for (int i = 0; i < size; i++) {
            InterfaceC0569d interfaceC0569d = c0571f.f3650k.get(i);
            if (interfaceC0569d instanceof C0571f) {
                C0571f c0571f2 = (C0571f) interfaceC0569d;
                if (c0571f2.f3643d != abstractC0581p) {
                    jMax = Math.max(jMax, m4644d(c0571f2, ((long) c0571f2.f3645f) + j));
                }
            }
        }
        if (c0571f != abstractC0581p.f3685h) {
            return jMax;
        }
        long jMo4607j = j + abstractC0581p.mo4607j();
        return Math.max(Math.max(jMax, m4644d(abstractC0581p.f3686i, jMo4607j)), jMo4607j - ((long) abstractC0581p.f3686i.f3645f));
    }

    /* JADX INFO: renamed from: a */
    public void m4645a(AbstractC0581p abstractC0581p) {
        this.f3668c.add(abstractC0581p);
    }

    /* JADX INFO: renamed from: b */
    public long m4646b(C0559f c0559f, int i) {
        long jMo4607j;
        int i2;
        AbstractC0581p abstractC0581p = this.f3667b;
        if (abstractC0581p instanceof C0568c) {
            if (((C0568c) abstractC0581p).f3683f != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(abstractC0581p instanceof C0577l)) {
                return 0L;
            }
        } else if (!(abstractC0581p instanceof C0579n)) {
            return 0L;
        }
        C0571f c0571f = (i == 0 ? c0559f.f3541d : c0559f.f3543e).f3685h;
        C0571f c0571f2 = (i == 0 ? c0559f.f3541d : c0559f.f3543e).f3686i;
        boolean zContains = this.f3667b.f3685h.f3651l.contains(c0571f);
        boolean zContains2 = this.f3667b.f3686i.f3651l.contains(c0571f2);
        long jMo4607j2 = this.f3667b.mo4607j();
        if (zContains && zContains2) {
            long jM4644d = m4644d(this.f3667b.f3685h, 0L);
            long jM4643c = m4643c(this.f3667b.f3686i, 0L);
            long j = jM4644d - jMo4607j2;
            int i3 = this.f3667b.f3686i.f3645f;
            if (j >= (-i3)) {
                j += (long) i3;
            }
            int i4 = this.f3667b.f3685h.f3645f;
            long j2 = ((-jM4643c) - jMo4607j2) - ((long) i4);
            if (j2 >= i4) {
                j2 -= (long) i4;
            }
            float fM4517o = this.f3667b.f3679b.m4517o(i);
            float f = fM4517o > CropImageView.DEFAULT_ASPECT_RATIO ? (long) ((j2 / fM4517o) + (j / (1.0f - fM4517o))) : 0L;
            long j3 = ((long) ((f * fM4517o) + 0.5f)) + jMo4607j2 + ((long) ((f * (1.0f - fM4517o)) + 0.5f));
            AbstractC0581p abstractC0581p2 = this.f3667b;
            jMo4607j = ((long) abstractC0581p2.f3685h.f3645f) + j3;
            i2 = abstractC0581p2.f3686i.f3645f;
        } else {
            if (zContains) {
                return Math.max(m4644d(this.f3667b.f3685h, r12.f3645f), ((long) this.f3667b.f3685h.f3645f) + jMo4607j2);
            }
            if (zContains2) {
                return Math.max(-m4643c(this.f3667b.f3686i, r12.f3645f), ((long) (-this.f3667b.f3686i.f3645f)) + jMo4607j2);
            }
            AbstractC0581p abstractC0581p3 = this.f3667b;
            jMo4607j = ((long) abstractC0581p3.f3685h.f3645f) + abstractC0581p3.mo4607j();
            i2 = this.f3667b.f3686i.f3645f;
        }
        return jMo4607j - ((long) i2);
    }
}
