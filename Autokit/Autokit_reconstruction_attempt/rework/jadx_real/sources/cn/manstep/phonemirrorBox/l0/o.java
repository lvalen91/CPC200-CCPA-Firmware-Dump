package cn.manstep.phonemirrorBox.l0;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.c0;
import cn.manstep.phonemirrorBox.util.l;
import cn.manstep.phonemirrorBox.x0.d;
import com.yalantis.ucrop.BuildConfig;
import java.util.Locale;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class o extends m implements d.InterfaceC0103d, l.d {
    private cn.manstep.phonemirrorBox.i0.m c0;
    private cn.manstep.phonemirrorBox.x0.e d0;
    private cn.manstep.phonemirrorBox.x0.d e0;
    private UsbManager f0;
    private BroadcastReceiver g0;
    private cn.manstep.phonemirrorBox.util.l h0;
    private cn.manstep.phonemirrorBox.x0.i i0;
    private cn.manstep.phonemirrorBox.x0.k j0;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.h0.D();
            o.this.g2();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.h0.q(o.this.K(), true);
            o.this.c0.y.setVisibility(0);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.h0.q(o.this.K(), true);
            o.this.c0.y.setVisibility(0);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.m2();
        }
    }

    class e implements SeekBar.OnSeekBarChangeListener {
        e() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            o.this.c0.G.setText(String.valueOf(i));
            b0.i().F("BootDelay", Integer.valueOf(i));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    class f implements SeekBar.OnSeekBarChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1764b;

        f(int i) {
            this.f1764b = i;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            int i2 = this.f1764b * i;
            o.this.c0.z.setText(i2 + " dpi");
            b0.i().F("DPI", Integer.valueOf(this.f1764b * i));
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.l.P0(i * this.f1764b);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (o.this.D() instanceof MainActivity) {
                ((MainActivity) o.this.D()).m1();
                if (!o.this.c0.D.isChecked()) {
                    o.this.c0.D.performClick();
                }
                cn.manstep.phonemirrorBox.widget.a.b(o.this.K(), "请回到首页连接手机，再进行调节");
            }
        }
    }

    class h extends BroadcastReceiver {
        h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String str;
            String action = intent.getAction();
            cn.manstep.phonemirrorBox.util.s.d("DebugFragment", "onReceive: " + action);
            switch (action.hashCode()) {
                case -2114103349:
                    str = "android.hardware.usb.action.USB_DEVICE_ATTACHED";
                    break;
                case -1665311200:
                    str = "android.intent.action.MEDIA_REMOVED";
                    break;
                case -1608292967:
                    str = "android.hardware.usb.action.USB_DEVICE_DETACHED";
                    break;
                case -1514214344:
                    str = "android.intent.action.MEDIA_MOUNTED";
                    break;
                case -963871873:
                    str = "android.intent.action.MEDIA_UNMOUNTED";
                    break;
                case -625887599:
                    str = "android.intent.action.MEDIA_EJECT";
                    break;
                case 1099555123:
                    str = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED";
                    break;
                case 1605365505:
                    str = "android.hardware.usb.action.USB_ACCESSORY_DETACHED";
                    break;
                case 2045140818:
                    str = "android.intent.action.MEDIA_BAD_REMOVAL";
                    break;
                default:
                    o.this.n2();
            }
            action.equals(str);
            o.this.n2();
        }
    }

    private void l2(Context context) {
        this.g0 = new h();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
        intentFilter.addAction("android.hardware.usb.action.USB_ACCESSORY_ATTACHED");
        intentFilter.addAction("android.hardware.usb.action.USB_ACCESSORY_DETACHED");
        intentFilter.setPriority(1000);
        context.registerReceiver(this.g0, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m2() {
        for (UsbDevice usbDevice : this.f0.getDeviceList().values()) {
            cn.manstep.phonemirrorBox.util.s.d("DebugFragment", "requestUsbPermission: " + usbDevice.getVendorId() + ", hasPermission=" + this.f0.hasPermission(usbDevice));
            this.f0.requestPermission(usbDevice, PendingIntent.getBroadcast(K1(), 0, new Intent("cn.manstep.phonemirrorBox.USB_PERMISSION"), 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n2() {
        StringBuilder sb = new StringBuilder();
        for (UsbDevice usbDevice : this.f0.getDeviceList().values()) {
            int vendorId = usbDevice.getVendorId();
            int productId = usbDevice.getProductId();
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(String.format(Locale.CHINA, "%d(0x%04X), %d(0x%04X)", Integer.valueOf(vendorId), Integer.valueOf(vendorId), Integer.valueOf(productId), Integer.valueOf(productId)));
        }
        cn.manstep.phonemirrorBox.util.s.d("DebugFragment", "usbDevices: " + ((Object) sb));
        this.d0.H(sb.toString());
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    public void E0(Context context) {
        super.E0(context);
        l2(context);
        this.h0 = new cn.manstep.phonemirrorBox.util.l(this, J());
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        cn.manstep.phonemirrorBox.i0.m mVar = (cn.manstep.phonemirrorBox.i0.m) androidx.databinding.f.e(layoutInflater, 2131492937, viewGroup, false);
        this.c0 = mVar;
        mVar.G(J1());
        cn.manstep.phonemirrorBox.x0.e eVar = new cn.manstep.phonemirrorBox.x0.e(J1().getApplication(), X());
        this.d0 = eVar;
        this.c0.M(eVar);
        cn.manstep.phonemirrorBox.x0.d dVar = (cn.manstep.phonemirrorBox.x0.d) new androidx.lifecycle.w(J1(), this.a0).a(cn.manstep.phonemirrorBox.x0.d.class);
        this.e0 = dVar;
        dVar.u(this);
        this.c0.L(this.e0);
        cn.manstep.phonemirrorBox.x0.i iVar = (cn.manstep.phonemirrorBox.x0.i) new androidx.lifecycle.w(J1(), this.a0).a(cn.manstep.phonemirrorBox.x0.i.class);
        this.i0 = iVar;
        this.c0.N(iVar);
        cn.manstep.phonemirrorBox.x0.k kVar = (cn.manstep.phonemirrorBox.x0.k) new androidx.lifecycle.w(J1(), this.a0).a(cn.manstep.phonemirrorBox.x0.k.class);
        this.j0 = kVar;
        this.c0.O(kVar);
        return this.c0.t();
    }

    @Override // androidx.fragment.app.Fragment
    public void M0() {
        this.h0.t();
        super.M0();
    }

    @Override // androidx.fragment.app.Fragment
    public void O0() {
        super.O0();
        this.c0 = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void P0() {
        this.e0.z(this);
        this.e0 = null;
        this.i0 = null;
        this.j0 = null;
        if (this.g0 != null) {
            K1().unregisterReceiver(this.g0);
        }
        super.P0();
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void d(boolean z, int i) {
        if (z) {
            return;
        }
        if (K() != null) {
            if (i < 0) {
                this.c0.C.setText(String.valueOf(i));
                if (i == -1 || i == -2) {
                    cn.manstep.phonemirrorBox.widget.a.c(K(), 2131689929);
                }
            } else {
                this.c0.C.setText(String.valueOf(i));
                AudioProcess.RecordDelay = i;
                b0.i().F("RecordDelay", Integer.valueOf(AudioProcess.RecordDelay));
            }
        }
        this.c0.y.setVisibility(8);
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void f(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        this.f0 = (UsbManager) K1().getSystemService("usb");
        this.c0.v.setOnClickListener(new a());
        this.c0.C.setText(String.valueOf(b0.i().m("RecordDelay", AudioProcess.RecordDelay)));
        this.c0.C.setOnClickListener(new b());
        this.c0.B.setOnClickListener(new c());
        n2();
        this.c0.H.setOnClickListener(new d());
        int iM = b0.i().m("BootDelay", 0);
        this.c0.F.setMax(240);
        this.c0.F.setProgress(iM);
        this.c0.G.setText(String.valueOf(iM));
        this.c0.F.setOnSeekBarChangeListener(new e());
        int iM2 = b0.i().m("DPI", cn.manstep.phonemirrorBox.BoxInterface.d.A() ? c0.i().h() : c0.i().f());
        this.c0.A.setMax(72);
        this.c0.A.setProgress(iM2 / 10);
        this.c0.z.setText(iM2 + " dpi");
        this.c0.A.setOnSeekBarChangeListener(new f(10));
        this.c0.E.setOnClickListener(new g());
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void j(byte[] bArr, int i) {
        cn.manstep.phonemirrorBox.i0.m mVar = this.c0;
        if (mVar != null) {
            mVar.y.d(bArr, i);
        }
    }

    @Override // cn.manstep.phonemirrorBox.x0.d.InterfaceC0103d
    public void k() {
        this.d0.D(cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
        this.d0.I(cn.manstep.phonemirrorBox.BoxInterface.c.e().q());
    }

    @Override // cn.manstep.phonemirrorBox.x0.d.InterfaceC0103d
    public void m(int i) {
        if (i == 0) {
            this.d0.D(BuildConfig.FLAVOR);
            this.d0.I(BuildConfig.FLAVOR);
        }
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void p(boolean z, int i, int i2) {
    }

    @Override // cn.manstep.phonemirrorBox.util.l.d
    public void q(boolean z, String str) {
    }
}
