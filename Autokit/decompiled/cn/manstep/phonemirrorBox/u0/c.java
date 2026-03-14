package cn.manstep.phonemirrorBox.u0;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.util.s;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class c implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile c f1841b;
    private final List<a> a = new LinkedList();

    private c() {
        String[] strArr = {"cn.manstep.phonemirrorBox.third.AvdUtil", "cn.manstep.phonemirrorBox.third.NzUtil", "cn.manstep.phonemirrorBox.third.YqUtil", "cn.manstep.phonemirrorBox.third.YqBtUtil", "cn.manstep.phonemirrorBox.third.HsaeAutoSdk", "cn.manstep.phonemirrorBox.third.AcoUtil", "cn.manstep.phonemirrorBox.third.HySdk"};
        for (int i = 0; i < 7; i++) {
            a aVarF = f(strArr[i]);
            if (aVarF != null) {
                s.d("ThirdSdkUtil", "ThirdSdkUtil: " + aVarF);
                this.a.add(aVarF);
            }
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().y(this);
        }
    }

    private a f(String str) {
        try {
            return (a) Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static c h() {
        if (f1841b == null) {
            synchronized (c.class) {
                if (f1841b == null) {
                    f1841b = new c();
                }
            }
        }
        return f1841b;
    }

    public void A(Context context) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().A(context);
        }
    }

    public void B(String str, String str2, int i, int i2) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().B(str, str2, i, i2);
        }
    }

    public void C(String str, int i, int i2) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().C(str, i, i2);
        }
    }

    public void D(String str, int i, int i2, int i3, int i4, int i5, int i6) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().D(str, i, i2, i3, i4, i5, i6);
        }
    }

    public void E(int i) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().E(i);
        }
    }

    public void F(byte[] bArr) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().F(bArr);
        }
    }

    public void G(String str, String str2, String str3, String str4, int i, int i2, int i3, String str5, String str6) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().G(str, str2, str3, str4, i, i2, i3, str5, str6);
        }
    }

    public void H() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().H();
        }
    }

    public void a() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public void b() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public void c(boolean z) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().c(z);
        }
    }

    public void d(boolean z) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().d(z);
        }
    }

    public void e(boolean z) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().e(z);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public int g() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            int iG = it.next().g();
            if (iG == 0 || iG == 1) {
                return iG;
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

    public Rect i(Rect rect) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            Rect rectH = it.next().h(rect);
            if (rectH != null) {
                return rectH;
            }
        }
        return null;
    }

    public void j(Context context) {
        if (this.a.isEmpty()) {
            Intent intent = new Intent(context, (Class<?>) MainActivity.class);
            intent.setFlags(268435456);
            try {
                context.startActivity(intent);
            } catch (Exception unused) {
            }
        }
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            if (it.next().i(context)) {
                Intent intent2 = new Intent(context, (Class<?>) MainActivity.class);
                intent2.setFlags(268435456);
                try {
                    context.startActivity(intent2);
                } catch (Exception unused2) {
                }
            }
        }
    }

    public void k() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().j();
        }
    }

    public void l() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().k();
        }
    }

    public void m() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().l();
        }
    }

    public void n() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().m();
        }
    }

    public void o() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().n();
        }
    }

    public void p() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().o();
        }
    }

    public void q() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().p();
        }
    }

    public void r() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().q();
        }
    }

    public void s() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().r();
        }
    }

    public void t(Context context) {
        new WeakReference(context);
        s.d("ThirdSdkUtil", "register: " + this.a.size());
        for (a aVar : this.a) {
            aVar.f();
            aVar.s(context);
        }
    }

    public void u(Context context, boolean z) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().t(context, z);
        }
    }

    public void v() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().u();
        }
        this.a.clear();
        f1841b = null;
    }

    public boolean w(Context context) {
        Iterator<a> it = this.a.iterator();
        if (it.hasNext()) {
            return it.next().v(context);
        }
        return true;
    }

    public void x() {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().w();
        }
    }

    public int y(Context context, int i) {
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            int iX = it.next().x(context, i);
            if (iX >= 0) {
                return iX;
            }
        }
        return -1;
    }

    public void z() {
        s.d("ThirdSdkUtil", "unregister: #####");
        Iterator<a> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().z();
        }
    }
}
