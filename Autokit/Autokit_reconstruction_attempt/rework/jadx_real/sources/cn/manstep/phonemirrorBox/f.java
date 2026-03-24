package cn.manstep.phonemirrorBox;

import android.graphics.Point;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class f implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static e f1626b;
    public List<g> a = new ArrayList();

    public static void b(boolean z) {
        f fVar = (f) d();
        if (fVar != null) {
            Point point = new Point();
            Iterator<g> it = fVar.a.iterator();
            while (it.hasNext()) {
                it.next().a(2, 0, point);
            }
            Iterator<g> it2 = fVar.a.iterator();
            while (it2.hasNext()) {
                it2.next().a(1, z ? 1 : 0, point);
            }
        }
    }

    public static void c() {
        if (f1626b == null) {
            f1626b = new f();
            g(false);
        }
    }

    public static e d() {
        if (f1626b == null) {
            c();
        }
        return f1626b;
    }

    public static void e() {
        f fVar = (f) d();
        if (fVar != null) {
            fVar.a.clear();
        }
        f1626b = null;
    }

    public static void f(int i, int i2, int i3, int i4, float f) {
        f fVar = (f) d();
        if (fVar != null) {
            int[] iArr = {i, i2, i3, i4, (int) f};
            Iterator<g> it = fVar.a.iterator();
            while (it.hasNext()) {
                it.next().a(3, 0, iArr);
            }
        }
    }

    public static void g(boolean z) {
        f fVar = (f) d();
        if (fVar != null) {
            Iterator<g> it = fVar.a.iterator();
            while (it.hasNext()) {
                it.next().a(4, z ? 1 : 0, null);
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.e
    public void a(g gVar) {
        this.a.add(gVar);
    }
}
