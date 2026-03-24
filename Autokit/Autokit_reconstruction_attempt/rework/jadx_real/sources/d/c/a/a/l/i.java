package d.c.a.a.l;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class i {
    private long a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TimeInterpolator f2323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2324d;
    private int e;

    public i(long j, long j2) {
        this.a = 0L;
        this.f2322b = 300L;
        this.f2323c = null;
        this.f2324d = 0;
        this.e = 1;
        this.a = j;
        this.f2322b = j2;
    }

    static i b(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        iVar.f2324d = valueAnimator.getRepeatCount();
        iVar.e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator f(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        return ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) ? a.f2315b : interpolator instanceof AccelerateInterpolator ? a.f2316c : interpolator instanceof DecelerateInterpolator ? a.f2317d : interpolator;
    }

    public void a(Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public long c() {
        return this.a;
    }

    public long d() {
        return this.f2322b;
    }

    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.f2323c;
        return timeInterpolator != null ? timeInterpolator : a.f2315b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (c() == iVar.c() && d() == iVar.d() && g() == iVar.g() && h() == iVar.h()) {
            return e().getClass().equals(iVar.e().getClass());
        }
        return false;
    }

    public int g() {
        return this.f2324d;
    }

    public int h() {
        return this.e;
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }

    public String toString() {
        return '\n' + i.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + e().getClass() + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }

    public i(long j, long j2, TimeInterpolator timeInterpolator) {
        this.a = 0L;
        this.f2322b = 300L;
        this.f2323c = null;
        this.f2324d = 0;
        this.e = 1;
        this.a = j;
        this.f2322b = j2;
        this.f2323c = timeInterpolator;
    }
}
