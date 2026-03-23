package cn.manstep.autokit;

/**
 * MyApplication.java - Application class for AutoKit.
 *
 * <p>Initializes core subsystems on application startup: preferences, display metrics,
 * logging, work modes, locale, activity lifecycle tracking, and background services.</p>
 *
 * <h3>Initialization order (onCreate):</h3>
 * <ol>
 *   <li>Register ActivityLifecycleCallbacks for foreground detection</li>
 *   <li>Initialize SharedPreferences (b0.i().p(this))</li>
 *   <li>Apply custom density from preferences (if set)</li>
 *   <li>Apply night mode preference (DayNight theme)</li>
 *   <li>Set decode method (p.g = hardware/software)</li>
 *   <li>Initialize logging (e())</li>
 *   <li>Initialize display size metrics (f())</li>
 *   <li>Check UI version for preference migration</li>
 *   <li>Apply mic type, texture view, language preferences</li>
 *   <li>Initialize ActivityManager singleton</li>
 *   <li>Initialize platform integration</li>
 *   <li>Set work modes and start services (delayed 1.5s)</li>
 * </ol>
 *
 * <h3>Key method mappings:</h3>
 * <pre>
 *   b()        -> getInstance() (static)
 *   c()        -> getWorkModes() - returns int[]{iPhoneMode, AndroidMode}
 *   d()        -> initPlatformConfig() - detects ATC/AC8317 platform
 *   e()        -> initLog() - configures logging, lists native libraries
 *   f()        -> initSize() - reads display metrics into GlobalConfig
 *   g()        -> isAppInForeground()
 *   h()        -> isXposedHookByStack() - Xposed detection
 *   i(boolean) -> setBackgroundConnectionEnabled() - enables/disables Main1Activity
 *   j()        -> setWorkMode() - configures CarPlay/Android modes on box
 *   k()        -> startServicesDelayed() - 1.5s delayed service start
 * </pre>
 *
 * <h3>Build version:</h3>
 * <p>Build string found in logging: "2025.03.19.1126"</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.MyApplication</p>
 */
public class MyApplication extends android.app.Application {
    private static MyApplication instance; // was f1542d
    public long startTime = 0;             // was f1543b
    public android.util.DisplayMetrics displayMetrics; // was f1544c

    public static MyApplication getInstance() { return instance; } // was b()
}
