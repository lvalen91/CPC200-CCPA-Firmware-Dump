package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public interface b0 {
    void a(Menu menu, m.a aVar);

    boolean b();

    boolean c();

    void collapseActionView();

    boolean d();

    boolean e();

    void f();

    boolean g();

    CharSequence getTitle();

    void h();

    void i(m.a aVar, g.a aVar2);

    int j();

    void k(int i);

    Menu l();

    void m(int i);

    void n(n0 n0Var);

    ViewGroup o();

    void p(boolean z);

    Context q();

    int r();

    androidx.core.view.z s(int i, long j);

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    void t();

    boolean u();

    void v();

    void w(boolean z);

    void x(int i);
}
