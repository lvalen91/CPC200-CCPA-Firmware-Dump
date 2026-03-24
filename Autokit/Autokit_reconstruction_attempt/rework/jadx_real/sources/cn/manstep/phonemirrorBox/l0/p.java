package cn.manstep.phonemirrorBox.l0;

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
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.util.c0;
import cn.manstep.phonemirrorBox.util.l;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class p extends m implements View.OnClickListener, l.d {
    private TextView c0;
    private View d0;
    private Animation e0;
    private AnimationDrawable f0;
    private Button g0;
    private Button h0;
    private Button i0;
    private TextView j0;
    private cn.manstep.phonemirrorBox.util.l k0;
    private ImageView l0;
    private ImageView m0;
    private ImageView n0;
    private ImageView o0;
    private cn.manstep.phonemirrorBox.k0.j p0;
    private TextView q0;
    private TextView r0;
    private LinearLayout w0;
    private boolean s0 = false;
    private boolean t0 = false;
    private boolean u0 = false;
    private int v0 = 0;
    private final BroadcastReceiver x0 = new c();

    class a implements View.OnLongClickListener {
        a() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            p.this.w0.setVisibility(0);
            return true;
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Button f1768b;

        b(Button button) {
            this.f1768b = button;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f1768b.getCompoundDrawables()[0] == null) {
                return;
            }
            int width = (int) (((int) (this.f1768b.getWidth() - ((this.f1768b.getPaint().measureText(this.f1768b.getText().toString()) + r0.getIntrinsicWidth()) + this.f1768b.getCompoundDrawablePadding()))) / 2.0f);
            Context contextK = p.this.K();
            if (contextK != null) {
                this.f1768b.setPadding(width, c0.b(contextK, 10.0f), width, c0.b(contextK, 10.0f));
            }
        }
    }

    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("cn.manstep.phonemirror.USB_PERMISSION".equals(intent.getAction())) {
                boolean booleanExtra = intent.getBooleanExtra("permission", false);
                Bundle extras = intent.getExtras();
                p.this.k0.u(extras != null ? (UsbDevice) extras.get("device") : null, booleanExtra);
            }
        }
    }

    private void j2() {
        l2(true);
    }

    private void k2() {
        this.k0.C();
        this.k0.D();
        super.g2();
    }

    private void l2(boolean z) {
        this.t0 = true;
        this.u0 = z;
        int iM = b0.i().m("RecordDelay", AudioProcess.RecordDelay);
        this.o0.setImageDrawable(D().getResources().getDrawable(2131230959));
        this.r0.setText(String.valueOf(iM));
        s2();
        this.h0.setEnabled(false);
        this.j0.setVisibility(0);
        this.m0.setVisibility(4);
        this.j0.setText(2131689977);
        this.k0.m(D());
    }

    private void m2() {
        this.t0 = false;
        s2();
        this.r0.setVisibility(4);
        this.i0.setEnabled(false);
        this.o0.setVisibility(4);
        this.k0.q(D(), false);
    }

    private void n2() {
        if (this.s0) {
            p2();
        } else {
            this.k0.o();
        }
    }

    private void o2() {
        this.t0 = false;
        s2();
        this.h0.setEnabled(false);
        this.j0.setVisibility(0);
        this.m0.setVisibility(4);
        this.j0.setText(2131689977);
        this.k0.s(D());
    }

    private void p2() {
        this.k0.B();
        if (this.p0 == null) {
            this.p0 = new cn.manstep.phonemirrorBox.k0.j(D());
        }
        this.p0.show();
    }

    private void q2(int i) {
        View view = this.d0;
        if (view instanceof Button) {
            ((Button) view).setText(i);
        }
    }

    private void r2(Button button) {
        button.getViewTreeObserver().addOnGlobalLayoutListener(new b(button));
    }

    private void s2() {
        View view = this.d0;
        if (view instanceof ImageView) {
            AnimationDrawable animationDrawable = this.f0;
            if (animationDrawable != null) {
                animationDrawable.start();
            } else {
                view.startAnimation(this.e0);
            }
        }
        this.c0.setText(2131689695);
        q2(2131689695);
    }

    private void t2() {
        if (!this.t0) {
            u2();
            return;
        }
        if (this.u0) {
            u2();
            return;
        }
        int i = this.v0 + 1;
        this.v0 = i;
        if (i == 2) {
            this.t0 = false;
            this.v0 = 0;
            u2();
        }
    }

    private void u2() {
        AnimationDrawable animationDrawable = this.f0;
        if (animationDrawable != null) {
            animationDrawable.stop();
        } else {
            this.d0.clearAnimation();
        }
        this.c0.setText(2131689893);
        q2(2131689893);
    }

    @Override // androidx.fragment.app.Fragment
    public void B0(Bundle bundle) {
        super.B0(bundle);
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    public void E0(Context context) {
        super.E0(context);
        cn.manstep.phonemirrorBox.util.s.c("DeviceCheckFragment,onAttach");
        this.k0 = new cn.manstep.phonemirrorBox.util.l(this, J());
    }

    @Override // androidx.fragment.app.Fragment
    public Animation I0(int i, boolean z, int i2) {
        return z ? AnimationUtils.loadAnimation(D(), 2130772009) : AnimationUtils.loadAnimation(D(), 2130772011);
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492938, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void M0() {
        cn.manstep.phonemirrorBox.util.s.c("DeviceCheckFragment,onDestroy");
        this.k0.t();
        this.s0 = false;
        K().unregisterReceiver(this.x0);
        super.M0();
    }

    @Override // androidx.fragment.app.Fragment
    public void R0(boolean z) {
        super.R0(z);
        cn.manstep.phonemirrorBox.util.s.c("DeviceCheckFragment,onHiddenChanged: " + z);
        if (z) {
            return;
        }
        j2();
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void d(boolean z, int i) {
        this.i0.setEnabled(true);
        t2();
        if (z || K() == null) {
            return;
        }
        this.o0.setVisibility(0);
        if (i >= 0) {
            this.o0.setImageDrawable(D().getResources().getDrawable(2131230959));
            this.r0.setText(String.valueOf(i));
            AudioProcess.RecordDelay = i;
            b0.i().F("RecordDelay", Integer.valueOf(AudioProcess.RecordDelay));
            this.r0.setVisibility(0);
            return;
        }
        this.o0.setImageDrawable(D().getResources().getDrawable(2131230876));
        this.r0.setText(String.valueOf(i));
        if (i == -1 || i == -2) {
            this.k0.A(K().getString(2131689700), K().getString(2131689929), false);
        }
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void f(int i) {
        if (i == 1) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 17);
            return;
        }
        if (i == 2) {
            this.s0 = true;
        } else {
            this.s0 = false;
        }
        if (i != 0) {
            this.g0.setText(2131689659);
            if (D() != null) {
                this.l0.setImageDrawable(D().getResources().getDrawable(2131230876));
            }
            this.q0.setVisibility(0);
            return;
        }
        cn.manstep.phonemirrorBox.k0.j jVar = this.p0;
        if (jVar != null) {
            jVar.dismiss();
        }
        this.k0.C();
        if (D() != null) {
            this.l0.setImageDrawable(D().getResources().getDrawable(2131230959));
        }
        this.q0.setVisibility(8);
        this.g0.setText(2131689830);
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        View viewFindViewById = view.findViewById(2131296602);
        this.d0 = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.d0.setOnLongClickListener(new a());
        this.w0 = (LinearLayout) view.findViewById(2131296585);
        Drawable background = this.d0.getBackground();
        if (background instanceof AnimationDrawable) {
            this.f0 = (AnimationDrawable) background;
        }
        if (this.f0 == null) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(D(), 2130772002);
            this.e0 = animationLoadAnimation;
            animationLoadAnimation.setInterpolator(new LinearInterpolator());
        }
        this.c0 = (TextView) view.findViewById(2131296899);
        Button button = (Button) view.findViewById(2131296389);
        this.h0 = button;
        button.setOnClickListener(this);
        this.j0 = (TextView) view.findViewById(2131296901);
        Button button2 = (Button) view.findViewById(2131296379);
        this.g0 = button2;
        button2.setOnClickListener(this);
        Button button3 = (Button) view.findViewById(2131296374);
        button3.setOnClickListener(this);
        Button button4 = (Button) view.findViewById(2131296376);
        this.i0 = button4;
        button4.setOnClickListener(this);
        Button[] buttonArr = {this.g0, this.h0, button3, this.i0};
        for (int i = 0; i < 4; i++) {
            r2(buttonArr[i]);
        }
        view.findViewById(2131296370).setOnClickListener(this);
        this.n0 = (ImageView) view.findViewById(2131296553);
        this.l0 = (ImageView) view.findViewById(2131296559);
        this.m0 = (ImageView) view.findViewById(2131296562);
        this.o0 = (ImageView) view.findViewById(2131296555);
        this.q0 = (TextView) view.findViewById(2131296903);
        this.r0 = (TextView) view.findViewById(2131296900);
        this.k0.z(PendingIntent.getBroadcast(K(), 0, new Intent("cn.manstep.phonemirror.USB_PERMISSION"), 0));
        K().registerReceiver(this.x0, new IntentFilter("cn.manstep.phonemirror.USB_PERMISSION"));
        j2();
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void j(byte[] bArr, int i) {
    }

    @Override // android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296370:
                k2();
                break;
            case 2131296374:
                this.k0.n();
                break;
            case 2131296376:
                m2();
                break;
            case 2131296379:
                n2();
                break;
            case 2131296389:
                o2();
                break;
            case 2131296602:
                l2(false);
                break;
        }
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void p(boolean z, int i, int i2) {
        if (!z) {
            this.n0.setImageDrawable(D().getResources().getDrawable(2131230876));
            return;
        }
        this.n0.setImageDrawable(D().getResources().getDrawable(2131230959));
        if (i == 0 || i2 == 0) {
            return;
        }
        ((TextView) l0().findViewById(2131296902)).setText(String.format(D().getResources().getString(2131689823), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void q(boolean z, String str) {
        t2();
        this.h0.setEnabled(true);
        this.j0.setVisibility(8);
        this.m0.setVisibility(0);
        if (!z) {
            this.m0.setImageDrawable(D().getResources().getDrawable(2131230876));
            return;
        }
        this.m0.setImageDrawable(D().getResources().getDrawable(2131230959));
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.j0.setText(str);
        this.j0.setVisibility(0);
    }
}
