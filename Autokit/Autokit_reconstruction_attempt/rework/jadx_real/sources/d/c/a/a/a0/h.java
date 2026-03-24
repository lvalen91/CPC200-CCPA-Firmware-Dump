package d.c.a.a.a0;

import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h {
    static d a(int i) {
        return i != 0 ? i != 1 ? b() : new e() : new j();
    }

    static d b() {
        return new j();
    }

    static f c() {
        return new f();
    }

    public static void d(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof g) {
            ((g) background).V(f);
        }
    }

    public static void e(View view) {
        Drawable background = view.getBackground();
        if (background instanceof g) {
            f(view, (g) background);
        }
    }

    public static void f(View view, g gVar) {
        if (gVar.O()) {
            gVar.Z(com.google.android.material.internal.l.c(view));
        }
    }
}
