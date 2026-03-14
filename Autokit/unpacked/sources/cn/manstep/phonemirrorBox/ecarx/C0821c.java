package cn.manstep.phonemirrorBox.ecarx;

import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.ecarx.sdk.mediacenter.MusicClient;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ecarx.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0821c extends MusicClient {

    /* JADX INFO: renamed from: a */
    private int f4874a;

    C0821c() {
    }

    public void onMediaCenterFocusChanged(String str) {
        super.onMediaCenterFocusChanged(str);
        C0982s.m7373c("ECarXMusicClient,onMediaCenterFocusChanged: " + str);
    }

    public boolean onNext() {
        C0982s.m7373c("ECarXMusicClient,onNext.");
        C0995e.m7435H(204);
        ECarXUtil.getInstance().requestPlay(true);
        return true;
    }

    public boolean onPause() {
        C0982s.m7373c("ECarXMusicClient,onPause.");
        if (this.f4874a == 1) {
            C0733d.m5578L(202);
            ECarXUtil.getInstance().requestPlay(false);
        } else {
            C0733d.m5578L(202);
            ECarXUtil.getInstance().requestPlay(false);
        }
        return true;
    }

    public boolean onPlay() {
        C0982s.m7373c("ECarXMusicClient,onPlay." + this.f4874a);
        C0733d.m5578L(201);
        ECarXUtil.getInstance().requestPlay(true);
        return true;
    }

    public boolean onPrevious() {
        C0982s.m7373c("ECarXMusicClient,onPrevious.");
        C0995e.m7435H(205);
        ECarXUtil.getInstance().requestPlay(true);
        return true;
    }

    public void operationType(int i) {
        super.operationType(i);
        C0982s.m7373c("ECarXMusicClient,operationType: type = " + i);
        this.f4874a = i;
    }
}
