package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import java.util.Calendar;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static n f166d;
    private final Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocationManager f167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f168c = new a();

    private static class a {
        boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f169b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f170c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f171d;
        long e;
        long f;

        a() {
        }
    }

    n(Context context, LocationManager locationManager) {
        this.a = context;
        this.f167b = locationManager;
    }

    static n a(Context context) {
        if (f166d == null) {
            Context applicationContext = context.getApplicationContext();
            f166d = new n(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f166d;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location locationC = androidx.core.content.b.b(this.a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        Location locationC2 = androidx.core.content.b.b(this.a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        return (locationC2 == null || locationC == null) ? locationC2 != null ? locationC2 : locationC : locationC2.getTime() > locationC.getTime() ? locationC2 : locationC;
    }

    private Location c(String str) {
        try {
            if (this.f167b.isProviderEnabled(str)) {
                return this.f167b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean e() {
        return this.f168c.f > System.currentTimeMillis();
    }

    private void f(Location location) {
        long j;
        a aVar = this.f168c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        m mVarB = m.b();
        mVarB.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j2 = mVarB.a;
        mVarB.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z = mVarB.f165c == 1;
        long j3 = mVarB.f164b;
        long j4 = mVarB.a;
        boolean z2 = z;
        mVarB.a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j5 = mVarB.f164b;
        if (j3 == -1 || j4 == -1) {
            j = 43200000 + jCurrentTimeMillis;
        } else {
            j = (jCurrentTimeMillis > j4 ? 0 + j5 : jCurrentTimeMillis > j3 ? 0 + j4 : 0 + j3) + 60000;
        }
        aVar.a = z2;
        aVar.f169b = j2;
        aVar.f170c = j3;
        aVar.f171d = j4;
        aVar.e = j5;
        aVar.f = j;
    }

    boolean d() {
        a aVar = this.f168c;
        if (e()) {
            return aVar.a;
        }
        Location locationB = b();
        if (locationB != null) {
            f(locationB);
            return aVar.a;
        }
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
