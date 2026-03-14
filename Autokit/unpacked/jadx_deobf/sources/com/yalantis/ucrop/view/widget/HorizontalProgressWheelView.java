package com.yalantis.ucrop.view.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.C0242a;
import com.yalantis.ucrop.C1176R;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class HorizontalProgressWheelView extends View {
    private final Rect mCanvasClipBounds;
    private float mLastTouchedPosition;
    private int mMiddleLineColor;
    private int mProgressLineHeight;
    private int mProgressLineMargin;
    private Paint mProgressLinePaint;
    private int mProgressLineWidth;
    private boolean mScrollStarted;
    private ScrollingListener mScrollingListener;
    private float mTotalScrollDistance;

    public interface ScrollingListener {
        void onScroll(float f, float f2);

        void onScrollEnd();

        void onScrollStart();
    }

    public HorizontalProgressWheelView(Context context) {
        this(context, null);
    }

    private void init() {
        this.mMiddleLineColor = C0242a.m1697b(getContext(), C1176R.color.ucrop_color_progress_wheel_line);
        this.mProgressLineWidth = getContext().getResources().getDimensionPixelSize(C1176R.dimen.ucrop_width_horizontal_wheel_progress_line);
        this.mProgressLineHeight = getContext().getResources().getDimensionPixelSize(C1176R.dimen.ucrop_height_horizontal_wheel_progress_line);
        this.mProgressLineMargin = getContext().getResources().getDimensionPixelSize(C1176R.dimen.ucrop_margin_horizontal_wheel_progress_line);
        Paint paint = new Paint(1);
        this.mProgressLinePaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.mProgressLinePaint.setStrokeWidth(this.mProgressLineWidth);
    }

    private void onScrollEvent(MotionEvent motionEvent, float f) {
        this.mTotalScrollDistance -= f;
        postInvalidate();
        this.mLastTouchedPosition = motionEvent.getX();
        ScrollingListener scrollingListener = this.mScrollingListener;
        if (scrollingListener != null) {
            scrollingListener.onScroll(-f, this.mTotalScrollDistance);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.getClipBounds(this.mCanvasClipBounds);
        int iWidth = this.mCanvasClipBounds.width() / (this.mProgressLineWidth + this.mProgressLineMargin);
        float f = this.mTotalScrollDistance % (r2 + r1);
        this.mProgressLinePaint.setColor(getResources().getColor(C1176R.color.ucrop_color_progress_wheel_line));
        for (int i = 0; i < iWidth; i++) {
            int i2 = iWidth / 4;
            if (i < i2) {
                this.mProgressLinePaint.setAlpha((int) ((i / i2) * 255.0f));
            } else if (i > (iWidth * 3) / 4) {
                this.mProgressLinePaint.setAlpha((int) (((iWidth - i) / i2) * 255.0f));
            } else {
                this.mProgressLinePaint.setAlpha(255);
            }
            float f2 = -f;
            Rect rect = this.mCanvasClipBounds;
            float f3 = rect.left + f2 + ((this.mProgressLineWidth + this.mProgressLineMargin) * i);
            float fCenterY = rect.centerY() - (this.mProgressLineHeight / 4.0f);
            Rect rect2 = this.mCanvasClipBounds;
            canvas.drawLine(f3, fCenterY, f2 + rect2.left + ((this.mProgressLineWidth + this.mProgressLineMargin) * i), rect2.centerY() + (this.mProgressLineHeight / 4.0f), this.mProgressLinePaint);
        }
        this.mProgressLinePaint.setColor(this.mMiddleLineColor);
        canvas.drawLine(this.mCanvasClipBounds.centerX(), this.mCanvasClipBounds.centerY() - (this.mProgressLineHeight / 2.0f), this.mCanvasClipBounds.centerX(), (this.mProgressLineHeight / 2.0f) + this.mCanvasClipBounds.centerY(), this.mProgressLinePaint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mLastTouchedPosition = motionEvent.getX();
        } else if (action == 1) {
            ScrollingListener scrollingListener = this.mScrollingListener;
            if (scrollingListener != null) {
                this.mScrollStarted = false;
                scrollingListener.onScrollEnd();
            }
        } else if (action == 2) {
            float x = motionEvent.getX() - this.mLastTouchedPosition;
            if (x != CropImageView.DEFAULT_ASPECT_RATIO) {
                if (!this.mScrollStarted) {
                    this.mScrollStarted = true;
                    ScrollingListener scrollingListener2 = this.mScrollingListener;
                    if (scrollingListener2 != null) {
                        scrollingListener2.onScrollStart();
                    }
                }
                onScrollEvent(motionEvent, x);
            }
        }
        return true;
    }

    public void setMiddleLineColor(int i) {
        this.mMiddleLineColor = i;
        invalidate();
    }

    public void setScrollingListener(ScrollingListener scrollingListener) {
        this.mScrollingListener = scrollingListener;
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCanvasClipBounds = new Rect();
        init();
    }

    @TargetApi(21)
    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mCanvasClipBounds = new Rect();
    }
}
