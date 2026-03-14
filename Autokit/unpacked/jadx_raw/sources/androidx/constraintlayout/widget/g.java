package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import c.e.b.k.e;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f486c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f487d;

    public void a(ConstraintLayout constraintLayout) {
        if (this.f486c == null) {
            return;
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) this.f486c.getLayoutParams();
        bVar2.m0.T0(0);
        if (bVar.m0.y() != e.b.FIXED) {
            bVar.m0.U0(bVar2.m0.R());
        }
        if (bVar.m0.O() != e.b.FIXED) {
            bVar.m0.v0(bVar2.m0.v());
        }
        bVar2.m0.T0(8);
    }

    public void b(ConstraintLayout constraintLayout) {
        if (this.f485b == -1 && !isInEditMode()) {
            setVisibility(this.f487d);
        }
        View viewFindViewById = constraintLayout.findViewById(this.f485b);
        this.f486c = viewFindViewById;
        if (viewFindViewById != null) {
            ((ConstraintLayout.b) viewFindViewById.getLayoutParams()).a0 = true;
            this.f486c.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f486c;
    }

    public int getEmptyVisibility() {
        return this.f487d;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((iHeight / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i) {
        View viewFindViewById;
        if (this.f485b == i) {
            return;
        }
        View view = this.f486c;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.b) this.f486c.getLayoutParams()).a0 = false;
            this.f486c = null;
        }
        this.f485b = i;
        if (i == -1 || (viewFindViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.f487d = i;
    }
}
