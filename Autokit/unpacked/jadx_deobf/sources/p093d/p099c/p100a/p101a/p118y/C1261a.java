package p093d.p099c.p100a.p101a.p118y;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.InterfaceC0252b;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n;

/* JADX INFO: renamed from: d.c.a.a.y.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1261a extends Drawable implements InterfaceC1215n, InterfaceC0252b {

    /* JADX INFO: renamed from: b */
    private b f7835b;

    /* JADX INFO: renamed from: d.c.a.a.y.a$a */
    static /* synthetic */ class a {
    }

    /* synthetic */ C1261a(b bVar, a aVar) {
        this(bVar);
    }

    /* JADX INFO: renamed from: a */
    public C1261a m9475a() {
        this.f7835b = new b(this.f7835b);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b bVar = this.f7835b;
        if (bVar.f7837b) {
            bVar.f7836a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f7835b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f7835b.f7836a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable mutate() {
        m9475a();
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f7835b.f7836a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f7835b.f7836a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zM9478b = C1262b.m9478b(iArr);
        b bVar = this.f7835b;
        if (bVar.f7837b == zM9478b) {
            return zOnStateChange;
        }
        bVar.f7837b = zM9478b;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f7835b.f7836a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f7835b.f7836a.setColorFilter(colorFilter);
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n
    public void setShapeAppearanceModel(C1212k c1212k) {
        this.f7835b.f7836a.setShapeAppearanceModel(c1212k);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTint(int i) {
        this.f7835b.f7836a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintList(ColorStateList colorStateList) {
        this.f7835b.f7836a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f7835b.f7836a.setTintMode(mode);
    }

    public C1261a(C1212k c1212k) {
        this(new b(new C1208g(c1212k)));
    }

    /* JADX INFO: renamed from: d.c.a.a.y.a$b */
    static final class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a */
        C1208g f7836a;

        /* JADX INFO: renamed from: b */
        boolean f7837b;

        public b(C1208g c1208g) {
            this.f7836a = c1208g;
            this.f7837b = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1261a newDrawable() {
            return new C1261a(new b(this), null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b(b bVar) {
            this.f7836a = (C1208g) bVar.f7836a.getConstantState().newDrawable();
            this.f7837b = bVar.f7837b;
        }
    }

    private C1261a(b bVar) {
        this.f7835b = bVar;
    }
}
