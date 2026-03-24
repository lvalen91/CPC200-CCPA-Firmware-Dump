package com.yalantis.ucrop.view.widget;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.core.content.a;
import com.yalantis.ucrop.model.AspectRatio;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Locale;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class AspectRatioTextView extends TextView {
    private float mAspectRatio;
    private String mAspectRatioTitle;
    private float mAspectRatioX;
    private float mAspectRatioY;
    private final Rect mCanvasClipBounds;
    private Paint mDotPaint;
    private int mDotSize;

    public AspectRatioTextView(Context context) {
        this(context, null);
    }

    private void applyActiveColor(int i) {
        Paint paint = this.mDotPaint;
        if (paint != null) {
            paint.setColor(i);
        }
        setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[]{0}}, new int[]{i, a.b(getContext(), com.yalantis.ucrop.R.color.ucrop_color_widget)}));
    }

    private void init(TypedArray typedArray) {
        setGravity(1);
        this.mAspectRatioTitle = typedArray.getString(com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_title);
        this.mAspectRatioX = typedArray.getFloat(com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_x, CropImageView.DEFAULT_ASPECT_RATIO);
        float f = typedArray.getFloat(com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_y, CropImageView.DEFAULT_ASPECT_RATIO);
        this.mAspectRatioY = f;
        float f2 = this.mAspectRatioX;
        if (f2 == CropImageView.DEFAULT_ASPECT_RATIO || f == CropImageView.DEFAULT_ASPECT_RATIO) {
            this.mAspectRatio = CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            this.mAspectRatio = f2 / f;
        }
        this.mDotSize = getContext().getResources().getDimensionPixelSize(com.yalantis.ucrop.R.dimen.ucrop_size_dot_scale_text_view);
        Paint paint = new Paint(1);
        this.mDotPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        setTitle();
        applyActiveColor(getResources().getColor(com.yalantis.ucrop.R.color.ucrop_color_widget_active));
        typedArray.recycle();
    }

    private void setTitle() {
        if (TextUtils.isEmpty(this.mAspectRatioTitle)) {
            setText(String.format(Locale.US, "%d:%d", Integer.valueOf((int) this.mAspectRatioX), Integer.valueOf((int) this.mAspectRatioY)));
        } else {
            setText(this.mAspectRatioTitle);
        }
    }

    private void toggleAspectRatio() {
        if (this.mAspectRatio != CropImageView.DEFAULT_ASPECT_RATIO) {
            float f = this.mAspectRatioX;
            float f2 = this.mAspectRatioY;
            this.mAspectRatioX = f2;
            this.mAspectRatioY = f;
            this.mAspectRatio = f2 / f;
        }
    }

    public float getAspectRatio(boolean z) {
        if (z) {
            toggleAspectRatio();
            setTitle();
        }
        return this.mAspectRatio;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isSelected()) {
            canvas.getClipBounds(this.mCanvasClipBounds);
            float f = (r0.right - r0.left) / 2.0f;
            int i = this.mCanvasClipBounds.bottom;
            int i2 = this.mDotSize;
            canvas.drawCircle(f, i - i2, i2 / 2, this.mDotPaint);
        }
    }

    public void setActiveColor(int i) {
        applyActiveColor(i);
        invalidate();
    }

    public void setAspectRatio(AspectRatio aspectRatio) {
        this.mAspectRatioTitle = aspectRatio.getAspectRatioTitle();
        this.mAspectRatioX = aspectRatio.getAspectRatioX();
        float aspectRatioY = aspectRatio.getAspectRatioY();
        this.mAspectRatioY = aspectRatioY;
        float f = this.mAspectRatioX;
        if (f == CropImageView.DEFAULT_ASPECT_RATIO || aspectRatioY == CropImageView.DEFAULT_ASPECT_RATIO) {
            this.mAspectRatio = CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            this.mAspectRatio = f / aspectRatioY;
        }
        setTitle();
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCanvasClipBounds = new Rect();
        init(context.obtainStyledAttributes(attributeSet, com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView));
    }

    @TargetApi(21)
    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mCanvasClipBounds = new Rect();
        init(context.obtainStyledAttributes(attributeSet, com.yalantis.ucrop.R.styleable.ucrop_AspectRatioTextView));
    }
}
