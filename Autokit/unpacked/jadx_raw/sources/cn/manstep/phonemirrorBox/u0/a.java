package cn.manstep.phonemirrorBox.u0;

import android.content.Context;
import android.graphics.Rect;
import cn.manstep.phonemirrorBox.util.y;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a {
    protected String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f1838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f1839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f1840d;
    protected String e;
    protected String f;
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected int k;
    protected int l;
    protected int m;
    protected int n;
    protected int o;
    protected int p;
    protected int q;
    protected String r;
    protected String s;
    protected int t;

    public void A(Context context) {
    }

    protected void B(String str, String str2, int i, int i2) {
    }

    public void C(String str, int i, int i2) {
        if (str != null && !str.equals(this.r)) {
            this.r = str;
        }
        if (i != -1 && i != this.k) {
            this.k = i;
        }
        if (i2 == -1 || i2 == this.l) {
            return;
        }
        this.l = i2;
    }

    public void D(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        if (str != null && !str.equals(this.s)) {
            this.s = str;
        }
        if (i != -1 && i != this.m) {
            this.m = i;
        }
        if (i2 != -1 && i2 != this.n) {
            this.n = i2;
        }
        if (i3 != -1 && i3 != this.o) {
            this.o = i3;
        }
        if (i4 != -1 && i4 != this.p) {
            this.p = i4;
        }
        if (i5 != -1 && i5 != this.q) {
            this.q = i5;
        }
        if (i6 == -1 || i6 == this.t) {
            return;
        }
        this.t = i6;
    }

    public void E(int i) {
        if (i == -1 || i == this.j) {
            return;
        }
        this.j = i;
    }

    protected void F(byte[] bArr) {
    }

    protected void G(String str, String str2, String str3, String str4, int i, int i2, int i3, String str5, String str6) {
        if (str != null && !str.equals(this.a)) {
            this.a = str;
        }
        if (str2 != null && !str2.equals(this.f1838b)) {
            this.f1838b = str2;
        }
        if (str3 != null && !str3.equals(this.f1839c)) {
            this.f1839c = str3;
        }
        if (i3 != -1 && i3 != this.i) {
            this.i = i3;
        }
        if (i != -1 && i != this.g) {
            this.g = i;
        }
        if (str5 != null && !str5.equals(this.e)) {
            this.e = str5;
        }
        if (str6 != null && !str6.equals(this.f)) {
            this.f = str6;
        }
        if (str4 != null && !str4.equals(this.f1840d)) {
            this.f1840d = str4;
        }
        if (i2 == -1 || this.h == i2) {
            return;
        }
        this.h = i2;
    }

    abstract void H();

    public void a() {
    }

    public void b() {
    }

    public void c(boolean z) {
    }

    public void d(boolean z) {
    }

    public void e(boolean z) {
    }

    protected void f() {
    }

    protected int g() {
        return -1;
    }

    public Rect h(Rect rect) {
        return null;
    }

    public boolean i(Context context) {
        return true;
    }

    public void j() {
        y.a("box.phone_call.state", "1");
    }

    public void k() {
        y.a("box.phone_call.state", "1");
    }

    public void l() {
        y.a("box.phone_call.state", "0");
    }

    public void m() {
    }

    public void n() {
    }

    abstract void o();

    abstract void p();

    abstract void q();

    abstract void r();

    abstract void s(Context context);

    public void t(Context context, boolean z) {
    }

    protected void u() {
    }

    public boolean v(Context context) {
        return true;
    }

    abstract void w();

    public int x(Context context, int i) {
        return -1;
    }

    protected void y(b bVar) {
    }

    abstract void z();
}
