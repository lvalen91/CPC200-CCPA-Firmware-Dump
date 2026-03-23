package p093d.p099c.p100a.p101a.p104l;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import java.util.ArrayList;
import java.util.List;
import p016c.p032d.C0540g;

/* JADX INFO: renamed from: d.c.a.a.l.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1234h {

    /* JADX INFO: renamed from: a */
    private final C0540g<String, C1235i> f7767a = new C0540g<>();

    /* JADX INFO: renamed from: b */
    private final C0540g<String, PropertyValuesHolder[]> f7768b = new C0540g<>();

    /* JADX INFO: renamed from: a */
    private static void m9346a(C1234h c1234h, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c1234h.m9353h(objectAnimator.getPropertyName(), objectAnimator.getValues());
            c1234h.m9354i(objectAnimator.getPropertyName(), C1235i.m9355b(objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
        }
    }

    /* JADX INFO: renamed from: b */
    public static C1234h m9347b(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m9348c(context, resourceId);
    }

    /* JADX INFO: renamed from: c */
    public static C1234h m9348c(Context context, int i) {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return m9349d(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return m9349d(arrayList);
        } catch (Exception unused) {
            String str = "Can't load animation resource ID #0x" + Integer.toHexString(i);
            return null;
        }
    }

    /* JADX INFO: renamed from: d */
    private static C1234h m9349d(List<Animator> list) {
        C1234h c1234h = new C1234h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m9346a(c1234h, list.get(i));
        }
        return c1234h;
    }

    /* JADX INFO: renamed from: e */
    public C1235i m9350e(String str) {
        if (m9352g(str)) {
            return this.f7767a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1234h) {
            return this.f7767a.equals(((C1234h) obj).f7767a);
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public long m9351f() {
        int size = this.f7767a.size();
        long jMax = 0;
        for (int i = 0; i < size; i++) {
            C1235i c1235iM4297m = this.f7767a.m4297m(i);
            jMax = Math.max(jMax, c1235iM4297m.m9358c() + c1235iM4297m.m9359d());
        }
        return jMax;
    }

    /* JADX INFO: renamed from: g */
    public boolean m9352g(String str) {
        return this.f7767a.get(str) != null;
    }

    /* JADX INFO: renamed from: h */
    public void m9353h(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f7768b.put(str, propertyValuesHolderArr);
    }

    public int hashCode() {
        return this.f7767a.hashCode();
    }

    /* JADX INFO: renamed from: i */
    public void m9354i(String str, C1235i c1235i) {
        this.f7767a.put(str, c1235i);
    }

    public String toString() {
        return '\n' + C1234h.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f7767a + "}\n";
    }
}
