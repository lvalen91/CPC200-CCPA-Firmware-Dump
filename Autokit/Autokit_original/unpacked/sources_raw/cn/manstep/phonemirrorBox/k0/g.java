package cn.manstep.phonemirrorBox.k0;

import android.R;
import android.app.ActivityManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import cn.manstep.phonemirrorBox.b0;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends androidx.fragment.app.d {
    private cn.manstep.phonemirrorBox.k q0;
    private DisplayMetrics r0;
    private TextView s0;
    private AppCompatSeekBar t0;
    private float u0;

    class a implements SeekBar.OnSeekBarChangeListener {
        a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            g.this.u0 = (i + 8) / 50.0f;
            if (g.this.q0 != null) {
                g.this.r0.scaledDensity = g.this.q0.a0() * g.this.u0;
            }
            g.this.s0.setTextSize(2, 18.0f);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.k2();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.A2();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((ActivityManager) g.this.K().getSystemService("activity")).killBackgroundProcesses(g.this.K().getPackageName());
                System.exit(0);
            } catch (Exception unused) {
                Process.killProcess(Process.myPid());
                System.exit(1);
            }
        }
    }

    public void A2() {
        b0.i().F("FontScaled", Float.valueOf(this.u0));
        new Handler().postDelayed(new d(), 1000L);
    }

    @Override // androidx.fragment.app.Fragment
    public void B0(Bundle bundle) {
        super.B0(bundle);
        cn.manstep.phonemirrorBox.k kVar = (cn.manstep.phonemirrorBox.k) D();
        this.q0 = kVar;
        if (kVar != null) {
            DisplayMetrics displayMetrics = kVar.getResources().getDisplayMetrics();
            this.r0 = displayMetrics;
            displayMetrics.scaledDensity = this.q0.a0() * this.u0;
            this.s0.setTextSize(2, 18.0f);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492928, viewGroup, false);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void e1() {
        Window window;
        super.e1();
        if (m2() == null || (window = m2().getWindow()) == null) {
            return;
        }
        window.setDimAmount(0.5f);
        window.setBackgroundDrawableResource(R.color.transparent);
        window.setAttributes(window.getAttributes());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        window.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        double d2 = displayMetrics.widthPixels;
        Double.isNaN(d2);
        window.setLayout((int) (d2 * 0.8d), -2);
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        TextView textView = (TextView) view.findViewById(2131296846);
        this.s0 = textView;
        textView.setText(2131689573);
        this.t0 = (AppCompatSeekBar) view.findViewById(2131296771);
        this.u0 = b0.i().l("FontScaled", 1.0f);
        this.t0.setMax(150);
        this.t0.setProgress(((int) (this.u0 * 50.0f)) - 8);
        this.t0.setOnSeekBarChangeListener(new a());
        view.findViewById(2131296392).setOnClickListener(new b());
        view.findViewById(2131296394).setOnClickListener(new c());
    }
}
