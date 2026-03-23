package cn.manstep.phonemirrorBox.i0;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.widget.WaveformView;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public abstract class m extends ViewDataBinding {
    public final SeekBar A;
    public final LinearLayout B;
    public final TextView C;
    public final SwitchCompat D;
    public final LinearLayout E;
    public final SeekBar F;
    public final TextView G;
    public final TextView H;
    protected cn.manstep.phonemirrorBox.x0.e I;
    protected cn.manstep.phonemirrorBox.x0.d J;
    protected cn.manstep.phonemirrorBox.x0.i K;
    protected cn.manstep.phonemirrorBox.x0.k L;
    public final ImageView v;
    public final Button w;
    public final SwitchCompat x;
    public final WaveformView y;
    public final TextView z;

    protected m(Object obj, View view, int i, ImageView imageView, Button button, SwitchCompat switchCompat, LinearLayout linearLayout, WaveformView waveformView, LinearLayout linearLayout2, TextView textView, SeekBar seekBar, LinearLayout linearLayout3, TextView textView2, SwitchCompat switchCompat2, LinearLayout linearLayout4, LinearLayout linearLayout5, RelativeLayout relativeLayout, LinearLayout linearLayout6, SeekBar seekBar2, TextView textView3, RelativeLayout relativeLayout2, TextView textView4, View view2, View view3) {
        super(obj, view, i);
        this.v = imageView;
        this.w = button;
        this.x = switchCompat;
        this.y = waveformView;
        this.z = textView;
        this.A = seekBar;
        this.B = linearLayout3;
        this.C = textView2;
        this.D = switchCompat2;
        this.E = linearLayout5;
        this.F = seekBar2;
        this.G = textView3;
        this.H = textView4;
    }

    public abstract void L(cn.manstep.phonemirrorBox.x0.d dVar);

    public abstract void M(cn.manstep.phonemirrorBox.x0.e eVar);

    public abstract void N(cn.manstep.phonemirrorBox.x0.i iVar);

    public abstract void O(cn.manstep.phonemirrorBox.x0.k kVar);
}
