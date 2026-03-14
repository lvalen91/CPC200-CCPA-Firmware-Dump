package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import c.a.o.b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a {

    public interface b {
        void a(boolean z);
    }

    @Deprecated
    public static abstract class c {
        public abstract CharSequence a();

        public abstract View b();

        public abstract Drawable c();

        public abstract CharSequence d();

        public abstract void e();
    }

    public boolean g() {
        return false;
    }

    public abstract boolean h();

    public abstract void i(boolean z);

    public abstract int j();

    public abstract Context k();

    public abstract void l();

    public boolean m() {
        return false;
    }

    public void n(Configuration configuration) {
    }

    void o() {
    }

    public abstract boolean p(int i, KeyEvent keyEvent);

    public boolean q(KeyEvent keyEvent) {
        return false;
    }

    public boolean r() {
        return false;
    }

    public abstract void s(boolean z);

    public abstract void t(boolean z);

    public abstract void u(boolean z);

    public abstract void v(CharSequence charSequence);

    public c.a.o.b w(b.a aVar) {
        return null;
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.a$a, reason: collision with other inner class name */
    public static class C0009a extends ViewGroup.MarginLayoutParams {
        public int a;

        public C0009a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.j.ActionBarLayout);
            this.a = typedArrayObtainStyledAttributes.getInt(c.a.j.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0009a(int i, int i2) {
            super(i, i2);
            this.a = 0;
            this.a = 8388627;
        }

        public C0009a(C0009a c0009a) {
            super((ViewGroup.MarginLayoutParams) c0009a);
            this.a = 0;
            this.a = c0009a.a;
        }

        public C0009a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0;
        }
    }
}
