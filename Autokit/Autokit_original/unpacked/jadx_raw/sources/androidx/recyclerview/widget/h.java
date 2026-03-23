package androidx.recyclerview.widget;

import androidx.recyclerview.widget.a;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class h {
    final a a;

    interface a {
        void a(a.b bVar);

        a.b b(int i, int i2, int i3, Object obj);
    }

    h(a aVar) {
        this.a = aVar;
    }

    private int a(List<a.b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).a != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    private void c(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        int i3 = bVar.f927d < bVar2.f925b ? -1 : 0;
        if (bVar.f925b < bVar2.f925b) {
            i3++;
        }
        int i4 = bVar2.f925b;
        int i5 = bVar.f925b;
        if (i4 <= i5) {
            bVar.f925b = i5 + bVar2.f927d;
        }
        int i6 = bVar2.f925b;
        int i7 = bVar.f927d;
        if (i6 <= i7) {
            bVar.f927d = i7 + bVar2.f927d;
        }
        bVar2.f925b += i3;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    private void d(List<a.b> list, int i, int i2) {
        a.b bVar = list.get(i);
        a.b bVar2 = list.get(i2);
        int i3 = bVar2.a;
        if (i3 == 1) {
            c(list, i, bVar, i2, bVar2);
        } else if (i3 == 2) {
            e(list, i, bVar, i2, bVar2);
        } else {
            if (i3 != 4) {
                return;
            }
            f(list, i, bVar, i2, bVar2);
        }
    }

    void b(List<a.b> list) {
        while (true) {
            int iA = a(list);
            if (iA == -1) {
                return;
            } else {
                d(list, iA, iA + 1);
            }
        }
    }

    void e(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        boolean z;
        int i3 = bVar.f925b;
        int i4 = bVar.f927d;
        boolean z2 = false;
        if (i3 < i4) {
            if (bVar2.f925b == i3 && bVar2.f927d == i4 - i3) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (bVar2.f925b == i4 + 1 && bVar2.f927d == i3 - i4) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        int i5 = bVar.f927d;
        int i6 = bVar2.f925b;
        if (i5 < i6) {
            bVar2.f925b = i6 - 1;
        } else {
            int i7 = bVar2.f927d;
            if (i5 < i6 + i7) {
                bVar2.f927d = i7 - 1;
                bVar.a = 2;
                bVar.f927d = 1;
                if (bVar2.f927d == 0) {
                    list.remove(i2);
                    this.a.a(bVar2);
                    return;
                }
                return;
            }
        }
        int i8 = bVar.f925b;
        int i9 = bVar2.f925b;
        a.b bVarB = null;
        if (i8 <= i9) {
            bVar2.f925b = i9 + 1;
        } else {
            int i10 = bVar2.f927d;
            if (i8 < i9 + i10) {
                bVarB = this.a.b(2, i8 + 1, (i9 + i10) - i8, null);
                bVar2.f927d = bVar.f925b - bVar2.f925b;
            }
        }
        if (z2) {
            list.set(i, bVar2);
            list.remove(i2);
            this.a.a(bVar);
            return;
        }
        if (z) {
            if (bVarB != null) {
                int i11 = bVar.f925b;
                if (i11 > bVarB.f925b) {
                    bVar.f925b = i11 - bVarB.f927d;
                }
                int i12 = bVar.f927d;
                if (i12 > bVarB.f925b) {
                    bVar.f927d = i12 - bVarB.f927d;
                }
            }
            int i13 = bVar.f925b;
            if (i13 > bVar2.f925b) {
                bVar.f925b = i13 - bVar2.f927d;
            }
            int i14 = bVar.f927d;
            if (i14 > bVar2.f925b) {
                bVar.f927d = i14 - bVar2.f927d;
            }
        } else {
            if (bVarB != null) {
                int i15 = bVar.f925b;
                if (i15 >= bVarB.f925b) {
                    bVar.f925b = i15 - bVarB.f927d;
                }
                int i16 = bVar.f927d;
                if (i16 >= bVarB.f925b) {
                    bVar.f927d = i16 - bVarB.f927d;
                }
            }
            int i17 = bVar.f925b;
            if (i17 >= bVar2.f925b) {
                bVar.f925b = i17 - bVar2.f927d;
            }
            int i18 = bVar.f927d;
            if (i18 >= bVar2.f925b) {
                bVar.f927d = i18 - bVar2.f927d;
            }
        }
        list.set(i, bVar2);
        if (bVar.f925b != bVar.f927d) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVarB != null) {
            list.add(i, bVarB);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void f(List<a.b> list, int i, a.b bVar, int i2, a.b bVar2) {
        a.b bVarB;
        int i3;
        int i4;
        int i5 = bVar.f927d;
        int i6 = bVar2.f925b;
        a.b bVarB2 = null;
        if (i5 >= i6) {
            int i7 = bVar2.f927d;
            if (i5 < i6 + i7) {
                bVar2.f927d = i7 - 1;
                bVarB = this.a.b(4, bVar.f925b, 1, bVar2.f926c);
            }
            i3 = bVar.f925b;
            i4 = bVar2.f925b;
            if (i3 > i4) {
                bVar2.f925b = i4 + 1;
            } else {
                int i8 = bVar2.f927d;
                if (i3 < i4 + i8) {
                    int i9 = (i4 + i8) - i3;
                    bVarB2 = this.a.b(4, i3 + 1, i9, bVar2.f926c);
                    bVar2.f927d -= i9;
                }
            }
            list.set(i2, bVar);
            if (bVar2.f927d <= 0) {
                list.set(i, bVar2);
            } else {
                list.remove(i);
                this.a.a(bVar2);
            }
            if (bVarB != null) {
                list.add(i, bVarB);
            }
            if (bVarB2 == null) {
                list.add(i, bVarB2);
                return;
            }
            return;
        }
        bVar2.f925b = i6 - 1;
        bVarB = null;
        i3 = bVar.f925b;
        i4 = bVar2.f925b;
        if (i3 > i4) {
        }
        list.set(i2, bVar);
        if (bVar2.f927d <= 0) {
        }
        if (bVarB != null) {
        }
        if (bVarB2 == null) {
        }
    }
}
