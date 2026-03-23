package p016c.p030c.p031a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p030c.p031a.C0533h;

/* JADX INFO: renamed from: c.c.a.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0529d implements InterfaceC0531f {

    /* JADX INFO: renamed from: a */
    final RectF f3256a = new RectF();

    /* JADX INFO: renamed from: c.c.a.d$a */
    class a implements C0533h.a {
        a() {
        }

        @Override // p016c.p030c.p031a.C0533h.a
        /* JADX INFO: renamed from: a */
        public void mo4177a(Canvas canvas, RectF rectF, float f, Paint paint) {
            float f2 = 2.0f * f;
            float fWidth = (rectF.width() - f2) - 1.0f;
            float fHeight = (rectF.height() - f2) - 1.0f;
            if (f >= 1.0f) {
                float f3 = f + 0.5f;
                float f4 = -f3;
                C0529d.this.f3256a.set(f4, f4, f3, f3);
                int iSave = canvas.save();
                canvas.translate(rectF.left + f3, rectF.top + f3);
                canvas.drawArc(C0529d.this.f3256a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, CropImageView.DEFAULT_ASPECT_RATIO);
                canvas.rotate(90.0f);
                canvas.drawArc(C0529d.this.f3256a, 180.0f, 90.0f, true, paint);
                canvas.translate(fHeight, CropImageView.DEFAULT_ASPECT_RATIO);
                canvas.rotate(90.0f);
                canvas.drawArc(C0529d.this.f3256a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, CropImageView.DEFAULT_ASPECT_RATIO);
                canvas.rotate(90.0f);
                canvas.drawArc(C0529d.this.f3256a, 180.0f, 90.0f, true, paint);
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

    C0529d() {
    }

    /* JADX INFO: renamed from: n */
    private C0533h m4192n(InterfaceC0530e interfaceC0530e) {
        return (C0533h) interfaceC0530e.m4197d();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: a */
    public float mo4179a(InterfaceC0530e interfaceC0530e) {
        return m4192n(interfaceC0530e).m4220i();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: b */
    public float mo4180b(InterfaceC0530e interfaceC0530e) {
        return m4192n(interfaceC0530e).m4218g();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: c */
    public float mo4181c(InterfaceC0530e interfaceC0530e) {
        return m4192n(interfaceC0530e).m4221j();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: d */
    public float mo4182d(InterfaceC0530e interfaceC0530e) {
        return m4192n(interfaceC0530e).m4222k();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: e */
    public void mo4183e(InterfaceC0530e interfaceC0530e) {
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: f */
    public ColorStateList mo4184f(InterfaceC0530e interfaceC0530e) {
        return m4192n(interfaceC0530e).m4217f();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: g */
    public void mo4185g(InterfaceC0530e interfaceC0530e, float f) {
        m4192n(interfaceC0530e).m4228r(f);
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: h */
    public void mo4186h(InterfaceC0530e interfaceC0530e, float f) {
        m4192n(interfaceC0530e).m4226p(f);
        m4193o(interfaceC0530e);
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: i */
    public void mo4187i(InterfaceC0530e interfaceC0530e) {
        m4192n(interfaceC0530e).m4224m(interfaceC0530e.m4199f());
        m4193o(interfaceC0530e);
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: j */
    public void mo4188j(InterfaceC0530e interfaceC0530e, ColorStateList colorStateList) {
        m4192n(interfaceC0530e).m4225o(colorStateList);
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: k */
    public float mo4189k(InterfaceC0530e interfaceC0530e) {
        return m4192n(interfaceC0530e).m4223l();
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: l */
    public void mo4190l(InterfaceC0530e interfaceC0530e, float f) {
        m4192n(interfaceC0530e).m4227q(f);
        m4193o(interfaceC0530e);
    }

    @Override // p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: m */
    public void mo4176m() {
        C0533h.f3270r = new a();
    }

    /* JADX INFO: renamed from: o */
    public void m4193o(InterfaceC0530e interfaceC0530e) {
        Rect rect = new Rect();
        m4192n(interfaceC0530e).m4219h(rect);
        interfaceC0530e.m4198e((int) Math.ceil(mo4182d(interfaceC0530e)), (int) Math.ceil(mo4181c(interfaceC0530e)));
        interfaceC0530e.m4194a(rect.left, rect.top, rect.right, rect.bottom);
    }
}
