/**
 * NamedThreadFactory.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.h0.b
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Builder for creating ThreadFactory instances with configurable thread names
 * (with %d format for numbering), daemon flag, priority, and uncaught exception
 * handler. Uses a builder pattern and delegates to a base ThreadFactory.
 */
package cn.manstep.autokit.scheduling;

import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public class NamedThreadFactory /* was: 'h0.b' */ {

    /** Thread name format (must contain %d). /* was: 'a' */ */
    private String nameFormat /* was: 'a' */ = null;

    /** Whether threads should be daemon threads. /* was: 'f1661b' */ */
    private Boolean daemon /* was: 'f1661b' */ = null;

    /** Thread priority. /* was: 'f1662c' */ */
    private Integer priority /* was: 'f1662c' */ = null;

    /** Uncaught exception handler. /* was: 'f1663d' */ */
    private Thread.UncaughtExceptionHandler uncaughtExceptionHandler /* was: 'f1663d' */ = null;

    /** Optional backing ThreadFactory. /* was: 'e' */ */
    private ThreadFactory backingFactory /* was: 'e' */ = null;

    /**
     * Inner ThreadFactory implementation that applies configured settings.
     * /* was: inner class 'a' */
     */
    static class ConfiguredThreadFactory /* was: 'a' */ implements ThreadFactory {
        final ThreadFactory baseFactory /* was: 'a' */;
        final String nameFormat /* was: 'f1664b' */;
        final AtomicLong counter /* was: 'f1665c' */;
        final Boolean daemon /* was: 'f1666d' */;
        final Integer priority /* was: 'e' */;
        final Thread.UncaughtExceptionHandler handler /* was: 'f' */;

        ConfiguredThreadFactory(ThreadFactory base, String nameFormat, AtomicLong counter,
                                Boolean daemon, Integer priority,
                                Thread.UncaughtExceptionHandler handler) {
            this.baseFactory = base;
            this.nameFormat = nameFormat;
            this.counter = counter;
            this.daemon = daemon;
            this.priority = priority;
            this.handler = handler;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = this.baseFactory.newThread(runnable);
            String fmt = this.nameFormat;
            if (fmt != null) {
                AtomicLong ctr = this.counter;
                checkNotNull(ctr);
                thread.setName(formatName(fmt, Long.valueOf(ctr.getAndIncrement())));
            }
            Boolean d = this.daemon;
            if (d != null) {
                thread.setDaemon(d.booleanValue());
            }
            Integer p = this.priority;
            if (p != null) {
                thread.setPriority(p.intValue());
            }
            Thread.UncaughtExceptionHandler h = this.handler;
            if (h != null) {
                thread.setUncaughtExceptionHandler(h);
            }
            return thread;
        }
    }

    /**
     * Build the ThreadFactory from current settings.
     * /* was: 'c' (private static) */
     */
    private static ThreadFactory buildFactory(/* was: 'c' */ NamedThreadFactory builder) {
        String name = builder.nameFormat;
        Boolean d = builder.daemon;
        Integer p = builder.priority;
        Thread.UncaughtExceptionHandler handler = builder.uncaughtExceptionHandler;
        ThreadFactory base = builder.backingFactory;
        if (base == null) {
            base = Executors.defaultThreadFactory();
        }
        return new ConfiguredThreadFactory(base, name,
                name != null ? new AtomicLong(0L) : null, d, p, handler);
    }

    /**
     * Format a thread name with arguments.
     * /* was: 'd' */
     */
    /* package */ static String formatName(/* was: 'd' */ String format, Object... args) {
        return String.format(Locale.ROOT, format, args);
    }

    /**
     * Null-check utility.
     * /* was: 'e' (static generic) */
     */
    public static <T> T checkNotNull(/* was: 'e' */ T obj) {
        if (obj != null) {
            return obj;
        }
        throw null;
    }

    /**
     * Build and return the configured ThreadFactory.
     * /* was: 'b' */
     */
    public ThreadFactory build(/* was: 'b' */) {
        return buildFactory(this);
    }

    /**
     * Set the thread name format. A "%d" suffix is appended if not present.
     * /* was: 'f' */
     */
    public NamedThreadFactory setNameFormat(/* was: 'f' */ String format) {
        if (format.contains("%d")) {
            this.nameFormat = format;
        } else {
            this.nameFormat = format + "-%d";
        }
        return this;
    }
}
