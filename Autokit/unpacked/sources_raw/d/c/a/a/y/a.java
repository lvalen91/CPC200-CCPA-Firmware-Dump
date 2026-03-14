package d.c.a.a.y;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import d.c.a.a.a0.g;
import d.c.a.a.a0.k;
import d.c.a.a.a0.n;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a extends Drawable implements n, androidx.core.graphics.drawable.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f2345b;

    /* JADX INFO: renamed from: d.c.a.a.y.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0125a {
    }

    /* synthetic */ a(b bVar, C0125a c0125a) {
        this(bVar);
    }

    public a a() {
        this.f2345b = new b(this.f2345b);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b bVar = this.f2345b;
        if (bVar.f2346b) {
            bVar.a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f2345b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f2345b.a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable mutate() {
        a();
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f2345b.a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f2345b.a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zB = d.c.a.a.y.b.b(iArr);
        b bVar = this.f2345b;
        if (bVar.f2346b == zB) {
            return zOnStateChange;
        }
        bVar.f2346b = zB;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f2345b.a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2345b.a.setColorFilter(colorFilter);
    }

    @Override // d.c.a.a.a0.n
    public void setShapeAppearanceModel(k kVar) {
        this.f2345b.a.setShapeAppearanceModel(kVar);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTint(int i) {
        this.f2345b.a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.f2345b.a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f2345b.a.setTintMode(mode);
    }

    public a(k kVar) {
        this(new b(new g(kVar)));
    }

    static final class b extends Drawable.ConstantState {
        g a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f2346b;

        public b(g gVar) {
            this.a = gVar;
            this.f2346b = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a newDrawable() {
            return new a(new b(this), null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b(b bVar) {
            this.a = (g) bVar.a.getConstantState().newDrawable();
            this.f2346b = bVar.f2346b;
        }
    }

    private a(b bVar) {
        this.f2345b = bVar;
    }
}
