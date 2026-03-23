package cn.manstep.phonemirrorBox.i0;

import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public abstract class u extends ViewDataBinding {
    public final ImageView v;

    protected u(Object obj, View view, int i, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RecyclerView recyclerView, Button button, ImageView imageView, Button button2, RelativeLayout relativeLayout3, CheckBox checkBox) {
        super(obj, view, i);
        this.v = imageView;
    }

    public abstract void L(cn.manstep.phonemirrorBox.x0.k kVar);
}
