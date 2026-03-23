package c.p;

import android.view.ViewGroup;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class l {
    private ViewGroup a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f1301b;

    public static l b(ViewGroup viewGroup) {
        return (l) viewGroup.getTag(j.transition_current_scene);
    }

    static void c(ViewGroup viewGroup, l lVar) {
        viewGroup.setTag(j.transition_current_scene, lVar);
    }

    public void a() {
        Runnable runnable;
        if (b(this.a) != this || (runnable = this.f1301b) == null) {
            return;
        }
        runnable.run();
    }
}
