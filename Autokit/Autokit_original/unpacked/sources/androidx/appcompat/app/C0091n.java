package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import androidx.core.content.C0243b;
import java.util.Calendar;

/* JADX INFO: renamed from: androidx.appcompat.app.n */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0091n {

    /* JADX INFO: renamed from: d */
    private static C0091n f474d;

    /* JADX INFO: renamed from: a */
    private final Context f475a;

    /* JADX INFO: renamed from: b */
    private final LocationManager f476b;

    /* JADX INFO: renamed from: c */
    private final a f477c = new a();

    /* JADX INFO: renamed from: androidx.appcompat.app.n$a */
    private static class a {

        /* JADX INFO: renamed from: a */
        boolean f478a;

        /* JADX INFO: renamed from: b */
        long f479b;

        /* JADX INFO: renamed from: c */
        long f480c;

        /* JADX INFO: renamed from: d */
        long f481d;

        /* JADX INFO: renamed from: e */
        long f482e;

        /* JADX INFO: renamed from: f */
        long f483f;

        a() {
        }
    }

    C0091n(Context context, LocationManager locationManager) {
        this.f475a = context;
        this.f476b = locationManager;
    }

    /* JADX INFO: renamed from: a */
    static C0091n m596a(Context context) {
        if (f474d == null) {
            Context applicationContext = context.getApplicationContext();
            f474d = new C0091n(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f474d;
    }

    @SuppressLint({"MissingPermission"})
    /* JADX INFO: renamed from: b */
    private Location m597b() {
        Location locationM598c = C0243b.m1705b(this.f475a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? m598c("network") : null;
        Location locationM598c2 = C0243b.m1705b(this.f475a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? m598c("gps") : null;
        return (locationM598c2 == null || locationM598c == null) ? locationM598c2 != null ? locationM598c2 : locationM598c : locationM598c2.getTime() > locationM598c.getTime() ? locationM598c2 : locationM598c;
    }

    /* JADX INFO: renamed from: c */
    private Location m598c(String str) {
        try {
            if (this.f476b.isProviderEnabled(str)) {
                return this.f476b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: e */
    private boolean m599e() {
        return this.f477c.f483f > System.currentTimeMillis();
    }

    /* JADX INFO: renamed from: f */
    private void m600f(Location location) {
        long j;
        a aVar = this.f477c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        C0090m c0090mM594b = C0090m.m594b();
        c0090mM594b.m595a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j2 = c0090mM594b.f471a;
        c0090mM594b.m595a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = c0090mM594b.f473c == 1;
        long j3 = c0090mM594b.f472b;
        long j4 = c0090mM594b.f471a;
        boolean z2 = z;
        c0090mM594b.m595a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j5 = c0090mM594b.f472b;
        if (j3 == -1 || j4 == -1) {
            j = 43200000 + jCurrentTimeMillis;
        } else {
            j = (jCurrentTimeMillis > j4 ? 0 + j5 : jCurrentTimeMillis > j3 ? 0 + j4 : 0 + j3) + 60000;
        }
        aVar.f478a = z2;
        aVar.f479b = j2;
        aVar.f480c = j3;
        aVar.f481d = j4;
        aVar.f482e = j5;
        aVar.f483f = j;
    }

    /* JADX INFO: renamed from: d */
    boolean m601d() {
        a aVar = this.f477c;
        if (m599e()) {
            return aVar.f478a;
        }
        Location locationM597b = m597b();
        if (locationM597b != null) {
            m600f(locationM597b);
            return aVar.f478a;
        }
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
