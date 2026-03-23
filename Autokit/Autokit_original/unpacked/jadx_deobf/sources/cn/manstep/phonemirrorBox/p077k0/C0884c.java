package cn.manstep.phonemirrorBox.p077k0;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0884c extends DialogInterfaceOnCancelListenerC0354d {

    /* JADX INFO: renamed from: A0 */
    private int f5526A0;

    /* JADX INFO: renamed from: B0 */
    private int f5527B0;

    /* JADX INFO: renamed from: C0 */
    private b f5528C0;

    /* JADX INFO: renamed from: t0 */
    private TableLayout f5532t0;

    /* JADX INFO: renamed from: q0 */
    private int f5529q0 = 0;

    /* JADX INFO: renamed from: r0 */
    private int f5530r0 = 0;

    /* JADX INFO: renamed from: s0 */
    private String f5531s0 = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: u0 */
    private int f5533u0 = 0;

    /* JADX INFO: renamed from: v0 */
    private int f5534v0 = 6;

    /* JADX INFO: renamed from: w0 */
    private int f5535w0 = 100;

    /* JADX INFO: renamed from: x0 */
    private int f5536x0 = 100;

    /* JADX INFO: renamed from: y0 */
    private int f5537y0 = 10;

    /* JADX INFO: renamed from: z0 */
    private int f5538z0 = 0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.c$a */
    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Button f5539b;

        a(Button button) {
            this.f5539b = button;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0884c.this.f5528C0 != null) {
                C0884c.this.f5528C0.mo6553a(Integer.parseInt(this.f5539b.getText().toString()));
                C0884c.this.mo2606j2();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.c$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        void mo6553a(int i);
    }

    private C0884c() {
    }

    /* JADX INFO: renamed from: A2 */
    private void m6546A2(int i) {
        int i2 = this.f5534v0;
        if (i >= i2) {
            this.f5533u0 = (i / i2) + 1;
        } else {
            this.f5533u0 = 1;
            this.f5534v0 = i + 1;
        }
    }

    /* JADX INFO: renamed from: B2 */
    public static void m6547B2(AbstractC0366n abstractC0366n, String str, int i, int i2, b bVar) {
        C0884c c0884c = new C0884c();
        c0884c.f5529q0 = i;
        c0884c.f5531s0 = str;
        c0884c.f5538z0 = i2;
        c0884c.m2615u2(abstractC0366n, "ChoiceDialog");
        c0884c.m6552z2(bVar);
    }

    /* JADX INFO: renamed from: w2 */
    private void m6549w2() {
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(-1, -2);
        TableRow.LayoutParams layoutParams2 = new TableRow.LayoutParams(this.f5535w0, this.f5536x0);
        int i = this.f5537y0;
        layoutParams2.setMargins(i, i, i, i);
        for (int i2 = 0; i2 < this.f5533u0; i2++) {
            TableRow tableRow = new TableRow(m2404K());
            tableRow.setLayoutParams(layoutParams);
            tableRow.setGravity(17);
            for (int i3 = 0; i3 < this.f5534v0; i3++) {
                Button button = new Button(m2404K());
                m6551y2(button, layoutParams2, String.valueOf(this.f5530r0), this.f5530r0 == this.f5538z0);
                if (this.f5530r0 > this.f5529q0) {
                    button.setVisibility(4);
                }
                tableRow.addView(button);
                this.f5530r0++;
            }
            this.f5532t0.addView(tableRow, new TableLayout.LayoutParams(-1, -2));
        }
    }

    /* JADX INFO: renamed from: x2 */
    private void m6550x2() {
        Display defaultDisplay = ((WindowManager) m2404K().getSystemService("window")).getDefaultDisplay();
        this.f5526A0 = defaultDisplay.getWidth();
        this.f5527B0 = defaultDisplay.getHeight();
        C0982s.m7374d("ChoiceDialog", "w:" + this.f5526A0 + ",h:" + this.f5527B0);
        int i = this.f5526A0;
        int i2 = this.f5534v0;
        int i3 = (i / i2) - (this.f5537y0 * (i2 + 1));
        this.f5535w0 = i3;
        this.f5536x0 = i3 / 3;
        C0982s.m7374d("ChoiceDialog", "btnW" + this.f5535w0 + ",btnH:" + this.f5536x0);
    }

    /* JADX INFO: renamed from: y2 */
    private void m6551y2(Button button, TableRow.LayoutParams layoutParams, String str, boolean z) {
        button.setLayoutParams(layoutParams);
        button.setText(str);
        button.setTextColor(-16777216);
        button.setPadding(0, 0, 0, 0);
        button.setBackground(m2459d0().getDrawable(2131230860));
        button.setTextSize(this.f5536x0 / 4);
        button.setGravity(17);
        button.setSelected(z);
        button.setOnClickListener(new a(button));
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2608m2() != null) {
            m2608m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131492902, viewGroup, false);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: e1 */
    public void mo2463e1() {
        super.mo2463e1();
        Dialog dialogM2608m2 = m2608m2();
        if (dialogM2608m2 != null) {
            dialogM2608m2.setCancelable(true);
            dialogM2608m2.setCanceledOnTouchOutside(true);
            Window window = dialogM2608m2.getWindow();
            if (window != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.gravity = 80;
                attributes.width = -1;
                attributes.dimAmount = 0.7f;
                window.setAttributes(attributes);
                window.getDecorView().setBackground(new ColorDrawable(0));
                window.setBackgroundDrawable(new ColorDrawable(0));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        TextView textView = (TextView) view.findViewById(2131296909);
        textView.setText(this.f5531s0);
        this.f5532t0 = (TableLayout) view.findViewById(2131296828);
        m6546A2(this.f5529q0);
        m6550x2();
        textView.setTextSize((this.f5536x0 / 4) + 1);
        m6549w2();
    }

    /* JADX INFO: renamed from: z2 */
    public void m6552z2(b bVar) {
        this.f5528C0 = bVar;
    }
}
