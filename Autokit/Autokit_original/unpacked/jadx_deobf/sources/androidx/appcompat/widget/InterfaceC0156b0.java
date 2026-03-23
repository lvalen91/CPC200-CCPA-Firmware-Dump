package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.core.view.C0296z;

/* JADX INFO: renamed from: androidx.appcompat.widget.b0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface InterfaceC0156b0 {
    /* JADX INFO: renamed from: a */
    void mo1024a(Menu menu, InterfaceC0107m.a aVar);

    /* JADX INFO: renamed from: b */
    boolean mo1025b();

    /* JADX INFO: renamed from: c */
    boolean mo1026c();

    void collapseActionView();

    /* JADX INFO: renamed from: d */
    boolean mo1027d();

    /* JADX INFO: renamed from: e */
    boolean mo1028e();

    /* JADX INFO: renamed from: f */
    void mo1029f();

    /* JADX INFO: renamed from: g */
    boolean mo1030g();

    CharSequence getTitle();

    /* JADX INFO: renamed from: h */
    void mo1031h();

    /* JADX INFO: renamed from: i */
    void mo1032i(InterfaceC0107m.a aVar, C0101g.a aVar2);

    /* JADX INFO: renamed from: j */
    int mo1033j();

    /* JADX INFO: renamed from: k */
    void mo1034k(int i);

    /* JADX INFO: renamed from: l */
    Menu mo1035l();

    /* JADX INFO: renamed from: m */
    void mo1036m(int i);

    /* JADX INFO: renamed from: n */
    void mo1037n(C0181n0 c0181n0);

    /* JADX INFO: renamed from: o */
    ViewGroup mo1038o();

    /* JADX INFO: renamed from: p */
    void mo1039p(boolean z);

    /* JADX INFO: renamed from: q */
    Context mo1040q();

    /* JADX INFO: renamed from: r */
    int mo1041r();

    /* JADX INFO: renamed from: s */
    C0296z mo1042s(int i, long j);

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    /* JADX INFO: renamed from: t */
    void mo1043t();

    /* JADX INFO: renamed from: u */
    boolean mo1044u();

    /* JADX INFO: renamed from: v */
    void mo1045v();

    /* JADX INFO: renamed from: w */
    void mo1046w(boolean z);

    /* JADX INFO: renamed from: x */
    void mo1047x(int i);
}
