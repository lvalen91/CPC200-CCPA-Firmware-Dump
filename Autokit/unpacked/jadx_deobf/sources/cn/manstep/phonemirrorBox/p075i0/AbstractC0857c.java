package cn.manstep.phonemirrorBox.p075i0;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.p091x0.C1012j;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0857c extends ViewDataBinding {

    /* JADX INFO: renamed from: A */
    protected C1012j f5093A;

    /* JADX INFO: renamed from: v */
    public final EditText f5094v;

    /* JADX INFO: renamed from: w */
    public final ImageView f5095w;

    /* JADX INFO: renamed from: x */
    public final Switch f5096x;

    /* JADX INFO: renamed from: y */
    public final CustomImageView f5097y;

    /* JADX INFO: renamed from: z */
    public final CustomImageView f5098z;

    protected AbstractC0857c(Object obj, View view, int i, EditText editText, ImageView imageView, Switch r6, CustomImageView customImageView, CustomImageView customImageView2, ScrollView scrollView, TextView textView, View view2) {
        super(obj, view, i);
        this.f5094v = editText;
        this.f5095w = imageView;
        this.f5096x = r6;
        this.f5097y = customImageView;
        this.f5098z = customImageView2;
    }
}
