package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.OnNmeaMessageListener;
import android.os.Build;
import android.os.Bundle;
import androidx.core.content.C0242a;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.r */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0981r {

    /* JADX INFO: renamed from: e */
    private static volatile C0981r f6137e;

    /* JADX INFO: renamed from: a */
    private WeakReference<Context> f6138a;

    /* JADX INFO: renamed from: b */
    private LocationManager f6139b;

    /* JADX INFO: renamed from: c */
    private OnNmeaMessageListener f6140c;

    /* JADX INFO: renamed from: d */
    private final LocationListener f6141d = new a();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.r$a */
    class a implements LocationListener {
        a() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            C0981r.this.m7369c();
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    private C0981r() {
    }

    /* JADX INFO: renamed from: a */
    public static C0981r m7366a() {
        if (f6137e == null) {
            synchronized (C0981r.class) {
                if (f6137e == null) {
                    f6137e = new C0981r();
                }
            }
        }
        return f6137e;
    }

    /* JADX INFO: renamed from: d */
    private void m7367d() {
        LocationManager locationManager;
        OnNmeaMessageListener onNmeaMessageListener;
        WeakReference<Context> weakReference = this.f6138a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        if (C0242a.m1696a(this.f6138a.get(), "android.permission.ACCESS_FINE_LOCATION") != 0 || C0242a.m1696a(this.f6138a.get(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            C0982s.m7376f("LocationUtil", "startInner: Location permission not granted!");
            return;
        }
        if (this.f6139b.getProviders(true).contains("gps")) {
            this.f6139b.requestLocationUpdates("gps", 5000L, 3.0f, this.f6141d);
        }
        if (Build.VERSION.SDK_INT < 24 || (locationManager = this.f6139b) == null || !locationManager.isProviderEnabled("gps") || (onNmeaMessageListener = this.f6140c) == null) {
            return;
        }
        this.f6139b.removeNmeaListener(onNmeaMessageListener);
        C0982s.m7374d("LocationUtil", "startInner: Add NMEA Listener.");
        this.f6139b.addNmeaListener(this.f6140c);
    }

    /* JADX INFO: renamed from: b */
    public C0981r m7368b(Context context) {
        return this;
    }

    /* JADX INFO: renamed from: c */
    public void m7369c() {
        m7367d();
    }

    /* JADX INFO: renamed from: e */
    public void m7370e() {
        LocationManager locationManager = this.f6139b;
        if (locationManager != null) {
            locationManager.removeUpdates(this.f6141d);
            if (this.f6140c == null || Build.VERSION.SDK_INT < 24 || C0242a.m1696a(this.f6138a.get(), "android.permission.ACCESS_FINE_LOCATION") != 0) {
                return;
            }
            C0982s.m7386p("LocationUtil", "stop: Remove NMEA Listener.");
            this.f6139b.removeNmeaListener(this.f6140c);
        }
    }
}
