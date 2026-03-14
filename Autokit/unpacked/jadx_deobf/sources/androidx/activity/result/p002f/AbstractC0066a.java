package androidx.activity.result.p002f;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: renamed from: androidx.activity.result.f.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0066a<I, O> {

    /* JADX INFO: renamed from: androidx.activity.result.f.a$a */
    public static final class a<T> {

        /* JADX INFO: renamed from: a */
        @SuppressLint({"UnknownNullness"})
        private final T f216a;

        public a(@SuppressLint({"UnknownNullness"}) T t) {
            this.f216a = t;
        }

        @SuppressLint({"UnknownNullness"})
        /* JADX INFO: renamed from: a */
        public T m355a() {
            return this.f216a;
        }
    }

    /* JADX INFO: renamed from: a */
    public abstract Intent mo352a(Context context, @SuppressLint({"UnknownNullness"}) I i);

    /* JADX INFO: renamed from: b */
    public a<O> mo353b(Context context, @SuppressLint({"UnknownNullness"}) I i) {
        return null;
    }

    @SuppressLint({"UnknownNullness"})
    /* JADX INFO: renamed from: c */
    public abstract O mo354c(int i, Intent intent);
}
