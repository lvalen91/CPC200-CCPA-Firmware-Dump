package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AssistTouchRoundRect extends View implements InterfaceC0845g {

    /* JADX INFO: renamed from: b */
    Paint f4226b;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AssistTouchRoundRect$a */
    class ViewOnClickListenerC0709a implements View.OnClickListener {
        ViewOnClickListenerC0709a(AssistTouchRoundRect assistTouchRoundRect) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0824f.m6201b(false);
        }
    }

    public AssistTouchRoundRect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
        setOnClickListener(new ViewOnClickListenerC0709a(this));
        C0824f.m6203d().mo6189a(this);
    }

    @Override // cn.manstep.phonemirrorBox.InterfaceC0845g
    /* JADX INFO: renamed from: a */
    public void mo5313a(int i, int i2, Object obj) {
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
                C0824f.m6205f(i4, i5, right2, bottom2, 4.0f);
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
            C0824f.m6205f(i, i3, right2, bottom2, 1.0f);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f4226b == null) {
            Paint paint = new Paint();
            this.f4226b = paint;
            paint.setAntiAlias(true);
            this.f4226b.setColor(-16777216);
            canvas.drawColor(0);
            this.f4226b.setStrokeWidth(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f4226b.setStyle(Paint.Style.FILL);
        }
        RectF rectF = new RectF();
        rectF.left = getLeft();
        rectF.top = getTop();
        rectF.right = getRight();
        rectF.bottom = getBottom();
        C0982s.m7373c("rect" + rectF);
        canvas.drawRoundRect(rectF, 4.0f, 4.0f, this.f4226b);
    }
}
