package cn.manstep.phonemirrorBox.p075i0;

import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.p091x0.C1003a;
import cn.manstep.phonemirrorBox.p091x0.C1007e;
import cn.manstep.phonemirrorBox.widget.WaveformView;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0861g extends ViewDataBinding {

    /* JADX INFO: renamed from: A */
    public final CheckBox f5166A;

    /* JADX INFO: renamed from: B */
    public final CheckBox f5167B;

    /* JADX INFO: renamed from: C */
    public final CheckBox f5168C;

    /* JADX INFO: renamed from: D */
    public final CheckBox f5169D;

    /* JADX INFO: renamed from: E */
    public final CheckBox f5170E;

    /* JADX INFO: renamed from: F */
    public final CheckBox f5171F;

    /* JADX INFO: renamed from: G */
    public final CheckBox f5172G;

    /* JADX INFO: renamed from: H */
    public final CheckBox f5173H;

    /* JADX INFO: renamed from: I */
    public final CheckBox f5174I;

    /* JADX INFO: renamed from: J */
    public final CheckBox f5175J;

    /* JADX INFO: renamed from: K */
    public final CheckBox f5176K;

    /* JADX INFO: renamed from: L */
    public final WaveformView f5177L;

    /* JADX INFO: renamed from: M */
    protected C1003a f5178M;

    /* JADX INFO: renamed from: v */
    public final Button f5179v;

    /* JADX INFO: renamed from: w */
    public final CheckBox f5180w;

    /* JADX INFO: renamed from: x */
    public final CheckBox f5181x;

    /* JADX INFO: renamed from: y */
    public final CheckBox f5182y;

    /* JADX INFO: renamed from: z */
    public final CheckBox f5183z;

    protected AbstractC0861g(Object obj, View view, int i, ImageView imageView, Button button, CheckBox checkBox, ImageView imageView2, RelativeLayout relativeLayout, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12, CheckBox checkBox13, CheckBox checkBox14, CheckBox checkBox15, ConstraintLayout constraintLayout, View view2, View view3, SeekBar seekBar, TextView textView, TextView textView2, WaveformView waveformView) {
        super(obj, view, i);
        this.f5179v = button;
        this.f5180w = checkBox;
        this.f5181x = checkBox2;
        this.f5182y = checkBox3;
        this.f5183z = checkBox4;
        this.f5166A = checkBox5;
        this.f5167B = checkBox6;
        this.f5168C = checkBox7;
        this.f5169D = checkBox8;
        this.f5170E = checkBox9;
        this.f5171F = checkBox10;
        this.f5172G = checkBox11;
        this.f5173H = checkBox12;
        this.f5174I = checkBox13;
        this.f5175J = checkBox14;
        this.f5176K = checkBox15;
        this.f5177L = waveformView;
    }

    /* JADX INFO: renamed from: L */
    public abstract void mo6384L(C1007e c1007e);

    /* JADX INFO: renamed from: M */
    public abstract void mo6385M(C1003a c1003a);
}
