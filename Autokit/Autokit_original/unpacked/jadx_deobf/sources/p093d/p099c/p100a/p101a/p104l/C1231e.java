package p093d.p099c.p100a.p101a.p104l;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: d.c.a.a.l.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1231e extends Property<Drawable, Integer> {

    /* JADX INFO: renamed from: b */
    public static final Property<Drawable, Integer> f7761b = new C1231e();

    /* JADX INFO: renamed from: a */
    private final WeakHashMap<Drawable, Integer> f7762a;

    private C1231e() {
        super(Integer.class, "drawableAlphaCompat");
        this.f7762a = new WeakHashMap<>();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer get(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (this.f7762a.containsKey(drawable)) {
            return this.f7762a.get(drawable);
        }
        return 255;
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(Drawable drawable, Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.f7762a.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
