package cn.manstep.phonemirrorBox.k0;

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
import androidx.fragment.app.n;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c extends androidx.fragment.app.d {
    private int A0;
    private int B0;
    private b C0;
    private TableLayout t0;
    private int q0 = 0;
    private int r0 = 0;
    private String s0 = BuildConfig.FLAVOR;
    private int u0 = 0;
    private int v0 = 6;
    private int w0 = 100;
    private int x0 = 100;
    private int y0 = 10;
    private int z0 = 0;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Button f1687b;

        a(Button button) {
            this.f1687b = button;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (c.this.C0 != null) {
                c.this.C0.a(Integer.parseInt(this.f1687b.getText().toString()));
                c.this.j2();
            }
        }
    }

    public interface b {
        void a(int i);
    }

    private c() {
    }

    private void A2(int i) {
        int i2 = this.v0;
        if (i >= i2) {
            this.u0 = (i / i2) + 1;
        } else {
            this.u0 = 1;
            this.v0 = i + 1;
        }
    }

    public static void B2(n nVar, String str, int i, int i2, b bVar) {
        c cVar = new c();
        cVar.q0 = i;
        cVar.s0 = str;
        cVar.z0 = i2;
        cVar.u2(nVar, "ChoiceDialog");
        cVar.z2(bVar);
    }

    private void w2() {
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(-1, -2);
        TableRow.LayoutParams layoutParams2 = new TableRow.LayoutParams(this.w0, this.x0);
        int i = this.y0;
        layoutParams2.setMargins(i, i, i, i);
        for (int i2 = 0; i2 < this.u0; i2++) {
            TableRow tableRow = new TableRow(K());
            tableRow.setLayoutParams(layoutParams);
            tableRow.setGravity(17);
            for (int i3 = 0; i3 < this.v0; i3++) {
                Button button = new Button(K());
                y2(button, layoutParams2, String.valueOf(this.r0), this.r0 == this.z0);
                if (this.r0 > this.q0) {
                    button.setVisibility(4);
                }
                tableRow.addView(button);
                this.r0++;
            }
            this.t0.addView(tableRow, new TableLayout.LayoutParams(-1, -2));
        }
    }

    private void x2() {
        Display defaultDisplay = ((WindowManager) K().getSystemService("window")).getDefaultDisplay();
        this.A0 = defaultDisplay.getWidth();
        this.B0 = defaultDisplay.getHeight();
        s.d("ChoiceDialog", "w:" + this.A0 + ",h:" + this.B0);
        int i = this.A0;
        int i2 = this.v0;
        int i3 = (i / i2) - (this.y0 * (i2 + 1));
        this.w0 = i3;
        this.x0 = i3 / 3;
        s.d("ChoiceDialog", "btnW" + this.w0 + ",btnH:" + this.x0);
    }

    private void y2(Button button, TableRow.LayoutParams layoutParams, String str, boolean z) {
        button.setLayoutParams(layoutParams);
        button.setText(str);
        button.setTextColor(-16777216);
        button.setPadding(0, 0, 0, 0);
        button.setBackground(d0().getDrawable(2131230860));
        button.setTextSize(this.x0 / 4);
        button.setGravity(17);
        button.setSelected(z);
        button.setOnClickListener(new a(button));
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2() != null) {
            m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131492902, viewGroup, false);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void e1() {
        super.e1();
        Dialog dialogM2 = m2();
        if (dialogM2 != null) {
            dialogM2.setCancelable(true);
            dialogM2.setCanceledOnTouchOutside(true);
            Window window = dialogM2.getWindow();
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
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        TextView textView = (TextView) view.findViewById(2131296909);
        textView.setText(this.s0);
        this.t0 = (TableLayout) view.findViewById(2131296828);
        A2(this.q0);
        x2();
        textView.setTextSize((this.x0 / 4) + 1);
        w2();
    }

    public void z2(b bVar) {
        this.C0 = bVar;
    }
}
