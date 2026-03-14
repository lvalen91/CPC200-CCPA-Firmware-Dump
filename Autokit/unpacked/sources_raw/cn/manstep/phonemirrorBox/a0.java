package cn.manstep.phonemirrorBox;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import cn.manstep.phonemirrorBox.c;
import cn.manstep.phonemirrorBox.k0.f;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a0 extends cn.manstep.phonemirrorBox.c implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<Fragment> f1550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private cn.manstep.phonemirrorBox.k0.f f1551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c.a f1552d;
    private TextView e;
    private LinearLayout f;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1553b;

        a(int i) {
            this.f1553b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a0.this.f1552d != null) {
                a0.this.f1552d.i(this.f1553b);
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1555b;

        b(int i) {
            this.f1555b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a0.this.f1552d != null) {
                a0.this.f1552d.e(this.f1555b);
            }
        }
    }

    class c implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int[] f1557b;

        c(a0 a0Var, int[] iArr) {
            this.f1557b = iArr;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f1557b[0] = i;
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int[] f1558b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AlertDialog f1559c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Activity f1560d;

        d(a0 a0Var, int[] iArr, AlertDialog alertDialog, Activity activity) {
            this.f1558b = iArr;
            this.f1559c = alertDialog;
            this.f1560d = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b0.i().F("LanguageID", Integer.valueOf(this.f1558b[0]));
            this.f1559c.dismiss();
            x.a(this.f1560d, this.f1558b[0]);
            this.f1560d.overridePendingTransition(0, 0);
            this.f1560d.finish();
            Intent intent = this.f1560d.getIntent();
            intent.addFlags(335609856);
            this.f1560d.overridePendingTransition(0, 0);
            try {
                Thread.sleep(1500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.f1560d.startActivity(intent);
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AlertDialog f1561b;

        e(a0 a0Var, AlertDialog alertDialog) {
            this.f1561b = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1561b.dismiss();
        }
    }

    class f implements DialogInterface.OnClickListener {
        f(a0 a0Var) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public a0(z zVar) {
        this.f1550b = new WeakReference<>(zVar);
        this.f1552d = zVar;
    }

    private void q(View view) {
        int iM = b0.i().m("MicGain", 0);
        TextView textView = (TextView) view.findViewById(2131296635);
        this.e = textView;
        if (textView == null) {
            return;
        }
        textView.setText(BuildConfig.FLAVOR + iM + "db");
        this.f = (LinearLayout) view.findViewById(2131296633);
        if (b0.i().m("MicType", 0) == 1) {
            this.f.setVisibility(8);
        }
        SeekBar seekBar = (SeekBar) view.findViewById(2131296636);
        seekBar.setOnSeekBarChangeListener(this);
        seekBar.setProgress(iM);
        seekBar.setMax(50);
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void a() {
        cn.manstep.phonemirrorBox.k0.f fVar = this.f1551c;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void b() {
        cn.manstep.phonemirrorBox.l0.p pVar = new cn.manstep.phonemirrorBox.l0.p();
        androidx.fragment.app.w wVarL = this.f1550b.get().X().l();
        wVarL.b(2131296606, pVar);
        wVarL.h();
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void c(String str, String str2) {
        String str3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date());
        HashMap map = new HashMap();
        map.put("uuid", str);
        map.put("feedbackInfo", str2);
        map.put("feedDate", str3);
        if (p.B) {
            new o().b(map);
        }
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void d(View view) {
        q(view);
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void h(int i) {
        cn.manstep.phonemirrorBox.k0.f fVar = this.f1551c;
        if (fVar != null) {
            fVar.j(i);
        }
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void i(int i) {
        cn.manstep.phonemirrorBox.k0.f fVar = this.f1551c;
        if (fVar != null) {
            fVar.l(i);
        }
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void j(Activity activity) {
        if (activity == null) {
            return;
        }
        String[] strArr = x.a;
        strArr[0] = activity.getResources().getString(2131689790);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(cn.manstep.phonemirrorBox.util.c0.m(activity, 2131689791));
        int[] iArr = {b0.i().m("LanguageID", 0)};
        builder.setSingleChoiceItems(strArr, iArr[0], new c(this, iArr));
        builder.setPositiveButton(cn.manstep.phonemirrorBox.util.c0.m(activity, 2131689625), (DialogInterface.OnClickListener) null);
        builder.setNegativeButton(cn.manstep.phonemirrorBox.util.c0.m(activity, 2131689621), (DialogInterface.OnClickListener) null);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new d(this, iArr, alertDialogCreate, activity));
        alertDialogCreate.getButton(-2).setOnClickListener(new e(this, alertDialogCreate));
        builder.setPositiveButton(cn.manstep.phonemirrorBox.util.c0.m(activity, 2131689891), new f(this));
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void k(boolean z) {
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void l(androidx.fragment.app.n nVar, int i, int i2, int i3) {
        cn.manstep.phonemirrorBox.k0.a.A2(nVar, i, i2, new a(i3), new b(i3));
    }

    @Override // cn.manstep.phonemirrorBox.c
    public void o() {
        if (this.f1551c == null) {
            f.b bVar = new f.b(this.f1550b.get().K());
            bVar.d(2131689700);
            bVar.c(2131689708);
            cn.manstep.phonemirrorBox.k0.f fVarB = bVar.b();
            this.f1551c = fVarB;
            fVarB.setCancelable(false);
        }
        this.f1551c.show();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (seekBar.getId() == 2131296636) {
            if (i % 2 != 0) {
                seekBar.setProgress(i + 1);
                return;
            }
            b0.i().F("MicGain", Integer.valueOf(i));
            this.e.setText(BuildConfig.FLAVOR + i + "db");
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
