package cn.manstep.phonemirrorBox.p075i0;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.p091x0.C1011i;
import cn.manstep.phonemirrorBox.p091x0.C1013k;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.s */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0873s extends ViewDataBinding {

    /* JADX INFO: renamed from: v */
    public final ImageView f5360v;

    /* JADX INFO: renamed from: w */
    public final LinearLayout f5361w;

    /* JADX INFO: renamed from: x */
    public final TextView f5362x;

    /* JADX INFO: renamed from: y */
    public final TextView f5363y;

    /* JADX INFO: renamed from: z */
    protected C1013k f5364z;

    protected AbstractC0873s(Object obj, View view, int i, ConstraintLayout constraintLayout, Button button, Button button2, Button button3, Button button4, ConstraintLayout constraintLayout2, CustomImageView customImageView, RadioGroup radioGroup, RadioGroup radioGroup2, ImageView imageView, LinearLayout linearLayout, ScrollView scrollView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, LinearLayout linearLayout2) {
        super(obj, view, i);
        this.f5360v = imageView;
        this.f5361w = linearLayout;
        this.f5362x = textView3;
        this.f5363y = textView5;
    }

    /* JADX INFO: renamed from: L */
    public abstract void mo6449L(C1011i c1011i);

    /* JADX INFO: renamed from: M */
    public abstract void mo6450M(C1013k c1013k);
}
