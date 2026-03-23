package p016c.p030c.p031a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import p016c.p030c.p031a.C0533h;

/* JADX INFO: renamed from: c.c.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0527b extends C0529d {

    /* JADX INFO: renamed from: c.c.a.b$a */
    class a implements C0533h.a {
        a(C0527b c0527b) {
        }

        @Override // p016c.p030c.p031a.C0533h.a
        /* JADX INFO: renamed from: a */
        public void mo4177a(Canvas canvas, RectF rectF, float f, Paint paint) {
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    C0527b() {
    }

    @Override // p016c.p030c.p031a.C0529d, p016c.p030c.p031a.InterfaceC0531f
    /* JADX INFO: renamed from: m */
    public void mo4176m() {
        C0533h.f3270r = new a(this);
    }
}
