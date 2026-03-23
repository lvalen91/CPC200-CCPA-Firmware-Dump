package d.c.a.a.p;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface d {

    static /* synthetic */ class a {
    }

    public static class b implements TypeEvaluator<e> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final TypeEvaluator<e> f2328b = new b();
        private final e a = new e(null);

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e evaluate(float f, e eVar, e eVar2) {
            this.a.a(d.c.a.a.v.a.c(eVar.a, eVar2.a, f), d.c.a.a.v.a.c(eVar.f2329b, eVar2.f2329b, f), d.c.a.a.v.a.c(eVar.f2330c, eVar2.f2330c, f));
            return this.a;
        }
    }

    public static class c extends Property<d, e> {
        public static final Property<d, e> a = new c("circularReveal");

        private c(String str) {
            super(e.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e get(d dVar) {
            return dVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(d dVar, e eVar) {
            dVar.setRevealInfo(eVar);
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.p.d$d, reason: collision with other inner class name */
    public static class C0123d extends Property<d, Integer> {
        public static final Property<d, Integer> a = new C0123d("circularRevealScrimColor");

        private C0123d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(d dVar) {
            return Integer.valueOf(dVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(d dVar, Integer num) {
            dVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class e {
        public float a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f2329b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f2330c;

        /* synthetic */ e(a aVar) {
            this();
        }

        public void a(float f, float f2, float f3) {
            this.a = f;
            this.f2329b = f2;
            this.f2330c = f3;
        }

        private e() {
        }

        public e(float f, float f2, float f3) {
            this.a = f;
            this.f2329b = f2;
            this.f2330c = f3;
        }
    }

    void a();

    void b();

    int getCircularRevealScrimColor();

    e getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(e eVar);
}
