package d.c.a.a.a0;

import android.graphics.RectF;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class b implements c {
    private final c a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f2281b;

    public b(float f, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).a;
            f += ((b) cVar).f2281b;
        }
        this.a = cVar;
        this.f2281b = f;
    }

    @Override // d.c.a.a.a0.c
    public float a(RectF rectF) {
        return Math.max(CropImageView.DEFAULT_ASPECT_RATIO, this.a.a(rectF) + this.f2281b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.a.equals(bVar.a) && this.f2281b == bVar.f2281b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Float.valueOf(this.f2281b)});
    }
}
