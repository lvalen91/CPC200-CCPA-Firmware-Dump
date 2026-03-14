package cn.manstep.phonemirrorBox.p075i0;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.C0328f;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.p091x0.C1009g;
import cn.manstep.phonemirrorBox.util.AutoFitTextView;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0869o extends ViewDataBinding {

    /* JADX INFO: renamed from: A */
    protected C1009g f5333A;

    /* JADX INFO: renamed from: v */
    public final TextView f5334v;

    /* JADX INFO: renamed from: w */
    public final Button f5335w;

    /* JADX INFO: renamed from: x */
    public final ImageView f5336x;

    /* JADX INFO: renamed from: y */
    public final ImageView f5337y;

    /* JADX INFO: renamed from: z */
    public final AutoFitTextView f5338z;

    protected AbstractC0869o(Object obj, View view, int i, ImageView imageView, TextView textView, Button button, FrameLayout frameLayout, ImageView imageView2, ImageView imageView3, TextView textView2, AutoFitTextView autoFitTextView) {
        super(obj, view, i);
        this.f5334v = textView;
        this.f5335w = button;
        this.f5336x = imageView2;
        this.f5337y = imageView3;
        this.f5338z = autoFitTextView;
    }

    /* JADX INFO: renamed from: L */
    public static AbstractC0869o m6439L(View view) {
        return m6440M(view, C0328f.m2358d());
    }

    @Deprecated
    /* JADX INFO: renamed from: M */
    public static AbstractC0869o m6440M(View view, Object obj) {
        return (AbstractC0869o) ViewDataBinding.m2316l(obj, view, 2131492941);
    }

    /* JADX INFO: renamed from: N */
    public abstract void mo6441N(C1009g c1009g);
}
