/**
 * ScheduledTaskRunner.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.h0.a
 *
 * Throttled task scheduler that manages named repeating tasks using a
 * ScheduledExecutorService. Supports cancelling individual tasks by name,
 * shutting down all tasks, and scheduling repeating tasks with initial delay
 * and fixed-delay period.
 */
package cn.manstep.autokit.scheduling;

import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class ScheduledTaskRunner /* was: 'h0.a' */ {

    /** Thread pool for scheduling tasks. /* was: 'a' */ */
    private final ScheduledExecutorService executor /* was: 'a' */ =
            Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors());

    /** Map of task name to its ScheduledFuture. /* was: 'f1655b' */ */
    private final ConcurrentMap<String, ScheduledFuture<?>> futures /* was: 'f1655b' */ =
            new ConcurrentHashMap<>();

    /** Map of task name to its Runnable. /* was: 'f1656c' */ */
    private final ConcurrentMap<String, Runnable> runnables /* was: 'f1656c' */ =
            new ConcurrentHashMap<>();

    /** Map of task name to its period in ms. /* was: 'f1657d' */ */
    private final ConcurrentMap<String, Long> periods /* was: 'f1657d' */ =
            new ConcurrentHashMap<>();

    /** Map of task name to its enabled state. /* was: 'e' */ */
    private final ConcurrentMap<String, Boolean> enabled /* was: 'e' */ =
            new ConcurrentHashMap<>();

    /**
     * Wrapper runnable that checks the enabled flag before executing.
     * /* was: 'RunnableC0085a' */
     */
    class TaskWrapper /* was: 'RunnableC0085a' */ implements Runnable {

        /** Task name. /* was: 'f1658b' */ */
        final String taskName /* was: 'f1658b' */;

        /** The actual task runnable. /* was: 'f1659c' */ */
        final Runnable task /* was: 'f1659c' */;

        TaskWrapper(String name, Runnable runnable) {
            this.taskName = name;
            this.task = runnable;
        }

        @Override
        public void run() {
            if (ScheduledTaskRunner.this.isEnabled(this.taskName)) {
                try {
                    this.task.run();
                } catch (Exception unused) {
                }
            }
        }
    }

    /**
     * Wrap a runnable with an enabled-state check.
     * /* was: 'c' */
     */
    private Runnable wrapTask(/* was: 'c' */ String name, Runnable runnable) {
        return new TaskWrapper(name, runnable);
    }

    /**
     * Check if a named task is enabled.
     * /* was: 'd' */
     */
    /* package */ boolean isEnabled(/* was: 'd' */ String name) {
        return Boolean.TRUE.equals(this.enabled.get(name));
    }

    /**
     * Cancel a named task.
     * /* was: 'b' */
     */
    public synchronized void cancel(/* was: 'b' */ String name) {
        this.enabled.put(name, Boolean.FALSE);
        ScheduledFuture<?> future = this.futures.get(name);
        if (future != null && !future.isCancelled()) {
            future.cancel(true);
        }
        this.futures.remove(name);
    }

    /**
     * Shut down all tasks and clear all maps.
     * /* was: 'e' */
     */
    public synchronized void shutdownAll(/* was: 'e' */) {
        Iterator<String> it = this.futures.keySet().iterator();
        while (it.hasNext()) {
            cancel(it.next());
        }
        this.executor.shutdownNow();
        this.futures.clear();
        this.runnables.clear();
        this.periods.clear();
        this.enabled.clear();
    }

    /**
     * Schedule a repeating task with fixed delay.
     * /* was: 'f' */
     *
     * @param name     task name (used as key for cancel/lookup)
     * @param runnable the task to run
     * @param delay    initial delay in milliseconds
     * @param period   period between executions in milliseconds
     */
    public synchronized void scheduleRepeating(/* was: 'f' */ String name, Runnable runnable,
                                                long delay, long period) {
        cancel(name);
        this.runnables.put(name, runnable);
        this.periods.put(name, Long.valueOf(period));
        this.enabled.put(name, Boolean.TRUE);
        this.futures.put(name, this.executor.scheduleWithFixedDelay(
                wrapTask(name, runnable), delay, period, TimeUnit.MILLISECONDS));
    }
}
