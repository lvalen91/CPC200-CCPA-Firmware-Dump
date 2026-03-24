package c.e.b.k.m;

import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f1157d;
    public boolean a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    p f1158b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ArrayList<p> f1159c = new ArrayList<>();

    public m(p pVar, int i) {
        this.f1158b = null;
        f1157d++;
        this.f1158b = pVar;
    }

    private long c(f fVar, long j) {
        p pVar = fVar.f1153d;
        if (pVar instanceof k) {
            return j;
        }
        int size = fVar.k.size();
        long jMin = j;
        for (int i = 0; i < size; i++) {
            d dVar = fVar.k.get(i);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f1153d != pVar) {
                    jMin = Math.min(jMin, c(fVar2, ((long) fVar2.f) + j));
                }
            }
        }
        if (fVar != pVar.i) {
            return jMin;
        }
        long j2 = j - pVar.j();
        return Math.min(Math.min(jMin, c(pVar.h, j2)), j2 - ((long) pVar.h.f));
    }

    private long d(f fVar, long j) {
        p pVar = fVar.f1153d;
        if (pVar instanceof k) {
            return j;
        }
        int size = fVar.k.size();
        long jMax = j;
        for (int i = 0; i < size; i++) {
            d dVar = fVar.k.get(i);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f1153d != pVar) {
                    jMax = Math.max(jMax, d(fVar2, ((long) fVar2.f) + j));
                }
            }
        }
        if (fVar != pVar.h) {
            return jMax;
        }
        long j2 = j + pVar.j();
        return Math.max(Math.max(jMax, d(pVar.i, j2)), j2 - ((long) pVar.i.f));
    }

    public void a(p pVar) {
        this.f1159c.add(pVar);
    }

    public long b(c.e.b.k.f fVar, int i) {
        long j;
        int i2;
        p pVar = this.f1158b;
        if (pVar instanceof c) {
            if (((c) pVar).f != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(pVar instanceof l)) {
                return 0L;
            }
        } else if (!(pVar instanceof n)) {
            return 0L;
        }
        f fVar2 = (i == 0 ? fVar.f1138d : fVar.e).h;
        f fVar3 = (i == 0 ? fVar.f1138d : fVar.e).i;
        boolean zContains = this.f1158b.h.l.contains(fVar2);
        boolean zContains2 = this.f1158b.i.l.contains(fVar3);
        long j2 = this.f1158b.j();
        if (zContains && zContains2) {
            long jD = d(this.f1158b.h, 0L);
            long jC = c(this.f1158b.i, 0L);
            long j3 = jD - j2;
            int i3 = this.f1158b.i.f;
            if (j3 >= (-i3)) {
                j3 += (long) i3;
            }
            int i4 = this.f1158b.h.f;
            long j4 = ((-jC) - j2) - ((long) i4);
            if (j4 >= i4) {
                j4 -= (long) i4;
            }
            float fO = this.f1158b.f1163b.o(i);
            float f = fO > CropImageView.DEFAULT_ASPECT_RATIO ? (long) ((j4 / fO) + (j3 / (1.0f - fO))) : 0L;
            long j5 = ((long) ((f * fO) + 0.5f)) + j2 + ((long) ((f * (1.0f - fO)) + 0.5f));
            p pVar2 = this.f1158b;
            j = ((long) pVar2.h.f) + j5;
            i2 = pVar2.i.f;
        } else {
            if (zContains) {
                return Math.max(d(this.f1158b.h, r12.f), ((long) this.f1158b.h.f) + j2);
            }
            if (zContains2) {
                return Math.max(-c(this.f1158b.i, r12.f), ((long) (-this.f1158b.i.f)) + j2);
            }
            p pVar3 = this.f1158b;
            j = ((long) pVar3.h.f) + pVar3.j();
            i2 = this.f1158b.i.f;
        }
        return j - ((long) i2);
    }
}
