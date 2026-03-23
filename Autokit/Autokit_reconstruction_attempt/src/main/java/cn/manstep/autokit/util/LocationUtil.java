/**
 * LocationUtil.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.r
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Singleton GPS/NMEA location listener utility. Requests location updates
 * from the GPS provider and listens for NMEA messages. Used for providing
 * location data to CarPlay/Android Auto navigation.
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.OnNmeaMessageListener;
import android.os.Build;
import android.os.Bundle;
import java.lang.ref.WeakReference;

public class LocationUtil /* was: 'util.r' */ {

    /** Singleton instance. /* was: 'e' */ */
    private static volatile LocationUtil instance /* was: 'e' */;

    /** Weak reference to context. /* was: 'a' */ */
    private WeakReference<Context> contextRef /* was: 'a' */;

    /** System location manager. /* was: 'f1922b' */ */
    private LocationManager locationManager /* was: 'f1922b' */;

    /** NMEA message listener (API 24+). /* was: 'f1923c' */ */
    private OnNmeaMessageListener nmeaListener /* was: 'f1923c' */;

    /** Location change listener. /* was: 'f1924d' */ */
    private final LocationListener locationListener /* was: 'f1924d' */ = new GpsLocationListener();

    /**
     * GPS location listener (mostly no-op, triggers restart on provider enable).
     * /* was: inner class 'a' */
     */
    class GpsLocationListener /* was: 'a' */ implements LocationListener {
        @Override
        public void onLocationChanged(Location location) { }

        @Override
        public void onProviderDisabled(String provider) { }

        @Override
        public void onProviderEnabled(String provider) {
            LocationUtil.this.start();
        }

        @Override
        public void onStatusChanged(String provider, int status, Bundle extras) { }
    }

    private LocationUtil() {
    }

    /**
     * Get the singleton instance.
     * /* was: 'a' (static) */
     */
    public static LocationUtil getInstance(/* was: 'a' */) {
        if (instance == null) {
            synchronized (LocationUtil.class) {
                if (instance == null) {
                    instance = new LocationUtil();
                }
            }
        }
        return instance;
    }

    /**
     * Start location updates (internal).
     * /* was: 'd' (private) */
     */
    private void startInternal(/* was: 'd' */) {
        WeakReference<Context> ref = this.contextRef;
        if (ref == null || ref.get() == null) { return; }
        if (androidx.core.content.a.a(this.contextRef.get(), "android.permission.ACCESS_FINE_LOCATION") != 0
                || androidx.core.content.a.a(this.contextRef.get(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            Logger.logWarning("LocationUtil", "startInner: Location permission not granted!");
            return;
        }
        if (this.locationManager.getProviders(true).contains("gps")) {
            this.locationManager.requestLocationUpdates("gps", 5000L, 3.0f, this.locationListener);
        }
        if (Build.VERSION.SDK_INT >= 24
                && this.locationManager != null
                && this.locationManager.isProviderEnabled("gps")
                && this.nmeaListener != null) {
            this.locationManager.removeNmeaListener(this.nmeaListener);
            Logger.logDebug("LocationUtil", "startInner: Add NMEA Listener.");
            this.locationManager.addNmeaListener(this.nmeaListener);
        }
    }

    /**
     * Initialize with context (builder-style, returns self).
     * /* was: 'b' */
     */
    public LocationUtil init(/* was: 'b' */ Context context) {
        return this;
    }

    /**
     * Start listening for location updates.
     * /* was: 'c' */
     */
    public void start(/* was: 'c' */) {
        startInternal();
    }

    /**
     * Stop listening for location updates.
     * /* was: 'e' (instance method) */
     */
    public void stop(/* was: 'e' */) {
        LocationManager lm = this.locationManager;
        if (lm != null) {
            lm.removeUpdates(this.locationListener);
            if (this.nmeaListener == null || Build.VERSION.SDK_INT < 24
                    || androidx.core.content.a.a(this.contextRef.get(),
                    "android.permission.ACCESS_FINE_LOCATION") != 0) {
                return;
            }
            Logger.logWarnTagged("LocationUtil", "stop: Remove NMEA Listener.");
            this.locationManager.removeNmeaListener(this.nmeaListener);
        }
    }
}
