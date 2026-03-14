package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import p016c.p033e.p037b.p038k.C0558e;

/* JADX INFO: renamed from: androidx.constraintlayout.widget.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0215g extends View {

    /* JADX INFO: renamed from: b */
    private int f1650b;

    /* JADX INFO: renamed from: c */
    private View f1651c;

    /* JADX INFO: renamed from: d */
    private int f1652d;

    /* JADX INFO: renamed from: a */
    public void m1522a(ConstraintLayout constraintLayout) {
        if (this.f1651c == null) {
            return;
        }
        ConstraintLayout.C0207b c0207b = (ConstraintLayout.C0207b) getLayoutParams();
        ConstraintLayout.C0207b c0207b2 = (ConstraintLayout.C0207b) this.f1651c.getLayoutParams();
        c0207b2.f1475m0.m4486T0(0);
        if (c0207b.f1475m0.m4537y() != C0558e.b.FIXED) {
            c0207b.f1475m0.m4488U0(c0207b2.f1475m0.m4481R());
        }
        if (c0207b.f1475m0.m4475O() != C0558e.b.FIXED) {
            c0207b.f1475m0.m4532v0(c0207b2.f1475m0.m4531v());
        }
        c0207b2.f1475m0.m4486T0(8);
    }

    /* JADX INFO: renamed from: b */
    public void m1523b(ConstraintLayout constraintLayout) {
        if (this.f1650b == -1 && !isInEditMode()) {
            setVisibility(this.f1652d);
        }
        View viewFindViewById = constraintLayout.findViewById(this.f1650b);
        this.f1651c = viewFindViewById;
        if (viewFindViewById != null) {
            ((ConstraintLayout.C0207b) viewFindViewById.getLayoutParams()).f1451a0 = true;
            this.f1651c.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f1651c;
    }

    public int getEmptyVisibility() {
        return this.f1652d;
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
        if (this.f1650b == i) {
            return;
        }
        View view = this.f1651c;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.C0207b) this.f1651c.getLayoutParams()).f1451a0 = false;
            this.f1651c = null;
        }
        this.f1650b = i;
        if (i == -1 || (viewFindViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.f1652d = i;
    }
}
