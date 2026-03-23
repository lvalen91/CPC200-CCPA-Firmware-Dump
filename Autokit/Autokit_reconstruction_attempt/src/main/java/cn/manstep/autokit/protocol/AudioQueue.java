/**
 * AudioQueue.java
 *
 * Ring buffer (FIFO queue) for audio frames. Stores both the raw audio byte[]
 * data and the associated timestamps. Used as: new AudioQueue(320) -- a 320-entry queue.
 *
 * Original: BoxInterface/h.java
 */
package cn.manstep.autokit.protocol;

import java.util.Vector;

public class AudioQueue {
    public final Vector<byte[]> dataQueue;       /* was: field 'a' */

    public final Vector<Long> timestampQueue;    /* was: field 'f1474b' (renamed from 'b') */

    public AudioQueue(int capacity) {
        this.dataQueue = new Vector<>(capacity);
        this.timestampQueue = new Vector<>(capacity);
    }

    /** Enqueue an audio frame with its timestamp. */
    public void enqueue(byte[] data, long timestamp) {  /* was: method 'a' */
        this.dataQueue.add(data);
        this.timestampQueue.add(Long.valueOf(timestamp));
    }

    /** Clear all queued frames. */
    public void clear() {  /* was: method 'b' */
        this.dataQueue.clear();
        this.timestampQueue.clear();
    }

    /** Dequeue the oldest audio frame (data). */
    public byte[] dequeueData() {  /* was: method 'c' */
        byte[] first = this.dataQueue.firstElement();
        this.dataQueue.remove(0);
        return first;
    }

    /** Dequeue the oldest timestamp. */
    public long dequeueTimestamp() {  /* was: method 'd' */
        long value = this.timestampQueue.firstElement().longValue();
        this.timestampQueue.remove(0);
        return value;
    }

    /** Returns true if the queue is empty. */
    public boolean isEmpty() {  /* was: method 'e' */
        return this.dataQueue.isEmpty();
    }

    /** Returns the number of queued frames. */
    public int size() {  /* was: method 'f' */
        return this.dataQueue.size();
    }
}
