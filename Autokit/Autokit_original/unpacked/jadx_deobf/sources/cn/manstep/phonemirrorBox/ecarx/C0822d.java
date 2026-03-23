package cn.manstep.phonemirrorBox.ecarx;

import cn.manstep.phonemirrorBox.util.C0982s;
import com.ecarx.sdk.vr.common.IResponse;
import com.ecarx.sdk.vr.common.MediaCtrlIntent;
import com.ecarx.sdk.vr.music.MusicIntentListener;
import com.ecarx.sdk.vr.music.MusicPlayIntent;
import com.ecarx.sdk.vr.music.MusicSearchIntent;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ecarx.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0822d extends MusicIntentListener {
    public void handleCtrlApp(MediaCtrlIntent mediaCtrlIntent, IResponse iResponse) {
        super.handleCtrlApp(mediaCtrlIntent, iResponse);
        C0982s.m7373c("MusicIntentListener,handleCtrlApp: " + mediaCtrlIntent);
    }

    public void handlePlayMusic(MusicPlayIntent musicPlayIntent, IResponse iResponse) {
        super.handlePlayMusic(musicPlayIntent, iResponse);
        C0982s.m7373c("MusicIntentListener,handlePlayMusic: " + musicPlayIntent);
    }

    public void handleSearchMusic(MusicSearchIntent musicSearchIntent, IResponse iResponse) {
        super.handleSearchMusic(musicSearchIntent, iResponse);
        C0982s.m7373c("MusicIntentListener,handleSearchMusic: " + musicSearchIntent);
    }
}
