package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0292v;
import com.google.android.material.transformation.FabTransformationBehavior;
import com.yalantis.ucrop.view.CropImageView;
import java.util.HashMap;
import java.util.Map;
import p093d.p099c.p100a.p101a.C1201a;
import p093d.p099c.p100a.p101a.p104l.C1234h;
import p093d.p099c.p100a.p101a.p104l.C1236j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@Deprecated
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* JADX INFO: renamed from: i */
    private Map<View, Integer> f7507i;

    public FabTransformationSheetBehavior() {
    }

    /* JADX INFO: renamed from: g0 */
    private void m9029g0(View view, boolean z) {
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z) {
                this.f7507i = new HashMap(childCount);
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                boolean z2 = (childAt.getLayoutParams() instanceof CoordinatorLayout.C0224f) && (((CoordinatorLayout.C0224f) childAt.getLayoutParams()).m1607f() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z2) {
                    if (z) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.f7507i.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        C0292v.m2123x0(childAt, 4);
                    } else {
                        Map<View, Integer> map = this.f7507i;
                        if (map != null && map.containsKey(childAt)) {
                            C0292v.m2123x0(childAt, this.f7507i.get(childAt).intValue());
                        }
                    }
                }
            }
            if (z) {
                return;
            }
            this.f7507i = null;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    /* JADX INFO: renamed from: H */
    protected boolean mo9003H(View view, View view2, boolean z, boolean z2) {
        m9029g0(view2, z);
        return super.mo9003H(view, view2, z, z2);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    /* JADX INFO: renamed from: e0 */
    protected FabTransformationBehavior.C1171e mo9027e0(Context context, boolean z) {
        int i = z ? C1201a.mtrl_fab_transformation_sheet_expand_spec : C1201a.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.C1171e c1171e = new FabTransformationBehavior.C1171e();
        c1171e.f7501a = C1234h.m9348c(context, i);
        c1171e.f7502b = new C1236j(17, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        return c1171e;
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
