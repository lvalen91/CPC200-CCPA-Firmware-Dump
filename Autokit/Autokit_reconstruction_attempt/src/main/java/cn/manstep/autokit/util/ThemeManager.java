/**
 * ThemeManager.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.t
 *
 * NOTE: Despite the "ThemeManager" designation, this class is actually a
 * View binding utility — it provides helpers for setting image resources
 * and long-click listeners. The "theme" role may come from its usage context
 * in theme-related UI setup elsewhere in the app.
 */
package cn.manstep.autokit.util;

import android.view.View;
import android.widget.ImageView;

public class ThemeManager /* was: 't' */ {

    /**
     * Wrapper for View.OnLongClickListener that delegates to another listener.
     * /* was: inner class 'a' */
     */
    static class LongClickDelegate /* was: 'a' */ implements View.OnLongClickListener {

        /** The actual listener to delegate to. /* was: 'f1831b' */ */
        final View.OnLongClickListener delegate /* was: 'f1831b' */;

        LongClickDelegate(View.OnLongClickListener listener) {
            this.delegate = listener;
        }

        @Override
        public boolean onLongClick(View view) {
            return this.delegate.onLongClick(view);
        }
    }

    /**
     * Set the image resource on an ImageView.
     * /* was: 'a(ImageView, int)' */
     */
    public static void setImageResource(/* was: 'a' */ ImageView imageView, int resId) {
        imageView.setImageResource(resId);
    }

    /**
     * Set a long-click listener on a view, wrapped in a delegate.
     * /* was: 'b' */
     */
    public static void setLongClickListener(/* was: 'b' */ View view,
                                             View.OnLongClickListener listener) {
        view.setOnLongClickListener(new LongClickDelegate(listener));
    }
}
