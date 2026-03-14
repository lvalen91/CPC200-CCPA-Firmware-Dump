package c.c.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import c.c.a.h;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class d implements f {
    final RectF a = new RectF();

    class a implements h.a {
        a() {
        }

        @Override // c.c.a.h.a
        public void a(Canvas canvas, RectF rectF, float f, Paint paint) {
            float f2 = 2.0f * f;
            float fWidth = (rectF.width() - f2) - 1.0f;
            float fHeight = (rectF.height() - f2) - 1.0f;
            if (f >= 1.0f) {
                float f3 = f + 0.5f;
                float f4 = -f3;
                d.this.a.set(f4, f4, f3, f3);
                int iSave = canvas.save();
                canvas.translate(rectF.left + f3, rectF.top + f3);
                canvas.drawArc(d.this.a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, CropImageView.DEFAULT_ASPECT_RATIO);
                canvas.rotate(90.0f);
                canvas.drawArc(d.this.a, 180.0f, 90.0f, true, paint);
                canvas.translate(fHeight, CropImageView.DEFAULT_ASPECT_RATIO);
                canvas.rotate(90.0f);
                canvas.drawArc(d.this.a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, CropImageView.DEFAULT_ASPECT_RATIO);
                canvas.rotate(90.0f);
                canvas.drawArc(d.this.a, 180.0f, 90.0f, true, paint);
                canvas.restoreToCount(iSave);
                float f5 = (rectF.left + f3) - 1.0f;
                float f6 = rectF.top;
                canvas.drawRect(f5, f6, (rectF.right - f3) + 1.0f, f6 + f3, paint);
                float f7 = (rectF.left + f3) - 1.0f;
                float f8 = rectF.bottom;
                canvas.drawRect(f7, f8 - f3, (rectF.right - f3) + 1.0f, f8, paint);
            }
            canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
        }
    }

    d() {
    }

    private h n(e eVar) {
        return (h) eVar.d();
    }

    @Override // c.c.a.f
    public float a(e eVar) {
        return n(eVar).i();
    }

    @Override // c.c.a.f
    public float b(e eVar) {
        return n(eVar).g();
    }

    @Override // c.c.a.f
    public float c(e eVar) {
        return n(eVar).j();
    }

    @Override // c.c.a.f
    public float d(e eVar) {
        return n(eVar).k();
    }

    @Override // c.c.a.f
    public void e(e eVar) {
    }

    @Override // c.c.a.f
    public ColorStateList f(e eVar) {
        return n(eVar).f();
    }

    @Override // c.c.a.f
    public void g(e eVar, float f) {
        n(eVar).r(f);
    }

    @Override // c.c.a.f
    public void h(e eVar, float f) {
        n(eVar).p(f);
        o(eVar);
    }

    @Override // c.c.a.f
    public void i(e eVar) {
        n(eVar).m(eVar.f());
        o(eVar);
    }

    @Override // c.c.a.f
    public void j(e eVar, ColorStateList colorStateList) {
        n(eVar).o(colorStateList);
    }

    @Override // c.c.a.f
    public float k(e eVar) {
        return n(eVar).l();
    }

    @Override // c.c.a.f
    public void l(e eVar, float f) {
        n(eVar).q(f);
        o(eVar);
    }

    @Override // c.c.a.f
    public void m() {
        h.r = new a();
    }

    public void o(e eVar) {
        Rect rect = new Rect();
        n(eVar).h(rect);
        eVar.e((int) Math.ceil(d(eVar)), (int) Math.ceil(c(eVar)));
        eVar.a(rect.left, rect.top, rect.right, rect.bottom);
    }
}
