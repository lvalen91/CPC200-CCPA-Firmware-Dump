package p016c.p033e.p037b.p038k;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p016c.p033e.p037b.C0546c;
import p016c.p033e.p037b.C0552i;
import p016c.p033e.p037b.p038k.p039m.C0574i;
import p016c.p033e.p037b.p038k.p039m.C0580o;

/* JADX INFO: renamed from: c.e.b.k.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0557d {

    /* JADX INFO: renamed from: b */
    private int f3489b;

    /* JADX INFO: renamed from: c */
    private boolean f3490c;

    /* JADX INFO: renamed from: d */
    public final C0558e f3491d;

    /* JADX INFO: renamed from: e */
    public final b f3492e;

    /* JADX INFO: renamed from: f */
    public C0557d f3493f;

    /* JADX INFO: renamed from: i */
    C0552i f3496i;

    /* JADX INFO: renamed from: a */
    private HashSet<C0557d> f3488a = null;

    /* JADX INFO: renamed from: g */
    public int f3494g = 0;

    /* JADX INFO: renamed from: h */
    int f3495h = -1;

    /* JADX INFO: renamed from: c.e.b.k.d$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f3497a;

        static {
            int[] iArr = new int[b.values().length];
            f3497a = iArr;
            try {
                iArr[b.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3497a[b.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3497a[b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3497a[b.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3497a[b.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3497a[b.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3497a[b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3497a[b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3497a[b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX INFO: renamed from: c.e.b.k.d$b */
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

    public C0557d(C0558e c0558e, b bVar) {
        this.f3491d = c0558e;
        this.f3492e = bVar;
    }

    /* JADX INFO: renamed from: a */
    public boolean m4425a(C0557d c0557d, int i, int i2, boolean z) {
        if (c0557d == null) {
            m4440p();
            return true;
        }
        if (!z && !m4439o(c0557d)) {
            return false;
        }
        this.f3493f = c0557d;
        if (c0557d.f3488a == null) {
            c0557d.f3488a = new HashSet<>();
        }
        HashSet<C0557d> hashSet = this.f3493f.f3488a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        if (i > 0) {
            this.f3494g = i;
        } else {
            this.f3494g = 0;
        }
        this.f3495h = i2;
        return true;
    }

    /* JADX INFO: renamed from: b */
    public void m4426b(int i, ArrayList<C0580o> arrayList, C0580o c0580o) {
        HashSet<C0557d> hashSet = this.f3488a;
        if (hashSet != null) {
            Iterator<C0557d> it = hashSet.iterator();
            while (it.hasNext()) {
                C0574i.m4635a(it.next().f3491d, i, arrayList, c0580o);
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public HashSet<C0557d> m4427c() {
        return this.f3488a;
    }

    /* JADX INFO: renamed from: d */
    public int m4428d() {
        if (this.f3490c) {
            return this.f3489b;
        }
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public int m4429e() {
        C0557d c0557d;
        if (this.f3491d.m4479Q() == 8) {
            return 0;
        }
        return (this.f3495h <= -1 || (c0557d = this.f3493f) == null || c0557d.f3491d.m4479Q() != 8) ? this.f3494g : this.f3495h;
    }

    /* JADX INFO: renamed from: f */
    public final C0557d m4430f() {
        switch (a.f3497a[this.f3492e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f3491d.f3516H;
            case 3:
                return this.f3491d.f3514F;
            case 4:
                return this.f3491d.f3517I;
            case 5:
                return this.f3491d.f3515G;
            default:
                throw new AssertionError(this.f3492e.name());
        }
    }

    /* JADX INFO: renamed from: g */
    public C0558e m4431g() {
        return this.f3491d;
    }

    /* JADX INFO: renamed from: h */
    public C0552i m4432h() {
        return this.f3496i;
    }

    /* JADX INFO: renamed from: i */
    public C0557d m4433i() {
        return this.f3493f;
    }

    /* JADX INFO: renamed from: j */
    public b m4434j() {
        return this.f3492e;
    }

    /* JADX INFO: renamed from: k */
    public boolean m4435k() {
        HashSet<C0557d> hashSet = this.f3488a;
        if (hashSet == null) {
            return false;
        }
        Iterator<C0557d> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().m4430f().m4438n()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: l */
    public boolean m4436l() {
        HashSet<C0557d> hashSet = this.f3488a;
        return hashSet != null && hashSet.size() > 0;
    }

    /* JADX INFO: renamed from: m */
    public boolean m4437m() {
        return this.f3490c;
    }

    /* JADX INFO: renamed from: n */
    public boolean m4438n() {
        return this.f3493f != null;
    }

    /* JADX INFO: renamed from: o */
    public boolean m4439o(C0557d c0557d) {
        if (c0557d == null) {
            return false;
        }
        b bVarM4434j = c0557d.m4434j();
        b bVar = this.f3492e;
        if (bVarM4434j == bVar) {
            return bVar != b.BASELINE || (c0557d.m4431g().m4487U() && m4431g().m4487U());
        }
        switch (a.f3497a[bVar.ordinal()]) {
            case 1:
                return (bVarM4434j == b.BASELINE || bVarM4434j == b.CENTER_X || bVarM4434j == b.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z = bVarM4434j == b.LEFT || bVarM4434j == b.RIGHT;
                if (c0557d.m4431g() instanceof C0560g) {
                    return z || bVarM4434j == b.CENTER_X;
                }
                return z;
            case 4:
            case 5:
                boolean z2 = bVarM4434j == b.TOP || bVarM4434j == b.BOTTOM;
                if (c0557d.m4431g() instanceof C0560g) {
                    return z2 || bVarM4434j == b.CENTER_Y;
                }
                return z2;
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.f3492e.name());
        }
    }

    /* JADX INFO: renamed from: p */
    public void m4440p() {
        HashSet<C0557d> hashSet;
        C0557d c0557d = this.f3493f;
        if (c0557d != null && (hashSet = c0557d.f3488a) != null) {
            hashSet.remove(this);
            if (this.f3493f.f3488a.size() == 0) {
                this.f3493f.f3488a = null;
            }
        }
        this.f3488a = null;
        this.f3493f = null;
        this.f3494g = 0;
        this.f3495h = -1;
        this.f3490c = false;
        this.f3489b = 0;
    }

    /* JADX INFO: renamed from: q */
    public void m4441q() {
        this.f3490c = false;
        this.f3489b = 0;
    }

    /* JADX INFO: renamed from: r */
    public void m4442r(C0546c c0546c) {
        C0552i c0552i = this.f3496i;
        if (c0552i == null) {
            this.f3496i = new C0552i(C0552i.a.UNRESTRICTED, null);
        } else {
            c0552i.m4396d();
        }
    }

    /* JADX INFO: renamed from: s */
    public void m4443s(int i) {
        this.f3489b = i;
        this.f3490c = true;
    }

    public String toString() {
        return this.f3491d.m4523r() + ":" + this.f3492e.toString();
    }
}
