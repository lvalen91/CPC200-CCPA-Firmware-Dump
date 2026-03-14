package p016c.p052i.p054b;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: renamed from: c.i.b.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0632b {

    /* JADX INFO: renamed from: c.i.b.b$a */
    public interface a<T> {
        /* JADX INFO: renamed from: a */
        void mo4901a(T t, Rect rect);
    }

    /* JADX INFO: renamed from: c.i.b.b$b */
    public interface b<T, V> {
        /* JADX INFO: renamed from: a */
        int mo4903a(T t);

        /* JADX INFO: renamed from: b */
        V mo4904b(T t, int i);
    }

    /* JADX INFO: renamed from: c.i.b.b$c */
    private static class c<T> implements Comparator<T> {

        /* JADX INFO: renamed from: b */
        private final Rect f3847b = new Rect();

        /* JADX INFO: renamed from: c */
        private final Rect f3848c = new Rect();

        /* JADX INFO: renamed from: d */
        private final boolean f3849d;

        /* JADX INFO: renamed from: e */
        private final a<T> f3850e;

        c(boolean z, a<T> aVar) {
            this.f3849d = z;
            this.f3850e = aVar;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.f3847b;
            Rect rect2 = this.f3848c;
            this.f3850e.mo4901a(t, rect);
            this.f3850e.mo4901a(t2, rect2);
            int i = rect.top;
            int i2 = rect2.top;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            int i3 = rect.left;
            int i4 = rect2.left;
            if (i3 < i4) {
                return this.f3849d ? 1 : -1;
            }
            if (i3 > i4) {
                return this.f3849d ? -1 : 1;
            }
            int i5 = rect.bottom;
            int i6 = rect2.bottom;
            if (i5 < i6) {
                return -1;
            }
            if (i5 > i6) {
                return 1;
            }
            int i7 = rect.right;
            int i8 = rect2.right;
            if (i7 < i8) {
                return this.f3849d ? 1 : -1;
            }
            if (i7 > i8) {
                return this.f3849d ? -1 : 1;
            }
            return 0;
        }
    }

    /* JADX INFO: renamed from: a */
    private static boolean m4907a(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean zM4908b = m4908b(i, rect, rect2);
        if (m4908b(i, rect, rect3) || !zM4908b) {
            return false;
        }
        return !m4916j(i, rect, rect3) || i == 17 || i == 66 || m4917k(i, rect, rect2) < m4919m(i, rect, rect3);
    }

    /* JADX INFO: renamed from: b */
    private static boolean m4908b(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    /* JADX INFO: renamed from: c */
    public static <L, T> T m4909c(L l, b<L, T> bVar, a<T> aVar, T t, Rect rect, int i) {
        Rect rect2 = new Rect(rect);
        if (i == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else {
            if (i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            rect2.offset(0, -(rect.height() + 1));
        }
        T t2 = null;
        int iMo4903a = bVar.mo4903a(l);
        Rect rect3 = new Rect();
        for (int i2 = 0; i2 < iMo4903a; i2++) {
            T tMo4904b = bVar.mo4904b(l, i2);
            if (tMo4904b != t) {
                aVar.mo4901a(tMo4904b, rect3);
                if (m4914h(i, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t2 = tMo4904b;
                }
            }
        }
        return t2;
    }

    /* JADX INFO: renamed from: d */
    public static <L, T> T m4910d(L l, b<L, T> bVar, a<T> aVar, T t, int i, boolean z, boolean z2) {
        int iMo4903a = bVar.mo4903a(l);
        ArrayList arrayList = new ArrayList(iMo4903a);
        for (int i2 = 0; i2 < iMo4903a; i2++) {
            arrayList.add(bVar.mo4904b(l, i2));
        }
        Collections.sort(arrayList, new c(z, aVar));
        if (i == 1) {
            return (T) m4912f(t, arrayList, z2);
        }
        if (i == 2) {
            return (T) m4911e(t, arrayList, z2);
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }

    /* JADX INFO: renamed from: e */
    private static <T> T m4911e(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int iLastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        if (iLastIndexOf < size) {
            return arrayList.get(iLastIndexOf);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    /* JADX INFO: renamed from: f */
    private static <T> T m4912f(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int iIndexOf = (t == null ? size : arrayList.indexOf(t)) - 1;
        if (iIndexOf >= 0) {
            return arrayList.get(iIndexOf);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    /* JADX INFO: renamed from: g */
    private static int m4913g(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    /* JADX INFO: renamed from: h */
    private static boolean m4914h(int i, Rect rect, Rect rect2, Rect rect3) {
        if (!m4915i(rect, rect2, i)) {
            return false;
        }
        if (m4915i(rect, rect3, i) && !m4907a(i, rect, rect2, rect3)) {
            return !m4907a(i, rect, rect3, rect2) && m4913g(m4917k(i, rect, rect2), m4921o(i, rect, rect2)) < m4913g(m4917k(i, rect, rect3), m4921o(i, rect, rect3));
        }
        return true;
    }

    /* JADX INFO: renamed from: i */
    private static boolean m4915i(Rect rect, Rect rect2, int i) {
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            return (i2 > i3 || rect.left >= i3) && rect.left > rect2.left;
        }
        if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            return (i4 > i5 || rect.top >= i5) && rect.top > rect2.top;
        }
        if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            return (i6 < i7 || rect.right <= i7) && rect.right < rect2.right;
        }
        if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i8 = rect.top;
        int i9 = rect2.top;
        return (i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom;
    }

    /* JADX INFO: renamed from: j */
    private static boolean m4916j(int i, Rect rect, Rect rect2) {
        if (i == 17) {
            return rect.left >= rect2.right;
        }
        if (i == 33) {
            return rect.top >= rect2.bottom;
        }
        if (i == 66) {
            return rect.right <= rect2.left;
        }
        if (i == 130) {
            return rect.bottom <= rect2.top;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    /* JADX INFO: renamed from: k */
    private static int m4917k(int i, Rect rect, Rect rect2) {
        return Math.max(0, m4918l(i, rect, rect2));
    }

    /* JADX INFO: renamed from: l */
    private static int m4918l(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.right;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.bottom;
        } else if (i == 66) {
            i2 = rect2.left;
            i3 = rect.right;
        } else {
            if (i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i2 = rect2.top;
            i3 = rect.bottom;
        }
        return i2 - i3;
    }

    /* JADX INFO: renamed from: m */
    private static int m4919m(int i, Rect rect, Rect rect2) {
        return Math.max(1, m4920n(i, rect, rect2));
    }

    /* JADX INFO: renamed from: n */
    private static int m4920n(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.left;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.top;
        } else if (i == 66) {
            i2 = rect2.right;
            i3 = rect.right;
        } else {
            if (i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i2 = rect2.bottom;
            i3 = rect.bottom;
        }
        return i2 - i3;
    }

    /* JADX INFO: renamed from: o */
    private static int m4921o(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
        }
        return Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
    }
}
