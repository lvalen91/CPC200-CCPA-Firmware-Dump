package cn.manstep.phonemirrorBox.p088u0;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.u0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0956c implements InterfaceC0955b {

    /* JADX INFO: renamed from: b */
    private static volatile C0956c f5986b;

    /* JADX INFO: renamed from: a */
    private final List<AbstractC0954a> f5987a = new LinkedList();

    private C0956c() {
        String[] strArr = {"cn.manstep.phonemirrorBox.third.AvdUtil", "cn.manstep.phonemirrorBox.third.NzUtil", "cn.manstep.phonemirrorBox.third.YqUtil", "cn.manstep.phonemirrorBox.third.YqBtUtil", "cn.manstep.phonemirrorBox.third.HsaeAutoSdk", "cn.manstep.phonemirrorBox.third.AcoUtil", "cn.manstep.phonemirrorBox.third.HySdk"};
        for (int i = 0; i < 7; i++) {
            AbstractC0954a abstractC0954aM7099f = m7099f(strArr[i]);
            if (abstractC0954aM7099f != null) {
                C0982s.m7374d("ThirdSdkUtil", "ThirdSdkUtil: " + abstractC0954aM7099f);
                this.f5987a.add(abstractC0954aM7099f);
            }
        }
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7097y(this);
        }
    }

    /* JADX INFO: renamed from: f */
    private AbstractC0954a m7099f(String str) {
        try {
            return (AbstractC0954a) Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: h */
    public static C0956c m7100h() {
        if (f5986b == null) {
            synchronized (C0956c.class) {
                if (f5986b == null) {
                    f5986b = new C0956c();
                }
            }
        }
        return f5986b;
    }

    /* JADX INFO: renamed from: A */
    public void m7101A(Context context) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7065A(context);
        }
    }

    /* JADX INFO: renamed from: B */
    public void m7102B(String str, String str2, int i, int i2) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7066B(str, str2, i, i2);
        }
    }

    /* JADX INFO: renamed from: C */
    public void m7103C(String str, int i, int i2) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7067C(str, i, i2);
        }
    }

    /* JADX INFO: renamed from: D */
    public void m7104D(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7068D(str, i, i2, i3, i4, i5, i6);
        }
    }

    /* JADX INFO: renamed from: E */
    public void m7105E(int i) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7069E(i);
        }
    }

    /* JADX INFO: renamed from: F */
    public void m7106F(byte[] bArr) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7070F(bArr);
        }
    }

    /* JADX INFO: renamed from: G */
    public void m7107G(String str, String str2, String str3, String str4, int i, int i2, int i3, String str5, String str6) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7071G(str, str2, str3, str4, i, i2, i3, str5, str6);
        }
    }

    /* JADX INFO: renamed from: H */
    public void m7108H() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7072H();
        }
    }

    /* JADX INFO: renamed from: a */
    public void m7109a() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7073a();
        }
    }

    /* JADX INFO: renamed from: b */
    public void m7110b() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7074b();
        }
    }

    /* JADX INFO: renamed from: c */
    public void m7111c(boolean z) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7075c(z);
        }
    }

    /* JADX INFO: renamed from: d */
    public void m7112d(boolean z) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7076d(z);
        }
    }

    /* JADX INFO: renamed from: e */
    public void m7113e(boolean z) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7077e(z);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX INFO: renamed from: g */
    public int m7114g() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            int iM7079g = it.next().m7079g();
            if (iM7079g == 0 || iM7079g == 1) {
                return iM7079g;
            }
        }
        String id = TimeZone.getDefault().getID();
        byte b2 = -1;
        switch (id.hashCode()) {
            case -1738808822:
                if (id.equals("Asia/Bangkok")) {
                    b2 = 0;
                }
                break;
            case -1675354028:
                if (id.equals("Asia/Dubai")) {
                    b2 = 3;
                }
                break;
            case -1248743248:
                if (id.equals("Asia/Shanghai")) {
                    b2 = 2;
                }
                break;
            case 552878567:
                if (id.equals("Europe/Moscow")) {
                    b2 = 1;
                }
                break;
        }
        return b2 != 0 ? 0 : 1;
    }

    /* JADX INFO: renamed from: i */
    public Rect m7115i(Rect rect) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            Rect rectM7080h = it.next().m7080h(rect);
            if (rectM7080h != null) {
                return rectM7080h;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: j */
    public void m7116j(Context context) {
        if (this.f5987a.isEmpty()) {
            Intent intent = new Intent(context, (Class<?>) MainActivity.class);
            intent.setFlags(268435456);
            try {
                context.startActivity(intent);
            } catch (Exception unused) {
            }
        }
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            if (it.next().m7081i(context)) {
                Intent intent2 = new Intent(context, (Class<?>) MainActivity.class);
                intent2.setFlags(268435456);
                try {
                    context.startActivity(intent2);
                } catch (Exception unused2) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public void m7117k() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7082j();
        }
    }

    /* JADX INFO: renamed from: l */
    public void m7118l() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7083k();
        }
    }

    /* JADX INFO: renamed from: m */
    public void m7119m() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7084l();
        }
    }

    /* JADX INFO: renamed from: n */
    public void m7120n() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7085m();
        }
    }

    /* JADX INFO: renamed from: o */
    public void m7121o() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7086n();
        }
    }

    /* JADX INFO: renamed from: p */
    public void m7122p() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7087o();
        }
    }

    /* JADX INFO: renamed from: q */
    public void m7123q() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7088p();
        }
    }

    /* JADX INFO: renamed from: r */
    public void m7124r() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7089q();
        }
    }

    /* JADX INFO: renamed from: s */
    public void m7125s() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7090r();
        }
    }

    /* JADX INFO: renamed from: t */
    public void m7126t(Context context) {
        new WeakReference(context);
        C0982s.m7374d("ThirdSdkUtil", "register: " + this.f5987a.size());
        for (AbstractC0954a abstractC0954a : this.f5987a) {
            abstractC0954a.m7078f();
            abstractC0954a.m7091s(context);
        }
    }

    /* JADX INFO: renamed from: u */
    public void m7127u(Context context, boolean z) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7092t(context, z);
        }
    }

    /* JADX INFO: renamed from: v */
    public void m7128v() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7093u();
        }
        this.f5987a.clear();
        f5986b = null;
    }

    /* JADX INFO: renamed from: w */
    public boolean m7129w(Context context) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        if (it.hasNext()) {
            return it.next().m7094v(context);
        }
        return true;
    }

    /* JADX INFO: renamed from: x */
    public void m7130x() {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7095w();
        }
    }

    /* JADX INFO: renamed from: y */
    public int m7131y(Context context, int i) {
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            int iM7096x = it.next().m7096x(context, i);
            if (iM7096x >= 0) {
                return iM7096x;
            }
        }
        return -1;
    }

    /* JADX INFO: renamed from: z */
    public void m7132z() {
        C0982s.m7374d("ThirdSdkUtil", "unregister: #####");
        Iterator<AbstractC0954a> it = this.f5987a.iterator();
        while (it.hasNext()) {
            it.next().m7098z();
        }
    }
}
