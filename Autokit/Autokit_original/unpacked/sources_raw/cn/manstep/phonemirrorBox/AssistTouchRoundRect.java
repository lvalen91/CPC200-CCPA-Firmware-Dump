package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AssistTouchRoundRect extends View implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Paint f1376b;

    class a implements View.OnClickListener {
        a(AssistTouchRoundRect assistTouchRoundRect) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.b(false);
        }
    }

    public AssistTouchRoundRect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
        setOnClickListener(new a(this));
        f.d().a(this);
    }

    @Override // cn.manstep.phonemirrorBox.g
    public void a(int i, int i2, Object obj) {
        int i3;
        if (i != 1) {
            if (i != 4) {
                return;
            }
            setVisibility(i2 != 1 ? 4 : 0);
            return;
        }
        boolean z = i2 == 1;
        animate().alpha(z ? 0.7f : CropImageView.DEFAULT_ASPECT_RATIO);
        if (getParent() instanceof FrameLayout) {
            FrameLayout frameLayout = (FrameLayout) getParent();
            int right = frameLayout.getRight() - frameLayout.getLeft();
            int bottom = frameLayout.getBottom() - frameLayout.getTop();
            int right2 = getRight() - getLeft();
            int bottom2 = getBottom() - getTop();
            if (z) {
                int i4 = (right - right2) / 2;
                int i5 = (bottom - bottom2) / 2;
                animate().x(i4);
                animate().y(i5);
                animate().scaleX(4.0f);
                animate().scaleY(4.0f);
                f.f(i4, i5, right2, bottom2, 4.0f);
                return;
            }
            if (obj instanceof Point) {
                Point point = (Point) obj;
                i = point.x;
                i3 = point.y;
            } else {
                i3 = 0;
            }
            animate().x(i);
            animate().y(i3);
            animate().scaleX(1.0f);
            animate().scaleY(1.0f);
            f.f(i, i3, right2, bottom2, 1.0f);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f1376b == null) {
            Paint paint = new Paint();
            this.f1376b = paint;
            paint.setAntiAlias(true);
            this.f1376b.setColor(-16777216);
            canvas.drawColor(0);
            this.f1376b.setStrokeWidth(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f1376b.setStyle(Paint.Style.FILL);
        }
        RectF rectF = new RectF();
        rectF.left = getLeft();
        rectF.top = getTop();
        rectF.right = getRight();
        rectF.bottom = getBottom();
        cn.manstep.phonemirrorBox.util.s.c("rect" + rectF);
        canvas.drawRoundRect(rectF, 4.0f, 4.0f, this.f1376b);
    }
}
