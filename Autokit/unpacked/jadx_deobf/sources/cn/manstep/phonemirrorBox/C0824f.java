package cn.manstep.phonemirrorBox;

import android.graphics.Point;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0824f implements InterfaceC0812e {

    /* JADX INFO: renamed from: b */
    static InterfaceC0812e f4878b;

    /* JADX INFO: renamed from: a */
    public List<InterfaceC0845g> f4879a = new ArrayList();

    /* JADX INFO: renamed from: b */
    public static void m6201b(boolean z) {
        C0824f c0824f = (C0824f) m6203d();
        if (c0824f != null) {
            Point point = new Point();
            Iterator<InterfaceC0845g> it = c0824f.f4879a.iterator();
            while (it.hasNext()) {
                it.next().mo5313a(2, 0, point);
            }
            Iterator<InterfaceC0845g> it2 = c0824f.f4879a.iterator();
            while (it2.hasNext()) {
                it2.next().mo5313a(1, z ? 1 : 0, point);
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m6202c() {
        if (f4878b == null) {
            f4878b = new C0824f();
            m6206g(false);
        }
    }

    /* JADX INFO: renamed from: d */
    public static InterfaceC0812e m6203d() {
        if (f4878b == null) {
            m6202c();
        }
        return f4878b;
    }

    /* JADX INFO: renamed from: e */
    public static void m6204e() {
        C0824f c0824f = (C0824f) m6203d();
        if (c0824f != null) {
            c0824f.f4879a.clear();
        }
        f4878b = null;
    }

    /* JADX INFO: renamed from: f */
    public static void m6205f(int i, int i2, int i3, int i4, float f) {
        C0824f c0824f = (C0824f) m6203d();
        if (c0824f != null) {
            int[] iArr = {i, i2, i3, i4, (int) f};
            Iterator<InterfaceC0845g> it = c0824f.f4879a.iterator();
            while (it.hasNext()) {
                it.next().mo5313a(3, 0, iArr);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public static void m6206g(boolean z) {
        C0824f c0824f = (C0824f) m6203d();
        if (c0824f != null) {
            Iterator<InterfaceC0845g> it = c0824f.f4879a.iterator();
            while (it.hasNext()) {
                it.next().mo5313a(4, z ? 1 : 0, null);
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.InterfaceC0812e
    /* JADX INFO: renamed from: a */
    public void mo6189a(InterfaceC0845g interfaceC0845g) {
        this.f4879a.add(interfaceC0845g);
    }
}
