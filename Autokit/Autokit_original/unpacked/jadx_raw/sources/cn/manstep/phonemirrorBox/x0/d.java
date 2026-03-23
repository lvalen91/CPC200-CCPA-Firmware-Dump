package cn.manstep.phonemirrorBox.x0;

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
import androidx.lifecycle.o;
import cn.manstep.phonemirrorBox.service.BackgroundService;
import cn.manstep.phonemirrorBox.util.n;
import cn.manstep.phonemirrorBox.util.s;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<InterfaceC0103d> f1965d;
    private final o<Integer> e;
    private final Intent f;
    private BackgroundService.c g;
    private cn.manstep.phonemirrorBox.r0.b h;
    private cn.manstep.phonemirrorBox.r0.c i;
    private cn.manstep.phonemirrorBox.r0.a j;
    private cn.manstep.phonemirrorBox.r0.e k;
    private final ServiceConnection l;

    class a implements ServiceConnection {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.d$a$a, reason: collision with other inner class name */
        class C0102a implements BackgroundService.b {
            C0102a() {
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public void b(int i) {
                cn.manstep.phonemirrorBox.BoxInterface.f fVar;
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
                    return;
                }
                fVar.s0("drivePosition", Integer.valueOf(i));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public int d() {
                return ((Integer) d.this.e.e()).intValue();
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public boolean f() {
                if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                    return cn.manstep.phonemirrorBox.v0.a.t().C();
                }
                return false;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public void g(int i) {
                cn.manstep.phonemirrorBox.BoxInterface.f fVar;
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
                    return;
                }
                fVar.N0(i);
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public void h(cn.manstep.phonemirrorBox.r0.c cVar) {
                d.this.i = cVar;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public void j(cn.manstep.phonemirrorBox.r0.b bVar) {
                d.this.h = bVar;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public void k(String str) {
                cn.manstep.phonemirrorBox.BoxInterface.f fVar;
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
                    return;
                }
                fVar.l0(str.getBytes());
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public void l(cn.manstep.phonemirrorBox.r0.a aVar) {
                d.this.j = aVar;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public String m() {
                return cn.manstep.phonemirrorBox.BoxInterface.c.e().f();
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public boolean p() {
                if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                    return cn.manstep.phonemirrorBox.v0.a.t().w();
                }
                return false;
            }

            @Override // cn.manstep.phonemirrorBox.service.BackgroundService.b
            public void q(cn.manstep.phonemirrorBox.r0.e eVar) {
                d.this.k = eVar;
            }
        }

        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            d.this.g = (BackgroundService.c) iBinder;
            d.this.g.c0(new C0102a());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            s.f("BoxViewModel", "onServiceDisconnected: mApiServiceConnection->" + componentName);
            d.this.g = null;
        }
    }

    class b implements cn.manstep.phonemirrorBox.v0.b {
        b() {
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void a() {
            cn.manstep.phonemirrorBox.u0.c.h().k();
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void b() {
            cn.manstep.phonemirrorBox.u0.c.h().s();
            if (d.this.k != null) {
                try {
                    d.this.k.w0(false);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void c() {
            cn.manstep.phonemirrorBox.u0.c.h().m();
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void d(String str) {
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void e() {
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void f() {
            cn.manstep.phonemirrorBox.u0.c.h().r();
            if (d.this.k != null) {
                try {
                    d.this.k.w0(true);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void g() {
            cn.manstep.phonemirrorBox.u0.c.h().l();
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void h() {
            cn.manstep.phonemirrorBox.u0.c.h().a();
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void i() {
            s.d("BoxViewModel", "onMusicStart: ");
            cn.manstep.phonemirrorBox.u0.c.h().p();
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void j() {
            s.d("BoxViewModel", "onMusicStop: ");
            cn.manstep.phonemirrorBox.u0.c.h().q();
        }

        @Override // cn.manstep.phonemirrorBox.v0.b
        public void k() {
            cn.manstep.phonemirrorBox.u0.c.h().b();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.h == null && d.this.g != null) {
                d dVar = d.this;
                dVar.h = dVar.g.O();
            }
            if (d.this.i == null && d.this.g != null) {
                d dVar2 = d.this;
                dVar2.i = dVar2.g.u();
            }
            if (d.this.j == null && d.this.g != null) {
                d dVar3 = d.this;
                dVar3.j = dVar3.g.G();
            }
            if (d.this.k != null || d.this.g == null) {
                return;
            }
            d dVar4 = d.this;
            dVar4.k = dVar4.g.E0();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.d$d, reason: collision with other inner class name */
    public interface InterfaceC0103d {
        void k();

        void m(int i);
    }

    public d(Application application) {
        super(application);
        this.l = new a();
        this.f1965d = new LinkedList();
        this.e = new o<>(0);
        this.f = new Intent(StubApp.getOrigApplicationContext(application.getApplicationContext()), (Class<?>) BackgroundService.class);
        s.d("BoxViewModel", "BoxViewModel: bindService=" + StubApp.getOrigApplicationContext(application.getApplicationContext()).bindService(this.f, this.l, 1));
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            this.e.k(2);
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            this.e.k(4);
        }
        cn.manstep.phonemirrorBox.v0.a.t().r(new b());
        new Handler().postDelayed(new c(), 1000L);
    }

    private int w(JSONObject jSONObject, String str, int i) {
        return (jSONObject == null || !jSONObject.has(str)) ? i : jSONObject.getInt(str);
    }

    private String x(JSONObject jSONObject, String str, String str2) {
        return (jSONObject == null || !jSONObject.has(str)) ? str2 : jSONObject.getString(str);
    }

    public void A(byte[] bArr) {
        File file = new File(n.q(i()), SystemClock.elapsedRealtime() + ".png");
        n.y(bArr, file.getAbsolutePath());
        s.d("BoxViewModel", "setDashboardDataAlbumCover: " + file.getAbsolutePath());
        Uri uriE = FileProvider.e(i(), i().getPackageName() + ".myfileprovider", file);
        s.d("BoxViewModel", "setDashboardDataAlbumCover: " + uriE);
        cn.manstep.phonemirrorBox.r0.c cVar = this.i;
        if (cVar != null) {
            try {
                cVar.F0(bArr);
            } catch (RemoteException unused) {
            }
            try {
                this.i.y0(uriE);
            } catch (RemoteException unused2) {
            }
        }
        cn.manstep.phonemirrorBox.u0.c.h().F(bArr);
    }

    public void B(String str) {
        String string;
        int i;
        s.d("BoxViewModel", "setDashboardDataCall: " + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean zHas = jSONObject.has("CallName");
            String strReplace = BuildConfig.FLAVOR;
            if (zHas) {
                string = jSONObject.getString("CallName");
                if (this.j != null) {
                    this.j.n(string);
                }
            } else {
                string = BuildConfig.FLAVOR;
            }
            if (jSONObject.has("CallNumber")) {
                strReplace = jSONObject.getString("CallNumber").replace(" ", BuildConfig.FLAVOR);
                if (this.j != null) {
                    this.j.J0(strReplace);
                }
            }
            int i2 = 0;
            if (jSONObject.has("CallDirection")) {
                i = jSONObject.getInt("CallDirection");
                if (this.j != null) {
                    this.j.v(i);
                }
            } else {
                i = 0;
            }
            if (jSONObject.has("CallStatus")) {
                i2 = jSONObject.getInt("CallStatus");
                if (this.j != null) {
                    this.j.D(i2);
                }
            }
            cn.manstep.phonemirrorBox.u0.c.h().B(string, strReplace, i, i2);
        } catch (Exception unused) {
        }
    }

    public void C(String str) {
        s.d("BoxViewModel", "setDashboardDataMedia: " + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strX = x(jSONObject, "MediaSongName", null);
            String strX2 = x(jSONObject, "MediaAlbumName", null);
            String strX3 = x(jSONObject, "MediaArtistName", null);
            String strX4 = x(jSONObject, "MediaLyrics", null);
            String strX5 = x(jSONObject, "MediaAPPName", null);
            String strX6 = x(jSONObject, "MediaAppPkgName", null);
            int iW = w(jSONObject, "MediaSongDuration", -1);
            int iW2 = w(jSONObject, "MediaSongPlayTime", -1);
            int iW3 = w(jSONObject, "MediaPlayStatus", -1);
            if (strX != null && this.i != null) {
                this.i.n(strX);
            }
            if (strX2 != null && this.i != null) {
                this.i.D0(strX2);
            }
            if (strX3 != null && this.i != null) {
                this.i.N0(strX3);
            }
            if (strX4 != null && this.i != null) {
                this.i.A(strX4);
            }
            if (strX5 != null && this.i != null) {
                this.i.h0(strX5);
            }
            if (strX6 != null && this.i != null) {
                this.i.z0(strX6);
            }
            if (iW != -1 && this.i != null) {
                this.i.b0(iW);
            }
            if (iW2 != -1 && this.i != null) {
                this.i.z(iW2);
            }
            if (iW3 != -1 && this.i != null) {
                this.i.y(iW3);
            }
            cn.manstep.phonemirrorBox.u0.c.h().G(strX, strX3, strX2, strX4, iW, iW2, iW3, strX5, strX6);
        } catch (Exception unused) {
        }
    }

    public void D(String str) {
        s.i("BoxViewModel", "setDashboardDataNav: " + str);
        if (str.length() < 4) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iW = w(jSONObject, "NaviManeuverType", -1);
            int iW2 = w(jSONObject, "NaviTurnSide", -1);
            int iW3 = w(jSONObject, "NaviTurnAngle", -1);
            int iW4 = w(jSONObject, "NaviStatus", -1);
            String strX = x(jSONObject, "NaviRoadName", null);
            int iW5 = w(jSONObject, "NaviRemainDistance", -1);
            int iW6 = w(jSONObject, "NaviNextTurnTimeSeconds", -1);
            int iW7 = w(jSONObject, "NaviOrderType", -1);
            int iW8 = w(jSONObject, "NaviTimeToDestination", -1);
            String strX2 = x(jSONObject, "NaviDestinationName", null);
            int iW9 = w(jSONObject, "NaviDistanceToDestination", -1);
            if (iW4 != -1) {
                cn.manstep.phonemirrorBox.u0.c.h().E(iW4);
            }
            if (strX2 != null || iW9 != -1 || iW8 != -1) {
                cn.manstep.phonemirrorBox.u0.c.h().C(strX2, iW9, iW8);
            }
            if (strX == null && iW5 == -1 && iW6 == -1 && iW7 == -1 && iW3 == -1 && iW2 == -1 && iW == -1) {
                return;
            }
            cn.manstep.phonemirrorBox.u0.c.h().D(strX, iW5, iW6, iW7, iW3, iW2, iW);
        } catch (Exception unused) {
        }
    }

    public void E(int i) {
        if (i == this.e.e().intValue()) {
            return;
        }
        if (this.g == null) {
            s.d("BoxViewModel", "setonConnectStatus: bindService=" + StubApp.getOrigApplicationContext(i().getApplicationContext()).bindService(this.f, this.l, 1));
        }
        Iterator<InterfaceC0103d> it = this.f1965d.iterator();
        while (it.hasNext()) {
            it.next().m(i);
        }
        s.d("BoxViewModel", "setonConnectStatus: " + i);
        this.e.k(Integer.valueOf(i));
        cn.manstep.phonemirrorBox.r0.b bVar = this.h;
        if (bVar != null) {
            try {
                bVar.a0(i);
            } catch (RemoteException unused) {
            }
        }
    }

    public void u(InterfaceC0103d interfaceC0103d) {
        this.f1965d.add(interfaceC0103d);
    }

    public o<Integer> v() {
        return this.e;
    }

    public void y() {
        Iterator<InterfaceC0103d> it = this.f1965d.iterator();
        while (it.hasNext()) {
            it.next().k();
        }
    }

    public void z(InterfaceC0103d interfaceC0103d) {
        this.f1965d.remove(interfaceC0103d);
    }
}
