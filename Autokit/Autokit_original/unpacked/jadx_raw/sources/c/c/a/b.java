package c.c.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import c.c.a.h;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class b extends d {

    class a implements h.a {
        a(b bVar) {
        }

        @Override // c.c.a.h.a
        public void a(Canvas canvas, RectF rectF, float f, Paint paint) {
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    b() {
    }

    @Override // c.c.a.d, c.c.a.f
    public void m() {
        h.r = new a(this);
    }
}
