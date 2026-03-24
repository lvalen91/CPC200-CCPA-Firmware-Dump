package d.c.a.a.x;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import androidx.core.content.c.f;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.k;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class d {
    public final ColorStateList a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ColorStateList f2339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2341d;
    public final int e;
    public final float f;
    public final float g;
    public final float h;
    public final boolean i;
    public final float j;
    public float k;
    private final int l;
    private boolean m = false;
    private Typeface n;

    class a extends f.a {
        final /* synthetic */ f a;

        a(f fVar) {
            this.a = fVar;
        }

        @Override // androidx.core.content.c.f.a
        public void d(int i) {
            d.this.m = true;
            this.a.a(i);
        }

        @Override // androidx.core.content.c.f.a
        public void e(Typeface typeface) {
            d dVar = d.this;
            dVar.n = Typeface.create(typeface, dVar.f2341d);
            d.this.m = true;
            this.a.b(d.this.n, false);
        }
    }

    class b extends f {
        final /* synthetic */ TextPaint a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f f2343b;

        b(TextPaint textPaint, f fVar) {
            this.a = textPaint;
            this.f2343b = fVar;
        }

        @Override // d.c.a.a.x.f
        public void a(int i) {
            this.f2343b.a(i);
        }

        @Override // d.c.a.a.x.f
        public void b(Typeface typeface, boolean z) {
            d.this.l(this.a, typeface);
            this.f2343b.b(typeface, z);
        }
    }

    public d(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, k.TextAppearance);
        this.k = typedArrayObtainStyledAttributes.getDimension(k.TextAppearance_android_textSize, CropImageView.DEFAULT_ASPECT_RATIO);
        this.a = c.a(context, typedArrayObtainStyledAttributes, k.TextAppearance_android_textColor);
        c.a(context, typedArrayObtainStyledAttributes, k.TextAppearance_android_textColorHint);
        c.a(context, typedArrayObtainStyledAttributes, k.TextAppearance_android_textColorLink);
        this.f2341d = typedArrayObtainStyledAttributes.getInt(k.TextAppearance_android_textStyle, 0);
        this.e = typedArrayObtainStyledAttributes.getInt(k.TextAppearance_android_typeface, 1);
        int iE = c.e(typedArrayObtainStyledAttributes, k.TextAppearance_fontFamily, k.TextAppearance_android_fontFamily);
        this.l = typedArrayObtainStyledAttributes.getResourceId(iE, 0);
        this.f2340c = typedArrayObtainStyledAttributes.getString(iE);
        typedArrayObtainStyledAttributes.getBoolean(k.TextAppearance_textAllCaps, false);
        this.f2339b = c.a(context, typedArrayObtainStyledAttributes, k.TextAppearance_android_shadowColor);
        this.f = typedArrayObtainStyledAttributes.getFloat(k.TextAppearance_android_shadowDx, CropImageView.DEFAULT_ASPECT_RATIO);
        this.g = typedArrayObtainStyledAttributes.getFloat(k.TextAppearance_android_shadowDy, CropImageView.DEFAULT_ASPECT_RATIO);
        this.h = typedArrayObtainStyledAttributes.getFloat(k.TextAppearance_android_shadowRadius, CropImageView.DEFAULT_ASPECT_RATIO);
        typedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT < 21) {
            this.i = false;
            this.j = CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i, k.MaterialTextAppearance);
            this.i = typedArrayObtainStyledAttributes2.hasValue(k.MaterialTextAppearance_android_letterSpacing);
            this.j = typedArrayObtainStyledAttributes2.getFloat(k.MaterialTextAppearance_android_letterSpacing, CropImageView.DEFAULT_ASPECT_RATIO);
            typedArrayObtainStyledAttributes2.recycle();
        }
    }

    private void d() {
        String str;
        if (this.n == null && (str = this.f2340c) != null) {
            this.n = Typeface.create(str, this.f2341d);
        }
        if (this.n == null) {
            int i = this.e;
            if (i == 1) {
                this.n = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.n = Typeface.SERIF;
            } else if (i != 3) {
                this.n = Typeface.DEFAULT;
            } else {
                this.n = Typeface.MONOSPACE;
            }
            this.n = Typeface.create(this.n, this.f2341d);
        }
    }

    private boolean i(Context context) {
        if (e.a()) {
            return true;
        }
        int i = this.l;
        return (i != 0 ? androidx.core.content.c.f.a(context, i) : null) != null;
    }

    public Typeface e() {
        d();
        return this.n;
    }

    public Typeface f(Context context) {
        if (this.m) {
            return this.n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceC = androidx.core.content.c.f.c(context, this.l);
                this.n = typefaceC;
                if (typefaceC != null) {
                    this.n = Typeface.create(typefaceC, this.f2341d);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                String str = "Error loading font " + this.f2340c;
            }
        }
        d();
        this.m = true;
        return this.n;
    }

    public void g(Context context, TextPaint textPaint, f fVar) {
        l(textPaint, e());
        h(context, new b(textPaint, fVar));
    }

    public void h(Context context, f fVar) {
        if (i(context)) {
            f(context);
        } else {
            d();
        }
        if (this.l == 0) {
            this.m = true;
        }
        if (this.m) {
            fVar.b(this.n, true);
            return;
        }
        try {
            androidx.core.content.c.f.e(context, this.l, new a(fVar), null);
        } catch (Resources.NotFoundException unused) {
            this.m = true;
            fVar.a(1);
        } catch (Exception unused2) {
            String str = "Error loading font " + this.f2340c;
            this.m = true;
            fVar.a(-3);
        }
    }

    public void j(Context context, TextPaint textPaint, f fVar) {
        k(context, textPaint, fVar);
        ColorStateList colorStateList = this.a;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.h;
        float f2 = this.f;
        float f3 = this.g;
        ColorStateList colorStateList2 = this.f2339b;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void k(Context context, TextPaint textPaint, f fVar) {
        if (i(context)) {
            l(textPaint, f(context));
        } else {
            g(context, textPaint, fVar);
        }
    }

    public void l(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f2341d;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : CropImageView.DEFAULT_ASPECT_RATIO);
        textPaint.setTextSize(this.k);
        if (Build.VERSION.SDK_INT < 21 || !this.i) {
            return;
        }
        textPaint.setLetterSpacing(this.j);
    }
}
