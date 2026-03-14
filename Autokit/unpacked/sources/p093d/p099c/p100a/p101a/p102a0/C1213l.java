package p093d.p099c.p100a.p101a.p102a0;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: d.c.a.a.a0.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1213l {

    /* JADX INFO: renamed from: a */
    private final C1214m[] f7689a = new C1214m[4];

    /* JADX INFO: renamed from: b */
    private final Matrix[] f7690b = new Matrix[4];

    /* JADX INFO: renamed from: c */
    private final Matrix[] f7691c = new Matrix[4];

    /* JADX INFO: renamed from: d */
    private final PointF f7692d = new PointF();

    /* JADX INFO: renamed from: e */
    private final Path f7693e = new Path();

    /* JADX INFO: renamed from: f */
    private final Path f7694f = new Path();

    /* JADX INFO: renamed from: g */
    private final C1214m f7695g = new C1214m();

    /* JADX INFO: renamed from: h */
    private final float[] f7696h = new float[2];

    /* JADX INFO: renamed from: i */
    private final float[] f7697i = new float[2];

    /* JADX INFO: renamed from: j */
    private final Path f7698j = new Path();

    /* JADX INFO: renamed from: k */
    private final Path f7699k = new Path();

    /* JADX INFO: renamed from: l */
    private boolean f7700l = true;

    /* JADX INFO: renamed from: d.c.a.a.a0.l$a */
    private static class a {

        /* JADX INFO: renamed from: a */
        static final C1213l f7701a = new C1213l();
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.l$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        void mo9203a(C1214m c1214m, Matrix matrix, int i);

        /* JADX INFO: renamed from: b */
        void mo9204b(C1214m c1214m, Matrix matrix, int i);
    }

    /* JADX INFO: renamed from: d.c.a.a.a0.l$c */
    static final class c {

        /* JADX INFO: renamed from: a */
        public final C1212k f7702a;

        /* JADX INFO: renamed from: b */
        public final Path f7703b;

        /* JADX INFO: renamed from: c */
        public final RectF f7704c;

        /* JADX INFO: renamed from: d */
        public final b f7705d;

        /* JADX INFO: renamed from: e */
        public final float f7706e;

        c(C1212k c1212k, float f, RectF rectF, b bVar, Path path) {
            this.f7705d = bVar;
            this.f7702a = c1212k;
            this.f7706e = f;
            this.f7704c = rectF;
            this.f7703b = path;
        }
    }

    public C1213l() {
        for (int i = 0; i < 4; i++) {
            this.f7689a[i] = new C1214m();
            this.f7690b[i] = new Matrix();
            this.f7691c[i] = new Matrix();
        }
    }

    /* JADX INFO: renamed from: a */
    private float m9269a(int i) {
        return (i + 1) * 90;
    }

    /* JADX INFO: renamed from: b */
    private void m9270b(c cVar, int i) {
        this.f7696h[0] = this.f7689a[i].m9299k();
        this.f7696h[1] = this.f7689a[i].m9300l();
        this.f7690b[i].mapPoints(this.f7696h);
        if (i == 0) {
            Path path = cVar.f7703b;
            float[] fArr = this.f7696h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f7703b;
            float[] fArr2 = this.f7696h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f7689a[i].m9294d(this.f7690b[i], cVar.f7703b);
        b bVar = cVar.f7705d;
        if (bVar != null) {
            bVar.mo9204b(this.f7689a[i], this.f7690b[i], i);
        }
    }

    /* JADX INFO: renamed from: c */
    private void m9271c(c cVar, int i) {
        int i2 = (i + 1) % 4;
        this.f7696h[0] = this.f7689a[i].m9297i();
        this.f7696h[1] = this.f7689a[i].m9298j();
        this.f7690b[i].mapPoints(this.f7696h);
        this.f7697i[0] = this.f7689a[i2].m9299k();
        this.f7697i[1] = this.f7689a[i2].m9300l();
        this.f7690b[i2].mapPoints(this.f7697i);
        float f = this.f7696h[0];
        float[] fArr = this.f7697i;
        float fMax = Math.max(((float) Math.hypot(f - fArr[0], r1[1] - fArr[1])) - 0.001f, CropImageView.DEFAULT_ASPECT_RATIO);
        float fM9275i = m9275i(cVar.f7704c, i);
        this.f7695g.m9302n(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        C1207f c1207fM9276j = m9276j(i, cVar.f7702a);
        c1207fM9276j.mo7999b(fMax, fM9275i, cVar.f7706e, this.f7695g);
        this.f7698j.reset();
        this.f7695g.m9294d(this.f7691c[i], this.f7698j);
        if (this.f7700l && Build.VERSION.SDK_INT >= 19 && (c1207fM9276j.m9143a() || m9278l(this.f7698j, i) || m9278l(this.f7698j, i2))) {
            Path path = this.f7698j;
            path.op(path, this.f7694f, Path.Op.DIFFERENCE);
            this.f7696h[0] = this.f7695g.m9299k();
            this.f7696h[1] = this.f7695g.m9300l();
            this.f7691c[i].mapPoints(this.f7696h);
            Path path2 = this.f7693e;
            float[] fArr2 = this.f7696h;
            path2.moveTo(fArr2[0], fArr2[1]);
            this.f7695g.m9294d(this.f7691c[i], this.f7693e);
        } else {
            this.f7695g.m9294d(this.f7691c[i], cVar.f7703b);
        }
        b bVar = cVar.f7705d;
        if (bVar != null) {
            bVar.mo9203a(this.f7695g, this.f7691c[i], i);
        }
    }

    /* JADX INFO: renamed from: f */
    private void m9272f(int i, RectF rectF, PointF pointF) {
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

    /* JADX INFO: renamed from: g */
    private InterfaceC1204c m9273g(int i, C1212k c1212k) {
        return i != 1 ? i != 2 ? i != 3 ? c1212k.m9231t() : c1212k.m9229r() : c1212k.m9222j() : c1212k.m9224l();
    }

    /* JADX INFO: renamed from: h */
    private C1205d m9274h(int i, C1212k c1212k) {
        return i != 1 ? i != 2 ? i != 3 ? c1212k.m9230s() : c1212k.m9228q() : c1212k.m9221i() : c1212k.m9223k();
    }

    /* JADX INFO: renamed from: i */
    private float m9275i(RectF rectF, int i) {
        float[] fArr = this.f7696h;
        C1214m[] c1214mArr = this.f7689a;
        fArr[0] = c1214mArr[i].f7709c;
        fArr[1] = c1214mArr[i].f7710d;
        this.f7690b[i].mapPoints(fArr);
        return (i == 1 || i == 3) ? Math.abs(rectF.centerX() - this.f7696h[0]) : Math.abs(rectF.centerY() - this.f7696h[1]);
    }

    /* JADX INFO: renamed from: j */
    private C1207f m9276j(int i, C1212k c1212k) {
        return i != 1 ? i != 2 ? i != 3 ? c1212k.m9226o() : c1212k.m9227p() : c1212k.m9225n() : c1212k.m9220h();
    }

    /* JADX INFO: renamed from: k */
    public static C1213l m9277k() {
        return a.f7701a;
    }

    /* JADX INFO: renamed from: l */
    private boolean m9278l(Path path, int i) {
        this.f7699k.reset();
        this.f7689a[i].m9294d(this.f7690b[i], this.f7699k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f7699k.computeBounds(rectF, true);
        path.op(this.f7699k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    /* JADX INFO: renamed from: m */
    private void m9279m(c cVar, int i) {
        m9274h(i, cVar.f7702a).m9142b(this.f7689a[i], 90.0f, cVar.f7706e, cVar.f7704c, m9273g(i, cVar.f7702a));
        float fM9269a = m9269a(i);
        this.f7690b[i].reset();
        m9272f(i, cVar.f7704c, this.f7692d);
        Matrix matrix = this.f7690b[i];
        PointF pointF = this.f7692d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f7690b[i].preRotate(fM9269a);
    }

    /* JADX INFO: renamed from: n */
    private void m9280n(int i) {
        this.f7696h[0] = this.f7689a[i].m9297i();
        this.f7696h[1] = this.f7689a[i].m9298j();
        this.f7690b[i].mapPoints(this.f7696h);
        float fM9269a = m9269a(i);
        this.f7691c[i].reset();
        Matrix matrix = this.f7691c[i];
        float[] fArr = this.f7696h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f7691c[i].preRotate(fM9269a);
    }

    /* JADX INFO: renamed from: d */
    public void m9281d(C1212k c1212k, float f, RectF rectF, Path path) {
        m9282e(c1212k, f, rectF, null, path);
    }

    /* JADX INFO: renamed from: e */
    public void m9282e(C1212k c1212k, float f, RectF rectF, b bVar, Path path) {
        path.rewind();
        this.f7693e.rewind();
        this.f7694f.rewind();
        this.f7694f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(c1212k, f, rectF, bVar, path);
        for (int i = 0; i < 4; i++) {
            m9279m(cVar, i);
            m9280n(i);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            m9270b(cVar, i2);
            m9271c(cVar, i2);
        }
        path.close();
        this.f7693e.close();
        if (Build.VERSION.SDK_INT < 19 || this.f7693e.isEmpty()) {
            return;
        }
        path.op(this.f7693e, Path.Op.UNION);
    }
}
