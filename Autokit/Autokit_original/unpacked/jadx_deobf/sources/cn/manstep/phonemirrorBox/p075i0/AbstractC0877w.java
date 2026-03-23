package cn.manstep.phonemirrorBox.p075i0;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.p091x0.C1010h;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.w */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0877w extends ViewDataBinding {

    /* JADX INFO: renamed from: v */
    public final Button f5470v;

    /* JADX INFO: renamed from: w */
    public final Button f5471w;

    /* JADX INFO: renamed from: x */
    public final EditText f5472x;

    /* JADX INFO: renamed from: y */
    protected C1010h f5473y;

    protected AbstractC0877w(Object obj, View view, int i, Button button, Button button2, EditText editText, ConstraintLayout constraintLayout) {
        super(obj, view, i);
        this.f5470v = button;
        this.f5471w = button2;
        this.f5472x = editText;
    }

    /* JADX INFO: renamed from: L */
    public abstract void mo6479L(C1010h c1010h);
}
