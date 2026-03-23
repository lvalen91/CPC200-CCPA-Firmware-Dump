/**
 * SystemPropertyUtil.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.y
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Utility for setting Android system properties via reflection.
 * Invokes android.os.SystemProperties.set() which requires system-level
 * permissions. Used for configuring low-level device behavior.
 */
package cn.manstep.autokit.util;

public class SystemPropertyUtil /* was: 'util.y' */ {

    /**
     * Set a system property by name.
     * /* was: 'a' */
     *
     * @param key   the property name (e.g., "persist.sys.usb.config")
     * @param value the property value
     */
    public static void set(/* was: 'a' */ String key, String value) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            cls.getMethod("set", String.class, String.class).invoke(cls, key, value);
        } catch (Exception unused) {
        }
    }
}
