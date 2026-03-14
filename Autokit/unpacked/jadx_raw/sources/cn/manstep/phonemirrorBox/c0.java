package cn.manstep.phonemirrorBox;

import android.text.TextUtils;
import android.view.WindowManager;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class c0 {
    private static c0 l;
    private int i = 0;
    private int j = 100;
    private int k = 100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final cn.manstep.phonemirrorBox.util.x f1568c = new cn.manstep.phonemirrorBox.util.x();
    private final cn.manstep.phonemirrorBox.util.x a = new cn.manstep.phonemirrorBox.util.x();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cn.manstep.phonemirrorBox.util.x f1567b = new cn.manstep.phonemirrorBox.util.x();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<cn.manstep.phonemirrorBox.util.x> f1569d = new LinkedList();
    private final cn.manstep.phonemirrorBox.util.x g = new cn.manstep.phonemirrorBox.util.x();
    private final cn.manstep.phonemirrorBox.util.x f = new cn.manstep.phonemirrorBox.util.x();
    private final cn.manstep.phonemirrorBox.util.x e = new cn.manstep.phonemirrorBox.util.x();
    private final List<String> h = new LinkedList();

    private c0() {
    }

    public static cn.manstep.phonemirrorBox.util.x a() {
        return i().f1568c;
    }

    public static cn.manstep.phonemirrorBox.util.x b(int i) {
        i().n(i);
        return a();
    }

    private void c(cn.manstep.phonemirrorBox.util.x xVar) {
        this.f1569d.clear();
        if (xVar == null || xVar.k()) {
            this.f1569d.add(new cn.manstep.phonemirrorBox.util.x(800, 480));
            return;
        }
        int[] iArr = {480, 720, 1080, 1440};
        int i = 0;
        for (int i2 = 4; i < i2; i2 = 4) {
            int i3 = iArr[i];
            cn.manstep.phonemirrorBox.util.x xVar2 = new cn.manstep.phonemirrorBox.util.x(xVar);
            int i4 = 2560;
            if (xVar.f1935c < xVar.f1934b) {
                if (i3 == 480) {
                    i4 = 800;
                } else if (i3 == 1080) {
                    i4 = 1920;
                } else if (i3 != 1440) {
                    i3 = 720;
                    i4 = 1280;
                }
            } else if (i3 == 480) {
                i3 = 800;
                i4 = 480;
            } else if (i3 == 1080) {
                i3 = 1920;
                i4 = 1080;
            } else if (i3 == 1440) {
                i3 = 2560;
                i4 = 1440;
            } else {
                i3 = 1280;
                i4 = 720;
            }
            xVar2.f1935c = i3;
            int i5 = xVar.f1935c;
            int i6 = ((int) (((i3 * 1.0f) * xVar.f1934b) / i5)) & 65534;
            xVar2.f1934b = i6;
            if (i6 > i4) {
                xVar2.f1934b = i4;
                xVar2.f1935c = ((int) (((i4 * 1.0f) * i5) / xVar.f1934b)) & 65534;
            }
            this.f1569d.add(xVar2);
            i++;
        }
    }

    private int d(int i, int i2) {
        if (i * i2 < 384000) {
            return 100;
        }
        int i3 = (int) (((((r2 - 384000) * 23) / 998400) + 120) * 1.25f);
        return i3 - (10 - (i3 % 10));
    }

    private int e(int i, int i2, int i3, int i4, List<String> list) {
        LinkedList linkedList = new LinkedList();
        for (int i5 = 0; i5 < 10; i5++) {
            double d2 = i;
            double d3 = i5;
            Double.isNaN(d3);
            double d4 = 1.0d - (d3 * 0.05d);
            Double.isNaN(d2);
            int iCeil = (int) Math.ceil(d2 * d4);
            if (iCeil % 2 == 1) {
                iCeil--;
            }
            double d5 = i2;
            Double.isNaN(d5);
            int iCeil2 = (int) Math.ceil(d5 * d4);
            if (iCeil2 % 2 == 1) {
                iCeil2--;
            }
            if (i > i2) {
                if (iCeil < 730 || iCeil2 < 480) {
                    break;
                }
                linkedList.add(iCeil + "x" + iCeil2);
            } else {
                if (iCeil < 570 || iCeil2 < 800) {
                    break;
                }
                linkedList.add(iCeil + "x" + iCeil2);
            }
        }
        if (list != null) {
            if (linkedList.size() == 0) {
                list.add(i + "x" + i2);
            } else if (linkedList.size() <= 3) {
                list.addAll(linkedList);
            } else {
                String str = (String) linkedList.get(0);
                String str2 = (String) linkedList.get(linkedList.size() / 2);
                String str3 = (String) linkedList.get(linkedList.size() - 1);
                list.clear();
                list.add(str);
                list.add(str2);
                list.add(str3);
            }
        }
        if (i != 1920 || i2 < 1080 || i2 >= 1152) {
            if (i == 1280 && i2 >= 720 && i2 < 768 && list != null) {
                list.add("1088x768");
            }
        } else if (list != null) {
            list.add("1920x1152");
        }
        if (list != null) {
            for (int i6 = 1; i6 < 4; i6++) {
                double d6 = i;
                double d7 = i6;
                Double.isNaN(d7);
                double d8 = (d7 * 0.05d) + 1.0d;
                Double.isNaN(d6);
                int iCeil3 = (int) Math.ceil(d6 * d8);
                if (iCeil3 % 2 == 1) {
                    iCeil3++;
                }
                double d9 = i2;
                Double.isNaN(d9);
                int iCeil4 = (int) Math.ceil(d9 * d8);
                if (iCeil4 % 2 == 1) {
                    iCeil4++;
                }
                list.add(iCeil3 + "x" + iCeil4);
            }
        }
        if (list == null) {
            return 0;
        }
        String str4 = i3 + "x" + i4;
        for (int i7 = 0; i7 < list.size(); i7++) {
            if (str4.equals(list.get(i7))) {
                return i7;
            }
        }
        return 0;
    }

    public static c0 i() {
        if (l == null) {
            synchronized (c0.class) {
                if (l == null) {
                    l = new c0();
                }
            }
        }
        return l;
    }

    public static c0 j(int i, int i2, int i3, int i4, String str, int i5) {
        String strN;
        i();
        l.a.m(i, i2);
        l.f1567b.m(i3, i4);
        l.i = i5;
        if (u.z().Y()) {
            if (i2 > i) {
                strN = b0.i().n("vmaxwh", i3 + "x" + i4);
            } else {
                strN = b0.i().n("vmaxwh", i + "x" + i2);
            }
            cn.manstep.phonemirrorBox.util.s.d("VideoSize", "getInstance: " + strN);
            cn.manstep.phonemirrorBox.util.x xVarL = cn.manstep.phonemirrorBox.util.x.l(strN);
            l.o(xVarL.f1934b, xVarL.f1935c);
        } else {
            WindowManager.LayoutParams layoutParamsU = u.z().u();
            if (layoutParamsU != null) {
                int i6 = layoutParamsU.width;
                if (i6 > 0) {
                    i2 = i4;
                    i = i6;
                }
                int i7 = layoutParamsU.height;
                if (i7 > 0) {
                    i = i3;
                    i2 = i7;
                }
            }
            int iG = i - u.z().G(MyApplication.b().getResources().getInteger(2131361823));
            if (i2 > iG) {
                l.p(i3, i4, i3, i4);
            } else {
                l.p(iG, i2, iG, i2);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            cn.manstep.phonemirrorBox.util.x xVarL2 = cn.manstep.phonemirrorBox.util.x.l(str);
            l.r(xVarL2.f1934b, xVarL2.f1935c);
        }
        return l;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean k(int i, int i2) {
        byte b2;
        String str = i + "x" + i2;
        int iHashCode = str.hashCode();
        if (iHashCode != 802059919) {
            b2 = (iHashCode == 807443360 && str.equals("1088x768")) ? (byte) 1 : (byte) -1;
        } else if (str.equals("1920x1152")) {
            b2 = 0;
        }
        return b2 == 0 || b2 == 1;
    }

    public static List<String> l() {
        return i().h;
    }

    public static cn.manstep.phonemirrorBox.util.x m() {
        return i().e;
    }

    private void n(int i) {
        this.i = i;
        if (this.f1569d.size() < 2) {
            this.f1568c.n(this.f1569d.get(0));
        } else if (i == 1440) {
            this.f1568c.n(this.f1569d.get(3));
        } else if (i == 1080) {
            this.f1568c.n(this.f1569d.get(2));
        } else if (i != 720 && i == 480) {
            this.f1568c.n(this.f1569d.get(0));
        } else {
            this.f1568c.n(this.f1569d.get(1));
        }
        cn.manstep.phonemirrorBox.util.x xVar = this.f1568c;
        int i2 = xVar.f1934b;
        int i3 = xVar.f1935c;
        if (i2 > i3) {
            this.k = (int) (d(i2, i3) * 1.2f);
        } else {
            this.k = d(i2, i3);
        }
        cn.manstep.phonemirrorBox.util.s.d("VideoSize", "setAutoSize: AndroidAuto dpi=" + this.k + "," + this.f1568c.f1934b + "x" + this.f1568c.f1935c);
    }

    private c0 p(int i, int i2, int i3, int i4) {
        cn.manstep.phonemirrorBox.util.s.d("VideoSize", "setMax: " + i + "x" + i2 + ",def=" + i3 + "x" + i4);
        if (i == -1) {
            i = this.a.f1934b;
        }
        int i5 = i;
        if (i2 > 0 && i4 > 0) {
            if (Math.abs((i5 / i2) - (i3 / i4)) < 0.01f) {
                this.g.m(i3, i4);
            } else {
                this.g.m(i5, i2);
            }
        }
        cn.manstep.phonemirrorBox.util.x xVar = this.e;
        if (xVar.f1934b != i5 || xVar.f1935c != i2) {
            this.e.m(i5, i2);
            int iE = e(i5, i2, i3, i4, this.h);
            c(this.e);
            n(this.i);
            s(this.h.get(iE));
        }
        cn.manstep.phonemirrorBox.util.s.d("VideoSize", "setMax: videoMaxSize=" + this.e + ",videoSize=" + this.f + ",autoSize=" + this.f1568c);
        return this;
    }

    public static cn.manstep.phonemirrorBox.util.x t() {
        return i().f;
    }

    public int f() {
        return this.k;
    }

    public cn.manstep.phonemirrorBox.util.x g(int i, int i2) {
        cn.manstep.phonemirrorBox.util.x xVar = new cn.manstep.phonemirrorBox.util.x();
        xVar.f1935c = i2;
        int i3 = this.e.f1935c;
        int i4 = ((int) (((i2 * 1.0f) * r2.f1934b) / i3)) & 65534;
        xVar.f1934b = i4;
        if (i4 > i) {
            xVar.f1934b = i;
            xVar.f1935c = ((int) (((i * 1.0f) * i3) / r2.f1934b)) & 65534;
        }
        return xVar;
    }

    public int h() {
        return this.j;
    }

    public c0 o(int i, int i2) {
        cn.manstep.phonemirrorBox.util.x xVar = this.g;
        p(i, i2, xVar.f1934b, xVar.f1935c);
        return this;
    }

    public c0 q(int i, int i2) {
        if (i > 0 && i2 > 0) {
            cn.manstep.phonemirrorBox.util.s.d("VideoSize", "setMaxByMeasure: " + i + "x" + i2);
            b0.i().F("vmaxwh", i + "x" + i2);
            cn.manstep.phonemirrorBox.util.x xVar = this.g;
            p(i, i2, xVar.f1934b, xVar.f1935c);
        }
        return this;
    }

    public void r(int i, int i2) {
        cn.manstep.phonemirrorBox.util.x xVar;
        int i3;
        if (i2 <= 0 || (i3 = (xVar = this.e).f1935c) <= 0) {
            return;
        }
        if (Math.abs((i / i2) - (xVar.f1934b / i3)) < 0.01f || k(i, i2)) {
            this.g.m(i, i2);
            cn.manstep.phonemirrorBox.util.x xVarR = u.z().r();
            if (xVarR == null) {
                this.f.m(i, i2);
            } else {
                this.f.n(xVarR);
            }
            this.j = (int) (d(i, i2) * 1.2f);
            cn.manstep.phonemirrorBox.util.s.d("VideoSize", "setSize: HiCar dpi=" + this.j);
        }
    }

    public void s(String str) {
        cn.manstep.phonemirrorBox.util.x xVarL = cn.manstep.phonemirrorBox.util.x.l(str);
        r(xVarL.f1934b, xVarL.f1935c);
    }
}
