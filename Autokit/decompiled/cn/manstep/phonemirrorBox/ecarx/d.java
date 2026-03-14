package cn.manstep.phonemirrorBox.ecarx;

import cn.manstep.phonemirrorBox.util.s;
import com.ecarx.sdk.vr.common.IResponse;
import com.ecarx.sdk.vr.common.MediaCtrlIntent;
import com.ecarx.sdk.vr.music.MusicIntentListener;
import com.ecarx.sdk.vr.music.MusicPlayIntent;
import com.ecarx.sdk.vr.music.MusicSearchIntent;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class d extends MusicIntentListener {
    public void handleCtrlApp(MediaCtrlIntent mediaCtrlIntent, IResponse iResponse) {
        super.handleCtrlApp(mediaCtrlIntent, iResponse);
        s.c("MusicIntentListener,handleCtrlApp: " + mediaCtrlIntent);
    }

    public void handlePlayMusic(MusicPlayIntent musicPlayIntent, IResponse iResponse) {
        super.handlePlayMusic(musicPlayIntent, iResponse);
        s.c("MusicIntentListener,handlePlayMusic: " + musicPlayIntent);
    }

    public void handleSearchMusic(MusicSearchIntent musicSearchIntent, IResponse iResponse) {
        super.handleSearchMusic(musicSearchIntent, iResponse);
        s.c("MusicIntentListener,handleSearchMusic: " + musicSearchIntent);
    }
}
