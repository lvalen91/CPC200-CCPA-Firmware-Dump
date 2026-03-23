package p016c.p065p;

import android.view.ViewGroup;

/* JADX INFO: renamed from: c.p.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0674l {

    /* JADX INFO: renamed from: a */
    private ViewGroup f3992a;

    /* JADX INFO: renamed from: b */
    private Runnable f3993b;

    /* JADX INFO: renamed from: b */
    public static C0674l m5101b(ViewGroup viewGroup) {
        return (C0674l) viewGroup.getTag(C0670j.transition_current_scene);
    }

    /* JADX INFO: renamed from: c */
    static void m5102c(ViewGroup viewGroup, C0674l c0674l) {
        viewGroup.setTag(C0670j.transition_current_scene, c0674l);
    }

    /* JADX INFO: renamed from: a */
    public void m5103a() {
        Runnable runnable;
        if (m5101b(this.f3992a) != this || (runnable = this.f3993b) == null) {
            return;
        }
        runnable.run();
    }
}
