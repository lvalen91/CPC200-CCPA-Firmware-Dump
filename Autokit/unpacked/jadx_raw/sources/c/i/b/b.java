package c.i.b;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class b {

    public interface a<T> {
        void a(T t, Rect rect);
    }

    /* JADX INFO: renamed from: c.i.b.b$b, reason: collision with other inner class name */
    public interface InterfaceC0059b<T, V> {
        int a(T t);

        V b(T t, int i);
    }

    private static class c<T> implements Comparator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Rect f1247b = new Rect();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Rect f1248c = new Rect();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1249d;
        private final a<T> e;

        c(boolean z, a<T> aVar) {
            this.f1249d = z;
            this.e = aVar;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.f1247b;
            Rect rect2 = this.f1248c;
            this.e.a(t, rect);
            this.e.a(t2, rect2);
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
                return this.f1249d ? 1 : -1;
            }
            if (i3 > i4) {
                return this.f1249d ? -1 : 1;
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
                return this.f1249d ? 1 : -1;
            }
            if (i7 > i8) {
                return this.f1249d ? -1 : 1;
            }
            return 0;
        }
    }

    private static boolean a(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean zB = b(i, rect, rect2);
        if (b(i, rect, rect3) || !zB) {
            return false;
        }
        return !j(i, rect, rect3) || i == 17 || i == 66 || k(i, rect, rect2) < m(i, rect, rect3);
    }

    private static boolean b(int i, Rect rect, Rect rect2) {
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

    public static <L, T> T c(L l, InterfaceC0059b<L, T> interfaceC0059b, a<T> aVar, T t, Rect rect, int i) {
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
        int iA = interfaceC0059b.a(l);
        Rect rect3 = new Rect();
        for (int i2 = 0; i2 < iA; i2++) {
            T tB = interfaceC0059b.b(l, i2);
            if (tB != t) {
                aVar.a(tB, rect3);
                if (h(i, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t2 = tB;
                }
            }
        }
        return t2;
    }

    public static <L, T> T d(L l, InterfaceC0059b<L, T> interfaceC0059b, a<T> aVar, T t, int i, boolean z, boolean z2) {
        int iA = interfaceC0059b.a(l);
        ArrayList arrayList = new ArrayList(iA);
        for (int i2 = 0; i2 < iA; i2++) {
            arrayList.add(interfaceC0059b.b(l, i2));
        }
        Collections.sort(arrayList, new c(z, aVar));
        if (i == 1) {
            return (T) f(t, arrayList, z2);
        }
        if (i == 2) {
            return (T) e(t, arrayList, z2);
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }

    private static <T> T e(T t, ArrayList<T> arrayList, boolean z) {
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

    private static <T> T f(T t, ArrayList<T> arrayList, boolean z) {
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

    private static int g(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    private static boolean h(int i, Rect rect, Rect rect2, Rect rect3) {
        if (!i(rect, rect2, i)) {
            return false;
        }
        if (i(rect, rect3, i) && !a(i, rect, rect2, rect3)) {
            return !a(i, rect, rect3, rect2) && g(k(i, rect, rect2), o(i, rect, rect2)) < g(k(i, rect, rect3), o(i, rect, rect3));
        }
        return true;
    }

    private static boolean i(Rect rect, Rect rect2, int i) {
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

    private static boolean j(int i, Rect rect, Rect rect2) {
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

    private static int k(int i, Rect rect, Rect rect2) {
        return Math.max(0, l(i, rect, rect2));
    }

    private static int l(int i, Rect rect, Rect rect2) {
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

    private static int m(int i, Rect rect, Rect rect2) {
        return Math.max(1, n(i, rect, rect2));
    }

    private static int n(int i, Rect rect, Rect rect2) {
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

    private static int o(int i, Rect rect, Rect rect2) {
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
