/**
 * AtomicValue.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.z
 *
 * Thread-safe generic value wrapper. Provides synchronized get and set
 * operations for a single value of type T.
 */
package cn.manstep.autokit.util;

public class AtomicValue<T> /* was: 'z' */ {

    /** The wrapped value. /* was: 'a' */ */
    private T value /* was: 'a' */;

    /**
     * Get the current value.
     * /* was: 'a' */
     */
    public synchronized T get(/* was: 'a' */) {
        return this.value;
    }

    /**
     * Set a new value and return it.
     * /* was: 'b' */
     */
    public synchronized T set(/* was: 'b' */ T newValue) {
        this.value = newValue;
        return newValue;
    }
}
