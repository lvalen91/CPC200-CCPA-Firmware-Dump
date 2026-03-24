package c.p;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class f0 extends e0 {
    private static boolean h = true;

    f0() {
    }

    @Override // c.p.i0
    @SuppressLint({"NewApi"})
    public void e(View view, int i, int i2, int i3, int i4) {
        if (h) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                h = false;
            }
        }
    }
}
