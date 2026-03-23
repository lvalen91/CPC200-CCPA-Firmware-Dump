package p016c.p017a.p024o;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: renamed from: c.a.o.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0512b {

    /* JADX INFO: renamed from: b */
    private Object f3161b;

    /* JADX INFO: renamed from: c */
    private boolean f3162c;

    /* JADX INFO: renamed from: c.a.o.b$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        boolean mo534a(AbstractC0512b abstractC0512b, Menu menu);

        /* JADX INFO: renamed from: b */
        boolean mo535b(AbstractC0512b abstractC0512b, MenuItem menuItem);

        /* JADX INFO: renamed from: c */
        boolean mo536c(AbstractC0512b abstractC0512b, Menu menu);

        /* JADX INFO: renamed from: d */
        void mo537d(AbstractC0512b abstractC0512b);
    }

    /* JADX INFO: renamed from: c */
    public abstract void mo627c();

    /* JADX INFO: renamed from: d */
    public abstract View mo628d();

    /* JADX INFO: renamed from: e */
    public abstract Menu mo629e();

    /* JADX INFO: renamed from: f */
    public abstract MenuInflater mo630f();

    /* JADX INFO: renamed from: g */
    public abstract CharSequence mo631g();

    /* JADX INFO: renamed from: h */
    public Object m4127h() {
        return this.f3161b;
    }

    /* JADX INFO: renamed from: i */
    public abstract CharSequence mo632i();

    /* JADX INFO: renamed from: j */
    public boolean m4128j() {
        return this.f3162c;
    }

    /* JADX INFO: renamed from: k */
    public abstract void mo633k();

    /* JADX INFO: renamed from: l */
    public abstract boolean mo634l();

    /* JADX INFO: renamed from: m */
    public abstract void mo635m(View view);

    /* JADX INFO: renamed from: n */
    public abstract void mo636n(int i);

    /* JADX INFO: renamed from: o */
    public abstract void mo637o(CharSequence charSequence);

    /* JADX INFO: renamed from: p */
    public void m4129p(Object obj) {
        this.f3161b = obj;
    }

    /* JADX INFO: renamed from: q */
    public abstract void mo638q(int i);

    /* JADX INFO: renamed from: r */
    public abstract void mo639r(CharSequence charSequence);

    /* JADX INFO: renamed from: s */
    public void mo640s(boolean z) {
        this.f3162c = z;
    }
}
