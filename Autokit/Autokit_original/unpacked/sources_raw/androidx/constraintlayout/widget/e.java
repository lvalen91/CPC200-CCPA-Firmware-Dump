package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class e extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d f484b;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public d getConstraintSet() {
        if (this.f484b == null) {
            this.f484b = new d();
        }
        this.f484b.h(this);
        return this.f484b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.b(layoutParams);
    }

    public static class a extends ConstraintLayout.b {
        public float A0;
        public float o0;
        public boolean p0;
        public float q0;
        public float r0;
        public float s0;
        public float t0;
        public float u0;
        public float v0;
        public float w0;
        public float x0;
        public float y0;
        public float z0;

        public a(int i, int i2) {
            super(i, i2);
            this.o0 = 1.0f;
            this.p0 = false;
            this.q0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.r0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.s0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.t0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.u0 = 1.0f;
            this.v0 = 1.0f;
            this.w0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.x0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.y0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.z0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.A0 = CropImageView.DEFAULT_ASPECT_RATIO;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.o0 = 1.0f;
            this.p0 = false;
            this.q0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.r0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.s0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.t0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.u0 = 1.0f;
            this.v0 = 1.0f;
            this.w0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.x0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.y0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.z0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.A0 = CropImageView.DEFAULT_ASPECT_RATIO;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.ConstraintSet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == i.ConstraintSet_android_alpha) {
                    this.o0 = typedArrayObtainStyledAttributes.getFloat(index, this.o0);
                } else if (index == i.ConstraintSet_android_elevation) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.q0 = typedArrayObtainStyledAttributes.getFloat(index, this.q0);
                        this.p0 = true;
                    }
                } else if (index == i.ConstraintSet_android_rotationX) {
                    this.s0 = typedArrayObtainStyledAttributes.getFloat(index, this.s0);
                } else if (index == i.ConstraintSet_android_rotationY) {
                    this.t0 = typedArrayObtainStyledAttributes.getFloat(index, this.t0);
                } else if (index == i.ConstraintSet_android_rotation) {
                    this.r0 = typedArrayObtainStyledAttributes.getFloat(index, this.r0);
                } else if (index == i.ConstraintSet_android_scaleX) {
                    this.u0 = typedArrayObtainStyledAttributes.getFloat(index, this.u0);
                } else if (index == i.ConstraintSet_android_scaleY) {
                    this.v0 = typedArrayObtainStyledAttributes.getFloat(index, this.v0);
                } else if (index == i.ConstraintSet_android_transformPivotX) {
                    this.w0 = typedArrayObtainStyledAttributes.getFloat(index, this.w0);
                } else if (index == i.ConstraintSet_android_transformPivotY) {
                    this.x0 = typedArrayObtainStyledAttributes.getFloat(index, this.x0);
                } else if (index == i.ConstraintSet_android_translationX) {
                    this.y0 = typedArrayObtainStyledAttributes.getFloat(index, this.y0);
                } else if (index == i.ConstraintSet_android_translationY) {
                    this.z0 = typedArrayObtainStyledAttributes.getFloat(index, this.z0);
                } else if (index == i.ConstraintSet_android_translationZ && Build.VERSION.SDK_INT >= 21) {
                    this.A0 = typedArrayObtainStyledAttributes.getFloat(index, this.A0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
