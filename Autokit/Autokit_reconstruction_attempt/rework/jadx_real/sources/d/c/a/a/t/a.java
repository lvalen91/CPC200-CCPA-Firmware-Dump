package d.c.a.a.t;

import android.content.Context;
import android.graphics.Color;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.x.b;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a {
    private final boolean a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2335c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f2336d;

    public a(Context context) {
        this.a = b.b(context, d.c.a.a.b.elevationOverlayEnabled, false);
        this.f2334b = d.c.a.a.q.a.a(context, d.c.a.a.b.elevationOverlayColor, 0);
        this.f2335c = d.c.a.a.q.a.a(context, d.c.a.a.b.colorSurface, 0);
        this.f2336d = context.getResources().getDisplayMetrics().density;
    }

    private boolean e(int i) {
        return c.g.d.a.d(i, 255) == this.f2335c;
    }

    public float a(float f) {
        return (this.f2336d <= CropImageView.DEFAULT_ASPECT_RATIO || f <= CropImageView.DEFAULT_ASPECT_RATIO) ? CropImageView.DEFAULT_ASPECT_RATIO : Math.min(((((float) Math.log1p(f / r0)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    public int b(int i, float f) {
        float fA = a(f);
        return c.g.d.a.d(d.c.a.a.q.a.f(c.g.d.a.d(i, 255), this.f2334b, fA), Color.alpha(i));
    }

    public int c(int i, float f) {
        return (this.a && e(i)) ? b(i, f) : i;
    }

    public boolean d() {
        return this.a;
    }
}
