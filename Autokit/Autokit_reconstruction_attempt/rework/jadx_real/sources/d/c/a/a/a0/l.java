package d.c.a.a.a0;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class l {
    private final m[] a = new m[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Matrix[] f2294b = new Matrix[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix[] f2295c = new Matrix[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PointF f2296d = new PointF();
    private final Path e = new Path();
    private final Path f = new Path();
    private final m g = new m();
    private final float[] h = new float[2];
    private final float[] i = new float[2];
    private final Path j = new Path();
    private final Path k = new Path();
    private boolean l = true;

    private static class a {
        static final l a = new l();
    }

    public interface b {
        void a(m mVar, Matrix matrix, int i);

        void b(m mVar, Matrix matrix, int i);
    }

    static final class c {
        public final k a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Path f2297b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final RectF f2298c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final b f2299d;
        public final float e;

        c(k kVar, float f, RectF rectF, b bVar, Path path) {
            this.f2299d = bVar;
            this.a = kVar;
            this.e = f;
            this.f2298c = rectF;
            this.f2297b = path;
        }
    }

    public l() {
        for (int i = 0; i < 4; i++) {
            this.a[i] = new m();
            this.f2294b[i] = new Matrix();
            this.f2295c[i] = new Matrix();
        }
    }

    private float a(int i) {
        return (i + 1) * 90;
    }

    private void b(c cVar, int i) {
        this.h[0] = this.a[i].k();
        this.h[1] = this.a[i].l();
        this.f2294b[i].mapPoints(this.h);
        if (i == 0) {
            Path path = cVar.f2297b;
            float[] fArr = this.h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f2297b;
            float[] fArr2 = this.h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.a[i].d(this.f2294b[i], cVar.f2297b);
        b bVar = cVar.f2299d;
        if (bVar != null) {
            bVar.b(this.a[i], this.f2294b[i], i);
        }
    }

    private void c(c cVar, int i) {
        int i2 = (i + 1) % 4;
        this.h[0] = this.a[i].i();
        this.h[1] = this.a[i].j();
        this.f2294b[i].mapPoints(this.h);
        this.i[0] = this.a[i2].k();
        this.i[1] = this.a[i2].l();
        this.f2294b[i2].mapPoints(this.i);
        float f = this.h[0];
        float[] fArr = this.i;
        float fMax = Math.max(((float) Math.hypot(f - fArr[0], r1[1] - fArr[1])) - 0.001f, CropImageView.DEFAULT_ASPECT_RATIO);
        float fI = i(cVar.f2298c, i);
        this.g.n(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        f fVarJ = j(i, cVar.a);
        fVarJ.b(fMax, fI, cVar.e, this.g);
        this.j.reset();
        this.g.d(this.f2295c[i], this.j);
        if (this.l && Build.VERSION.SDK_INT >= 19 && (fVarJ.a() || l(this.j, i) || l(this.j, i2))) {
            Path path = this.j;
            path.op(path, this.f, Path.Op.DIFFERENCE);
            this.h[0] = this.g.k();
            this.h[1] = this.g.l();
            this.f2295c[i].mapPoints(this.h);
            Path path2 = this.e;
            float[] fArr2 = this.h;
            path2.moveTo(fArr2[0], fArr2[1]);
            this.g.d(this.f2295c[i], this.e);
        } else {
            this.g.d(this.f2295c[i], cVar.f2297b);
        }
        b bVar = cVar.f2299d;
        if (bVar != null) {
            bVar.a(this.g, this.f2295c[i], i);
        }
    }

    private void f(int i, RectF rectF, PointF pointF) {
        if (i == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    private d.c.a.a.a0.c g(int i, k kVar) {
        return i != 1 ? i != 2 ? i != 3 ? kVar.t() : kVar.r() : kVar.j() : kVar.l();
    }

    private d h(int i, k kVar) {
        return i != 1 ? i != 2 ? i != 3 ? kVar.s() : kVar.q() : kVar.i() : kVar.k();
    }

    private float i(RectF rectF, int i) {
        float[] fArr = this.h;
        m[] mVarArr = this.a;
        fArr[0] = mVarArr[i].f2301c;
        fArr[1] = mVarArr[i].f2302d;
        this.f2294b[i].mapPoints(fArr);
        return (i == 1 || i == 3) ? Math.abs(rectF.centerX() - this.h[0]) : Math.abs(rectF.centerY() - this.h[1]);
    }

    private f j(int i, k kVar) {
        return i != 1 ? i != 2 ? i != 3 ? kVar.o() : kVar.p() : kVar.n() : kVar.h();
    }

    public static l k() {
        return a.a;
    }

    private boolean l(Path path, int i) {
        this.k.reset();
        this.a[i].d(this.f2294b[i], this.k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.k.computeBounds(rectF, true);
        path.op(this.k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void m(c cVar, int i) {
        h(i, cVar.a).b(this.a[i], 90.0f, cVar.e, cVar.f2298c, g(i, cVar.a));
        float fA = a(i);
        this.f2294b[i].reset();
        f(i, cVar.f2298c, this.f2296d);
        Matrix matrix = this.f2294b[i];
        PointF pointF = this.f2296d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f2294b[i].preRotate(fA);
    }

    private void n(int i) {
        this.h[0] = this.a[i].i();
        this.h[1] = this.a[i].j();
        this.f2294b[i].mapPoints(this.h);
        float fA = a(i);
        this.f2295c[i].reset();
        Matrix matrix = this.f2295c[i];
        float[] fArr = this.h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f2295c[i].preRotate(fA);
    }

    public void d(k kVar, float f, RectF rectF, Path path) {
        e(kVar, f, rectF, null, path);
    }

    public void e(k kVar, float f, RectF rectF, b bVar, Path path) {
        path.rewind();
        this.e.rewind();
        this.f.rewind();
        this.f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(kVar, f, rectF, bVar, path);
        for (int i = 0; i < 4; i++) {
            m(cVar, i);
            n(i);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            b(cVar, i2);
            c(cVar, i2);
        }
        path.close();
        this.e.close();
        if (Build.VERSION.SDK_INT < 19 || this.e.isEmpty()) {
            return;
        }
        path.op(this.e, Path.Op.UNION);
    }
}
