package androidx.activity.result.f;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a<I, O> {

    /* JADX INFO: renamed from: androidx.activity.result.f.a$a, reason: collision with other inner class name */
    public static final class C0008a<T> {

        @SuppressLint({"UnknownNullness"})
        private final T a;

        public C0008a(@SuppressLint({"UnknownNullness"}) T t) {
            this.a = t;
        }

        @SuppressLint({"UnknownNullness"})
        public T a() {
            return this.a;
        }
    }

    public abstract Intent a(Context context, @SuppressLint({"UnknownNullness"}) I i);

    public C0008a<O> b(Context context, @SuppressLint({"UnknownNullness"}) I i) {
        return null;
    }

    @SuppressLint({"UnknownNullness"})
    public abstract O c(int i, Intent intent);
}
