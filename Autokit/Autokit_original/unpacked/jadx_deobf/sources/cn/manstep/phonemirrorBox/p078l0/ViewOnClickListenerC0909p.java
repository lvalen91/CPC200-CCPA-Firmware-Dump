package cn.manstep.phonemirrorBox.p078l0;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.usb.UsbDevice;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.p077k0.DialogC0891j;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0975l;
import cn.manstep.phonemirrorBox.util.C0982s;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ViewOnClickListenerC0909p extends C0906m implements View.OnClickListener, C0975l.d {

    /* JADX INFO: renamed from: c0 */
    private TextView f5712c0;

    /* JADX INFO: renamed from: d0 */
    private View f5713d0;

    /* JADX INFO: renamed from: e0 */
    private Animation f5714e0;

    /* JADX INFO: renamed from: f0 */
    private AnimationDrawable f5715f0;

    /* JADX INFO: renamed from: g0 */
    private Button f5716g0;

    /* JADX INFO: renamed from: h0 */
    private Button f5717h0;

    /* JADX INFO: renamed from: i0 */
    private Button f5718i0;

    /* JADX INFO: renamed from: j0 */
    private TextView f5719j0;

    /* JADX INFO: renamed from: k0 */
    private C0975l f5720k0;

    /* JADX INFO: renamed from: l0 */
    private ImageView f5721l0;

    /* JADX INFO: renamed from: m0 */
    private ImageView f5722m0;

    /* JADX INFO: renamed from: n0 */
    private ImageView f5723n0;

    /* JADX INFO: renamed from: o0 */
    private ImageView f5724o0;

    /* JADX INFO: renamed from: p0 */
    private DialogC0891j f5725p0;

    /* JADX INFO: renamed from: q0 */
    private TextView f5726q0;

    /* JADX INFO: renamed from: r0 */
    private TextView f5727r0;

    /* JADX INFO: renamed from: w0 */
    private LinearLayout f5732w0;

    /* JADX INFO: renamed from: s0 */
    private boolean f5728s0 = false;

    /* JADX INFO: renamed from: t0 */
    private boolean f5729t0 = false;

    /* JADX INFO: renamed from: u0 */
    private boolean f5730u0 = false;

    /* JADX INFO: renamed from: v0 */
    private int f5731v0 = 0;

    /* JADX INFO: renamed from: x0 */
    private final BroadcastReceiver f5733x0 = new c();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.p$a */
    class a implements View.OnLongClickListener {
        a() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ViewOnClickListenerC0909p.this.f5732w0.setVisibility(0);
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.p$b */
    class b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Button f5735b;

        b(Button button) {
            this.f5735b = button;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f5735b.getCompoundDrawables()[0] == null) {
                return;
            }
            int width = (int) (((int) (this.f5735b.getWidth() - ((this.f5735b.getPaint().measureText(this.f5735b.getText().toString()) + r0.getIntrinsicWidth()) + this.f5735b.getCompoundDrawablePadding()))) / 2.0f);
            Context contextM2404K = ViewOnClickListenerC0909p.this.m2404K();
            if (contextM2404K != null) {
                this.f5735b.setPadding(width, C0964c0.m7178b(contextM2404K, 10.0f), width, C0964c0.m7178b(contextM2404K, 10.0f));
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.p$c */
    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("cn.manstep.phonemirror.USB_PERMISSION".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("permission", false);
                Bundle extras = intent.getExtras();
                ViewOnClickListenerC0909p.this.f5720k0.m7291u(extras != null ? (UsbDevice) extras.get("device") : null, booleanExtra);
            }
        }
    }

    /* JADX INFO: renamed from: j2 */
    private void m6707j2() {
        m6709l2(true);
    }

    /* JADX INFO: renamed from: k2 */
    private void m6708k2() {
        this.f5720k0.m7283C();
        this.f5720k0.m7284D();
        super.mo6691g2();
    }

    /* JADX INFO: renamed from: l2 */
    private void m6709l2(boolean z) {
        this.f5729t0 = true;
        this.f5730u0 = z;
        int iM6091m = C0795b0.m6071i().m6091m("RecordDelay", AudioProcess.RecordDelay);
        this.f5724o0.setImageDrawable(m2385D().getResources().getDrawable(2131230959));
        this.f5727r0.setText(String.valueOf(iM6091m));
        m6716s2();
        this.f5717h0.setEnabled(false);
        this.f5719j0.setVisibility(0);
        this.f5722m0.setVisibility(4);
        this.f5719j0.setText(2131689977);
        this.f5720k0.m7285m(m2385D());
    }

    /* JADX INFO: renamed from: m2 */
    private void m6710m2() {
        this.f5729t0 = false;
        m6716s2();
        this.f5727r0.setVisibility(4);
        this.f5718i0.setEnabled(false);
        this.f5724o0.setVisibility(4);
        this.f5720k0.m7288q(m2385D(), false);
    }

    /* JADX INFO: renamed from: n2 */
    private void m6711n2() {
        if (this.f5728s0) {
            m6713p2();
        } else {
            this.f5720k0.m7287o();
        }
    }

    /* JADX INFO: renamed from: o2 */
    private void m6712o2() {
        this.f5729t0 = false;
        m6716s2();
        this.f5717h0.setEnabled(false);
        this.f5719j0.setVisibility(0);
        this.f5722m0.setVisibility(4);
        this.f5719j0.setText(2131689977);
        this.f5720k0.m7289s(m2385D());
    }

    /* JADX INFO: renamed from: p2 */
    private void m6713p2() {
        this.f5720k0.m7282B();
        if (this.f5725p0 == null) {
            this.f5725p0 = new DialogC0891j(m2385D());
        }
        this.f5725p0.show();
    }

    /* JADX INFO: renamed from: q2 */
    private void m6714q2(int i) {
        View view = this.f5713d0;
        if (view instanceof Button) {
            ((Button) view).setText(i);
        }
    }

    /* JADX INFO: renamed from: r2 */
    private void m6715r2(Button button) {
        button.getViewTreeObserver().addOnGlobalLayoutListener(new b(button));
    }

    /* JADX INFO: renamed from: s2 */
    private void m6716s2() {
        View view = this.f5713d0;
        if (view instanceof ImageView) {
            AnimationDrawable animationDrawable = this.f5715f0;
            if (animationDrawable != null) {
                animationDrawable.start();
            } else {
                view.startAnimation(this.f5714e0);
            }
        }
        this.f5712c0.setText(2131689695);
        m6714q2(2131689695);
    }

    /* JADX INFO: renamed from: t2 */
    private void m6717t2() {
        if (!this.f5729t0) {
            m6718u2();
            return;
        }
        if (this.f5730u0) {
            m6718u2();
            return;
        }
        int i = this.f5731v0 + 1;
        this.f5731v0 = i;
        if (i == 2) {
            this.f5729t0 = false;
            this.f5731v0 = 0;
            m6718u2();
        }
    }

    /* JADX INFO: renamed from: u2 */
    private void m6718u2() {
        AnimationDrawable animationDrawable = this.f5715f0;
        if (animationDrawable != null) {
            animationDrawable.stop();
        } else {
            this.f5713d0.clearAnimation();
        }
        this.f5712c0.setText(2131689893);
        m6714q2(2131689893);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: B0 */
    public void mo2380B0(Bundle bundle) {
        super.mo2380B0(bundle);
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: E0 */
    public void mo2389E0(Context context) {
        super.mo2389E0(context);
        C0982s.m7373c("DeviceCheckFragment,onAttach");
        this.f5720k0 = new C0975l(this, m2401J());
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: I0 */
    public Animation mo2400I0(int i, boolean z, int i2) {
        return z ? AnimationUtils.loadAnimation(m2385D(), 2130772009) : AnimationUtils.loadAnimation(m2385D(), 2130772011);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492938, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: M0 */
    public void mo2411M0() {
        C0982s.m7373c("DeviceCheckFragment,onDestroy");
        this.f5720k0.m7290t();
        this.f5728s0 = false;
        m2404K().unregisterReceiver(this.f5733x0);
        super.mo2411M0();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: R0 */
    public void mo2425R0(boolean z) {
        super.mo2425R0(z);
        C0982s.m7373c("DeviceCheckFragment,onHiddenChanged: " + z);
        if (z) {
            return;
        }
        m6707j2();
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: d */
    public void mo6700d(boolean z, int i) {
        this.f5718i0.setEnabled(true);
        m6717t2();
        if (z || m2404K() == null) {
            return;
        }
        this.f5724o0.setVisibility(0);
        if (i >= 0) {
            this.f5724o0.setImageDrawable(m2385D().getResources().getDrawable(2131230959));
            this.f5727r0.setText(String.valueOf(i));
            AudioProcess.RecordDelay = i;
            C0795b0.m6071i().m6085F("RecordDelay", Integer.valueOf(AudioProcess.RecordDelay));
            this.f5727r0.setVisibility(0);
            return;
        }
        this.f5724o0.setImageDrawable(m2385D().getResources().getDrawable(2131230876));
        this.f5727r0.setText(String.valueOf(i));
        if (i == -1 || i == -2) {
            this.f5720k0.m7281A(m2404K().getString(2131689700), m2404K().getString(2131689929), false);
        }
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: f */
    public void mo6701f(int i) {
        if (i == 1) {
            C0733d.m5579O(1, 17);
            return;
        }
        if (i == 2) {
            this.f5728s0 = true;
        } else {
            this.f5728s0 = false;
        }
        if (i != 0) {
            this.f5716g0.setText(2131689659);
            if (m2385D() != null) {
                this.f5721l0.setImageDrawable(m2385D().getResources().getDrawable(2131230876));
            }
            this.f5726q0.setVisibility(0);
            return;
        }
        DialogC0891j dialogC0891j = this.f5725p0;
        if (dialogC0891j != null) {
            dialogC0891j.dismiss();
        }
        this.f5720k0.m7283C();
        if (m2385D() != null) {
            this.f5721l0.setImageDrawable(m2385D().getResources().getDrawable(2131230959));
        }
        this.f5726q0.setVisibility(8);
        this.f5716g0.setText(2131689830);
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        View viewFindViewById = view.findViewById(2131296602);
        this.f5713d0 = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.f5713d0.setOnLongClickListener(new a());
        this.f5732w0 = (LinearLayout) view.findViewById(2131296585);
        Drawable background = this.f5713d0.getBackground();
        if (background instanceof AnimationDrawable) {
            this.f5715f0 = (AnimationDrawable) background;
        }
        if (this.f5715f0 == null) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(m2385D(), 2130772002);
            this.f5714e0 = animationLoadAnimation;
            animationLoadAnimation.setInterpolator(new LinearInterpolator());
        }
        this.f5712c0 = (TextView) view.findViewById(2131296899);
        Button button = (Button) view.findViewById(2131296389);
        this.f5717h0 = button;
        button.setOnClickListener(this);
        this.f5719j0 = (TextView) view.findViewById(2131296901);
        Button button2 = (Button) view.findViewById(2131296379);
        this.f5716g0 = button2;
        button2.setOnClickListener(this);
        Button button3 = (Button) view.findViewById(2131296374);
        button3.setOnClickListener(this);
        Button button4 = (Button) view.findViewById(2131296376);
        this.f5718i0 = button4;
        button4.setOnClickListener(this);
        Button[] buttonArr = {this.f5716g0, this.f5717h0, button3, this.f5718i0};
        for (int i = 0; i < 4; i++) {
            m6715r2(buttonArr[i]);
        }
        view.findViewById(2131296370).setOnClickListener(this);
        this.f5723n0 = (ImageView) view.findViewById(2131296553);
        this.f5721l0 = (ImageView) view.findViewById(2131296559);
        this.f5722m0 = (ImageView) view.findViewById(2131296562);
        this.f5724o0 = (ImageView) view.findViewById(2131296555);
        this.f5726q0 = (TextView) view.findViewById(2131296903);
        this.f5727r0 = (TextView) view.findViewById(2131296900);
        this.f5720k0.m7292z(PendingIntent.getBroadcast(m2404K(), 0, new Intent("cn.manstep.phonemirror.USB_PERMISSION"), 0));
        m2404K().registerReceiver(this.f5733x0, new IntentFilter("cn.manstep.phonemirror.USB_PERMISSION"));
        m6707j2();
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: j */
    public void mo6702j(byte[] bArr, int i) {
    }

    @Override // android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296370:
                m6708k2();
                break;
            case 2131296374:
                this.f5720k0.m7286n();
                break;
            case 2131296376:
                m6710m2();
                break;
            case 2131296379:
                m6711n2();
                break;
            case 2131296389:
                m6712o2();
                break;
            case 2131296602:
                m6709l2(false);
                break;
        }
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: p */
    public void mo6703p(boolean z, int i, int i2) {
        if (!z) {
            this.f5723n0.setImageDrawable(m2385D().getResources().getDrawable(2131230876));
            return;
        }
        this.f5723n0.setImageDrawable(m2385D().getResources().getDrawable(2131230959));
        if (i == 0 || i2 == 0) {
            return;
        }
        ((TextView) m2478l0().findViewById(2131296902)).setText(String.format(m2385D().getResources().getString(2131689823), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: q */
    public void mo6704q(boolean z, String str) {
        m6717t2();
        this.f5717h0.setEnabled(true);
        this.f5719j0.setVisibility(8);
        this.f5722m0.setVisibility(0);
        if (!z) {
            this.f5722m0.setImageDrawable(m2385D().getResources().getDrawable(2131230876));
            return;
        }
        this.f5722m0.setImageDrawable(m2385D().getResources().getDrawable(2131230959));
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f5719j0.setText(str);
        this.f5719j0.setVisibility(0);
    }
}
