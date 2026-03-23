package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.OnNmeaMessageListener;
import android.os.Build;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class r {
    private static volatile r e;
    private WeakReference<Context> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LocationManager f1922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OnNmeaMessageListener f1923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LocationListener f1924d = new a();

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
            r.this.c();
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    private r() {
    }

    public static r a() {
        if (e == null) {
            synchronized (r.class) {
                if (e == null) {
                    e = new r();
                }
            }
        }
        return e;
    }

    private void d() {
        LocationManager locationManager;
        OnNmeaMessageListener onNmeaMessageListener;
        WeakReference<Context> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        if (androidx.core.content.a.a(this.a.get(), "android.permission.ACCESS_FINE_LOCATION") != 0 || androidx.core.content.a.a(this.a.get(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            s.f("LocationUtil", "startInner: Location permission not granted!");
            return;
        }
        if (this.f1922b.getProviders(true).contains("gps")) {
            this.f1922b.requestLocationUpdates("gps", 5000L, 3.0f, this.f1924d);
        }
        if (Build.VERSION.SDK_INT < 24 || (locationManager = this.f1922b) == null || !locationManager.isProviderEnabled("gps") || (onNmeaMessageListener = this.f1923c) == null) {
            return;
        }
        this.f1922b.removeNmeaListener(onNmeaMessageListener);
        s.d("LocationUtil", "startInner: Add NMEA Listener.");
        this.f1922b.addNmeaListener(this.f1923c);
    }

    public r b(Context context) {
        return this;
    }

    public void c() {
        d();
    }

    public void e() {
        LocationManager locationManager = this.f1922b;
        if (locationManager != null) {
            locationManager.removeUpdates(this.f1924d);
            if (this.f1923c == null || Build.VERSION.SDK_INT < 24 || androidx.core.content.a.a(this.a.get(), "android.permission.ACCESS_FINE_LOCATION") != 0) {
                return;
            }
            s.p("LocationUtil", "stop: Remove NMEA Listener.");
            this.f1922b.removeNmeaListener(this.f1923c);
        }
    }
}
