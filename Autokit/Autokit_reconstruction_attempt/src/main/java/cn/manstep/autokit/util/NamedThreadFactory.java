/**
 * NamedThreadFactory.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.h
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Simple ThreadFactory that creates threads with a configurable name prefix
 * and incrementing numeric suffix (e.g., "Worker-1", "Worker-2").
 */
package cn.manstep.autokit.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class NamedThreadFactory /* was: 'util.h' */ implements ThreadFactory {

    /** Thread counter for unique naming. /* was: 'a' */ */
    private final AtomicInteger counter /* was: 'a' */ = new AtomicInteger(1);

    /** Name prefix for created threads. /* was: 'f1882b' */ */
    private String namePrefix /* was: 'f1882b' */;

    public NamedThreadFactory(String prefix) {
        this.namePrefix = prefix + "-";
    }

    @Override
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.namePrefix + this.counter.getAndIncrement());
    }
}
