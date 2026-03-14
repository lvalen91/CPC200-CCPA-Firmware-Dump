package p093d.p099c.p100a.p101a.p117x;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import androidx.core.content.p003c.C0249f;
import com.yalantis.ucrop.view.CropImageView;
import p093d.p099c.p100a.p101a.C1226k;

/* JADX INFO: renamed from: d.c.a.a.x.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1258d {

    /* JADX INFO: renamed from: a */
    public final ColorStateList f7815a;

    /* JADX INFO: renamed from: b */
    public final ColorStateList f7816b;

    /* JADX INFO: renamed from: c */
    public final String f7817c;

    /* JADX INFO: renamed from: d */
    public final int f7818d;

    /* JADX INFO: renamed from: e */
    public final int f7819e;

    /* JADX INFO: renamed from: f */
    public final float f7820f;

    /* JADX INFO: renamed from: g */
    public final float f7821g;

    /* JADX INFO: renamed from: h */
    public final float f7822h;

    /* JADX INFO: renamed from: i */
    public final boolean f7823i;

    /* JADX INFO: renamed from: j */
    public final float f7824j;

    /* JADX INFO: renamed from: k */
    public float f7825k;

    /* JADX INFO: renamed from: l */
    private final int f7826l;

    /* JADX INFO: renamed from: m */
    private boolean f7827m = false;

    /* JADX INFO: renamed from: n */
    private Typeface f7828n;

    /* JADX INFO: renamed from: d.c.a.a.x.d$a */
    class a extends C0249f.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ AbstractC1260f f7829a;

        a(AbstractC1260f abstractC1260f) {
            this.f7829a = abstractC1260f;
        }

        @Override // androidx.core.content.p003c.C0249f.a
        /* JADX INFO: renamed from: d */
        public void mo1386d(int i) {
            C1258d.this.f7827m = true;
            this.f7829a.mo8184a(i);
        }

        @Override // androidx.core.content.p003c.C0249f.a
        /* JADX INFO: renamed from: e */
        public void mo1387e(Typeface typeface) {
            C1258d c1258d = C1258d.this;
            c1258d.f7828n = Typeface.create(typeface, c1258d.f7818d);
            C1258d.this.f7827m = true;
            this.f7829a.mo8185b(C1258d.this.f7828n, false);
        }
    }

    /* JADX INFO: renamed from: d.c.a.a.x.d$b */
    class b extends AbstractC1260f {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ TextPaint f7831a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AbstractC1260f f7832b;

        b(TextPaint textPaint, AbstractC1260f abstractC1260f) {
            this.f7831a = textPaint;
            this.f7832b = abstractC1260f;
        }

        @Override // p093d.p099c.p100a.p101a.p117x.AbstractC1260f
        /* JADX INFO: renamed from: a */
        public void mo8184a(int i) {
            this.f7832b.mo8184a(i);
        }

        @Override // p093d.p099c.p100a.p101a.p117x.AbstractC1260f
        /* JADX INFO: renamed from: b */
        public void mo8185b(Typeface typeface, boolean z) {
            C1258d.this.m9473l(this.f7831a, typeface);
            this.f7832b.mo8185b(typeface, z);
        }
    }

    public C1258d(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, C1226k.TextAppearance);
        this.f7825k = typedArrayObtainStyledAttributes.getDimension(C1226k.TextAppearance_android_textSize, CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7815a = C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.TextAppearance_android_textColor);
        C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.TextAppearance_android_textColorHint);
        C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.TextAppearance_android_textColorLink);
        this.f7818d = typedArrayObtainStyledAttributes.getInt(C1226k.TextAppearance_android_textStyle, 0);
        this.f7819e = typedArrayObtainStyledAttributes.getInt(C1226k.TextAppearance_android_typeface, 1);
        int iM9458e = C1257c.m9458e(typedArrayObtainStyledAttributes, C1226k.TextAppearance_fontFamily, C1226k.TextAppearance_android_fontFamily);
        this.f7826l = typedArrayObtainStyledAttributes.getResourceId(iM9458e, 0);
        this.f7817c = typedArrayObtainStyledAttributes.getString(iM9458e);
        typedArrayObtainStyledAttributes.getBoolean(C1226k.TextAppearance_textAllCaps, false);
        this.f7816b = C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.TextAppearance_android_shadowColor);
        this.f7820f = typedArrayObtainStyledAttributes.getFloat(C1226k.TextAppearance_android_shadowDx, CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7821g = typedArrayObtainStyledAttributes.getFloat(C1226k.TextAppearance_android_shadowDy, CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7822h = typedArrayObtainStyledAttributes.getFloat(C1226k.TextAppearance_android_shadowRadius, CropImageView.DEFAULT_ASPECT_RATIO);
        typedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT < 21) {
            this.f7823i = false;
            this.f7824j = CropImageView.DEFAULT_ASPECT_RATIO;
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i, C1226k.MaterialTextAppearance);
            this.f7823i = typedArrayObtainStyledAttributes2.hasValue(C1226k.MaterialTextAppearance_android_letterSpacing);
            this.f7824j = typedArrayObtainStyledAttributes2.getFloat(C1226k.MaterialTextAppearance_android_letterSpacing, CropImageView.DEFAULT_ASPECT_RATIO);
            typedArrayObtainStyledAttributes2.recycle();
        }
    }

    /* JADX INFO: renamed from: d */
    private void m9465d() {
        String str;
        if (this.f7828n == null && (str = this.f7817c) != null) {
            this.f7828n = Typeface.create(str, this.f7818d);
        }
        if (this.f7828n == null) {
            int i = this.f7819e;
            if (i == 1) {
                this.f7828n = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.f7828n = Typeface.SERIF;
            } else if (i != 3) {
                this.f7828n = Typeface.DEFAULT;
            } else {
                this.f7828n = Typeface.MONOSPACE;
            }
            this.f7828n = Typeface.create(this.f7828n, this.f7818d);
        }
    }

    /* JADX INFO: renamed from: i */
    private boolean m9466i(Context context) {
        if (C1259e.m9474a()) {
            return true;
        }
        int i = this.f7826l;
        return (i != 0 ? C0249f.m1750a(context, i) : null) != null;
    }

    /* JADX INFO: renamed from: e */
    public Typeface m9467e() {
        m9465d();
        return this.f7828n;
    }

    /* JADX INFO: renamed from: f */
    public Typeface m9468f(Context context) {
        if (this.f7827m) {
            return this.f7828n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceM1752c = C0249f.m1752c(context, this.f7826l);
                this.f7828n = typefaceM1752c;
                if (typefaceM1752c != null) {
                    this.f7828n = Typeface.create(typefaceM1752c, this.f7818d);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                String str = "Error loading font " + this.f7817c;
            }
        }
        m9465d();
        this.f7827m = true;
        return this.f7828n;
    }

    /* JADX INFO: renamed from: g */
    public void m9469g(Context context, TextPaint textPaint, AbstractC1260f abstractC1260f) {
        m9473l(textPaint, m9467e());
        m9470h(context, new b(textPaint, abstractC1260f));
    }

    /* JADX INFO: renamed from: h */
    public void m9470h(Context context, AbstractC1260f abstractC1260f) {
        if (m9466i(context)) {
            m9468f(context);
        } else {
            m9465d();
        }
        if (this.f7826l == 0) {
            this.f7827m = true;
        }
        if (this.f7827m) {
            abstractC1260f.mo8185b(this.f7828n, true);
            return;
        }
        try {
            C0249f.m1754e(context, this.f7826l, new a(abstractC1260f), null);
        } catch (Resources.NotFoundException unused) {
            this.f7827m = true;
            abstractC1260f.mo8184a(1);
        } catch (Exception unused2) {
            String str = "Error loading font " + this.f7817c;
            this.f7827m = true;
            abstractC1260f.mo8184a(-3);
        }
    }

    /* JADX INFO: renamed from: j */
    public void m9471j(Context context, TextPaint textPaint, AbstractC1260f abstractC1260f) {
        m9472k(context, textPaint, abstractC1260f);
        ColorStateList colorStateList = this.f7815a;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.f7822h;
        float f2 = this.f7820f;
        float f3 = this.f7821g;
        ColorStateList colorStateList2 = this.f7816b;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    /* JADX INFO: renamed from: k */
    public void m9472k(Context context, TextPaint textPaint, AbstractC1260f abstractC1260f) {
        if (m9466i(context)) {
            m9473l(textPaint, m9468f(context));
        } else {
            m9469g(context, textPaint, abstractC1260f);
        }
    }

    /* JADX INFO: renamed from: l */
    public void m9473l(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f7818d;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : CropImageView.DEFAULT_ASPECT_RATIO);
        textPaint.setTextSize(this.f7825k);
        if (Build.VERSION.SDK_INT < 21 || !this.f7823i) {
            return;
        }
        textPaint.setLetterSpacing(this.f7824j);
    }
}
