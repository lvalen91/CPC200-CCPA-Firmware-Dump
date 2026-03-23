package androidx.appcompat.widget;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.graphics.drawable.InterfaceC0253c;

/* JADX INFO: renamed from: androidx.appcompat.widget.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0184p {

    /* JADX INFO: renamed from: c */
    private static final int[] f1253c = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* JADX INFO: renamed from: a */
    private final ProgressBar f1254a;

    /* JADX INFO: renamed from: b */
    private Bitmap f1255b;

    C0184p(ProgressBar progressBar) {
        this.f1254a = progressBar;
    }

    /* JADX INFO: renamed from: a */
    private Shape m1274a() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: d */
    private Drawable m1275d(Drawable drawable, boolean z) {
        if (drawable instanceof InterfaceC0253c) {
            InterfaceC0253c interfaceC0253c = (InterfaceC0253c) drawable;
            Drawable drawableMo1798a = interfaceC0253c.mo1798a();
            if (drawableMo1798a != null) {
                interfaceC0253c.mo1799b(m1275d(drawableMo1798a, z));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    drawableArr[i] = m1275d(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.f1255b == null) {
                    this.f1255b = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(m1274a());
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    /* JADX INFO: renamed from: e */
    private Drawable m1276e(Drawable drawable) {
        if (!(drawable instanceof AnimationDrawable)) {
            return drawable;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        AnimationDrawable animationDrawable2 = new AnimationDrawable();
        animationDrawable2.setOneShot(animationDrawable.isOneShot());
        for (int i = 0; i < numberOfFrames; i++) {
            Drawable drawableM1275d = m1275d(animationDrawable.getFrame(i), true);
            drawableM1275d.setLevel(10000);
            animationDrawable2.addFrame(drawableM1275d, animationDrawable.getDuration(i));
        }
        animationDrawable2.setLevel(10000);
        return animationDrawable2;
    }

    /* JADX INFO: renamed from: b */
    Bitmap m1277b() {
        return this.f1255b;
    }

    /* JADX INFO: renamed from: c */
    void mo1278c(AttributeSet attributeSet, int i) {
        C0195u0 c0195u0M1321v = C0195u0.m1321v(this.f1254a.getContext(), attributeSet, f1253c, i, 0);
        Drawable drawableM1329h = c0195u0M1321v.m1329h(0);
        if (drawableM1329h != null) {
            this.f1254a.setIndeterminateDrawable(m1276e(drawableM1329h));
        }
        Drawable drawableM1329h2 = c0195u0M1321v.m1329h(1);
        if (drawableM1329h2 != null) {
            this.f1254a.setProgressDrawable(m1275d(drawableM1329h2, false));
        }
        c0195u0M1321v.m1341w();
    }
}
