package cn.manstep.phonemirrorBox.ecarx;

import cn.manstep.phonemirrorBox.util.s;
import com.ecarx.sdk.mediacenter.MusicClient;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
class c extends MusicClient {
    private int a;

    c() {
    }

    public void onMediaCenterFocusChanged(String str) {
        super.onMediaCenterFocusChanged(str);
        s.c("ECarXMusicClient,onMediaCenterFocusChanged: " + str);
    }

    public boolean onNext() {
        s.c("ECarXMusicClient,onNext.");
        cn.manstep.phonemirrorBox.v0.e.H(204);
        ECarXUtil.getInstance().requestPlay(true);
        return true;
    }

    public boolean onPause() {
        s.c("ECarXMusicClient,onPause.");
        if (this.a == 1) {
            cn.manstep.phonemirrorBox.BoxInterface.d.L(202);
            ECarXUtil.getInstance().requestPlay(false);
        } else {
            cn.manstep.phonemirrorBox.BoxInterface.d.L(202);
            ECarXUtil.getInstance().requestPlay(false);
        }
        return true;
    }

    public boolean onPlay() {
        s.c("ECarXMusicClient,onPlay." + this.a);
        cn.manstep.phonemirrorBox.BoxInterface.d.L(201);
        ECarXUtil.getInstance().requestPlay(true);
        return true;
    }

    public boolean onPrevious() {
        s.c("ECarXMusicClient,onPrevious.");
        cn.manstep.phonemirrorBox.v0.e.H(205);
        ECarXUtil.getInstance().requestPlay(true);
        return true;
    }

    public void operationType(int i) {
        super.operationType(i);
        s.c("ECarXMusicClient,operationType: type = " + i);
        this.a = i;
    }
}
