package cn.manstep.phonemirrorBox.p077k0;

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
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d;
import cn.manstep.phonemirrorBox.ActivityC0881k;
import cn.manstep.phonemirrorBox.C0795b0;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0888g extends DialogInterfaceOnCancelListenerC0354d {

    /* JADX INFO: renamed from: q0 */
    private ActivityC0881k f5565q0;

    /* JADX INFO: renamed from: r0 */
    private DisplayMetrics f5566r0;

    /* JADX INFO: renamed from: s0 */
    private TextView f5567s0;

    /* JADX INFO: renamed from: t0 */
    private AppCompatSeekBar f5568t0;

    /* JADX INFO: renamed from: u0 */
    private float f5569u0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.g$a */
    class a implements SeekBar.OnSeekBarChangeListener {
        a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            C0888g.this.f5569u0 = (i + 8) / 50.0f;
            if (C0888g.this.f5565q0 != null) {
                C0888g.this.f5566r0.scaledDensity = C0888g.this.f5565q0.m6512a0() * C0888g.this.f5569u0;
            }
            C0888g.this.f5567s0.setTextSize(2, 18.0f);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.g$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0888g.this.m2607k2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.g$c */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0888g.this.m6598A2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.g$d */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((ActivityManager) C0888g.this.m2404K().getSystemService("activity")).killBackgroundProcesses(C0888g.this.m2404K().getPackageName());
                System.exit(0);
            } catch (Exception unused) {
                Process.killProcess(Process.myPid());
                System.exit(1);
            }
        }
    }

    /* JADX INFO: renamed from: A2 */
    public void m6598A2() {
        C0795b0.m6071i().m6085F("FontScaled", Float.valueOf(this.f5569u0));
        new Handler().postDelayed(new d(), 1000L);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: B0 */
    public void mo2380B0(Bundle bundle) {
        super.mo2380B0(bundle);
        ActivityC0881k activityC0881k = (ActivityC0881k) m2385D();
        this.f5565q0 = activityC0881k;
        if (activityC0881k != null) {
            DisplayMetrics displayMetrics = activityC0881k.getResources().getDisplayMetrics();
            this.f5566r0 = displayMetrics;
            displayMetrics.scaledDensity = this.f5565q0.m6512a0() * this.f5569u0;
            this.f5567s0.setTextSize(2, 18.0f);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492928, viewGroup, false);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: e1 */
    public void mo2463e1() {
        Window window;
        super.mo2463e1();
        if (m2608m2() == null || (window = m2608m2().getWindow()) == null) {
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
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        TextView textView = (TextView) view.findViewById(2131296846);
        this.f5567s0 = textView;
        textView.setText(2131689573);
        this.f5568t0 = (AppCompatSeekBar) view.findViewById(2131296771);
        this.f5569u0 = C0795b0.m6071i().m6090l("FontScaled", 1.0f);
        this.f5568t0.setMax(150);
        this.f5568t0.setProgress(((int) (this.f5569u0 * 50.0f)) - 8);
        this.f5568t0.setOnSeekBarChangeListener(new a());
        view.findViewById(2131296392).setOnClickListener(new b());
        view.findViewById(2131296394).setOnClickListener(new c());
    }
}
