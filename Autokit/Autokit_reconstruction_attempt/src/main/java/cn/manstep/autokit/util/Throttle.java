/**
 * Throttle.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.u
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Time-based throttle for limiting how often a Runnable can execute.
 * Enforces a minimum interval between executions (default 5000ms).
 * Runs the action on the Looper thread that created the instance.
 */
package cn.manstep.autokit.util;

import android.os.Handler;
import android.os.Looper;

public class Throttle /* was: 'util.u' */ {

    /** Last execution timestamp. /* was: 'f1931c' */ */
    private long lastExecutionTime /* was: 'f1931c' */ = 0;

    /** Handler for posting to the creating thread's looper. /* was: 'a' */ */
    private final Handler handler /* was: 'a' */ = new Handler(Looper.myLooper());

    /** Minimum interval between executions in milliseconds. /* was: 'f1930b' */ */
    private long intervalMs /* was: 'f1930b' */ = 5000;

    /**
     * Execute the runnable if enough time has elapsed since the last execution.
     * /* was: 'a' */
     */
    public void execute(/* was: 'a' */ Runnable runnable) {
        long now = System.currentTimeMillis();
        long elapsed = now - this.lastExecutionTime;
        if (elapsed < 0 || elapsed <= this.intervalMs) {
            return;
        }
        this.lastExecutionTime = now;
        this.handler.removeCallbacks(runnable);
        this.handler.post(runnable);
    }

    /**
     * Execute with a custom interval.
     * /* was: 'b' */
     */
    public void executeWithInterval(/* was: 'b' */ Runnable runnable, long intervalMs) {
        this.intervalMs = intervalMs;
        execute(runnable);
    }
}
