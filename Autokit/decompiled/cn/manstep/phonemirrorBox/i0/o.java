package cn.manstep.phonemirrorBox.i0;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.util.AutoFitTextView;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public abstract class o extends ViewDataBinding {
    protected cn.manstep.phonemirrorBox.x0.g A;
    public final TextView v;
    public final Button w;
    public final ImageView x;
    public final ImageView y;
    public final AutoFitTextView z;

    protected o(Object obj, View view, int i, ImageView imageView, TextView textView, Button button, FrameLayout frameLayout, ImageView imageView2, ImageView imageView3, TextView textView2, AutoFitTextView autoFitTextView) {
        super(obj, view, i);
        this.v = textView;
        this.w = button;
        this.x = imageView2;
        this.y = imageView3;
        this.z = autoFitTextView;
    }

    public static o L(View view) {
        return M(view, androidx.databinding.f.d());
    }

    @Deprecated
    public static o M(View view, Object obj) {
        return (o) ViewDataBinding.l(obj, view, 2131492941);
    }

    public abstract void N(cn.manstep.phonemirrorBox.x0.g gVar);
}
