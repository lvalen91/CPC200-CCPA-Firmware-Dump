package cn.manstep.phonemirrorBox.i0;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.customview.CustomImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class c extends ViewDataBinding {
    protected cn.manstep.phonemirrorBox.x0.j A;
    public final EditText v;
    public final ImageView w;
    public final Switch x;
    public final CustomImageView y;
    public final CustomImageView z;

    protected c(Object obj, View view, int i, EditText editText, ImageView imageView, Switch r6, CustomImageView customImageView, CustomImageView customImageView2, ScrollView scrollView, TextView textView, View view2) {
        super(obj, view, i);
        this.v = editText;
        this.w = imageView;
        this.x = r6;
        this.y = customImageView;
        this.z = customImageView2;
    }
}
