package cn.manstep.phonemirrorBox.p088u0;

import android.content.Context;
import android.graphics.Rect;
import cn.manstep.phonemirrorBox.util.C0988y;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.u0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0954a {

    /* JADX INFO: renamed from: a */
    protected String f5966a;

    /* JADX INFO: renamed from: b */
    protected String f5967b;

    /* JADX INFO: renamed from: c */
    protected String f5968c;

    /* JADX INFO: renamed from: d */
    protected String f5969d;

    /* JADX INFO: renamed from: e */
    protected String f5970e;

    /* JADX INFO: renamed from: f */
    protected String f5971f;

    /* JADX INFO: renamed from: g */
    protected int f5972g;

    /* JADX INFO: renamed from: h */
    protected int f5973h;

    /* JADX INFO: renamed from: i */
    protected int f5974i;

    /* JADX INFO: renamed from: j */
    protected int f5975j;

    /* JADX INFO: renamed from: k */
    protected int f5976k;

    /* JADX INFO: renamed from: l */
    protected int f5977l;

    /* JADX INFO: renamed from: m */
    protected int f5978m;

    /* JADX INFO: renamed from: n */
    protected int f5979n;

    /* JADX INFO: renamed from: o */
    protected int f5980o;

    /* JADX INFO: renamed from: p */
    protected int f5981p;

    /* JADX INFO: renamed from: q */
    protected int f5982q;

    /* JADX INFO: renamed from: r */
    protected String f5983r;

    /* JADX INFO: renamed from: s */
    protected String f5984s;

    /* JADX INFO: renamed from: t */
    protected int f5985t;

    /* JADX INFO: renamed from: A */
    public void m7065A(Context context) {
    }

    /* JADX INFO: renamed from: B */
    protected void m7066B(String str, String str2, int i, int i2) {
    }

    /* JADX INFO: renamed from: C */
    public void m7067C(String str, int i, int i2) {
        if (str != null && !str.equals(this.f5983r)) {
            this.f5983r = str;
        }
        if (i != -1 && i != this.f5976k) {
            this.f5976k = i;
        }
        if (i2 == -1 || i2 == this.f5977l) {
            return;
        }
        this.f5977l = i2;
    }

    /* JADX INFO: renamed from: D */
    public void m7068D(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        if (str != null && !str.equals(this.f5984s)) {
            this.f5984s = str;
        }
        if (i != -1 && i != this.f5978m) {
            this.f5978m = i;
        }
        if (i2 != -1 && i2 != this.f5979n) {
            this.f5979n = i2;
        }
        if (i3 != -1 && i3 != this.f5980o) {
            this.f5980o = i3;
        }
        if (i4 != -1 && i4 != this.f5981p) {
            this.f5981p = i4;
        }
        if (i5 != -1 && i5 != this.f5982q) {
            this.f5982q = i5;
        }
        if (i6 == -1 || i6 == this.f5985t) {
            return;
        }
        this.f5985t = i6;
    }

    /* JADX INFO: renamed from: E */
    public void m7069E(int i) {
        if (i == -1 || i == this.f5975j) {
            return;
        }
        this.f5975j = i;
    }

    /* JADX INFO: renamed from: F */
    protected void m7070F(byte[] bArr) {
    }

    /* JADX INFO: renamed from: G */
    protected void m7071G(String str, String str2, String str3, String str4, int i, int i2, int i3, String str5, String str6) {
        if (str != null && !str.equals(this.f5966a)) {
            this.f5966a = str;
        }
        if (str2 != null && !str2.equals(this.f5967b)) {
            this.f5967b = str2;
        }
        if (str3 != null && !str3.equals(this.f5968c)) {
            this.f5968c = str3;
        }
        if (i3 != -1 && i3 != this.f5974i) {
            this.f5974i = i3;
        }
        if (i != -1 && i != this.f5972g) {
            this.f5972g = i;
        }
        if (str5 != null && !str5.equals(this.f5970e)) {
            this.f5970e = str5;
        }
        if (str6 != null && !str6.equals(this.f5971f)) {
            this.f5971f = str6;
        }
        if (str4 != null && !str4.equals(this.f5969d)) {
            this.f5969d = str4;
        }
        if (i2 == -1 || this.f5973h == i2) {
            return;
        }
        this.f5973h = i2;
    }

    /* JADX INFO: renamed from: H */
    abstract void m7072H();

    /* JADX INFO: renamed from: a */
    public void m7073a() {
    }

    /* JADX INFO: renamed from: b */
    public void m7074b() {
    }

    /* JADX INFO: renamed from: c */
    public void m7075c(boolean z) {
    }

    /* JADX INFO: renamed from: d */
    public void m7076d(boolean z) {
    }

    /* JADX INFO: renamed from: e */
    public void m7077e(boolean z) {
    }

    /* JADX INFO: renamed from: f */
    protected void m7078f() {
    }

    /* JADX INFO: renamed from: g */
    protected int m7079g() {
        return -1;
    }

    /* JADX INFO: renamed from: h */
    public Rect m7080h(Rect rect) {
        return null;
    }

    /* JADX INFO: renamed from: i */
    public boolean m7081i(Context context) {
        return true;
    }

    /* JADX INFO: renamed from: j */
    public void m7082j() {
        C0988y.m7404a("box.phone_call.state", "1");
    }

    /* JADX INFO: renamed from: k */
    public void m7083k() {
        C0988y.m7404a("box.phone_call.state", "1");
    }

    /* JADX INFO: renamed from: l */
    public void m7084l() {
        C0988y.m7404a("box.phone_call.state", "0");
    }

    /* JADX INFO: renamed from: m */
    public void m7085m() {
    }

    /* JADX INFO: renamed from: n */
    public void m7086n() {
    }

    /* JADX INFO: renamed from: o */
    abstract void m7087o();

    /* JADX INFO: renamed from: p */
    abstract void m7088p();

    /* JADX INFO: renamed from: q */
    abstract void m7089q();

    /* JADX INFO: renamed from: r */
    abstract void m7090r();

    /* JADX INFO: renamed from: s */
    abstract void m7091s(Context context);

    /* JADX INFO: renamed from: t */
    public void m7092t(Context context, boolean z) {
    }

    /* JADX INFO: renamed from: u */
    protected void m7093u() {
    }

    /* JADX INFO: renamed from: v */
    public boolean m7094v(Context context) {
        return true;
    }

    /* JADX INFO: renamed from: w */
    abstract void m7095w();

    /* JADX INFO: renamed from: x */
    public int m7096x(Context context, int i) {
        return -1;
    }

    /* JADX INFO: renamed from: y */
    protected void m7097y(InterfaceC0955b interfaceC0955b) {
    }

    /* JADX INFO: renamed from: z */
    abstract void m7098z();
}
