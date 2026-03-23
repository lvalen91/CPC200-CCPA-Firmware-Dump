package cn.manstep.autokit.service;

/**
 * ForegroundService.java - Simple foreground service for process persistence.
 *
 * <p>Minimal foreground service that displays a persistent notification to
 * keep the application process alive. On API 26+, creates a NotificationChannel
 * ("ForegroundService") and shows a notification with the app icon and
 * "AutoKit" content text. On older APIs, uses an empty Notification.</p>
 *
 * <p>Also monitors memory pressure via onTrimMemory() and onLowMemory() callbacks.</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.ForegroundService</p>
 */
public class ForegroundService extends android.app.Service {
    // onBind -> returns null (not bindable)
    // onStartCommand -> creates foreground notification
    // onTrimMemory -> logs memory level
    // onLowMemory -> logs event
}
