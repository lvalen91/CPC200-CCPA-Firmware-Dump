package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: androidx.constraintlayout.widget.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0213e extends ViewGroup {

    /* JADX INFO: renamed from: b */
    C0212d f1636b;

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

    public C0212d getConstraintSet() {
        if (this.f1636b == null) {
            this.f1636b = new C0212d();
        }
        this.f1636b.m1500h(this);
        return this.f1636b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.C0207b(layoutParams);
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.e$a */
    public static class a extends ConstraintLayout.C0207b {

        /* JADX INFO: renamed from: A0 */
        public float f1637A0;

        /* JADX INFO: renamed from: o0 */
        public float f1638o0;

        /* JADX INFO: renamed from: p0 */
        public boolean f1639p0;

        /* JADX INFO: renamed from: q0 */
        public float f1640q0;

        /* JADX INFO: renamed from: r0 */
        public float f1641r0;

        /* JADX INFO: renamed from: s0 */
        public float f1642s0;

        /* JADX INFO: renamed from: t0 */
        public float f1643t0;

        /* JADX INFO: renamed from: u0 */
        public float f1644u0;

        /* JADX INFO: renamed from: v0 */
        public float f1645v0;

        /* JADX INFO: renamed from: w0 */
        public float f1646w0;

        /* JADX INFO: renamed from: x0 */
        public float f1647x0;

        /* JADX INFO: renamed from: y0 */
        public float f1648y0;

        /* JADX INFO: renamed from: z0 */
        public float f1649z0;

        public a(int i, int i2) {
            super(i, i2);
            this.f1638o0 = 1.0f;
            this.f1639p0 = false;
            this.f1640q0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1641r0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1642s0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1643t0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1644u0 = 1.0f;
            this.f1645v0 = 1.0f;
            this.f1646w0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1647x0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1648y0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1649z0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1637A0 = CropImageView.DEFAULT_ASPECT_RATIO;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1638o0 = 1.0f;
            this.f1639p0 = false;
            this.f1640q0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1641r0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1642s0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1643t0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1644u0 = 1.0f;
            this.f1645v0 = 1.0f;
            this.f1646w0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1647x0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1648y0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1649z0 = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f1637A0 = CropImageView.DEFAULT_ASPECT_RATIO;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0217i.ConstraintSet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == C0217i.ConstraintSet_android_alpha) {
                    this.f1638o0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1638o0);
                } else if (index == C0217i.ConstraintSet_android_elevation) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.f1640q0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1640q0);
                        this.f1639p0 = true;
                    }
                } else if (index == C0217i.ConstraintSet_android_rotationX) {
                    this.f1642s0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1642s0);
                } else if (index == C0217i.ConstraintSet_android_rotationY) {
                    this.f1643t0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1643t0);
                } else if (index == C0217i.ConstraintSet_android_rotation) {
                    this.f1641r0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1641r0);
                } else if (index == C0217i.ConstraintSet_android_scaleX) {
                    this.f1644u0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1644u0);
                } else if (index == C0217i.ConstraintSet_android_scaleY) {
                    this.f1645v0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1645v0);
                } else if (index == C0217i.ConstraintSet_android_transformPivotX) {
                    this.f1646w0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1646w0);
                } else if (index == C0217i.ConstraintSet_android_transformPivotY) {
                    this.f1647x0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1647x0);
                } else if (index == C0217i.ConstraintSet_android_translationX) {
                    this.f1648y0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1648y0);
                } else if (index == C0217i.ConstraintSet_android_translationY) {
                    this.f1649z0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1649z0);
                } else if (index == C0217i.ConstraintSet_android_translationZ && Build.VERSION.SDK_INT >= 21) {
                    this.f1637A0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1637A0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
