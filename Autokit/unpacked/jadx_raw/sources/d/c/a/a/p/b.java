package d.c.a.a.p;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import d.c.a.a.p.d;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b extends FrameLayout implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f2327b;

    @Override // d.c.a.a.p.d
    public void a() {
        this.f2327b.a();
        throw null;
    }

    @Override // d.c.a.a.p.d
    public void b() {
        this.f2327b.b();
        throw null;
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
        c cVar = this.f2327b;
        if (cVar == null) {
            super.draw(canvas);
        } else {
            cVar.c(canvas);
            throw null;
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        this.f2327b.d();
        throw null;
    }

    @Override // d.c.a.a.p.d
    public int getCircularRevealScrimColor() {
        this.f2327b.e();
        throw null;
    }

    @Override // d.c.a.a.p.d
    public d.e getRevealInfo() {
        this.f2327b.f();
        throw null;
    }

    @Override // android.view.View
    public boolean isOpaque() {
        c cVar = this.f2327b;
        if (cVar == null) {
            return super.isOpaque();
        }
        cVar.g();
        throw null;
    }

    @Override // d.c.a.a.p.d
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f2327b.h(drawable);
        throw null;
    }

    @Override // d.c.a.a.p.d
    public void setCircularRevealScrimColor(int i) {
        this.f2327b.i(i);
        throw null;
    }

    @Override // d.c.a.a.p.d
    public void setRevealInfo(d.e eVar) {
        this.f2327b.j(eVar);
        throw null;
    }
}
