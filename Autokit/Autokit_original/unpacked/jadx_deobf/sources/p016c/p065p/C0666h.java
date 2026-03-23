package p016c.p065p;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: renamed from: c.p.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0666h<T> extends Property<T, Float> {

    /* JADX INFO: renamed from: a */
    private final Property<T, PointF> f3962a;

    /* JADX INFO: renamed from: b */
    private final PathMeasure f3963b;

    /* JADX INFO: renamed from: c */
    private final float f3964c;

    /* JADX INFO: renamed from: d */
    private final float[] f3965d;

    /* JADX INFO: renamed from: e */
    private final PointF f3966e;

    /* JADX INFO: renamed from: f */
    private float f3967f;

    C0666h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f3965d = new float[2];
        this.f3966e = new PointF();
        this.f3962a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f3963b = pathMeasure;
        this.f3964c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float get(T t) {
        return Float.valueOf(this.f3967f);
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(T t, Float f) {
        this.f3967f = f.floatValue();
        this.f3963b.getPosTan(this.f3964c * f.floatValue(), this.f3965d, null);
        PointF pointF = this.f3966e;
        float[] fArr = this.f3965d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f3962a.set(t, pointF);
    }
}
