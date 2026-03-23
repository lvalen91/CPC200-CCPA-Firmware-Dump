/**
 * Debouncer.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.a0
 *
 * Throttled action executor. Prevents the same action from being executed
 * more than once within a configurable cooldown period. Supports action
 * identity via an integer ID to allow different actions to execute independently.
 */
package cn.manstep.autokit.util;

import android.os.Handler;

public class Debouncer /* was: 'a0' */ {

    /** Cooldown duration in milliseconds. /* was: 'a' */ */
    private final long cooldownMs /* was: 'a' */;

    /** Handler for posting delayed reset runnables. /* was: 'f1844b' */ */
    private final Handler handler /* was: 'f1844b' */;

    /** Whether the debouncer is ready to accept a new action. /* was: 'f1845c' */ */
    private boolean ready /* was: 'f1845c' */;

    /** ID of the last executed action. /* was: 'f1846d' */ */
    private int lastActionId /* was: 'f1846d' */;

    /**
     * Runnable that resets the debouncer to ready state.
     * /* was: inner class 'a' */
     */
    class ResetRunnable /* was: 'a' */ implements Runnable {
        ResetRunnable() {
        }

        @Override
        public void run() {
            Debouncer.this.ready = true;
            Debouncer.this.lastActionId = -1;
        }
    }

    public Debouncer(long cooldownMs) {
        this.ready = true;
        this.lastActionId = -1;
        this.cooldownMs = cooldownMs;
        this.handler = new Handler();
    }

    /**
     * Execute the given action if the debouncer is ready or the action ID differs.
     * /* was: 'c' */
     */
    public void execute(/* was: 'c' */ int actionId, Runnable action) {
        if (this.ready || actionId != this.lastActionId) {
            action.run();
            this.lastActionId = actionId;
            this.ready = false;
            this.handler.postDelayed(new ResetRunnable(), this.cooldownMs);
        }
    }

    public Debouncer(long cooldownMs, Handler handler) {
        this.ready = true;
        this.lastActionId = -1;
        this.cooldownMs = cooldownMs;
        this.handler = handler;
    }
}
