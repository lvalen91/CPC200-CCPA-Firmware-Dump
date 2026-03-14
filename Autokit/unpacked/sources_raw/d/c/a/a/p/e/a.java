package d.c.a.a.p.e;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import d.c.a.a.p.c;
import d.c.a.a.p.d;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a extends d.c.a.a.n.a implements d {
    private final c o;

    @Override // d.c.a.a.p.d
    public void a() {
        this.o.a();
        throw null;
    }

    @Override // d.c.a.a.p.d
    public void b() {
        this.o.b();
        throw null;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        c cVar = this.o;
        if (cVar == null) {
            super.draw(canvas);
        } else {
            cVar.c(canvas);
            throw null;
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        this.o.d();
        throw null;
    }

    @Override // d.c.a.a.p.d
    public int getCircularRevealScrimColor() {
        this.o.e();
        throw null;
    }

    @Override // d.c.a.a.p.d
    public d.e getRevealInfo() {
        this.o.f();
        throw null;
    }

    @Override // android.view.View
    public boolean isOpaque() {
        c cVar = this.o;
        if (cVar == null) {
            return super.isOpaque();
        }
        cVar.g();
        throw null;
    }

    @Override // d.c.a.a.p.d
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.o.h(drawable);
        throw null;
    }

    @Override // d.c.a.a.p.d
    public void setCircularRevealScrimColor(int i) {
        this.o.i(i);
        throw null;
    }

    @Override // d.c.a.a.p.d
    public void setRevealInfo(d.e eVar) {
        this.o.j(eVar);
        throw null;
    }
}
