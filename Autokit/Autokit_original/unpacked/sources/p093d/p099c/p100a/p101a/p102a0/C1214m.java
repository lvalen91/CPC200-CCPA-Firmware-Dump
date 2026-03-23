package p093d.p099c.p100a.p101a.p102a0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p093d.p099c.p100a.p101a.p119z.C1263a;

/* JADX INFO: renamed from: d.c.a.a.a0.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1214m {

    /* JADX INFO: renamed from: a */
    @Deprecated
    public float f7707a;

    /* JADX INFO: renamed from: b */
    @Deprecated
    public float f7708b;

    /* JADX INFO: renamed from: c */
    @Deprecated
    public float f7709c;

    /* JADX INFO: renamed from: d */
    @Deprecated
    public float f7710d;

    /* JADX INFO: renamed from: e */
    @Deprecated
    public float f7711e;

    /* JADX INFO: renamed from: f */
    @Deprecated
    public float f7712f;

    /* JADX INFO: renamed from: g */
    private final List<f> f7713g = new ArrayList();

    /* JADX INFO: renamed from: h */
    private final List<g> f7714h = new ArrayList();

    /* JADX INFO: renamed from: i */
    private boolean f7715i;

    /* JADX INFO: renamed from: d.c.a.a.a0.m$a */
    class a extends g {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ List f7716b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Matrix f7717c;

        a(C1214m c1214m, List list, Matrix matrix) {
            this.f7716b = list;
            this.f7717c = matrix;
        }

        @Override // p093d.p099c.p100a.p101a.p102a0.C1214m.g
        /* JADX INFO: renamed from: a */
        public void mo9304a(Matrix matrix, C1263a c1263a, int i, Canvas canvas) {
            Iterator it = this.f7716b.iterator();
            while (it.hasNext()) {
                ((g) it.next()).mo9304a(this.f7717c, c1263a, i, canvas);
            }
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.m$b */
    static class b extends g {

        /* JADX INFO: renamed from: b */
        private final d f7718b;

        public b(d dVar) {
            this.f7718b = dVar;
        }

        @Override // p093d.p099c.p100a.p101a.p102a0.C1214m.g
        /* JADX INFO: renamed from: a */
        public void mo9304a(Matrix matrix, C1263a c1263a, int i, Canvas canvas) {
            c1263a.m9479a(canvas, matrix, new RectF(this.f7718b.m9315k(), this.f7718b.m9319o(), this.f7718b.m9316l(), this.f7718b.m9314j()), i, this.f7718b.m9317m(), this.f7718b.m9318n());
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.m$c */
    static class c extends g {

        /* JADX INFO: renamed from: b */
        private final e f7719b;

        /* JADX INFO: renamed from: c */
        private final float f7720c;

        /* JADX INFO: renamed from: d */
        private final float f7721d;

        public c(e eVar, float f, float f2) {
            this.f7719b = eVar;
            this.f7720c = f;
            this.f7721d = f2;
        }

        @Override // p093d.p099c.p100a.p101a.p102a0.C1214m.g
        /* JADX INFO: renamed from: a */
        public void mo9304a(Matrix matrix, C1263a c1263a, int i, Canvas canvas) {
            RectF rectF = new RectF(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, (float) Math.hypot(this.f7719b.f7730c - this.f7721d, this.f7719b.f7729b - this.f7720c), CropImageView.DEFAULT_ASPECT_RATIO);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(this.f7720c, this.f7721d);
            matrix2.preRotate(m9305c());
            c1263a.m9480b(canvas, matrix2, rectF, i);
        }

        /* JADX INFO: renamed from: c */
        float m9305c() {
            return (float) Math.toDegrees(Math.atan((this.f7719b.f7730c - this.f7721d) / (this.f7719b.f7729b - this.f7720c)));
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.m$d */
    public static class d extends f {

        /* JADX INFO: renamed from: h */
        private static final RectF f7722h = new RectF();

        /* JADX INFO: renamed from: b */
        @Deprecated
        public float f7723b;

        /* JADX INFO: renamed from: c */
        @Deprecated
        public float f7724c;

        /* JADX INFO: renamed from: d */
        @Deprecated
        public float f7725d;

        /* JADX INFO: renamed from: e */
        @Deprecated
        public float f7726e;

        /* JADX INFO: renamed from: f */
        @Deprecated
        public float f7727f;

        /* JADX INFO: renamed from: g */
        @Deprecated
        public float f7728g;

        public d(float f, float f2, float f3, float f4) {
            m9321q(f);
            m9325u(f2);
            m9322r(f3);
            m9320p(f4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: j */
        public float m9314j() {
            return this.f7726e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: k */
        public float m9315k() {
            return this.f7723b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: l */
        public float m9316l() {
            return this.f7725d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: m */
        public float m9317m() {
            return this.f7727f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: n */
        public float m9318n() {
            return this.f7728g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: o */
        public float m9319o() {
            return this.f7724c;
        }

        /* JADX INFO: renamed from: p */
        private void m9320p(float f) {
            this.f7726e = f;
        }

        /* JADX INFO: renamed from: q */
        private void m9321q(float f) {
            this.f7723b = f;
        }

        /* JADX INFO: renamed from: r */
        private void m9322r(float f) {
            this.f7725d = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: s */
        public void m9323s(float f) {
            this.f7727f = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: t */
        public void m9324t(float f) {
            this.f7728g = f;
        }

        /* JADX INFO: renamed from: u */
        private void m9325u(float f) {
            this.f7724c = f;
        }

        @Override // p093d.p099c.p100a.p101a.p102a0.C1214m.f
        /* JADX INFO: renamed from: a */
        public void mo9326a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f7731a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            f7722h.set(m9315k(), m9319o(), m9316l(), m9314j());
            path.arcTo(f7722h, m9317m(), m9318n(), false);
            path.transform(matrix);
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.m$e */
    public static class e extends f {

        /* JADX INFO: renamed from: b */
        private float f7729b;

        /* JADX INFO: renamed from: c */
        private float f7730c;

        @Override // p093d.p099c.p100a.p101a.p102a0.C1214m.f
        /* JADX INFO: renamed from: a */
        public void mo9326a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f7731a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f7729b, this.f7730c);
            path.transform(matrix);
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.m$f */
    public static abstract class f {

        /* JADX INFO: renamed from: a */
        protected final Matrix f7731a = new Matrix();

        /* JADX INFO: renamed from: a */
        public abstract void mo9326a(Matrix matrix, Path path);
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.m$g */
    static abstract class g {

        /* JADX INFO: renamed from: a */
        static final Matrix f7732a = new Matrix();

        g() {
        }

        /* JADX INFO: renamed from: a */
        public abstract void mo9304a(Matrix matrix, C1263a c1263a, int i, Canvas canvas);

        /* JADX INFO: renamed from: b */
        public final void m9331b(C1263a c1263a, int i, Canvas canvas) {
            mo9304a(f7732a, c1263a, i, canvas);
        }
    }

    public C1214m() {
        m9302n(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    /* JADX INFO: renamed from: b */
    private void m9283b(float f2) {
        if (m9285g() == f2) {
            return;
        }
        float fM9285g = ((f2 - m9285g()) + 360.0f) % 360.0f;
        if (fM9285g > 180.0f) {
            return;
        }
        d dVar = new d(m9297i(), m9298j(), m9297i(), m9298j());
        dVar.m9323s(m9285g());
        dVar.m9324t(fM9285g);
        this.f7714h.add(new b(dVar));
        m9287p(f2);
    }

    /* JADX INFO: renamed from: c */
    private void m9284c(g gVar, float f2, float f3) {
        m9283b(f2);
        this.f7714h.add(gVar);
        m9287p(f3);
    }

    /* JADX INFO: renamed from: g */
    private float m9285g() {
        return this.f7711e;
    }

    /* JADX INFO: renamed from: h */
    private float m9286h() {
        return this.f7712f;
    }

    /* JADX INFO: renamed from: p */
    private void m9287p(float f2) {
        this.f7711e = f2;
    }

    /* JADX INFO: renamed from: q */
    private void m9288q(float f2) {
        this.f7712f = f2;
    }

    /* JADX INFO: renamed from: r */
    private void m9289r(float f2) {
        this.f7709c = f2;
    }

    /* JADX INFO: renamed from: s */
    private void m9290s(float f2) {
        this.f7710d = f2;
    }

    /* JADX INFO: renamed from: t */
    private void m9291t(float f2) {
        this.f7707a = f2;
    }

    /* JADX INFO: renamed from: u */
    private void m9292u(float f2) {
        this.f7708b = f2;
    }

    /* JADX INFO: renamed from: a */
    public void m9293a(float f2, float f3, float f4, float f5, float f6, float f7) {
        d dVar = new d(f2, f3, f4, f5);
        dVar.m9323s(f6);
        dVar.m9324t(f7);
        this.f7713g.add(dVar);
        b bVar = new b(dVar);
        float f8 = f6 + f7;
        boolean z = f7 < CropImageView.DEFAULT_ASPECT_RATIO;
        if (z) {
            f6 = (f6 + 180.0f) % 360.0f;
        }
        m9284c(bVar, f6, z ? (180.0f + f8) % 360.0f : f8);
        double d2 = f8;
        m9289r(((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.cos(Math.toRadians(d2)))));
        m9290s(((f3 + f5) * 0.5f) + (((f5 - f3) / 2.0f) * ((float) Math.sin(Math.toRadians(d2)))));
    }

    /* JADX INFO: renamed from: d */
    public void m9294d(Matrix matrix, Path path) {
        int size = this.f7713g.size();
        for (int i = 0; i < size; i++) {
            this.f7713g.get(i).mo9326a(matrix, path);
        }
    }

    /* JADX INFO: renamed from: e */
    boolean m9295e() {
        return this.f7715i;
    }

    /* JADX INFO: renamed from: f */
    g m9296f(Matrix matrix) {
        m9283b(m9286h());
        return new a(this, new ArrayList(this.f7714h), new Matrix(matrix));
    }

    /* JADX INFO: renamed from: i */
    float m9297i() {
        return this.f7709c;
    }

    /* JADX INFO: renamed from: j */
    float m9298j() {
        return this.f7710d;
    }

    /* JADX INFO: renamed from: k */
    float m9299k() {
        return this.f7707a;
    }

    /* JADX INFO: renamed from: l */
    float m9300l() {
        return this.f7708b;
    }

    /* JADX INFO: renamed from: m */
    public void m9301m(float f2, float f3) {
        e eVar = new e();
        eVar.f7729b = f2;
        eVar.f7730c = f3;
        this.f7713g.add(eVar);
        c cVar = new c(eVar, m9297i(), m9298j());
        m9284c(cVar, cVar.m9305c() + 270.0f, cVar.m9305c() + 270.0f);
        m9289r(f2);
        m9290s(f3);
    }

    /* JADX INFO: renamed from: n */
    public void m9302n(float f2, float f3) {
        m9303o(f2, f3, 270.0f, CropImageView.DEFAULT_ASPECT_RATIO);
    }

    /* JADX INFO: renamed from: o */
    public void m9303o(float f2, float f3, float f4, float f5) {
        m9291t(f2);
        m9292u(f3);
        m9289r(f2);
        m9290s(f3);
        m9287p(f4);
        m9288q((f4 + f5) % 360.0f);
        this.f7713g.clear();
        this.f7714h.clear();
        this.f7715i = false;
    }
}
