package cn.manstep.phonemirrorBox;

import android.text.TextUtils;
import android.view.WindowManager;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0987x;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.c0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0797c0 {

    /* JADX INFO: renamed from: l */
    private static C0797c0 f4741l;

    /* JADX INFO: renamed from: i */
    private int f4750i = 0;

    /* JADX INFO: renamed from: j */
    private int f4751j = 100;

    /* JADX INFO: renamed from: k */
    private int f4752k = 100;

    /* JADX INFO: renamed from: c */
    private final C0987x f4744c = new C0987x();

    /* JADX INFO: renamed from: a */
    private final C0987x f4742a = new C0987x();

    /* JADX INFO: renamed from: b */
    private final C0987x f4743b = new C0987x();

    /* JADX INFO: renamed from: d */
    private final List<C0987x> f4745d = new LinkedList();

    /* JADX INFO: renamed from: g */
    private final C0987x f4748g = new C0987x();

    /* JADX INFO: renamed from: f */
    private final C0987x f4747f = new C0987x();

    /* JADX INFO: renamed from: e */
    private final C0987x f4746e = new C0987x();

    /* JADX INFO: renamed from: h */
    private final List<String> f4749h = new LinkedList();

    private C0797c0() {
    }

    /* JADX INFO: renamed from: a */
    public static C0987x m6104a() {
        return m6109i().f4744c;
    }

    /* JADX INFO: renamed from: b */
    public static C0987x m6105b(int i) {
        m6109i().m6114n(i);
        return m6104a();
    }

    /* JADX INFO: renamed from: c */
    private void m6106c(C0987x c0987x) {
        this.f4745d.clear();
        if (c0987x == null || c0987x.m7399k()) {
            this.f4745d.add(new C0987x(800, 480));
            return;
        }
        int[] iArr = {480, 720, 1080, 1440};
        int i = 0;
        for (int i2 = 4; i < i2; i2 = 4) {
            int i3 = iArr[i];
            C0987x c0987x2 = new C0987x(c0987x);
            int i4 = 2560;
            if (c0987x.f6159c < c0987x.f6158b) {
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
            c0987x2.f6159c = i3;
            int i5 = c0987x.f6159c;
            int i6 = ((int) (((i3 * 1.0f) * c0987x.f6158b) / i5)) & 65534;
            c0987x2.f6158b = i6;
            if (i6 > i4) {
                c0987x2.f6158b = i4;
                c0987x2.f6159c = ((int) (((i4 * 1.0f) * i5) / c0987x.f6158b)) & 65534;
            }
            this.f4745d.add(c0987x2);
            i++;
        }
    }

    /* JADX INFO: renamed from: d */
    private int m6107d(int i, int i2) {
        if (i * i2 < 384000) {
            return 100;
        }
        int i3 = (int) (((((r2 - 384000) * 23) / 998400) + 120) * 1.25f);
        return i3 - (10 - (i3 % 10));
    }

    /* JADX INFO: renamed from: e */
    private int m6108e(int i, int i2, int i3, int i4, List<String> list) {
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

    /* JADX INFO: renamed from: i */
    public static C0797c0 m6109i() {
        if (f4741l == null) {
            synchronized (C0797c0.class) {
                if (f4741l == null) {
                    f4741l = new C0797c0();
                }
            }
        }
        return f4741l;
    }

    /* JADX INFO: renamed from: j */
    public static C0797c0 m6110j(int i, int i2, int i3, int i4, String str, int i5) {
        String strM6092n;
        m6109i();
        f4741l.f4742a.m7400m(i, i2);
        f4741l.f4743b.m7400m(i3, i4);
        f4741l.f4750i = i5;
        if (C0953u.m7001z().m7026Y()) {
            if (i2 > i) {
                strM6092n = C0795b0.m6071i().m6092n("vmaxwh", i3 + "x" + i4);
            } else {
                strM6092n = C0795b0.m6071i().m6092n("vmaxwh", i + "x" + i2);
            }
            C0982s.m7374d("VideoSize", "getInstance: " + strM6092n);
            C0987x c0987xM7397l = C0987x.m7397l(strM6092n);
            f4741l.m6120o(c0987xM7397l.f6158b, c0987xM7397l.f6159c);
        } else {
            WindowManager.LayoutParams layoutParamsM7060u = C0953u.m7001z().m7060u();
            if (layoutParamsM7060u != null) {
                int i6 = layoutParamsM7060u.width;
                if (i6 > 0) {
                    i2 = i4;
                    i = i6;
                }
                int i7 = layoutParamsM7060u.height;
                if (i7 > 0) {
                    i = i3;
                    i2 = i7;
                }
            }
            int iM7008G = i - C0953u.m7001z().m7008G(MyApplication.m5997b().getResources().getInteger(2131361823));
            if (i2 > iM7008G) {
                f4741l.m6115p(i3, i4, i3, i4);
            } else {
                f4741l.m6115p(iM7008G, i2, iM7008G, i2);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            C0987x c0987xM7397l2 = C0987x.m7397l(str);
            f4741l.m6122r(c0987xM7397l2.f6158b, c0987xM7397l2.f6159c);
        }
        return f4741l;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX INFO: renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m6111k(int i, int i2) {
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

    /* JADX INFO: renamed from: l */
    public static List<String> m6112l() {
        return m6109i().f4749h;
    }

    /* JADX INFO: renamed from: m */
    public static C0987x m6113m() {
        return m6109i().f4746e;
    }

    /* JADX INFO: renamed from: n */
    private void m6114n(int i) {
        this.f4750i = i;
        if (this.f4745d.size() < 2) {
            this.f4744c.m7401n(this.f4745d.get(0));
        } else if (i == 1440) {
            this.f4744c.m7401n(this.f4745d.get(3));
        } else if (i == 1080) {
            this.f4744c.m7401n(this.f4745d.get(2));
        } else if (i != 720 && i == 480) {
            this.f4744c.m7401n(this.f4745d.get(0));
        } else {
            this.f4744c.m7401n(this.f4745d.get(1));
        }
        C0987x c0987x = this.f4744c;
        int i2 = c0987x.f6158b;
        int i3 = c0987x.f6159c;
        if (i2 > i3) {
            this.f4752k = (int) (m6107d(i2, i3) * 1.2f);
        } else {
            this.f4752k = m6107d(i2, i3);
        }
        C0982s.m7374d("VideoSize", "setAutoSize: AndroidAuto dpi=" + this.f4752k + "," + this.f4744c.f6158b + "x" + this.f4744c.f6159c);
    }

    /* JADX INFO: renamed from: p */
    private C0797c0 m6115p(int i, int i2, int i3, int i4) {
        C0982s.m7374d("VideoSize", "setMax: " + i + "x" + i2 + ",def=" + i3 + "x" + i4);
        if (i == -1) {
            i = this.f4742a.f6158b;
        }
        int i5 = i;
        if (i2 > 0 && i4 > 0) {
            if (Math.abs((i5 / i2) - (i3 / i4)) < 0.01f) {
                this.f4748g.m7400m(i3, i4);
            } else {
                this.f4748g.m7400m(i5, i2);
            }
        }
        C0987x c0987x = this.f4746e;
        if (c0987x.f6158b != i5 || c0987x.f6159c != i2) {
            this.f4746e.m7400m(i5, i2);
            int iM6108e = m6108e(i5, i2, i3, i4, this.f4749h);
            m6106c(this.f4746e);
            m6114n(this.f4750i);
            m6123s(this.f4749h.get(iM6108e));
        }
        C0982s.m7374d("VideoSize", "setMax: videoMaxSize=" + this.f4746e + ",videoSize=" + this.f4747f + ",autoSize=" + this.f4744c);
        return this;
    }

    /* JADX INFO: renamed from: t */
    public static C0987x m6116t() {
        return m6109i().f4747f;
    }

    /* JADX INFO: renamed from: f */
    public int m6117f() {
        return this.f4752k;
    }

    /* JADX INFO: renamed from: g */
    public C0987x m6118g(int i, int i2) {
        C0987x c0987x = new C0987x();
        c0987x.f6159c = i2;
        int i3 = this.f4746e.f6159c;
        int i4 = ((int) (((i2 * 1.0f) * r2.f6158b) / i3)) & 65534;
        c0987x.f6158b = i4;
        if (i4 > i) {
            c0987x.f6158b = i;
            c0987x.f6159c = ((int) (((i * 1.0f) * i3) / r2.f6158b)) & 65534;
        }
        return c0987x;
    }

    /* JADX INFO: renamed from: h */
    public int m6119h() {
        return this.f4751j;
    }

    /* JADX INFO: renamed from: o */
    public C0797c0 m6120o(int i, int i2) {
        C0987x c0987x = this.f4748g;
        m6115p(i, i2, c0987x.f6158b, c0987x.f6159c);
        return this;
    }

    /* JADX INFO: renamed from: q */
    public C0797c0 m6121q(int i, int i2) {
        if (i > 0 && i2 > 0) {
            C0982s.m7374d("VideoSize", "setMaxByMeasure: " + i + "x" + i2);
            C0795b0.m6071i().m6085F("vmaxwh", i + "x" + i2);
            C0987x c0987x = this.f4748g;
            m6115p(i, i2, c0987x.f6158b, c0987x.f6159c);
        }
        return this;
    }

    /* JADX INFO: renamed from: r */
    public void m6122r(int i, int i2) {
        C0987x c0987x;
        int i3;
        if (i2 <= 0 || (i3 = (c0987x = this.f4746e).f6159c) <= 0) {
            return;
        }
        if (Math.abs((i / i2) - (c0987x.f6158b / i3)) < 0.01f || m6111k(i, i2)) {
            this.f4748g.m7400m(i, i2);
            C0987x c0987xM7057r = C0953u.m7001z().m7057r();
            if (c0987xM7057r == null) {
                this.f4747f.m7400m(i, i2);
            } else {
                this.f4747f.m7401n(c0987xM7057r);
            }
            this.f4751j = (int) (m6107d(i, i2) * 1.2f);
            C0982s.m7374d("VideoSize", "setSize: HiCar dpi=" + this.f4751j);
        }
    }

    /* JADX INFO: renamed from: s */
    public void m6123s(String str) {
        C0987x c0987xM7397l = C0987x.m7397l(str);
        m6122r(c0987xM7397l.f6158b, c0987xM7397l.f6159c);
    }
}
