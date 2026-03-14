package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.core.view.C0266e;
import androidx.core.view.C0292v;
import p016c.p017a.C0496d;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0106l {

    /* JADX INFO: renamed from: a */
    private final Context f711a;

    /* JADX INFO: renamed from: b */
    private final C0101g f712b;

    /* JADX INFO: renamed from: c */
    private final boolean f713c;

    /* JADX INFO: renamed from: d */
    private final int f714d;

    /* JADX INFO: renamed from: e */
    private final int f715e;

    /* JADX INFO: renamed from: f */
    private View f716f;

    /* JADX INFO: renamed from: g */
    private int f717g;

    /* JADX INFO: renamed from: h */
    private boolean f718h;

    /* JADX INFO: renamed from: i */
    private InterfaceC0107m.a f719i;

    /* JADX INFO: renamed from: j */
    private AbstractC0105k f720j;

    /* JADX INFO: renamed from: k */
    private PopupWindow.OnDismissListener f721k;

    /* JADX INFO: renamed from: l */
    private final PopupWindow.OnDismissListener f722l;

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.l$a */
    class a implements PopupWindow.OnDismissListener {
        a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            C0106l.this.mo824e();
        }
    }

    public C0106l(Context context, C0101g c0101g, View view, boolean z, int i) {
        this(context, c0101g, view, z, i, 0);
    }

    /* JADX INFO: renamed from: a */
    private AbstractC0105k m819a() {
        Display defaultDisplay = ((WindowManager) this.f711a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        AbstractC0105k viewOnKeyListenerC0098d = Math.min(point.x, point.y) >= this.f711a.getResources().getDimensionPixelSize(C0496d.abc_cascading_menus_min_smallest_width) ? new ViewOnKeyListenerC0098d(this.f711a, this.f716f, this.f714d, this.f715e, this.f713c) : new ViewOnKeyListenerC0111q(this.f711a, this.f712b, this.f716f, this.f714d, this.f715e, this.f713c);
        viewOnKeyListenerC0098d.mo697k(this.f712b);
        viewOnKeyListenerC0098d.mo704u(this.f722l);
        viewOnKeyListenerC0098d.mo700p(this.f716f);
        viewOnKeyListenerC0098d.mo672h(this.f719i);
        viewOnKeyListenerC0098d.mo701r(this.f718h);
        viewOnKeyListenerC0098d.mo702s(this.f717g);
        return viewOnKeyListenerC0098d;
    }

    /* JADX INFO: renamed from: l */
    private void m820l(int i, int i2, boolean z, boolean z2) {
        AbstractC0105k abstractC0105kM822c = m822c();
        abstractC0105kM822c.mo705v(z2);
        if (z) {
            if ((C0266e.m1883b(this.f717g, C0292v.m2046C(this.f716f)) & 7) == 5) {
                i -= this.f716f.getWidth();
            }
            abstractC0105kM822c.mo703t(i);
            abstractC0105kM822c.mo706w(i2);
            int i3 = (int) ((this.f711a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            abstractC0105kM822c.m818q(new Rect(i - i3, i2 - i3, i + i3, i2 + i3));
        }
        abstractC0105kM822c.mo696g();
    }

    /* JADX INFO: renamed from: b */
    public void m821b() {
        if (m823d()) {
            this.f720j.dismiss();
        }
    }

    /* JADX INFO: renamed from: c */
    public AbstractC0105k m822c() {
        if (this.f720j == null) {
            this.f720j = m819a();
        }
        return this.f720j;
    }

    /* JADX INFO: renamed from: d */
    public boolean m823d() {
        AbstractC0105k abstractC0105k = this.f720j;
        return abstractC0105k != null && abstractC0105k.mo694b();
    }

    /* JADX INFO: renamed from: e */
    protected void mo824e() {
        this.f720j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f721k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    /* JADX INFO: renamed from: f */
    public void m825f(View view) {
        this.f716f = view;
    }

    /* JADX INFO: renamed from: g */
    public void m826g(boolean z) {
        this.f718h = z;
        AbstractC0105k abstractC0105k = this.f720j;
        if (abstractC0105k != null) {
            abstractC0105k.mo701r(z);
        }
    }

    /* JADX INFO: renamed from: h */
    public void m827h(int i) {
        this.f717g = i;
    }

    /* JADX INFO: renamed from: i */
    public void m828i(PopupWindow.OnDismissListener onDismissListener) {
        this.f721k = onDismissListener;
    }

    /* JADX INFO: renamed from: j */
    public void m829j(InterfaceC0107m.a aVar) {
        this.f719i = aVar;
        AbstractC0105k abstractC0105k = this.f720j;
        if (abstractC0105k != null) {
            abstractC0105k.mo672h(aVar);
        }
    }

    /* JADX INFO: renamed from: k */
    public void m830k() {
        if (!m831m()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    /* JADX INFO: renamed from: m */
    public boolean m831m() {
        if (m823d()) {
            return true;
        }
        if (this.f716f == null) {
            return false;
        }
        m820l(0, 0, false, false);
        return true;
    }

    /* JADX INFO: renamed from: n */
    public boolean m832n(int i, int i2) {
        if (m823d()) {
            return true;
        }
        if (this.f716f == null) {
            return false;
        }
        m820l(i, i2, true, true);
        return true;
    }

    public C0106l(Context context, C0101g c0101g, View view, boolean z, int i, int i2) {
        this.f717g = 8388611;
        this.f722l = new a();
        this.f711a = context;
        this.f712b = c0101g;
        this.f716f = view;
        this.f713c = z;
        this.f714d = i;
        this.f715e = i2;
    }
}
