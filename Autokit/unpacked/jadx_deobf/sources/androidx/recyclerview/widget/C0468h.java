package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0461a;
import java.util.List;

/* JADX INFO: renamed from: androidx.recyclerview.widget.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0468h {

    /* JADX INFO: renamed from: a */
    final a f3021a;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.h$a */
    interface a {
        /* JADX INFO: renamed from: a */
        void mo3784a(C0461a.b bVar);

        /* JADX INFO: renamed from: b */
        C0461a.b mo3785b(int i, int i2, int i3, Object obj);
    }

    C0468h(a aVar) {
        this.f3021a = aVar;
    }

    /* JADX INFO: renamed from: a */
    private int m3890a(List<C0461a.b> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).f2893a != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    /* JADX INFO: renamed from: c */
    private void m3891c(List<C0461a.b> list, int i, C0461a.b bVar, int i2, C0461a.b bVar2) {
        int i3 = bVar.f2896d < bVar2.f2894b ? -1 : 0;
        if (bVar.f2894b < bVar2.f2894b) {
            i3++;
        }
        int i4 = bVar2.f2894b;
        int i5 = bVar.f2894b;
        if (i4 <= i5) {
            bVar.f2894b = i5 + bVar2.f2896d;
        }
        int i6 = bVar2.f2894b;
        int i7 = bVar.f2896d;
        if (i6 <= i7) {
            bVar.f2896d = i7 + bVar2.f2896d;
        }
        bVar2.f2894b += i3;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    /* JADX INFO: renamed from: d */
    private void m3892d(List<C0461a.b> list, int i, int i2) {
        C0461a.b bVar = list.get(i);
        C0461a.b bVar2 = list.get(i2);
        int i3 = bVar2.f2893a;
        if (i3 == 1) {
            m3891c(list, i, bVar, i2, bVar2);
        } else if (i3 == 2) {
            m3894e(list, i, bVar, i2, bVar2);
        } else {
            if (i3 != 4) {
                return;
            }
            m3895f(list, i, bVar, i2, bVar2);
        }
    }

    /* JADX INFO: renamed from: b */
    void m3893b(List<C0461a.b> list) {
        while (true) {
            int iM3890a = m3890a(list);
            if (iM3890a == -1) {
                return;
            } else {
                m3892d(list, iM3890a, iM3890a + 1);
            }
        }
    }

    /* JADX INFO: renamed from: e */
    void m3894e(List<C0461a.b> list, int i, C0461a.b bVar, int i2, C0461a.b bVar2) {
        boolean z;
        int i3 = bVar.f2894b;
        int i4 = bVar.f2896d;
        boolean z2 = false;
        if (i3 < i4) {
            if (bVar2.f2894b == i3 && bVar2.f2896d == i4 - i3) {
                z = false;
                z2 = true;
            } else {
                z = false;
            }
        } else if (bVar2.f2894b == i4 + 1 && bVar2.f2896d == i3 - i4) {
            z = true;
            z2 = true;
        } else {
            z = true;
        }
        int i5 = bVar.f2896d;
        int i6 = bVar2.f2894b;
        if (i5 < i6) {
            bVar2.f2894b = i6 - 1;
        } else {
            int i7 = bVar2.f2896d;
            if (i5 < i6 + i7) {
                bVar2.f2896d = i7 - 1;
                bVar.f2893a = 2;
                bVar.f2896d = 1;
                if (bVar2.f2896d == 0) {
                    list.remove(i2);
                    this.f3021a.mo3784a(bVar2);
                    return;
                }
                return;
            }
        }
        int i8 = bVar.f2894b;
        int i9 = bVar2.f2894b;
        C0461a.b bVarMo3785b = null;
        if (i8 <= i9) {
            bVar2.f2894b = i9 + 1;
        } else {
            int i10 = bVar2.f2896d;
            if (i8 < i9 + i10) {
                bVarMo3785b = this.f3021a.mo3785b(2, i8 + 1, (i9 + i10) - i8, null);
                bVar2.f2896d = bVar.f2894b - bVar2.f2894b;
            }
        }
        if (z2) {
            list.set(i, bVar2);
            list.remove(i2);
            this.f3021a.mo3784a(bVar);
            return;
        }
        if (z) {
            if (bVarMo3785b != null) {
                int i11 = bVar.f2894b;
                if (i11 > bVarMo3785b.f2894b) {
                    bVar.f2894b = i11 - bVarMo3785b.f2896d;
                }
                int i12 = bVar.f2896d;
                if (i12 > bVarMo3785b.f2894b) {
                    bVar.f2896d = i12 - bVarMo3785b.f2896d;
                }
            }
            int i13 = bVar.f2894b;
            if (i13 > bVar2.f2894b) {
                bVar.f2894b = i13 - bVar2.f2896d;
            }
            int i14 = bVar.f2896d;
            if (i14 > bVar2.f2894b) {
                bVar.f2896d = i14 - bVar2.f2896d;
            }
        } else {
            if (bVarMo3785b != null) {
                int i15 = bVar.f2894b;
                if (i15 >= bVarMo3785b.f2894b) {
                    bVar.f2894b = i15 - bVarMo3785b.f2896d;
                }
                int i16 = bVar.f2896d;
                if (i16 >= bVarMo3785b.f2894b) {
                    bVar.f2896d = i16 - bVarMo3785b.f2896d;
                }
            }
            int i17 = bVar.f2894b;
            if (i17 >= bVar2.f2894b) {
                bVar.f2894b = i17 - bVar2.f2896d;
            }
            int i18 = bVar.f2896d;
            if (i18 >= bVar2.f2894b) {
                bVar.f2896d = i18 - bVar2.f2896d;
            }
        }
        list.set(i, bVar2);
        if (bVar.f2894b != bVar.f2896d) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVarMo3785b != null) {
            list.add(i, bVarMo3785b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m3895f(List<C0461a.b> list, int i, C0461a.b bVar, int i2, C0461a.b bVar2) {
        C0461a.b bVarMo3785b;
        int i3;
        int i4;
        int i5 = bVar.f2896d;
        int i6 = bVar2.f2894b;
        C0461a.b bVarMo3785b2 = null;
        if (i5 >= i6) {
            int i7 = bVar2.f2896d;
            if (i5 < i6 + i7) {
                bVar2.f2896d = i7 - 1;
                bVarMo3785b = this.f3021a.mo3785b(4, bVar.f2894b, 1, bVar2.f2895c);
            }
            i3 = bVar.f2894b;
            i4 = bVar2.f2894b;
            if (i3 > i4) {
                bVar2.f2894b = i4 + 1;
            } else {
                int i8 = bVar2.f2896d;
                if (i3 < i4 + i8) {
                    int i9 = (i4 + i8) - i3;
                    bVarMo3785b2 = this.f3021a.mo3785b(4, i3 + 1, i9, bVar2.f2895c);
                    bVar2.f2896d -= i9;
                }
            }
            list.set(i2, bVar);
            if (bVar2.f2896d <= 0) {
                list.set(i, bVar2);
            } else {
                list.remove(i);
                this.f3021a.mo3784a(bVar2);
            }
            if (bVarMo3785b != null) {
                list.add(i, bVarMo3785b);
            }
            if (bVarMo3785b2 == null) {
                list.add(i, bVarMo3785b2);
                return;
            }
            return;
        }
        bVar2.f2894b = i6 - 1;
        bVarMo3785b = null;
        i3 = bVar.f2894b;
        i4 = bVar2.f2894b;
        if (i3 > i4) {
        }
        list.set(i2, bVar);
        if (bVar2.f2896d <= 0) {
        }
        if (bVarMo3785b != null) {
        }
        if (bVarMo3785b2 == null) {
        }
    }
}
