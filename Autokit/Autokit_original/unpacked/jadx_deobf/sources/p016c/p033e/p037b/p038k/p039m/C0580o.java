package p016c.p033e.p037b.p038k.p039m;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import p016c.p033e.p037b.C0547d;
import p016c.p033e.p037b.p038k.C0555b;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.C0559f;

/* JADX INFO: renamed from: c.e.b.k.m.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0580o {

    /* JADX INFO: renamed from: f */
    static int f3672f;

    /* JADX INFO: renamed from: b */
    int f3674b;

    /* JADX INFO: renamed from: c */
    int f3675c;

    /* JADX INFO: renamed from: a */
    ArrayList<C0558e> f3673a = new ArrayList<>();

    /* JADX INFO: renamed from: d */
    ArrayList<a> f3676d = null;

    /* JADX INFO: renamed from: e */
    private int f3677e = -1;

    /* JADX INFO: renamed from: c.e.b.k.m.o$a */
    class a {
        public a(C0580o c0580o, C0558e c0558e, C0547d c0547d, int i) {
            new WeakReference(c0558e);
            c0547d.m4379x(c0558e.f3514F);
            c0547d.m4379x(c0558e.f3515G);
            c0547d.m4379x(c0558e.f3516H);
            c0547d.m4379x(c0558e.f3517I);
            c0547d.m4379x(c0558e.f3518J);
        }
    }

    public C0580o(int i) {
        this.f3674b = -1;
        this.f3675c = 0;
        int i2 = f3672f;
        f3672f = i2 + 1;
        this.f3674b = i2;
        this.f3675c = i;
    }

    /* JADX INFO: renamed from: e */
    private String m4648e() {
        int i = this.f3675c;
        return i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown";
    }

    /* JADX INFO: renamed from: j */
    private int m4649j(C0547d c0547d, ArrayList<C0558e> arrayList, int i) {
        int iM4379x;
        int iM4379x2;
        C0559f c0559f = (C0559f) arrayList.get(0).m4463I();
        c0547d.m4361D();
        c0559f.mo4413g(c0547d, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).mo4413g(c0547d, false);
        }
        if (i == 0 && c0559f.f3600y0 > 0) {
            C0555b.m4421b(c0559f, c0547d, arrayList, 0);
        }
        if (i == 1 && c0559f.f3601z0 > 0) {
            C0555b.m4421b(c0559f, c0547d, arrayList, 1);
        }
        try {
            c0547d.m4380z();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f3676d = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.f3676d.add(new a(this, arrayList.get(i3), c0547d, i));
        }
        if (i == 0) {
            iM4379x = c0547d.m4379x(c0559f.f3514F);
            iM4379x2 = c0547d.m4379x(c0559f.f3516H);
            c0547d.m4361D();
        } else {
            iM4379x = c0547d.m4379x(c0559f.f3515G);
            iM4379x2 = c0547d.m4379x(c0559f.f3517I);
            c0547d.m4361D();
        }
        return iM4379x2 - iM4379x;
    }

    /* JADX INFO: renamed from: a */
    public boolean m4650a(C0558e c0558e) {
        if (this.f3673a.contains(c0558e)) {
            return false;
        }
        this.f3673a.add(c0558e);
        return true;
    }

    /* JADX INFO: renamed from: b */
    public void m4651b(ArrayList<C0580o> arrayList) {
        int size = this.f3673a.size();
        if (this.f3677e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                C0580o c0580o = arrayList.get(i);
                if (this.f3677e == c0580o.f3674b) {
                    m4655g(this.f3675c, c0580o);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    /* JADX INFO: renamed from: c */
    public int m4652c() {
        return this.f3674b;
    }

    /* JADX INFO: renamed from: d */
    public int m4653d() {
        return this.f3675c;
    }

    /* JADX INFO: renamed from: f */
    public int m4654f(C0547d c0547d, int i) {
        if (this.f3673a.size() == 0) {
            return 0;
        }
        return m4649j(c0547d, this.f3673a, i);
    }

    /* JADX INFO: renamed from: g */
    public void m4655g(int i, C0580o c0580o) {
        for (C0558e c0558e : this.f3673a) {
            c0580o.m4650a(c0558e);
            if (i == 0) {
                c0558e.f3560m0 = c0580o.m4652c();
            } else {
                c0558e.f3562n0 = c0580o.m4652c();
            }
        }
        this.f3677e = c0580o.f3674b;
    }

    /* JADX INFO: renamed from: h */
    public void m4656h(boolean z) {
    }

    /* JADX INFO: renamed from: i */
    public void m4657i(int i) {
        this.f3675c = i;
    }

    public String toString() {
        String str = m4648e() + " [" + this.f3674b + "] <";
        Iterator<C0558e> it = this.f3673a.iterator();
        while (it.hasNext()) {
            str = str + " " + it.next().m4523r();
        }
        return str + " >";
    }
}
