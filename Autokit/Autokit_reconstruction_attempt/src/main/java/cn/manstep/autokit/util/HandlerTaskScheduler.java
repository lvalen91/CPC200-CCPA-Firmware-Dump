/**
 * HandlerTaskScheduler.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.k
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Named task scheduler using a provided Handler. Supports scheduling delayed
 * tasks by name and cancelling them. Unlike MainThreadScheduler, this uses
 * an externally-provided Handler rather than the main thread.
 */
package cn.manstep.autokit.util;

import android.os.Handler;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class HandlerTaskScheduler /* was: 'util.k' */ {

    /** The handler to post tasks on. /* was: 'a' */ */
    private final Handler handler /* was: 'a' */;

    /** Map of task name to runnable. /* was: 'f1889b' */ */
    private final Map<String, Runnable> tasks /* was: 'f1889b' */ = new ConcurrentHashMap<>();

    public HandlerTaskScheduler(Handler handler) {
        this.handler = handler;
    }

    /**
     * Cancel a named task.
     * /* was: 'a' */
     */
    public void cancel(/* was: 'a' */ String name) {
        Runnable runnable = this.tasks.get(name);
        if (runnable != null) {
            this.handler.removeCallbacks(runnable);
            this.tasks.remove(name);
        }
    }

    /**
     * Schedule a named task with a delay, cancelling any existing task with the same name.
     * /* was: 'b' */
     */
    public void schedule(/* was: 'b' */ String name, long delayMs, Runnable runnable) {
        cancel(name);
        this.tasks.put(name, runnable);
        this.handler.postDelayed(runnable, delayMs);
    }
}
