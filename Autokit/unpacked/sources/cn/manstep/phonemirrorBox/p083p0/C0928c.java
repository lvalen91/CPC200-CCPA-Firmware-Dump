package cn.manstep.phonemirrorBox.p083p0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import androidx.fragment.app.AbstractC0366n;
import cn.manstep.phonemirrorBox.AbstractC0791a;
import cn.manstep.phonemirrorBox.BoxInterface.C0730a;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0824f;
import cn.manstep.phonemirrorBox.C0921n;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.ForegroundService;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.ViewOnClickListenerC1017z;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0986w;
import cn.manstep.phonemirrorBox.util.DialogC0970g;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0928c implements C0995e.d, AbstractC0791a.a, C0921n.c {

    /* JADX INFO: renamed from: b */
    private final InterfaceC0927b f5890b;

    /* JADX INFO: renamed from: c */
    private final WeakReference<Context> f5891c;

    /* JADX INFO: renamed from: d */
    private final WeakReference<AbstractC0366n> f5892d;

    /* JADX INFO: renamed from: e */
    private final g f5893e;

    /* JADX INFO: renamed from: f */
    private final AbstractC0926a f5894f;

    /* JADX INFO: renamed from: g */
    private final C0921n f5895g;

    /* JADX INFO: renamed from: h */
    private int f5896h = -1;

    /* JADX INFO: renamed from: i */
    private boolean f5897i = false;

    /* JADX INFO: renamed from: j */
    private int f5898j = 0;

    /* JADX INFO: renamed from: k */
    private final BroadcastReceiver f5899k = new a();

    /* JADX INFO: renamed from: l */
    private boolean f5900l = false;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p0.c$a */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action;
            if (intent == null || (action = intent.getAction()) == null || !"cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT".equals(action)) {
                return;
            }
            int intExtra = intent.getIntExtra("WPARAM", 0);
            int intExtra2 = intent.getIntExtra("LPARAM", 0);
            C0982s.m7373c("MainPresenter,onReceive: Msgcome:WPARAM:" + intExtra + " LPARAM:" + intExtra2);
            if (intExtra == 2) {
                C0982s.m7373c("MainPresenter,onReceive: get EVT_TEST_QUIT, then finish");
                C0928c.this.f5890b.mo5957o();
                return;
            }
            if (1 == intExtra) {
                C0928c.this.m6880r(intExtra2);
                return;
            }
            if (3 == intExtra) {
                C0982s.m7373c("MainPresenter,onReceive: EVT_BACK_HOME: " + intExtra2);
                C0928c.this.f5890b.mo5958p(intExtra2);
                return;
            }
            if (7 == intExtra) {
                C0928c.this.f5890b.mo5939a();
                return;
            }
            if (6 == intExtra) {
                C0928c.this.m6886C();
                return;
            }
            if (4 == intExtra) {
                C0928c.this.m6879l(intExtra2);
                return;
            }
            if (5 != intExtra) {
                if (8 == intExtra) {
                    C0928c.this.m6894k(intExtra2);
                }
            } else {
                C0982s.m7373c("MainPresenter,onReceive: Uilogic: EVT_SET_PERMISSION_UILOG: " + intExtra2);
                C0928c.this.f5890b.mo5963u();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p0.c$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0986w.m7395a((Context) C0928c.this.f5891c.get(), false);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p0.c$c */
    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f5903b;

        c(String str) {
            this.f5903b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0964c0.m7191o((Context) C0928c.this.f5891c.get(), this.f5903b);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p0.c$d */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0982s.m7372b();
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException unused) {
            }
            C0982s.m7381k((Context) C0928c.this.f5891c.get());
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p0.c$e */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0928c.this.f5897i) {
                DialogC0970g.m7241a((Context) C0928c.this.f5891c.get(), 2131689832, 6000);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p0.c$f */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0928c.this.m6871F();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p0.c$g */
    static class g {

        /* JADX INFO: renamed from: a */
        private WeakReference<Context> f5908a;

        /* JADX INFO: renamed from: b */
        private BroadcastReceiver f5909b = new a(this);

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.p0.c$g$a */
        class a extends BroadcastReceiver {
            a(g gVar) {
            }

            /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
            @Override // android.content.BroadcastReceiver
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onReceive(Context context, Intent intent) {
                if (intent.getAction().equals("com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_EVT") && C0995e.m7430C()) {
                    int intExtra = intent.getIntExtra("com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_DATA", 0);
                    if (intExtra == 0) {
                        intExtra = intent.getIntExtra("com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_THIRD_PARTY_DATA", 0) + 100;
                    }
                    if (intExtra != 107) {
                        if (intExtra != 108) {
                            switch (intExtra) {
                                case 1:
                                    break;
                                case 2:
                                    break;
                                case 3:
                                    C0995e.m7435H(102);
                                    break;
                                case 4:
                                    C0995e.m7435H(103);
                                    break;
                                case 5:
                                    C0995e.m7435H(105);
                                    break;
                                case 6:
                                    C0995e.m7435H(104);
                                    break;
                                default:
                                    switch (intExtra) {
                                        case 105:
                                            C0995e.m7435H(104);
                                            C0995e.m7435H(105);
                                            break;
                                    }
                                    break;
                            }
                        }
                        C0995e.m7435H(101);
                        return;
                    }
                    C0995e.m7435H(100);
                }
            }
        }

        public g(Context context) {
            this.f5908a = new WeakReference<>(context);
        }

        /* JADX INFO: renamed from: a */
        void m6900a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.choiceway.eventcenter.EventUtils.ZXW_ORIGINAL_MCU_KEY_FOCUS_MOVE_EVT");
            if (this.f5908a.get() != null) {
                this.f5908a.get().registerReceiver(this.f5909b, intentFilter);
            }
        }

        /* JADX INFO: renamed from: b */
        void m6901b() {
            if (this.f5908a.get() != null) {
                this.f5908a.get().unregisterReceiver(this.f5909b);
            }
        }
    }

    public C0928c(InterfaceC0927b interfaceC0927b, Context context, AbstractC0366n abstractC0366n) {
        this.f5890b = interfaceC0927b;
        this.f5891c = new WeakReference<>(context);
        this.f5892d = new WeakReference<>(abstractC0366n);
        C0995e.m7429B(this.f5891c.get());
        C0995e.m7442O(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT");
        context.registerReceiver(this.f5899k, intentFilter);
        g gVar = new g(this.f5891c.get());
        this.f5893e = gVar;
        gVar.m6900a();
        C0929d c0929d = new C0929d();
        this.f5894f = c0929d;
        c0929d.mo6865c(context);
        this.f5895g = new C0921n(this.f5891c.get(), this);
    }

    /* JADX INFO: renamed from: A */
    private void m6869A(int i) {
        if (C0733d.f4428l == null) {
            return;
        }
        C0982s.m7373c("MainPresenter,onNoticeScanFinish: " + i);
        if (22 == i) {
            this.f5890b.mo5962t(C0733d.m5597r());
        } else if (23 == i) {
            this.f5890b.mo5964v(C0733d.m5597r());
        }
        new Handler().postDelayed(new f(), 1500L);
    }

    /* JADX INFO: renamed from: B */
    private void m6870B() {
        this.f5890b.mo5961s();
        m6871F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: F */
    public void m6871F() {
    }

    /* JADX INFO: renamed from: j */
    private void m6878j() {
        if (this.f5891c.get() != null) {
            Intent intent = new Intent(StubApp.getOrigApplicationContext(this.f5891c.get().getApplicationContext()), (Class<?>) MainActivity.class);
            intent.addFlags(268435456);
            if (C0995e.m7430C()) {
                return;
            }
            C0982s.m7374d("MainPresenter", "goFront: startActivity MainActivity");
            this.f5891c.get().startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l */
    public void m6879l(int i) {
        C0982s.m7375e("MainPresenter,handleNoticeMsg: EVT_NOTICE_INFO: (" + i + ")" + C0995e.m7431D(i));
        if (i == 1) {
            this.f5890b.mo5931D();
        }
        if (i == 54) {
            this.f5890b.mo5936J(false);
            return;
        }
        if (i == 55) {
            this.f5890b.mo5936J(true);
            return;
        }
        switch (i) {
            case 5:
                if (this.f5896h != 5) {
                    this.f5890b.mo5965x(false);
                } else {
                    this.f5896h = 0;
                    this.f5890b.mo5965x(true);
                }
                break;
            case 6:
                this.f5890b.mo5946g(0);
                break;
            case 7:
                this.f5890b.mo5946g(1);
                break;
            case 8:
                this.f5890b.mo5947h();
                break;
            case 9:
                this.f5890b.mo5944e(C0925p.f5865b);
                break;
            default:
                switch (i) {
                    case 11:
                        if (this.f5896h != 5) {
                            this.f5890b.mo5956n(false);
                        } else {
                            this.f5896h = 0;
                            this.f5890b.mo5956n(true);
                        }
                        break;
                    case 12:
                        this.f5890b.mo5946g(2);
                        break;
                    case 13:
                        this.f5890b.mo5946g(3);
                        break;
                    case 14:
                        this.f5890b.mo5930C();
                        break;
                    case 15:
                        m6885z();
                        break;
                    case 16:
                        this.f5890b.mo5954m(true);
                        break;
                    case 17:
                        this.f5890b.mo5954m(false);
                        break;
                    case 18:
                        this.f5890b.mo5966y();
                        break;
                    case 19:
                        m6870B();
                        break;
                    case 20:
                        this.f5890b.mo5932F();
                        break;
                    case 21:
                        this.f5890b.mo5935I();
                        break;
                    case 22:
                        m6869A(22);
                        break;
                    case 23:
                        m6869A(23);
                        break;
                    case 24:
                        m6883v(true);
                        break;
                    case 25:
                        m6883v(false);
                        break;
                    case 26:
                        m6884y(true);
                        if (this.f5898j == 1) {
                            this.f5898j = 2;
                        }
                        break;
                    case 27:
                        m6884y(false);
                        this.f5890b.mo5936J(true);
                        break;
                    case 28:
                        m6882u();
                        break;
                    case 29:
                        break;
                    default:
                        switch (i) {
                            case 31:
                                C0982s.m7373c("MainPresenter,handleNoticeMsg: NOTICE_MANUAL_DISCONNECT_PHONE==");
                                break;
                            case 32:
                                m6881t();
                                break;
                            case 33:
                                this.f5897i = false;
                                break;
                            case 34:
                                C0735f c0735f = C0733d.f4428l;
                                if (c0735f != null) {
                                    c0735f.m5697S0(this.f5894f.mo6864b());
                                }
                                break;
                            case 35:
                                C0735f c0735f2 = C0733d.f4428l;
                                if (c0735f2 != null) {
                                    this.f5894f.mo6868f(c0735f2.m5677G());
                                }
                                break;
                            case 36:
                                this.f5894f.mo6866d();
                                break;
                            case 37:
                                this.f5894f.mo6863a();
                                break;
                            case 38:
                                if (!C0733d.m5599t()) {
                                    m6878j();
                                }
                                break;
                            case 39:
                                InterfaceC0927b interfaceC0927b = this.f5890b;
                                if (interfaceC0927b != null) {
                                    interfaceC0927b.mo5958p(0);
                                }
                                break;
                            case 40:
                                this.f5890b.mo5941c();
                                break;
                        }
                        break;
                }
                this.f5890b.mo5948i();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r */
    public void m6880r(int i) {
        C0982s.m7373c("MainPresenter,onChangePage: EVT_ENT_PAGE: " + i + " " + this.f5898j);
        int i2 = this.f5896h;
        if (i == 1) {
            this.f5890b.mo5940b();
            if (!C0733d.m5591i()) {
                C0982s.m7375e("MainPresenter,onChangePage: Box DisConnected!!!");
                this.f5890b.mo5952l();
            }
            C0991a.m7412t().mo7145i();
            if (this.f5891c.get() != null) {
                this.f5891c.get().stopService(new Intent(this.f5891c.get(), (Class<?>) ForegroundService.class));
            }
            this.f5895g.m6785n();
            i2 = 0;
        } else if (i == 3) {
            C0824f.m6201b(false);
            i2 = 2;
        } else if (i == 4) {
            if (C0735f.f4461R) {
                this.f5898j = 2;
                if (!C0795b0.m6071i().m6093o("UsedWirelessMode", false)) {
                    C0795b0.m6071i().m6085F("UsedWirelessMode", Boolean.TRUE);
                    if (C0953u.m7001z().m7027Z()) {
                        this.f5890b.mo5959q(true);
                        C0795b0.m6071i().m6085F("WirelessConnectMode", 0);
                    }
                }
            }
            C0991a.m7412t().mo7137a();
            if (this.f5891c.get() != null) {
                this.f5891c.get().startService(new Intent(this.f5891c.get(), (Class<?>) ForegroundService.class));
            }
            this.f5895g.m6784m();
            this.f5890b.mo5967z();
            i2 = 3;
        } else if (i == 5) {
            if (C0735f.f4461R) {
                this.f5898j = 1;
            }
            this.f5890b.mo5943d();
            i2 = 1;
        } else if (i == 6) {
            i2 = 4;
        }
        C0982s.m7373c("MainPresenter,onChangePage: " + i2 + " " + this.f5896h);
        int i3 = this.f5896h;
        if (i3 == 5) {
            return;
        }
        if (!this.f5890b.mo5951k(i3)) {
            this.f5896h = -1;
        }
        if (i2 == this.f5896h) {
            return;
        }
        this.f5896h = i2;
        this.f5890b.mo5960r(i2, false);
        C0982s.m7373c("MainPresenter,onChangePage: mPageTo=" + this.f5896h);
    }

    /* JADX INFO: renamed from: t */
    private void m6881t() {
        this.f5897i = true;
        new Handler().postDelayed(new e(), 1000L);
    }

    /* JADX INFO: renamed from: u */
    private void m6882u() {
        this.f5890b.mo5929B();
    }

    /* JADX INFO: renamed from: v */
    private void m6883v(boolean z) {
        if (z) {
            this.f5890b.mo5934H(true);
        } else {
            this.f5890b.mo5934H(false);
            m6871F();
        }
    }

    /* JADX INFO: renamed from: y */
    private void m6884y(boolean z) {
        this.f5890b.mo5928A(z);
        boolean z2 = C0735f.f4461R;
    }

    /* JADX INFO: renamed from: z */
    private void m6885z() {
        C0982s.m7375e("MainPresenter,onNoticePhoneDisconnected(Maybe Wifi is disconnected or abnormal): mWirelessModeStatus=" + this.f5898j);
        AbstractC0926a abstractC0926a = this.f5894f;
        if (abstractC0926a != null) {
            abstractC0926a.mo6863a();
        }
        if (this.f5898j != 1) {
            this.f5890b.mo5931D();
        } else if (C0733d.f4428l == null) {
            this.f5890b.mo5964v(BuildConfig.FLAVOR);
        } else {
            C0982s.m7374d("MainPresenter", "onNoticePhoneDisconnected: PhoneType=" + C0733d.f4428l.m5685K());
            if (!C0733d.m5605z() && C0733d.f4428l.m5685K() > 0) {
                this.f5890b.mo5964v(C0733d.m5597r());
            }
        }
        this.f5898j = 0;
        m6871F();
        if (this.f5900l) {
            this.f5900l = false;
            if (this.f5891c.get().getResources().getBoolean(2131034126) && C0995e.m7430C()) {
                this.f5890b.mo5958p(0);
            }
        }
    }

    /* JADX INFO: renamed from: C */
    public void m6886C() {
        this.f5890b.mo5937K();
        this.f5896h = 0;
    }

    /* JADX INFO: renamed from: D */
    public void m6887D(boolean z) {
        if (z) {
            C0995e.m7444Q(true);
        } else {
            C0995e.m7444Q(false);
        }
    }

    /* JADX INFO: renamed from: E */
    public void m6888E() {
        C0995e.m7447T(this);
        this.f5895g.m6785n();
        this.f5893e.m6901b();
        if (this.f5891c.get() != null) {
            this.f5891c.get().unregisterReceiver(this.f5899k);
        }
        this.f5894f.mo6867e();
        this.f5891c.clear();
    }

    /* JADX INFO: renamed from: G */
    public void m6889G(int i) {
        C0995e.m7436I(i);
    }

    /* JADX INFO: renamed from: H */
    public void m6890H(int i) {
        this.f5896h = i;
        if (i == 3) {
            this.f5900l = true;
        }
    }

    /* JADX INFO: renamed from: I */
    public boolean m6891I(String str, String str2) {
        FileInputStream fileInputStream;
        int iAvailable;
        try {
            fileInputStream = new FileInputStream(str);
            iAvailable = fileInputStream.available();
        } catch (Exception e2) {
            C0982s.m7375e("MainPresenter,uploadFile2Box: \n" + C0982s.m7377g(e2));
        }
        if (iAvailable > 52428800) {
            fileInputStream.close();
            return false;
        }
        byte[] bArr = new byte[iAvailable];
        int i = fileInputStream.read(bArr, 0, iAvailable);
        fileInputStream.close();
        if (i == iAvailable && C0733d.f4428l != null) {
            return C0733d.f4428l.m5750w1(str2, bArr);
        }
        return false;
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.C0995e.d
    /* JADX INFO: renamed from: g */
    public void mo5834g(int i, int i2, int i3) {
        if (i == 4 && i2 == 32) {
            if (i3 == 0) {
                C1000a.makeText(this.f5891c.get(), this.f5891c.get().getResources().getString(2131689831), 0).show();
                return;
            } else {
                if (i3 == 1) {
                    m6881t();
                    return;
                }
                return;
            }
        }
        C0982s.m7375e("MainPresenter,onListenMsg  " + i + " " + i2 + " " + i3);
        Intent intent = new Intent("cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT");
        intent.putExtra("WPARAM", i);
        intent.putExtra("LPARAM", i2);
        if (this.f5891c.get() != null) {
            this.f5891c.get().sendBroadcast(intent);
        }
    }

    /* JADX INFO: renamed from: h */
    public void m6892h() {
        this.f5896h = 5;
        C0733d.m5579O(1, 20);
        C0733d.m5592j();
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            c0735f.m5707Y0();
        }
    }

    /* JADX INFO: renamed from: i */
    public int m6893i() {
        return this.f5896h;
    }

    /* JADX INFO: renamed from: k */
    public void m6894k(int i) {
        if (i == 3) {
            C0982s.m7374d("MainPresenter", "handleNoticeApp: APP RESET");
            C0882a.m6523E2(this.f5892d.get(), new b());
            return;
        }
        if (i == 1) {
            String strM7182f = C0964c0.m7182f(this.f5891c.get());
            C0982s.m7374d("MainPresenter", "handleNoticeApp: path = " + strM7182f);
            C0882a.m6522D2(this.f5892d.get(), new c(strM7182f), false);
            return;
        }
        if (i == 2) {
            C0982s.m7379i("MainPresenter", "handleNoticeApp: NOTICE_APP_SEND_LOG");
            boolean z = C0982s.f6143a;
            C0982s.m7372b();
            if (z) {
                new Thread(new d()).start();
            }
            File fileM7313p = C0977n.m7313p(this.f5891c.get());
            if (fileM7313p == null) {
                C0735f c0735f = C0733d.f4428l;
                if (c0735f != null) {
                    c0735f.m5745s0("AppLog", 0);
                }
                C0982s.m7376f("MainPresenter", "handleNoticeApp: The app log file does not exist.");
                return;
            }
            File fileM7305h = C0977n.m7305h(fileM7313p);
            if (fileM7305h == null) {
                fileM7305h = C0977n.m7304g(fileM7313p, this.f5891c.get());
            }
            if (fileM7305h == null) {
                C0735f c0735f2 = C0733d.f4428l;
                if (c0735f2 != null) {
                    c0735f2.m5745s0("AppLog", 0);
                }
                C0982s.m7376f("MainPresenter", "handleNoticeApp: Failed to upload the log file to the box.(base64LogFile=null)");
                C1000a.m7488a(this.f5891c.get(), 2131689799);
                return;
            }
            C0735f c0735f3 = C0733d.f4428l;
            if (c0735f3 != null) {
                c0735f3.m5745s0("AppLog", Long.valueOf(fileM7305h.getTotalSpace()));
            }
            if (m6891I(fileM7305h.getAbsolutePath(), "/tmp/app.log\u0000")) {
                C0977n.m7299b(this.f5891c.get());
            } else {
                C0982s.m7376f("MainPresenter", "handleNoticeApp: Failed to upload the log file to the box.");
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public boolean m6895m() {
        C0982s.m7373c("MainPresenter,isFullScreenPage: page=" + this.f5896h);
        int i = this.f5896h;
        return i == 1 || i == 3 || i == 2;
    }

    /* JADX INFO: renamed from: n */
    public boolean m6896n() {
        int i = this.f5896h;
        return i == 3 || i == 2;
    }

    /* JADX INFO: renamed from: o */
    public boolean m6897o(int i, boolean z) {
        if (!C0795b0.m6071i().m6093o("UseVolumeKeySwitchMusic", false) || !C0730a.f4324j || C0730a.f4325k) {
            return false;
        }
        if (!z) {
            return true;
        }
        if (i == 25) {
            C0995e.m7435H(204);
            return true;
        }
        if (i != 24) {
            return true;
        }
        C0995e.m7435H(205);
        return true;
    }

    /* JADX INFO: renamed from: p */
    public void m6898p() {
        if (C0733d.m5574G()) {
            C0733d.m5579O(1, 25);
            C0733d.f4428l.m5713b1();
        }
    }

    /* JADX INFO: renamed from: q */
    public void m6899q() {
        int i = this.f5896h;
        if (i == 5) {
            ViewOnClickListenerC1017z.f6436B0 = false;
            this.f5890b.mo5933G();
            C0733d.m5579O(1, 21);
        } else if (i != 4) {
            this.f5890b.mo5939a();
        } else {
            this.f5890b.mo5960r(0, true);
            this.f5896h = 0;
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.C0995e.d
    /* JADX INFO: renamed from: s */
    public void mo5835s(int i, int i2, Bundle bundle) {
    }

    @Override // cn.manstep.phonemirrorBox.C0921n.c
    /* JADX INFO: renamed from: w */
    public void mo5871w(int i, boolean z) {
        C0982s.m7374d("MainPresenter", "onKeyCodeChanged: keyCode = " + i + ", isLongPress = " + z);
        C0735f c0735f = C0733d.f4428l;
        if (c0735f == null || c0735f.m5683J() == null || !C0733d.f4428l.m5683J().mo6923e()) {
            return;
        }
        if (C0795b0.m6071i().m6093o("BgKeyValid", true) || C0995e.m7430C()) {
            int iM6068f = C0795b0.m6068f(this.f5891c.get(), i);
            if (z) {
                iM6068f = C0795b0.m6069g(this.f5891c.get(), i);
            }
            if (iM6068f > 0) {
                C0730a.m5423G();
                C0995e.m7436I(iM6068f);
                C0982s.m7374d("MainPresenter", "onKeyCodeChanged: cmd = " + iM6068f);
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.p089v0.C0995e.d
    /* JADX INFO: renamed from: x */
    public void mo5836x(int i, int i2, String str) {
    }
}
