package cn.manstep.phonemirrorBox.i0;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class q extends ViewDataBinding {
    public final ImageView v;
    public final SwitchCompat w;
    public final SwitchCompat x;

    protected q(Object obj, View view, int i, ImageView imageView, SwitchCompat switchCompat, LinearLayout linearLayout, LinearLayout linearLayout2, SwitchCompat switchCompat2, ConstraintLayout constraintLayout) {
        super(obj, view, i);
        this.v = imageView;
        this.w = switchCompat;
        this.x = switchCompat2;
    }
}
