package cn.manstep.phonemirrorBox.p075i0;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.p091x0.C1006d;
import cn.manstep.phonemirrorBox.p091x0.C1007e;
import cn.manstep.phonemirrorBox.p091x0.C1011i;
import cn.manstep.phonemirrorBox.p091x0.C1013k;
import cn.manstep.phonemirrorBox.widget.WaveformView;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i0.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0867m extends ViewDataBinding {

    /* JADX INFO: renamed from: A */
    public final SeekBar f5273A;

    /* JADX INFO: renamed from: B */
    public final LinearLayout f5274B;

    /* JADX INFO: renamed from: C */
    public final TextView f5275C;

    /* JADX INFO: renamed from: D */
    public final SwitchCompat f5276D;

    /* JADX INFO: renamed from: E */
    public final LinearLayout f5277E;

    /* JADX INFO: renamed from: F */
    public final SeekBar f5278F;

    /* JADX INFO: renamed from: G */
    public final TextView f5279G;

    /* JADX INFO: renamed from: H */
    public final TextView f5280H;

    /* JADX INFO: renamed from: I */
    protected C1007e f5281I;

    /* JADX INFO: renamed from: J */
    protected C1006d f5282J;

    /* JADX INFO: renamed from: K */
    protected C1011i f5283K;

    /* JADX INFO: renamed from: L */
    protected C1013k f5284L;

    /* JADX INFO: renamed from: v */
    public final ImageView f5285v;

    /* JADX INFO: renamed from: w */
    public final Button f5286w;

    /* JADX INFO: renamed from: x */
    public final SwitchCompat f5287x;

    /* JADX INFO: renamed from: y */
    public final WaveformView f5288y;

    /* JADX INFO: renamed from: z */
    public final TextView f5289z;

    protected AbstractC0867m(Object obj, View view, int i, ImageView imageView, Button button, SwitchCompat switchCompat, LinearLayout linearLayout, WaveformView waveformView, LinearLayout linearLayout2, TextView textView, SeekBar seekBar, LinearLayout linearLayout3, TextView textView2, SwitchCompat switchCompat2, LinearLayout linearLayout4, LinearLayout linearLayout5, RelativeLayout relativeLayout, LinearLayout linearLayout6, SeekBar seekBar2, TextView textView3, RelativeLayout relativeLayout2, TextView textView4, View view2, View view3) {
        super(obj, view, i);
        this.f5285v = imageView;
        this.f5286w = button;
        this.f5287x = switchCompat;
        this.f5288y = waveformView;
        this.f5289z = textView;
        this.f5273A = seekBar;
        this.f5274B = linearLayout3;
        this.f5275C = textView2;
        this.f5276D = switchCompat2;
        this.f5277E = linearLayout5;
        this.f5278F = seekBar2;
        this.f5279G = textView3;
        this.f5280H = textView4;
    }

    /* JADX INFO: renamed from: L */
    public abstract void mo6418L(C1006d c1006d);

    /* JADX INFO: renamed from: M */
    public abstract void mo6419M(C1007e c1007e);

    /* JADX INFO: renamed from: N */
    public abstract void mo6420N(C1011i c1011i);

    /* JADX INFO: renamed from: O */
    public abstract void mo6421O(C1013k c1013k);
}
