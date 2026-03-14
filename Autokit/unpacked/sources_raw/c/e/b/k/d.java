package c.e.b.k;

import c.e.b.i;
import c.e.b.k.m.o;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f1132d;
    public final b e;
    public d f;
    c.e.b.i i;
    private HashSet<d> a = null;
    public int g = 0;
    int h = -1;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[b.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[b.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[b.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public enum b {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public d(e eVar, b bVar) {
        this.f1132d = eVar;
        this.e = bVar;
    }

    public boolean a(d dVar, int i, int i2, boolean z) {
        if (dVar == null) {
            p();
            return true;
        }
        if (!z && !o(dVar)) {
            return false;
        }
        this.f = dVar;
        if (dVar.a == null) {
            dVar.a = new HashSet<>();
        }
        HashSet<d> hashSet = this.f.a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        if (i > 0) {
            this.g = i;
        } else {
            this.g = 0;
        }
        this.h = i2;
        return true;
    }

    public void b(int i, ArrayList<o> arrayList, o oVar) {
        HashSet<d> hashSet = this.a;
        if (hashSet != null) {
            Iterator<d> it = hashSet.iterator();
            while (it.hasNext()) {
                c.e.b.k.m.i.a(it.next().f1132d, i, arrayList, oVar);
            }
        }
    }

    public HashSet<d> c() {
        return this.a;
    }

    public int d() {
        if (this.f1131c) {
            return this.f1130b;
        }
        return 0;
    }

    public int e() {
        d dVar;
        if (this.f1132d.Q() == 8) {
            return 0;
        }
        return (this.h <= -1 || (dVar = this.f) == null || dVar.f1132d.Q() != 8) ? this.g : this.h;
    }

    public final d f() {
        switch (a.a[this.e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f1132d.H;
            case 3:
                return this.f1132d.F;
            case 4:
                return this.f1132d.I;
            case 5:
                return this.f1132d.G;
            default:
                throw new AssertionError(this.e.name());
        }
    }

    public e g() {
        return this.f1132d;
    }

    public c.e.b.i h() {
        return this.i;
    }

    public d i() {
        return this.f;
    }

    public b j() {
        return this.e;
    }

    public boolean k() {
        HashSet<d> hashSet = this.a;
        if (hashSet == null) {
            return false;
        }
        Iterator<d> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().f().n()) {
                return true;
            }
        }
        return false;
    }

    public boolean l() {
        HashSet<d> hashSet = this.a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean m() {
        return this.f1131c;
    }

    public boolean n() {
        return this.f != null;
    }

    public boolean o(d dVar) {
        if (dVar == null) {
            return false;
        }
        b bVarJ = dVar.j();
        b bVar = this.e;
        if (bVarJ == bVar) {
            return bVar != b.BASELINE || (dVar.g().U() && g().U());
        }
        switch (a.a[bVar.ordinal()]) {
            case 1:
                return (bVarJ == b.BASELINE || bVarJ == b.CENTER_X || bVarJ == b.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z = bVarJ == b.LEFT || bVarJ == b.RIGHT;
                if (dVar.g() instanceof g) {
                    return z || bVarJ == b.CENTER_X;
                }
                return z;
            case 4:
            case 5:
                boolean z2 = bVarJ == b.TOP || bVarJ == b.BOTTOM;
                if (dVar.g() instanceof g) {
                    return z2 || bVarJ == b.CENTER_Y;
                }
                return z2;
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.e.name());
        }
    }

    public void p() {
        HashSet<d> hashSet;
        d dVar = this.f;
        if (dVar != null && (hashSet = dVar.a) != null) {
            hashSet.remove(this);
            if (this.f.a.size() == 0) {
                this.f.a = null;
            }
        }
        this.a = null;
        this.f = null;
        this.g = 0;
        this.h = -1;
        this.f1131c = false;
        this.f1130b = 0;
    }

    public void q() {
        this.f1131c = false;
        this.f1130b = 0;
    }

    public void r(c.e.b.c cVar) {
        c.e.b.i iVar = this.i;
        if (iVar == null) {
            this.i = new c.e.b.i(i.a.UNRESTRICTED, null);
        } else {
            iVar.d();
        }
    }

    public void s(int i) {
        this.f1130b = i;
        this.f1131c = true;
    }

    public String toString() {
        return this.f1132d.r() + ":" + this.e.toString();
    }
}
