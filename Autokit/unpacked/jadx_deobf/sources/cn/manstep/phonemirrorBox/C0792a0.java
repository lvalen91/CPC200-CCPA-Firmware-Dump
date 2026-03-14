package cn.manstep.phonemirrorBox;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.Fragment;
import cn.manstep.phonemirrorBox.AbstractC0796c;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.p077k0.DialogC0887f;
import cn.manstep.phonemirrorBox.p078l0.ViewOnClickListenerC0909p;
import cn.manstep.phonemirrorBox.util.C0964c0;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.a0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0792a0 extends AbstractC0796c implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: b */
    private WeakReference<Fragment> f4715b;

    /* JADX INFO: renamed from: c */
    private DialogC0887f f4716c;

    /* JADX INFO: renamed from: d */
    private AbstractC0796c.a f4717d;

    /* JADX INFO: renamed from: e */
    private TextView f4718e;

    /* JADX INFO: renamed from: f */
    private LinearLayout f4719f;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.a0$a */
    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f4720b;

        a(int i) {
            this.f4720b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0792a0.this.f4717d != null) {
                C0792a0.this.f4717d.mo6103i(this.f4720b);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.a0$b */
    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f4722b;

        b(int i) {
            this.f4722b = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0792a0.this.f4717d != null) {
                C0792a0.this.f4717d.mo6102e(this.f4722b);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.a0$c */
    class c implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int[] f4724b;

        c(C0792a0 c0792a0, int[] iArr) {
            this.f4724b = iArr;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f4724b[0] = i;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.a0$d */
    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int[] f4725b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ AlertDialog f4726c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ Activity f4727d;

        d(C0792a0 c0792a0, int[] iArr, AlertDialog alertDialog, Activity activity) {
            this.f4725b = iArr;
            this.f4726c = alertDialog;
            this.f4727d = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0795b0.m6071i().m6085F("LanguageID", Integer.valueOf(this.f4725b[0]));
            this.f4726c.dismiss();
            C1002x.m7493a(this.f4727d, this.f4725b[0]);
            this.f4727d.overridePendingTransition(0, 0);
            this.f4727d.finish();
            Intent intent = this.f4727d.getIntent();
            intent.addFlags(335609856);
            this.f4727d.overridePendingTransition(0, 0);
            try {
                Thread.sleep(1500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.f4727d.startActivity(intent);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.a0$e */
    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AlertDialog f4728b;

        e(C0792a0 c0792a0, AlertDialog alertDialog) {
            this.f4728b = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f4728b.dismiss();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.a0$f */
    class f implements DialogInterface.OnClickListener {
        f(C0792a0 c0792a0) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public C0792a0(ViewOnClickListenerC1017z viewOnClickListenerC1017z) {
        this.f4715b = new WeakReference<>(viewOnClickListenerC1017z);
        this.f4717d = viewOnClickListenerC1017z;
    }

    /* JADX INFO: renamed from: q */
    private void m6048q(View view) {
        int iM6091m = C0795b0.m6071i().m6091m("MicGain", 0);
        TextView textView = (TextView) view.findViewById(2131296635);
        this.f4718e = textView;
        if (textView == null) {
            return;
        }
        textView.setText(BuildConfig.FLAVOR + iM6091m + "db");
        this.f4719f = (LinearLayout) view.findViewById(2131296633);
        if (C0795b0.m6071i().m6091m("MicType", 0) == 1) {
            this.f4719f.setVisibility(8);
        }
        SeekBar seekBar = (SeekBar) view.findViewById(2131296636);
        seekBar.setOnSeekBarChangeListener(this);
        seekBar.setProgress(iM6091m);
        seekBar.setMax(50);
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: a */
    public void mo6049a() {
        DialogC0887f dialogC0887f = this.f4716c;
        if (dialogC0887f != null) {
            dialogC0887f.cancel();
        }
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: b */
    public void mo6050b() {
        ViewOnClickListenerC0909p viewOnClickListenerC0909p = new ViewOnClickListenerC0909p();
        AbstractC0375w abstractC0375wM2774l = this.f4715b.get().m2441X().m2774l();
        abstractC0375wM2774l.m2886b(2131296606, viewOnClickListenerC0909p);
        abstractC0375wM2774l.mo2526h();
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: c */
    public void mo6051c(String str, String str2) {
        String str3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date());
        HashMap map = new HashMap();
        map.put("uuid", str);
        map.put("feedbackInfo", str2);
        map.put("feedDate", str3);
        if (C0925p.f5855B) {
            new C0923o().m6852b(map);
        }
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: d */
    public void mo6052d(View view) {
        m6048q(view);
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: h */
    public void mo6053h(int i) {
        DialogC0887f dialogC0887f = this.f4716c;
        if (dialogC0887f != null) {
            dialogC0887f.m6585j(i);
        }
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: i */
    public void mo6054i(int i) {
        DialogC0887f dialogC0887f = this.f4716c;
        if (dialogC0887f != null) {
            dialogC0887f.m6587l(i);
        }
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: j */
    public void mo6055j(Activity activity) {
        if (activity == null) {
            return;
        }
        String[] strArr = C1002x.f6235a;
        strArr[0] = activity.getResources().getString(2131689790);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(C0964c0.m7189m(activity, 2131689791));
        int[] iArr = {C0795b0.m6071i().m6091m("LanguageID", 0)};
        builder.setSingleChoiceItems(strArr, iArr[0], new c(this, iArr));
        builder.setPositiveButton(C0964c0.m7189m(activity, 2131689625), (DialogInterface.OnClickListener) null);
        builder.setNegativeButton(C0964c0.m7189m(activity, 2131689621), (DialogInterface.OnClickListener) null);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new d(this, iArr, alertDialogCreate, activity));
        alertDialogCreate.getButton(-2).setOnClickListener(new e(this, alertDialogCreate));
        builder.setPositiveButton(C0964c0.m7189m(activity, 2131689891), new f(this));
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: k */
    public void mo6056k(boolean z) {
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: l */
    public void mo6057l(AbstractC0366n abstractC0366n, int i, int i2, int i3) {
        C0882a.m6519A2(abstractC0366n, i, i2, new a(i3), new b(i3));
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c
    /* JADX INFO: renamed from: o */
    public void mo6058o() {
        if (this.f4716c == null) {
            DialogC0887f.b bVar = new DialogC0887f.b(this.f4715b.get().m2404K());
            bVar.m6592d(2131689700);
            bVar.m6591c(2131689708);
            DialogC0887f dialogC0887fM6590b = bVar.m6590b();
            this.f4716c = dialogC0887fM6590b;
            dialogC0887fM6590b.setCancelable(false);
        }
        this.f4716c.show();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (seekBar.getId() == 2131296636) {
            if (i % 2 != 0) {
                seekBar.setProgress(i + 1);
                return;
            }
            C0795b0.m6071i().m6085F("MicGain", Integer.valueOf(i));
            this.f4718e.setText(BuildConfig.FLAVOR + i + "db");
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
