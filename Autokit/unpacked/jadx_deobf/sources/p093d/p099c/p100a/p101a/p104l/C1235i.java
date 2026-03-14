package p093d.p099c.p100a.p101a.p104l;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: renamed from: d.c.a.a.l.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1235i {

    /* JADX INFO: renamed from: a */
    private long f7769a;

    /* JADX INFO: renamed from: b */
    private long f7770b;

    /* JADX INFO: renamed from: c */
    private TimeInterpolator f7771c;

    /* JADX INFO: renamed from: d */
    private int f7772d;

    /* JADX INFO: renamed from: e */
    private int f7773e;

    public C1235i(long j, long j2) {
        this.f7769a = 0L;
        this.f7770b = 300L;
        this.f7771c = null;
        this.f7772d = 0;
        this.f7773e = 1;
        this.f7769a = j;
        this.f7770b = j2;
    }

    /* JADX INFO: renamed from: b */
    static C1235i m9355b(ValueAnimator valueAnimator) {
        C1235i c1235i = new C1235i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), m9356f(valueAnimator));
        c1235i.f7772d = valueAnimator.getRepeatCount();
        c1235i.f7773e = valueAnimator.getRepeatMode();
        return c1235i;
    }

    /* JADX INFO: renamed from: f */
    private static TimeInterpolator m9356f(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        return ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) ? C1227a.f7755b : interpolator instanceof AccelerateInterpolator ? C1227a.f7756c : interpolator instanceof DecelerateInterpolator ? C1227a.f7757d : interpolator;
    }

    /* JADX INFO: renamed from: a */
    public void m9357a(Animator animator) {
        animator.setStartDelay(m9358c());
        animator.setDuration(m9359d());
        animator.setInterpolator(m9360e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(m9361g());
            valueAnimator.setRepeatMode(m9362h());
        }
    }

    /* JADX INFO: renamed from: c */
    public long m9358c() {
        return this.f7769a;
    }

    /* JADX INFO: renamed from: d */
    public long m9359d() {
        return this.f7770b;
    }

    /* JADX INFO: renamed from: e */
    public TimeInterpolator m9360e() {
        TimeInterpolator timeInterpolator = this.f7771c;
        return timeInterpolator != null ? timeInterpolator : C1227a.f7755b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1235i)) {
            return false;
        }
        C1235i c1235i = (C1235i) obj;
        if (m9358c() == c1235i.m9358c() && m9359d() == c1235i.m9359d() && m9361g() == c1235i.m9361g() && m9362h() == c1235i.m9362h()) {
            return m9360e().getClass().equals(c1235i.m9360e().getClass());
        }
        return false;
    }

    /* JADX INFO: renamed from: g */
    public int m9361g() {
        return this.f7772d;
    }

    /* JADX INFO: renamed from: h */
    public int m9362h() {
        return this.f7773e;
    }

    public int hashCode() {
        return (((((((((int) (m9358c() ^ (m9358c() >>> 32))) * 31) + ((int) (m9359d() ^ (m9359d() >>> 32)))) * 31) + m9360e().getClass().hashCode()) * 31) + m9361g()) * 31) + m9362h();
    }

    public String toString() {
        return '\n' + C1235i.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + m9358c() + " duration: " + m9359d() + " interpolator: " + m9360e().getClass() + " repeatCount: " + m9361g() + " repeatMode: " + m9362h() + "}\n";
    }

    public C1235i(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f7769a = 0L;
        this.f7770b = 300L;
        this.f7771c = null;
        this.f7772d = 0;
        this.f7773e = 1;
        this.f7769a = j;
        this.f7770b = j2;
        this.f7771c = timeInterpolator;
    }
}
