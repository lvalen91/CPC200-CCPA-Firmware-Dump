package cn.manstep.phonemirrorBox.p078l0;

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
import androidx.databinding.C0328f;
import androidx.lifecycle.C0409w;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0797c0;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.p075i0.AbstractC0867m;
import cn.manstep.phonemirrorBox.p091x0.C1006d;
import cn.manstep.phonemirrorBox.p091x0.C1007e;
import cn.manstep.phonemirrorBox.p091x0.C1011i;
import cn.manstep.phonemirrorBox.p091x0.C1013k;
import cn.manstep.phonemirrorBox.util.C0975l;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.yalantis.ucrop.BuildConfig;
import java.util.Locale;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0908o extends C0906m implements C1006d.d, C0975l.d {

    /* JADX INFO: renamed from: c0 */
    private AbstractC0867m f5695c0;

    /* JADX INFO: renamed from: d0 */
    private C1007e f5696d0;

    /* JADX INFO: renamed from: e0 */
    private C1006d f5697e0;

    /* JADX INFO: renamed from: f0 */
    private UsbManager f5698f0;

    /* JADX INFO: renamed from: g0 */
    private BroadcastReceiver f5699g0;

    /* JADX INFO: renamed from: h0 */
    private C0975l f5700h0;

    /* JADX INFO: renamed from: i0 */
    private C1011i f5701i0;

    /* JADX INFO: renamed from: j0 */
    private C1013k f5702j0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.o$a */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0908o.this.f5700h0.m7284D();
            C0908o.this.mo6691g2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.o$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0908o.this.f5700h0.m7288q(C0908o.this.m2404K(), true);
            C0908o.this.f5695c0.f5288y.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.o$c */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0908o.this.f5700h0.m7288q(C0908o.this.m2404K(), true);
            C0908o.this.f5695c0.f5288y.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.o$d */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0908o.this.m6698m2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.o$e */
    class e implements SeekBar.OnSeekBarChangeListener {
        e() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            C0908o.this.f5695c0.f5279G.setText(String.valueOf(i));
            C0795b0.m6071i().m6085F("BootDelay", Integer.valueOf(i));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.o$f */
    class f implements SeekBar.OnSeekBarChangeListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f5708b;

        f(int i) {
            this.f5708b = i;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            int i2 = this.f5708b * i;
            C0908o.this.f5695c0.f5289z.setText(i2 + " dpi");
            C0795b0.m6071i().m6085F("DPI", Integer.valueOf(this.f5708b * i));
            if (C0733d.m5591i()) {
                C0733d.f4428l.m5692P0(i * this.f5708b);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.o$g */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0908o.this.m2385D() instanceof MainActivity) {
                ((MainActivity) C0908o.this.m2385D()).m5955m1();
                if (!C0908o.this.f5695c0.f5276D.isChecked()) {
                    C0908o.this.f5695c0.f5276D.performClick();
                }
                C1000a.m7489b(C0908o.this.m2404K(), "请回到首页连接手机，再进行调节");
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.o$h */
    class h extends BroadcastReceiver {
        h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String str;
            String action = intent.getAction();
            C0982s.m7374d("DebugFragment", "onReceive: " + action);
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
                    C0908o.this.m6699n2();
            }
            action.equals(str);
            C0908o.this.m6699n2();
        }
    }

    /* JADX INFO: renamed from: l2 */
    private void m6697l2(Context context) {
        this.f5699g0 = new h();
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
        context.registerReceiver(this.f5699g0, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m2 */
    public void m6698m2() {
        for (UsbDevice usbDevice : this.f5698f0.getDeviceList().values()) {
            C0982s.m7374d("DebugFragment", "requestUsbPermission: " + usbDevice.getVendorId() + ", hasPermission=" + this.f5698f0.hasPermission(usbDevice));
            this.f5698f0.requestPermission(usbDevice, PendingIntent.getBroadcast(m2406K1(), 0, new Intent("cn.manstep.phonemirrorBox.USB_PERMISSION"), 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n2 */
    public void m6699n2() {
        StringBuilder sb = new StringBuilder();
        for (UsbDevice usbDevice : this.f5698f0.getDeviceList().values()) {
            int vendorId = usbDevice.getVendorId();
            int productId = usbDevice.getProductId();
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(String.format(Locale.CHINA, "%d(0x%04X), %d(0x%04X)", Integer.valueOf(vendorId), Integer.valueOf(vendorId), Integer.valueOf(productId), Integer.valueOf(productId)));
        }
        C0982s.m7374d("DebugFragment", "usbDevices: " + ((Object) sb));
        this.f5696d0.m7589H(sb.toString());
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: E0 */
    public void mo2389E0(Context context) {
        super.mo2389E0(context);
        m6697l2(context);
        this.f5700h0 = new C0975l(this, m2401J());
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        AbstractC0867m abstractC0867m = (AbstractC0867m) C0328f.m2359e(layoutInflater, 2131492937, viewGroup, false);
        this.f5695c0 = abstractC0867m;
        abstractC0867m.m2328G(m2403J1());
        C1007e c1007e = new C1007e(m2403J1().getApplication(), m2441X());
        this.f5696d0 = c1007e;
        this.f5695c0.mo6419M(c1007e);
        C1006d c1006d = (C1006d) new C0409w(m2403J1(), this.f5690a0).m3053a(C1006d.class);
        this.f5697e0 = c1006d;
        c1006d.m7576u(this);
        this.f5695c0.mo6418L(this.f5697e0);
        C1011i c1011i = (C1011i) new C0409w(m2403J1(), this.f5690a0).m3053a(C1011i.class);
        this.f5701i0 = c1011i;
        this.f5695c0.mo6420N(c1011i);
        C1013k c1013k = (C1013k) new C0409w(m2403J1(), this.f5690a0).m3053a(C1013k.class);
        this.f5702j0 = c1013k;
        this.f5695c0.mo6421O(c1013k);
        return this.f5695c0.m2334t();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: M0 */
    public void mo2411M0() {
        this.f5700h0.m7290t();
        super.mo2411M0();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: O0 */
    public void mo2416O0() {
        super.mo2416O0();
        this.f5695c0 = null;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: P0 */
    public void mo2419P0() {
        this.f5697e0.m7579z(this);
        this.f5697e0 = null;
        this.f5701i0 = null;
        this.f5702j0 = null;
        if (this.f5699g0 != null) {
            m2406K1().unregisterReceiver(this.f5699g0);
        }
        super.mo2419P0();
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: d */
    public void mo6700d(boolean z, int i) {
        if (z) {
            return;
        }
        if (m2404K() != null) {
            if (i < 0) {
                this.f5695c0.f5275C.setText(String.valueOf(i));
                if (i == -1 || i == -2) {
                    C1000a.m7490c(m2404K(), 2131689929);
                }
            } else {
                this.f5695c0.f5275C.setText(String.valueOf(i));
                AudioProcess.RecordDelay = i;
                C0795b0.m6071i().m6085F("RecordDelay", Integer.valueOf(AudioProcess.RecordDelay));
            }
        }
        this.f5695c0.f5288y.setVisibility(8);
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: f */
    public void mo6701f(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        this.f5698f0 = (UsbManager) m2406K1().getSystemService("usb");
        this.f5695c0.f5285v.setOnClickListener(new a());
        this.f5695c0.f5275C.setText(String.valueOf(C0795b0.m6071i().m6091m("RecordDelay", AudioProcess.RecordDelay)));
        this.f5695c0.f5275C.setOnClickListener(new b());
        this.f5695c0.f5274B.setOnClickListener(new c());
        m6699n2();
        this.f5695c0.f5280H.setOnClickListener(new d());
        int iM6091m = C0795b0.m6071i().m6091m("BootDelay", 0);
        this.f5695c0.f5278F.setMax(240);
        this.f5695c0.f5278F.setProgress(iM6091m);
        this.f5695c0.f5279G.setText(String.valueOf(iM6091m));
        this.f5695c0.f5278F.setOnSeekBarChangeListener(new e());
        int iM6091m2 = C0795b0.m6071i().m6091m("DPI", C0733d.m5569A() ? C0797c0.m6109i().m6119h() : C0797c0.m6109i().m6117f());
        this.f5695c0.f5273A.setMax(72);
        this.f5695c0.f5273A.setProgress(iM6091m2 / 10);
        this.f5695c0.f5289z.setText(iM6091m2 + " dpi");
        this.f5695c0.f5273A.setOnSeekBarChangeListener(new f(10));
        this.f5695c0.f5277E.setOnClickListener(new g());
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: j */
    public void mo6702j(byte[] bArr, int i) {
        AbstractC0867m abstractC0867m = this.f5695c0;
        if (abstractC0867m != null) {
            abstractC0867m.f5288y.m7486d(bArr, i);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p091x0.C1006d.d
    /* JADX INFO: renamed from: k */
    public void mo5321k() {
        this.f5696d0.m7585D(C0732c.m5542e().m5558p());
        this.f5696d0.m7590I(C0732c.m5542e().m5559q());
    }

    @Override // cn.manstep.phonemirrorBox.p091x0.C1006d.d
    /* JADX INFO: renamed from: m */
    public void mo5322m(int i) {
        if (i == 0) {
            this.f5696d0.m7585D(BuildConfig.FLAVOR);
            this.f5696d0.m7590I(BuildConfig.FLAVOR);
        }
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: p */
    public void mo6703p(boolean z, int i, int i2) {
    }

    @Override // cn.manstep.phonemirrorBox.util.C0975l.d
    /* JADX INFO: renamed from: q */
    public void mo6704q(boolean z, String str) {
    }
}
