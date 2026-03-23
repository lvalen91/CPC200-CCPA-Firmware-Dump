package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import p016c.p017a.C0502j;
import p016c.p017a.p024o.AbstractC0512b;

/* JADX INFO: renamed from: androidx.appcompat.app.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0078a {

    /* JADX INFO: renamed from: androidx.appcompat.app.a$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        void m413a(boolean z);
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.a$c */
    @Deprecated
    public static abstract class c {
        /* JADX INFO: renamed from: a */
        public abstract CharSequence m414a();

        /* JADX INFO: renamed from: b */
        public abstract View m415b();

        /* JADX INFO: renamed from: c */
        public abstract Drawable m416c();

        /* JADX INFO: renamed from: d */
        public abstract CharSequence m417d();

        /* JADX INFO: renamed from: e */
        public abstract void m418e();
    }

    /* JADX INFO: renamed from: g */
    public boolean mo396g() {
        return false;
    }

    /* JADX INFO: renamed from: h */
    public abstract boolean mo397h();

    /* JADX INFO: renamed from: i */
    public abstract void mo398i(boolean z);

    /* JADX INFO: renamed from: j */
    public abstract int mo399j();

    /* JADX INFO: renamed from: k */
    public abstract Context mo400k();

    /* JADX INFO: renamed from: l */
    public abstract void mo401l();

    /* JADX INFO: renamed from: m */
    public boolean mo402m() {
        return false;
    }

    /* JADX INFO: renamed from: n */
    public void mo403n(Configuration configuration) {
    }

    /* JADX INFO: renamed from: o */
    void mo404o() {
    }

    /* JADX INFO: renamed from: p */
    public abstract boolean mo405p(int i, KeyEvent keyEvent);

    /* JADX INFO: renamed from: q */
    public boolean mo406q(KeyEvent keyEvent) {
        return false;
    }

    /* JADX INFO: renamed from: r */
    public boolean mo407r() {
        return false;
    }

    /* JADX INFO: renamed from: s */
    public abstract void mo408s(boolean z);

    /* JADX INFO: renamed from: t */
    public abstract void mo409t(boolean z);

    /* JADX INFO: renamed from: u */
    public abstract void mo410u(boolean z);

    /* JADX INFO: renamed from: v */
    public abstract void mo411v(CharSequence charSequence);

    /* JADX INFO: renamed from: w */
    public AbstractC0512b mo412w(AbstractC0512b.a aVar) {
        return null;
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.a$a */
    public static class a extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a */
        public int f329a;

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f329a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0502j.ActionBarLayout);
            this.f329a = typedArrayObtainStyledAttributes.getInt(C0502j.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public a(int i, int i2) {
            super(i, i2);
            this.f329a = 0;
            this.f329a = 8388627;
        }

        public a(a aVar) {
            super((ViewGroup.MarginLayoutParams) aVar);
            this.f329a = 0;
            this.f329a = aVar.f329a;
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f329a = 0;
        }
    }
}
