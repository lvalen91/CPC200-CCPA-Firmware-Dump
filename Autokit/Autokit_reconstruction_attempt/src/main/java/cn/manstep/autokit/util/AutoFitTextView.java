/**
 * AutoFitTextView.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.AutoFitTextView
 *
 * A TextView that automatically shrinks its text size to fit within
 * the available width, accounting for compound drawables and padding.
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

public class AutoFitTextView extends TextView {

    /** Measurement paint. /* was: 'f1842b' */ */
    private Paint measurePaint /* was: 'f1842b' */;

    /** Original (maximum) text size in pixels. /* was: 'f1843c' */ */
    private float maxTextSize /* was: 'f1843c' */;

    public AutoFitTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.maxTextSize = getTextSize();
    }

    /**
     * Measure the width of text at a given size.
     * /* was: 'a' */
     */
    private float measureTextWidth(/* was: 'a' */ float textSize, String text) {
        this.measurePaint.setTextSize(textSize);
        return this.measurePaint.measureText(text);
    }

    /**
     * Shrink text size until the text fits within the available width.
     * /* was: 'b' */
     */
    private void fitText(/* was: 'b' */ String text, int viewWidth) {
        if (viewWidth > 0) {
            float currentSize = this.maxTextSize;
            Paint paint = new Paint();
            this.measurePaint = paint;
            paint.set(getPaint());
            Drawable[] drawables = getCompoundDrawables();
            int drawableWidth = 0;
            for (int i = 0; i < drawables.length; i++) {
                if (drawables[i] != null) {
                    drawableWidth += drawables[i].getBounds().width();
                }
            }
            int availableWidth = (((viewWidth - getPaddingLeft()) - getPaddingRight())
                    - getCompoundDrawablePadding()) - drawableWidth;
            float textWidth = measureTextWidth(currentSize, text);
            while (textWidth > availableWidth) {
                currentSize -= 1.0f;
                this.measurePaint.setTextSize(currentSize);
                textWidth = measureTextWidth(currentSize, text);
            }
            setTextSize(0, currentSize);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        fitText(getText().toString(), getWidth());
    }
}
