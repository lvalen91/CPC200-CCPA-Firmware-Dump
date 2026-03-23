package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.material.internal.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1117f {

    /* JADX INFO: renamed from: a */
    private final ArrayList<b> f7167a = new ArrayList<>();

    /* JADX INFO: renamed from: b */
    private b f7168b = null;

    /* JADX INFO: renamed from: c */
    ValueAnimator f7169c = null;

    /* JADX INFO: renamed from: d */
    private final Animator.AnimatorListener f7170d = new a();

    /* JADX INFO: renamed from: com.google.android.material.internal.f$a */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1117f c1117f = C1117f.this;
            if (c1117f.f7169c == animator) {
                c1117f.f7169c = null;
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.f$b */
    static class b {

        /* JADX INFO: renamed from: a */
        final int[] f7172a;

        /* JADX INFO: renamed from: b */
        final ValueAnimator f7173b;

        b(int[] iArr, ValueAnimator valueAnimator) {
            this.f7172a = iArr;
            this.f7173b = valueAnimator;
        }
    }

    /* JADX INFO: renamed from: b */
    private void m8694b() {
        ValueAnimator valueAnimator = this.f7169c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f7169c = null;
        }
    }

    /* JADX INFO: renamed from: e */
    private void m8695e(b bVar) {
        ValueAnimator valueAnimator = bVar.f7173b;
        this.f7169c = valueAnimator;
        valueAnimator.start();
    }

    /* JADX INFO: renamed from: a */
    public void m8696a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f7170d);
        this.f7167a.add(bVar);
    }

    /* JADX INFO: renamed from: c */
    public void m8697c() {
        ValueAnimator valueAnimator = this.f7169c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f7169c = null;
        }
    }

    /* JADX INFO: renamed from: d */
    public void m8698d(int[] iArr) {
        b bVar;
        int size = this.f7167a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                bVar = null;
                break;
            }
            bVar = this.f7167a.get(i);
            if (StateSet.stateSetMatches(bVar.f7172a, iArr)) {
                break;
            } else {
                i++;
            }
        }
        b bVar2 = this.f7168b;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null) {
            m8694b();
        }
        this.f7168b = bVar;
        if (bVar != null) {
            m8695e(bVar);
        }
    }
}
