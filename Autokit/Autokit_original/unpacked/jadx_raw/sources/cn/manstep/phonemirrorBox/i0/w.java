package cn.manstep.phonemirrorBox.i0;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class w extends ViewDataBinding {
    public final Button v;
    public final Button w;
    public final EditText x;
    protected cn.manstep.phonemirrorBox.x0.h y;

    protected w(Object obj, View view, int i, Button button, Button button2, EditText editText, ConstraintLayout constraintLayout) {
        super(obj, view, i);
        this.v = button;
        this.w = button2;
        this.x = editText;
    }

    public abstract void L(cn.manstep.phonemirrorBox.x0.h hVar);
}
