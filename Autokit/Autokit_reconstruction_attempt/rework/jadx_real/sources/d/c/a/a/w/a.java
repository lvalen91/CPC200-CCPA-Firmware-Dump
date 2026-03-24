package d.c.a.a.w;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.q;
import androidx.core.widget.c;
import d.c.a.a.b;
import d.c.a.a.j;
import d.c.a.a.k;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a extends q {
    private static final int g = j.Widget_MaterialComponents_CompoundButton_RadioButton;
    private static final int[][] h = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    private ColorStateList e;
    private boolean f;

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.radioButtonStyle);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.e == null) {
            int iC = d.c.a.a.q.a.c(this, b.colorControlActivated);
            int iC2 = d.c.a.a.q.a.c(this, b.colorOnSurface);
            int iC3 = d.c.a.a.q.a.c(this, b.colorSurface);
            int[] iArr = new int[h.length];
            iArr[0] = d.c.a.a.q.a.f(iC3, iC, 1.0f);
            iArr[1] = d.c.a.a.q.a.f(iC3, iC2, 0.54f);
            iArr[2] = d.c.a.a.q.a.f(iC3, iC2, 0.38f);
            iArr[3] = d.c.a.a.q.a.f(iC3, iC2, 0.38f);
            this.e = new ColorStateList(h, iArr);
        }
        return this.e;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && c.b(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f = z;
        if (z) {
            c.c(this, getMaterialThemeColorsTintList());
        } else {
            c.c(this, null);
        }
    }

    public a(Context context, AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.c(context, attributeSet, i, g), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayH = com.google.android.material.internal.j.h(context2, attributeSet, k.MaterialRadioButton, i, g, new int[0]);
        if (typedArrayH.hasValue(k.MaterialRadioButton_buttonTint)) {
            c.c(this, d.c.a.a.x.c.a(context2, typedArrayH, k.MaterialRadioButton_buttonTint));
        }
        this.f = typedArrayH.getBoolean(k.MaterialRadioButton_useMaterialThemeColors, false);
        typedArrayH.recycle();
    }
}
