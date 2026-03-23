package cn.manstep.phonemirrorBox.i0;

import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.widget.WaveformView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class g extends ViewDataBinding {
    public final CheckBox A;
    public final CheckBox B;
    public final CheckBox C;
    public final CheckBox D;
    public final CheckBox E;
    public final CheckBox F;
    public final CheckBox G;
    public final CheckBox H;
    public final CheckBox I;
    public final CheckBox J;
    public final CheckBox K;
    public final WaveformView L;
    protected cn.manstep.phonemirrorBox.x0.a M;
    public final Button v;
    public final CheckBox w;
    public final CheckBox x;
    public final CheckBox y;
    public final CheckBox z;

    protected g(Object obj, View view, int i, ImageView imageView, Button button, CheckBox checkBox, ImageView imageView2, RelativeLayout relativeLayout, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12, CheckBox checkBox13, CheckBox checkBox14, CheckBox checkBox15, ConstraintLayout constraintLayout, View view2, View view3, SeekBar seekBar, TextView textView, TextView textView2, WaveformView waveformView) {
        super(obj, view, i);
        this.v = button;
        this.w = checkBox;
        this.x = checkBox2;
        this.y = checkBox3;
        this.z = checkBox4;
        this.A = checkBox5;
        this.B = checkBox6;
        this.C = checkBox7;
        this.D = checkBox8;
        this.E = checkBox9;
        this.F = checkBox10;
        this.G = checkBox11;
        this.H = checkBox12;
        this.I = checkBox13;
        this.J = checkBox14;
        this.K = checkBox15;
        this.L = waveformView;
    }

    public abstract void L(cn.manstep.phonemirrorBox.x0.e eVar);

    public abstract void M(cn.manstep.phonemirrorBox.x0.a aVar);
}
