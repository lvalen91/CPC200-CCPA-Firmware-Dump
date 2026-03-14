package androidx.constraintlayout.widget;

import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p033e.p037b.p038k.C0564k;

/* JADX INFO: renamed from: androidx.constraintlayout.widget.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0218j extends AbstractC0210b {

    /* JADX INFO: renamed from: j */
    private boolean f1655j;

    /* JADX INFO: renamed from: k */
    private boolean f1656k;

    @Override // androidx.constraintlayout.widget.AbstractC0210b
    /* JADX INFO: renamed from: h */
    protected void mo1441h(AttributeSet attributeSet) {
        super.mo1441h(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0217i.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == C0217i.ConstraintLayout_Layout_android_visibility) {
                    this.f1655j = true;
                } else if (index == C0217i.ConstraintLayout_Layout_android_elevation) {
                    this.f1656k = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: o */
    public void m1524o(C0564k c0564k, int i, int i2) {
    }

    @Override // androidx.constraintlayout.widget.AbstractC0210b, android.view.View
    public void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f1655j || this.f1656k) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : CropImageView.DEFAULT_ASPECT_RATIO;
            for (int i = 0; i < this.f1516c; i++) {
                View viewM1455i = constraintLayout.m1455i(this.f1515b[i]);
                if (viewM1455i != null) {
                    if (this.f1655j) {
                        viewM1455i.setVisibility(visibility);
                    }
                    if (this.f1656k && elevation > CropImageView.DEFAULT_ASPECT_RATIO && Build.VERSION.SDK_INT >= 21) {
                        viewM1455i.setTranslationZ(viewM1455i.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m1477d();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m1477d();
    }
}
