package cn.manstep.phonemirrorBox.p091x0;

import android.app.Application;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.core.content.FileProvider;
import androidx.lifecycle.C0384a;
import androidx.lifecycle.C0401o;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0939a;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0940b;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0943e;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b;
import cn.manstep.phonemirrorBox.service.BackgroundService;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1006d extends C0384a {

    /* JADX INFO: renamed from: d */
    private final List<d> f6273d;

    /* JADX INFO: renamed from: e */
    private final C0401o<Integer> f6274e;

    /* JADX INFO: renamed from: f */
    private final Intent f6275f;

    /* JADX INFO: renamed from: g */
    private BackgroundService.InterfaceC0949c f6276g;

    /* JADX INFO: renamed from: h */
    private InterfaceC0940b f6277h;

    /* JADX INFO: renamed from: i */
    private InterfaceC0941c f6278i;

    /* JADX INFO: renamed from: j */
    private InterfaceC0939a f6279j;

    /* JADX INFO: renamed from: k */
    private InterfaceC0943e f6280k;

    /* JADX INFO: renamed from: l */
    private final ServiceConnection f6281l;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.d$a */
    class a implements ServiceConnection {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.d$a$a, reason: collision with other inner class name */
        class C1361a implements BackgroundService.InterfaceC0948b {
            C1361a() {
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: b */
            public void mo6976b(int i) {
                C0735f c0735f;
                if (!C0733d.m5591i() || (c0735f = C0733d.f4428l) == null) {
                    return;
                }
                c0735f.m5745s0("drivePosition", Integer.valueOf(i));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: d */
            public int mo6977d() {
                return ((Integer) C1006d.this.f6274e.m2959e()).intValue();
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: f */
            public boolean mo6978f() {
                if (C0733d.m5574G()) {
                    return C0991a.m7412t().m7415C();
                }
                return false;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: g */
            public void mo6979g(int i) {
                C0735f c0735f;
                if (!C0733d.m5591i() || (c0735f = C0733d.f4428l) == null) {
                    return;
                }
                c0735f.m5690N0(i);
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: h */
            public void mo6980h(InterfaceC0941c interfaceC0941c) {
                C1006d.this.f6278i = interfaceC0941c;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: j */
            public void mo6981j(InterfaceC0940b interfaceC0940b) {
                C1006d.this.f6277h = interfaceC0940b;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: k */
            public void mo6982k(String str) {
                C0735f c0735f;
                if (!C0733d.m5591i() || (c0735f = C0733d.f4428l) == null) {
                    return;
                }
                c0735f.m5732l0(str.getBytes());
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: l */
            public void mo6983l(InterfaceC0939a interfaceC0939a) {
                C1006d.this.f6279j = interfaceC0939a;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: m */
            public String mo6984m() {
                return C0732c.m5542e().m5548f();
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: p */
            public boolean mo6985p() {
                if (C0733d.m5574G()) {
                    return C0991a.m7412t().m7423w();
                }
                return false;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0948b
            /* JADX INFO: renamed from: q */
            public void mo6986q(InterfaceC0943e interfaceC0943e) {
                C1006d.this.f6280k = interfaceC0943e;
            }
        }

        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1006d.this.f6276g = (BackgroundService.InterfaceC0949c) iBinder;
            C1006d.this.f6276g.mo6990c0(new C1361a());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C0982s.m7376f("BoxViewModel", "onServiceDisconnected: mApiServiceConnection->" + componentName);
            C1006d.this.f6276g = null;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.d$b */
    class b implements InterfaceC0992b {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: a */
        public void mo5982a() {
            C0956c.m7100h().m7117k();
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: b */
        public void mo5983b() {
            C0956c.m7100h().m7125s();
            if (C1006d.this.f6280k != null) {
                try {
                    C1006d.this.f6280k.mo6967w0(false);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: c */
        public void mo5984c() {
            C0956c.m7100h().m7119m();
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: d */
        public void mo5985d(String str) {
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: e */
        public void mo5986e() {
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: f */
        public void mo5987f() {
            C0956c.m7100h().m7124r();
            if (C1006d.this.f6280k != null) {
                try {
                    C1006d.this.f6280k.mo6967w0(true);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: g */
        public void mo5988g() {
            C0956c.m7100h().m7118l();
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: h */
        public void mo5989h() {
            C0956c.m7100h().m7109a();
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: i */
        public void mo5990i() {
            C0982s.m7374d("BoxViewModel", "onMusicStart: ");
            C0956c.m7100h().m7122p();
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: j */
        public void mo5991j() {
            C0982s.m7374d("BoxViewModel", "onMusicStop: ");
            C0956c.m7100h().m7123q();
        }

        @Override // cn.manstep.phonemirrorBox.p089v0.InterfaceC0992b
        /* JADX INFO: renamed from: k */
        public void mo5992k() {
            C0956c.m7100h().m7110b();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.d$c */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C1006d.this.f6277h == null && C1006d.this.f6276g != null) {
                C1006d c1006d = C1006d.this;
                c1006d.f6277h = c1006d.f6276g.mo6989O();
            }
            if (C1006d.this.f6278i == null && C1006d.this.f6276g != null) {
                C1006d c1006d2 = C1006d.this;
                c1006d2.f6278i = c1006d2.f6276g.mo6991u();
            }
            if (C1006d.this.f6279j == null && C1006d.this.f6276g != null) {
                C1006d c1006d3 = C1006d.this;
                c1006d3.f6279j = c1006d3.f6276g.mo6988G();
            }
            if (C1006d.this.f6280k != null || C1006d.this.f6276g == null) {
                return;
            }
            C1006d c1006d4 = C1006d.this;
            c1006d4.f6280k = c1006d4.f6276g.mo6987E0();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.d$d */
    public interface d {
        /* JADX INFO: renamed from: k */
        void mo5321k();

        /* JADX INFO: renamed from: m */
        void mo5322m(int i);
    }

    public C1006d(Application application) {
        super(application);
        this.f6281l = new a();
        this.f6273d = new LinkedList();
        this.f6274e = new C0401o<>(0);
        this.f6275f = new Intent(StubApp.getOrigApplicationContext(application.getApplicationContext()), (Class<?>) BackgroundService.class);
        C0982s.m7374d("BoxViewModel", "BoxViewModel: bindService=" + StubApp.getOrigApplicationContext(application.getApplicationContext()).bindService(this.f6275f, this.f6281l, 1));
        if (C0733d.m5591i()) {
            this.f6274e.mo2965k(2);
        }
        if (C0733d.m5574G()) {
            this.f6274e.mo2965k(4);
        }
        C0991a.m7412t().m7419r(new b());
        new Handler().postDelayed(new c(), 1000L);
    }

    /* JADX INFO: renamed from: w */
    private int m7569w(JSONObject jSONObject, String str, int i) {
        return (jSONObject == null || !jSONObject.has(str)) ? i : jSONObject.getInt(str);
    }

    /* JADX INFO: renamed from: x */
    private String m7570x(JSONObject jSONObject, String str, String str2) {
        return (jSONObject == null || !jSONObject.has(str)) ? str2 : jSONObject.getString(str);
    }

    /* JADX INFO: renamed from: A */
    public void m7571A(byte[] bArr) {
        File file = new File(C0977n.m7314q(m2977i()), SystemClock.elapsedRealtime() + ".png");
        C0977n.m7322y(bArr, file.getAbsolutePath());
        C0982s.m7374d("BoxViewModel", "setDashboardDataAlbumCover: " + file.getAbsolutePath());
        Uri uriM1690e = FileProvider.m1690e(m2977i(), m2977i().getPackageName() + ".myfileprovider", file);
        C0982s.m7374d("BoxViewModel", "setDashboardDataAlbumCover: " + uriM1690e);
        InterfaceC0941c interfaceC0941c = this.f6278i;
        if (interfaceC0941c != null) {
            try {
                interfaceC0941c.mo6943F0(bArr);
            } catch (RemoteException unused) {
            }
            try {
                this.f6278i.mo6949y0(uriM1690e);
            } catch (RemoteException unused2) {
            }
        }
        C0956c.m7100h().m7106F(bArr);
    }

    /* JADX INFO: renamed from: B */
    public void m7572B(String str) {
        String string;
        int i;
        C0982s.m7374d("BoxViewModel", "setDashboardDataCall: " + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean zHas = jSONObject.has("CallName");
            String strReplace = BuildConfig.FLAVOR;
            if (zHas) {
                string = jSONObject.getString("CallName");
                if (this.f6279j != null) {
                    this.f6279j.mo6934n(string);
                }
            } else {
                string = BuildConfig.FLAVOR;
            }
            if (jSONObject.has("CallNumber")) {
                strReplace = jSONObject.getString("CallNumber").replace(" ", BuildConfig.FLAVOR);
                if (this.f6279j != null) {
                    this.f6279j.mo6933J0(strReplace);
                }
            }
            int i2 = 0;
            if (jSONObject.has("CallDirection")) {
                i = jSONObject.getInt("CallDirection");
                if (this.f6279j != null) {
                    this.f6279j.mo6935v(i);
                }
            } else {
                i = 0;
            }
            if (jSONObject.has("CallStatus")) {
                i2 = jSONObject.getInt("CallStatus");
                if (this.f6279j != null) {
                    this.f6279j.mo6932D(i2);
                }
            }
            C0956c.m7100h().m7102B(string, strReplace, i, i2);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: C */
    public void m7573C(String str) {
        C0982s.m7374d("BoxViewModel", "setDashboardDataMedia: " + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strM7570x = m7570x(jSONObject, "MediaSongName", null);
            String strM7570x2 = m7570x(jSONObject, "MediaAlbumName", null);
            String strM7570x3 = m7570x(jSONObject, "MediaArtistName", null);
            String strM7570x4 = m7570x(jSONObject, "MediaLyrics", null);
            String strM7570x5 = m7570x(jSONObject, "MediaAPPName", null);
            String strM7570x6 = m7570x(jSONObject, "MediaAppPkgName", null);
            int iM7569w = m7569w(jSONObject, "MediaSongDuration", -1);
            int iM7569w2 = m7569w(jSONObject, "MediaSongPlayTime", -1);
            int iM7569w3 = m7569w(jSONObject, "MediaPlayStatus", -1);
            if (strM7570x != null && this.f6278i != null) {
                this.f6278i.mo6947n(strM7570x);
            }
            if (strM7570x2 != null && this.f6278i != null) {
                this.f6278i.mo6942D0(strM7570x2);
            }
            if (strM7570x3 != null && this.f6278i != null) {
                this.f6278i.mo6944N0(strM7570x3);
            }
            if (strM7570x4 != null && this.f6278i != null) {
                this.f6278i.mo6941A(strM7570x4);
            }
            if (strM7570x5 != null && this.f6278i != null) {
                this.f6278i.mo6946h0(strM7570x5);
            }
            if (strM7570x6 != null && this.f6278i != null) {
                this.f6278i.mo6951z0(strM7570x6);
            }
            if (iM7569w != -1 && this.f6278i != null) {
                this.f6278i.mo6945b0(iM7569w);
            }
            if (iM7569w2 != -1 && this.f6278i != null) {
                this.f6278i.mo6950z(iM7569w2);
            }
            if (iM7569w3 != -1 && this.f6278i != null) {
                this.f6278i.mo6948y(iM7569w3);
            }
            C0956c.m7100h().m7107G(strM7570x, strM7570x3, strM7570x2, strM7570x4, iM7569w, iM7569w2, iM7569w3, strM7570x5, strM7570x6);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: D */
    public void m7574D(String str) {
        C0982s.m7379i("BoxViewModel", "setDashboardDataNav: " + str);
        if (str.length() < 4) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iM7569w = m7569w(jSONObject, "NaviManeuverType", -1);
            int iM7569w2 = m7569w(jSONObject, "NaviTurnSide", -1);
            int iM7569w3 = m7569w(jSONObject, "NaviTurnAngle", -1);
            int iM7569w4 = m7569w(jSONObject, "NaviStatus", -1);
            String strM7570x = m7570x(jSONObject, "NaviRoadName", null);
            int iM7569w5 = m7569w(jSONObject, "NaviRemainDistance", -1);
            int iM7569w6 = m7569w(jSONObject, "NaviNextTurnTimeSeconds", -1);
            int iM7569w7 = m7569w(jSONObject, "NaviOrderType", -1);
            int iM7569w8 = m7569w(jSONObject, "NaviTimeToDestination", -1);
            String strM7570x2 = m7570x(jSONObject, "NaviDestinationName", null);
            int iM7569w9 = m7569w(jSONObject, "NaviDistanceToDestination", -1);
            if (iM7569w4 != -1) {
                C0956c.m7100h().m7105E(iM7569w4);
            }
            if (strM7570x2 != null || iM7569w9 != -1 || iM7569w8 != -1) {
                C0956c.m7100h().m7103C(strM7570x2, iM7569w9, iM7569w8);
            }
            if (strM7570x == null && iM7569w5 == -1 && iM7569w6 == -1 && iM7569w7 == -1 && iM7569w3 == -1 && iM7569w2 == -1 && iM7569w == -1) {
                return;
            }
            C0956c.m7100h().m7104D(strM7570x, iM7569w5, iM7569w6, iM7569w7, iM7569w3, iM7569w2, iM7569w);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: E */
    public void m7575E(int i) {
        if (i == this.f6274e.m2959e().intValue()) {
            return;
        }
        if (this.f6276g == null) {
            C0982s.m7374d("BoxViewModel", "setonConnectStatus: bindService=" + StubApp.getOrigApplicationContext(m2977i().getApplicationContext()).bindService(this.f6275f, this.f6281l, 1));
        }
        Iterator<d> it = this.f6273d.iterator();
        while (it.hasNext()) {
            it.next().mo5322m(i);
        }
        C0982s.m7374d("BoxViewModel", "setonConnectStatus: " + i);
        this.f6274e.mo2965k(Integer.valueOf(i));
        InterfaceC0940b interfaceC0940b = this.f6277h;
        if (interfaceC0940b != null) {
            try {
                interfaceC0940b.mo6938a0(i);
            } catch (RemoteException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: u */
    public void m7576u(d dVar) {
        this.f6273d.add(dVar);
    }

    /* JADX INFO: renamed from: v */
    public C0401o<Integer> m7577v() {
        return this.f6274e;
    }

    /* JADX INFO: renamed from: y */
    public void m7578y() {
        Iterator<d> it = this.f6273d.iterator();
        while (it.hasNext()) {
            it.next().mo5321k();
        }
    }

    /* JADX INFO: renamed from: z */
    public void m7579z(d dVar) {
        this.f6273d.remove(dVar);
    }
}
