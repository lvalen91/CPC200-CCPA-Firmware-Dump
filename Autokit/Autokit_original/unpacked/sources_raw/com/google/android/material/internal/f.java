package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class f {
    private final ArrayList<b> a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f2157b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ValueAnimator f2158c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Animator.AnimatorListener f2159d = new a();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f fVar = f.this;
            if (fVar.f2158c == animator) {
                fVar.f2158c = null;
            }
        }
    }

    static class b {
        final int[] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ValueAnimator f2160b;

        b(int[] iArr, ValueAnimator valueAnimator) {
            this.a = iArr;
            this.f2160b = valueAnimator;
        }
    }

    private void b() {
        ValueAnimator valueAnimator = this.f2158c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f2158c = null;
        }
    }

    private void e(b bVar) {
        ValueAnimator valueAnimator = bVar.f2160b;
        this.f2158c = valueAnimator;
        valueAnimator.start();
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f2159d);
        this.a.add(bVar);
    }

    public void c() {
        ValueAnimator valueAnimator = this.f2158c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f2158c = null;
        }
    }

    public void d(int[] iArr) {
        b bVar;
        int size = this.a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                bVar = null;
                break;
            }
            bVar = this.a.get(i);
            if (StateSet.stateSetMatches(bVar.a, iArr)) {
                break;
            } else {
                i++;
            }
        }
        b bVar2 = this.f2157b;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null) {
            b();
        }
        this.f2157b = bVar;
        if (bVar != null) {
            e(bVar);
        }
    }
}
