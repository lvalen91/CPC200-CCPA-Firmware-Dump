package p093d.p099c.p100a.p101a.p108p;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import p093d.p099c.p100a.p101a.p115v.C1253a;

/* JADX INFO: renamed from: d.c.a.a.p.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface InterfaceC1245d {

    /* JADX INFO: renamed from: d.c.a.a.p.d$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: d.c.a.a.p.d$b */
    public static class b implements TypeEvaluator<e> {

        /* JADX INFO: renamed from: b */
        public static final TypeEvaluator<e> f7792b = new b();

        /* JADX INFO: renamed from: a */
        private final e f7793a = new e(null);

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e evaluate(float f, e eVar, e eVar2) {
            this.f7793a.m9425a(C1253a.m9446c(eVar.f7796a, eVar2.f7796a, f), C1253a.m9446c(eVar.f7797b, eVar2.f7797b, f), C1253a.m9446c(eVar.f7798c, eVar2.f7798c, f));
            return this.f7793a;
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.p.d$c */
    public static class c extends Property<InterfaceC1245d, e> {

        /* JADX INFO: renamed from: a */
        public static final Property<InterfaceC1245d, e> f7794a = new c("circularReveal");

        private c(String str) {
            super(e.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e get(InterfaceC1245d interfaceC1245d) {
            return interfaceC1245d.getRevealInfo();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(InterfaceC1245d interfaceC1245d, e eVar) {
            interfaceC1245d.setRevealInfo(eVar);
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.p.d$d */
    public static class d extends Property<InterfaceC1245d, Integer> {

        /* JADX INFO: renamed from: a */
        public static final Property<InterfaceC1245d, Integer> f7795a = new d("circularRevealScrimColor");

        private d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(InterfaceC1245d interfaceC1245d) {
            return Integer.valueOf(interfaceC1245d.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(InterfaceC1245d interfaceC1245d, Integer num) {
            interfaceC1245d.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.p.d$e */
    public static class e {

        /* JADX INFO: renamed from: a */
        public float f7796a;

        /* JADX INFO: renamed from: b */
        public float f7797b;

        /* JADX INFO: renamed from: c */
        public float f7798c;

        /* synthetic */ e(a aVar) {
            this();
        }

        /* JADX INFO: renamed from: a */
        public void m9425a(float f, float f2, float f3) {
            this.f7796a = f;
            this.f7797b = f2;
            this.f7798c = f3;
        }

        private e() {
        }

        public e(float f, float f2, float f3) {
            this.f7796a = f;
            this.f7797b = f2;
            this.f7798c = f3;
        }
    }

    /* JADX INFO: renamed from: a */
    void mo9408a();

    /* JADX INFO: renamed from: b */
    void mo9409b();

    int getCircularRevealScrimColor();

    e getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(e eVar);
}
