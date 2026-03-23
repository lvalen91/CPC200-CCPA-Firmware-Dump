/**
 * ByteBufferPool.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.i
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * A pooled byte-array queue for efficient memory reuse in audio/video streaming.
 * Maintains a "used" pool and a "free" pool. When a buffer of the right size
 * is available in the free pool, it is recycled instead of allocating new memory.
 */
package cn.manstep.autokit.util;

import java.util.Vector;

public class ByteBufferPool /* was: 'util.i' */ {

    /** Free buffer pool for reuse. /* was: 'a' */ */
    private Vector<byte[]> freePool /* was: 'a' */ = new Vector<>(320);

    /** Active buffer queue. /* was: 'f1883b' */ */
    private Vector<byte[]> activeQueue /* was: 'f1883b' */ = new Vector<>(320);

    /**
     * Add a buffer to the active queue.
     * /* was: 'a' */
     */
    public void enqueue(/* was: 'a' */ byte[] buffer) {
        this.activeQueue.add(buffer);
    }

    /**
     * Clear all active buffers, moving them to the free pool.
     * /* was: 'b' */
     */
    public void clear(/* was: 'b' */) {
        while (!isEmpty()) {
            recycle(0);
        }
    }

    /**
     * Peek at the first buffer in the queue without removing it.
     * /* was: 'c' */
     */
    public byte[] peek(/* was: 'c' */) {
        if (isEmpty()) {
            return null;
        }
        return this.activeQueue.firstElement();
    }

    /**
     * Obtain a buffer of the specified size, reusing from the free pool if possible.
     * /* was: 'd' */
     */
    public byte[] obtain(/* was: 'd' */ int size) {
        if (!this.freePool.isEmpty()) {
            for (int i = 0; i < this.freePool.size(); i++) {
                byte[] buffer = this.freePool.get(i);
                if (buffer.length == size) {
                    this.freePool.remove(i);
                    return buffer;
                }
            }
            this.freePool.remove(0);
        }
        return new byte[size];
    }

    /**
     * Check if the active queue is empty.
     * /* was: 'e' */
     */
    public boolean isEmpty(/* was: 'e' */) {
        return this.activeQueue.isEmpty();
    }

    /**
     * Recycle a buffer at the given index from active to free pool.
     * /* was: 'f' */
     */
    public void recycle(/* was: 'f' */ int index) {
        this.freePool.add(this.activeQueue.elementAt(index));
        this.activeQueue.remove(index);
    }

    /**
     * Get the number of active buffers.
     * /* was: 'g' */
     */
    public int size(/* was: 'g' */) {
        return this.activeQueue.size();
    }
}
