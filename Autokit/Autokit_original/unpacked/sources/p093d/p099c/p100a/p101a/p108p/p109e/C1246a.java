package p093d.p099c.p100a.p101a.p108p.p109e;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import p093d.p099c.p100a.p101a.p106n.C1239a;
import p093d.p099c.p100a.p101a.p108p.C1244c;
import p093d.p099c.p100a.p101a.p108p.InterfaceC1245d;

/* JADX INFO: renamed from: d.c.a.a.p.e.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1246a extends C1239a implements InterfaceC1245d {

    /* JADX INFO: renamed from: o */
    private final C1244c f7799o;

    @Override // p093d.p099c.p100a.p101a.p108p.InterfaceC1245d
    /* JADX INFO: renamed from: a */
    public void mo9408a() {
        this.f7799o.m9410a();
        throw null;
    }

    @Override // p093d.p099c.p100a.p101a.p108p.InterfaceC1245d
    /* JADX INFO: renamed from: b */
    public void mo9409b() {
        this.f7799o.m9411b();
        throw null;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        C1244c c1244c = this.f7799o;
        if (c1244c == null) {
            super.draw(canvas);
        } else {
            c1244c.m9412c(canvas);
            throw null;
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        this.f7799o.m9413d();
        throw null;
    }

    @Override // p093d.p099c.p100a.p101a.p108p.InterfaceC1245d
    public int getCircularRevealScrimColor() {
        this.f7799o.m9414e();
        throw null;
    }

    @Override // p093d.p099c.p100a.p101a.p108p.InterfaceC1245d
    public InterfaceC1245d.e getRevealInfo() {
        this.f7799o.m9415f();
        throw null;
    }

    @Override // android.view.View
    public boolean isOpaque() {
        C1244c c1244c = this.f7799o;
        if (c1244c == null) {
            return super.isOpaque();
        }
        c1244c.m9416g();
        throw null;
    }

    @Override // p093d.p099c.p100a.p101a.p108p.InterfaceC1245d
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f7799o.m9417h(drawable);
        throw null;
    }

    @Override // p093d.p099c.p100a.p101a.p108p.InterfaceC1245d
    public void setCircularRevealScrimColor(int i) {
        this.f7799o.m9418i(i);
        throw null;
    }

    @Override // p093d.p099c.p100a.p101a.p108p.InterfaceC1245d
    public void setRevealInfo(InterfaceC1245d.e eVar) {
        this.f7799o.m9419j(eVar);
        throw null;
    }
}
