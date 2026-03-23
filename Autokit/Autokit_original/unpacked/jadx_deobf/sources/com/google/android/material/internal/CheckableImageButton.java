package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.appcompat.widget.C0176l;
import androidx.core.view.C0258a;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import p016c.p017a.C0493a;
import p016c.p052i.p053a.AbstractC0630a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class CheckableImageButton extends C0176l implements Checkable {

    /* JADX INFO: renamed from: g */
    private static final int[] f7073g = {R.attr.state_checked};

    /* JADX INFO: renamed from: d */
    private boolean f7074d;

    /* JADX INFO: renamed from: e */
    private boolean f7075e;

    /* JADX INFO: renamed from: f */
    private boolean f7076f;

    /* JADX INFO: renamed from: com.google.android.material.internal.CheckableImageButton$a */
    class C1109a extends C0258a {
        C1109a() {
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: f */
        public void mo1812f(View view, AccessibilityEvent accessibilityEvent) {
            super.mo1812f(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            super.mo1813g(view, c0269c);
            c0269c.m1917U(CheckableImageButton.this.m8618a());
            c0269c.m1918V(CheckableImageButton.this.isChecked());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.CheckableImageButton$b */
    static class C1110b extends AbstractC0630a {
        public static final Parcelable.Creator<C1110b> CREATOR = new a();

        /* JADX INFO: renamed from: d */
        boolean f7078d;

        /* JADX INFO: renamed from: com.google.android.material.internal.CheckableImageButton$b$a */
        static class a implements Parcelable.ClassLoaderCreator<C1110b> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C1110b createFromParcel(Parcel parcel) {
                return new C1110b(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C1110b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1110b(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public C1110b[] newArray(int i) {
                return new C1110b[i];
            }
        }

        public C1110b(Parcelable parcelable) {
            super(parcelable);
        }

        /* JADX INFO: renamed from: k */
        private void m8619k(Parcel parcel) {
            this.f7078d = parcel.readInt() == 1;
        }

        @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f7078d ? 1 : 0);
        }

        public C1110b(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m8619k(parcel);
        }
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.imageButtonStyle);
    }

    /* JADX INFO: renamed from: a */
    public boolean m8618a() {
        return this.f7075e;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f7074d;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        return this.f7074d ? ImageButton.mergeDrawableStates(super.onCreateDrawableState(i + f7073g.length), f7073g) : super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1110b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1110b c1110b = (C1110b) parcelable;
        super.onRestoreInstanceState(c1110b.m4862j());
        setChecked(c1110b.f7078d);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C1110b c1110b = new C1110b(super.onSaveInstanceState());
        c1110b.f7078d = this.f7074d;
        return c1110b;
    }

    public void setCheckable(boolean z) {
        if (this.f7075e != z) {
            this.f7075e = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.f7075e || this.f7074d == z) {
            return;
        }
        this.f7074d = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z) {
        this.f7076f = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f7076f) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f7074d);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7075e = true;
        this.f7076f = true;
        C0292v.m2105o0(this, new C1109a());
    }
}
