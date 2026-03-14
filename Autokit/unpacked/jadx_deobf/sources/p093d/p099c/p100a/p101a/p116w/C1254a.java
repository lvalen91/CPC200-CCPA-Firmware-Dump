package p093d.p099c.p100a.p101a.p116w;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.C0186q;
import androidx.core.widget.C0302c;
import com.google.android.material.internal.C1121j;
import com.google.android.material.theme.p092a.C1147a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p110q.C1247a;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: renamed from: d.c.a.a.w.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1254a extends C0186q {

    /* JADX INFO: renamed from: g */
    private static final int f7808g = C1225j.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* JADX INFO: renamed from: h */
    private static final int[][] f7809h = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: e */
    private ColorStateList f7810e;

    /* JADX INFO: renamed from: f */
    private boolean f7811f;

    public C1254a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.radioButtonStyle);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f7810e == null) {
            int iM9428c = C1247a.m9428c(this, C1216b.colorControlActivated);
            int iM9428c2 = C1247a.m9428c(this, C1216b.colorOnSurface);
            int iM9428c3 = C1247a.m9428c(this, C1216b.colorSurface);
            int[] iArr = new int[f7809h.length];
            iArr[0] = C1247a.m9431f(iM9428c3, iM9428c, 1.0f);
            iArr[1] = C1247a.m9431f(iM9428c3, iM9428c2, 0.54f);
            iArr[2] = C1247a.m9431f(iM9428c3, iM9428c2, 0.38f);
            iArr[3] = C1247a.m9431f(iM9428c3, iM9428c2, 0.38f);
            this.f7810e = new ColorStateList(f7809h, iArr);
        }
        return this.f7810e;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f7811f && C0302c.m2264b(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f7811f = z;
        if (z) {
            C0302c.m2265c(this, getMaterialThemeColorsTintList());
        } else {
            C0302c.m2265c(this, null);
        }
    }

    public C1254a(Context context, AttributeSet attributeSet, int i) {
        super(C1147a.m8952c(context, attributeSet, i, f7808g), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayM8726h = C1121j.m8726h(context2, attributeSet, C1226k.MaterialRadioButton, i, f7808g, new int[0]);
        if (typedArrayM8726h.hasValue(C1226k.MaterialRadioButton_buttonTint)) {
            C0302c.m2265c(this, C1257c.m9454a(context2, typedArrayM8726h, C1226k.MaterialRadioButton_buttonTint));
        }
        this.f7811f = typedArrayM8726h.getBoolean(C1226k.MaterialRadioButton_useMaterialThemeColors, false);
        typedArrayM8726h.recycle();
    }
}
