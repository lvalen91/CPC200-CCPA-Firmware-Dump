package androidx.core.view;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: renamed from: androidx.core.view.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0260b {

    /* JADX INFO: renamed from: a */
    private b f1809a;

    /* JADX INFO: renamed from: androidx.core.view.b$a */
    public interface a {
    }

    /* JADX INFO: renamed from: androidx.core.view.b$b */
    public interface b {
        void onActionProviderVisibilityChanged(boolean z);
    }

    public AbstractC0260b(Context context) {
    }

    /* JADX INFO: renamed from: a */
    public boolean mo803a() {
        return false;
    }

    /* JADX INFO: renamed from: b */
    public boolean mo807b() {
        return true;
    }

    /* JADX INFO: renamed from: c */
    public abstract View mo804c();

    /* JADX INFO: renamed from: d */
    public View mo808d(MenuItem menuItem) {
        return mo804c();
    }

    /* JADX INFO: renamed from: e */
    public boolean mo805e() {
        return false;
    }

    /* JADX INFO: renamed from: f */
    public void mo806f(SubMenu subMenu) {
    }

    /* JADX INFO: renamed from: g */
    public boolean mo809g() {
        return false;
    }

    /* JADX INFO: renamed from: h */
    public void m1819h() {
        this.f1809a = null;
    }

    /* JADX INFO: renamed from: i */
    public void m1820i(a aVar) {
    }

    /* JADX INFO: renamed from: j */
    public void mo810j(b bVar) {
        if (this.f1809a != null && bVar != null) {
            String str = "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?";
        }
        this.f1809a = bVar;
    }
}
