package cn.manstep.phonemirrorBox.i0;

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

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public abstract class s extends ViewDataBinding {
    public final ImageView v;
    public final LinearLayout w;
    public final TextView x;
    public final TextView y;
    protected cn.manstep.phonemirrorBox.x0.k z;

    protected s(Object obj, View view, int i, ConstraintLayout constraintLayout, Button button, Button button2, Button button3, Button button4, ConstraintLayout constraintLayout2, CustomImageView customImageView, RadioGroup radioGroup, RadioGroup radioGroup2, ImageView imageView, LinearLayout linearLayout, ScrollView scrollView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, LinearLayout linearLayout2) {
        super(obj, view, i);
        this.v = imageView;
        this.w = linearLayout;
        this.x = textView3;
        this.y = textView5;
    }

    public abstract void L(cn.manstep.phonemirrorBox.x0.i iVar);

    public abstract void M(cn.manstep.phonemirrorBox.x0.k kVar);
}
