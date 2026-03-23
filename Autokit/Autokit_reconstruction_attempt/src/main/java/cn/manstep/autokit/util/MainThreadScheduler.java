/**
 * MainThreadScheduler.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.j
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Singleton utility for scheduling named tasks on the main (UI) thread with
 * optional delay. Supports cancelling by name. Tasks are tracked in a map
 * and auto-removed after execution.
 */
package cn.manstep.autokit.util;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.yalantis.ucrop.BuildConfig;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public class MainThreadScheduler /* was: 'util.j' */ {

    /** Singleton instance. /* was: 'f1884c' */ */
    private static MainThreadScheduler instance /* was: 'f1884c' */;

    /** Map of task name to its wrapper runnable. /* was: 'f1885b' */ */
    private final Map<String, Runnable> tasks /* was: 'f1885b' */ = new ConcurrentHashMap<>();

    /** Main thread handler. /* was: 'a' */ */
    private final Handler mainHandler /* was: 'a' */ = new Handler(Looper.getMainLooper());

    /**
     * Wrapper that auto-removes from the task map after execution.
     * /* was: inner class 'a' */
     */
    private class TaskWrapper /* was: 'a' */ implements Runnable {
        private final Runnable task /* was: 'f1886b' */;
        private final String name /* was: 'f1887c' */;
        private final AtomicBoolean completed /* was: 'f1888d' */ = new AtomicBoolean(false);

        public TaskWrapper(String name, Runnable task) {
            this.task = task;
            this.name = name;
        }

        @Override
        public void run() {
            try {
                this.task.run();
                this.completed.set(true);
            } finally {
                if (this.completed.get()) {
                    MainThreadScheduler.this.tasks.remove(this.name);
                }
            }
        }
    }

    private MainThreadScheduler() {
    }

    /**
     * Get the singleton instance.
     * /* was: 'c' */
     */
    public static MainThreadScheduler getInstance(/* was: 'c' */) {
        if (instance == null) {
            synchronized (MainThreadScheduler.class) {
                if (instance == null) {
                    instance = new MainThreadScheduler();
                }
            }
        }
        return instance;
    }

    /**
     * Post a runnable immediately on the main thread.
     * /* was: 'd' */
     */
    public static MainThreadScheduler postImmediate(/* was: 'd' */ Runnable runnable) {
        MainThreadScheduler scheduler = getInstance();
        scheduler.schedule(BuildConfig.FLAVOR, 0L, runnable);
        return scheduler;
    }

    /**
     * Cancel a named task.
     * /* was: 'b' */
     */
    public MainThreadScheduler cancel(/* was: 'b' */ String name) {
        Runnable runnable = this.tasks.get(name);
        if (runnable != null) {
            this.mainHandler.removeCallbacks(runnable);
            this.tasks.remove(name);
        }
        return this;
    }

    /**
     * Schedule a named task with a delay.
     * /* was: 'e' */
     */
    public MainThreadScheduler schedule(/* was: 'e' */ String name, long delayMs, Runnable runnable) {
        if (TextUtils.isEmpty(name)) {
            this.mainHandler.post(runnable);
        } else {
            cancel(name);
            TaskWrapper wrapper = new TaskWrapper(name, runnable);
            this.tasks.put(name, wrapper);
            this.mainHandler.postDelayed(wrapper, delayMs);
        }
        return this;
    }
}
