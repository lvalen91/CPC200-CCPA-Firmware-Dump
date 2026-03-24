package c.p;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class h<T> extends Property<T, Float> {
    private final Property<T, PointF> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PathMeasure f1286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f1287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f1288d;
    private final PointF e;
    private float f;

    h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f1288d = new float[2];
        this.e = new PointF();
        this.a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f1286b = pathMeasure;
        this.f1287c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float get(T t) {
        return Float.valueOf(this.f);
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(T t, Float f) {
        this.f = f.floatValue();
        this.f1286b.getPosTan(this.f1287c * f.floatValue(), this.f1288d, null);
        PointF pointF = this.e;
        float[] fArr = this.f1288d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.a.set(t, pointF);
    }
}
