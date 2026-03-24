package d.c.a.a.a0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class m {

    @Deprecated
    public float a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public float f2300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public float f2301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    public float f2302d;

    @Deprecated
    public float e;

    @Deprecated
    public float f;
    private final List<f> g = new ArrayList();
    private final List<g> h = new ArrayList();
    private boolean i;

    class a extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f2303b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Matrix f2304c;

        a(m mVar, List list, Matrix matrix) {
            this.f2303b = list;
            this.f2304c = matrix;
        }

        @Override // d.c.a.a.a0.m.g
        public void a(Matrix matrix, d.c.a.a.z.a aVar, int i, Canvas canvas) {
            Iterator it = this.f2303b.iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(this.f2304c, aVar, i, canvas);
            }
        }
    }

    static class b extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d f2305b;

        public b(d dVar) {
            this.f2305b = dVar;
        }

        @Override // d.c.a.a.a0.m.g
        public void a(Matrix matrix, d.c.a.a.z.a aVar, int i, Canvas canvas) {
            aVar.a(canvas, matrix, new RectF(this.f2305b.k(), this.f2305b.o(), this.f2305b.l(), this.f2305b.j()), i, this.f2305b.m(), this.f2305b.n());
        }
    }

    static class c extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f2306b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f2307c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f2308d;

        public c(e eVar, float f, float f2) {
            this.f2306b = eVar;
            this.f2307c = f;
            this.f2308d = f2;
        }

        @Override // d.c.a.a.a0.m.g
        public void a(Matrix matrix, d.c.a.a.z.a aVar, int i, Canvas canvas) {
            RectF rectF = new RectF(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, (float) Math.hypot(this.f2306b.f2313c - this.f2308d, this.f2306b.f2312b - this.f2307c), CropImageView.DEFAULT_ASPECT_RATIO);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f2307c, this.f2308d);
            matrix2.preRotate(c());
            aVar.b(canvas, matrix2, rectF, i);
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.f2306b.f2313c - this.f2308d) / (this.f2306b.f2312b - this.f2307c)));
        }
    }

    public static class d extends f {
        private static final RectF h = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Deprecated
        public float f2309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Deprecated
        public float f2310c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Deprecated
        public float f2311d;

        @Deprecated
        public float e;

        @Deprecated
        public float f;

        @Deprecated
        public float g;

        public d(float f, float f2, float f3, float f4) {
            q(f);
            u(f2);
            r(f3);
            p(f4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float j() {
            return this.e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float k() {
            return this.f2309b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float l() {
            return this.f2311d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float m() {
            return this.f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float n() {
            return this.g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float o() {
            return this.f2310c;
        }

        private void p(float f) {
            this.e = f;
        }

        private void q(float f) {
            this.f2309b = f;
        }

        private void r(float f) {
            this.f2311d = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(float f) {
            this.f = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(float f) {
            this.g = f;
        }

        private void u(float f) {
            this.f2310c = f;
        }

        @Override // d.c.a.a.a0.m.f
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            h.set(k(), o(), l(), j());
            path.arcTo(h, m(), n(), false);
            path.transform(matrix);
        }
    }

    public static class e extends f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f2312b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f2313c;

        @Override // d.c.a.a.a0.m.f
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f2312b, this.f2313c);
            path.transform(matrix);
        }
    }

    public static abstract class f {
        protected final Matrix a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    static abstract class g {
        static final Matrix a = new Matrix();

        g() {
        }

        public abstract void a(Matrix matrix, d.c.a.a.z.a aVar, int i, Canvas canvas);

        public final void b(d.c.a.a.z.a aVar, int i, Canvas canvas) {
            a(a, aVar, i, canvas);
        }
    }

    public m() {
        n(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    private void b(float f2) {
        if (g() == f2) {
            return;
        }
        float fG = ((f2 - g()) + 360.0f) % 360.0f;
        if (fG > 180.0f) {
            return;
        }
        d dVar = new d(i(), j(), i(), j());
        dVar.s(g());
        dVar.t(fG);
        this.h.add(new b(dVar));
        p(f2);
    }

    private void c(g gVar, float f2, float f3) {
        b(f2);
        this.h.add(gVar);
        p(f3);
    }

    private float g() {
        return this.e;
    }

    private float h() {
        return this.f;
    }

    private void p(float f2) {
        this.e = f2;
    }

    private void q(float f2) {
        this.f = f2;
    }

    private void r(float f2) {
        this.f2301c = f2;
    }

    private void s(float f2) {
        this.f2302d = f2;
    }

    private void t(float f2) {
        this.a = f2;
    }

    private void u(float f2) {
        this.f2300b = f2;
    }

    public void a(float f2, float f3, float f4, float f5, float f6, float f7) {
        d dVar = new d(f2, f3, f4, f5);
        dVar.s(f6);
        dVar.t(f7);
        this.g.add(dVar);
        b bVar = new b(dVar);
        float f8 = f6 + f7;
        boolean z = f7 < CropImageView.DEFAULT_ASPECT_RATIO;
        if (z) {
            f6 = (f6 + 180.0f) % 360.0f;
        }
        c(bVar, f6, z ? (180.0f + f8) % 360.0f : f8);
        double d2 = f8;
        r(((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.cos(Math.toRadians(d2)))));
        s(((f3 + f5) * 0.5f) + (((f5 - f3) / 2.0f) * ((float) Math.sin(Math.toRadians(d2)))));
    }

    public void d(Matrix matrix, Path path) {
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            this.g.get(i).a(matrix, path);
        }
    }

    boolean e() {
        return this.i;
    }

    g f(Matrix matrix) {
        b(h());
        return new a(this, new ArrayList(this.h), new Matrix(matrix));
    }

    float i() {
        return this.f2301c;
    }

    float j() {
        return this.f2302d;
    }

    float k() {
        return this.a;
    }

    float l() {
        return this.f2300b;
    }

    public void m(float f2, float f3) {
        e eVar = new e();
        eVar.f2312b = f2;
        eVar.f2313c = f3;
        this.g.add(eVar);
        c cVar = new c(eVar, i(), j());
        c(cVar, cVar.c() + 270.0f, cVar.c() + 270.0f);
        r(f2);
        s(f3);
    }

    public void n(float f2, float f3) {
        o(f2, f3, 270.0f, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    public void o(float f2, float f3, float f4, float f5) {
        t(f2);
        u(f3);
        r(f2);
        s(f3);
        p(f4);
        q((f4 + f5) % 360.0f);
        this.g.clear();
        this.h.clear();
        this.i = false;
    }
}
