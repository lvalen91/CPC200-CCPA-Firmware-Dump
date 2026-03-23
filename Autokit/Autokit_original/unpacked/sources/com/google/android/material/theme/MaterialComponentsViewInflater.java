package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.app.C0086i;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.C0160d;
import androidx.appcompat.widget.C0164f;
import androidx.appcompat.widget.C0186q;
import androidx.appcompat.widget.C0200x;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.C1144g;
import com.google.android.material.textview.MaterialTextView;
import p093d.p099c.p100a.p101a.p107o.C1241a;
import p093d.p099c.p100a.p101a.p116w.C1254a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MaterialComponentsViewInflater extends C0086i {
    @Override // androidx.appcompat.app.C0086i
    /* JADX INFO: renamed from: b */
    protected C0160d mo564b(Context context, AttributeSet attributeSet) {
        return new C1144g(context, attributeSet);
    }

    @Override // androidx.appcompat.app.C0086i
    /* JADX INFO: renamed from: c */
    protected AppCompatButton mo565c(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // androidx.appcompat.app.C0086i
    /* JADX INFO: renamed from: d */
    protected C0164f mo566d(Context context, AttributeSet attributeSet) {
        return new C1241a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.C0086i
    /* JADX INFO: renamed from: j */
    protected C0186q mo572j(Context context, AttributeSet attributeSet) {
        return new C1254a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.C0086i
    /* JADX INFO: renamed from: n */
    protected C0200x mo576n(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }
}
