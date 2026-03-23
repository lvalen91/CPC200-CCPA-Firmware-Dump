package cn.manstep.phonemirrorBox.ecarx;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.MainActivity;
import com.ecarx.sdk.mediacenter.MusicPlaybackInfo;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.ecarx.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0823e extends MusicPlaybackInfo {

    /* JADX INFO: renamed from: a */
    private Uri f4875a;

    /* JADX INFO: renamed from: b */
    private int f4876b;

    /* JADX INFO: renamed from: c */
    private PendingIntent f4877c;

    public C0823e(Context context, boolean z) {
        this.f4876b = 1;
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.addFlags(872480768);
        this.f4877c = PendingIntent.getActivity(context, 0, intent, 0);
        this.f4876b = z ? 1 : 0;
        this.f4875a = Uri.parse("android.resource://" + StubApp.getOrigApplicationContext(context.getApplicationContext()).getPackageName() + "/2131230907");
    }

    public String getAlbum() {
        return BuildConfig.FLAVOR;
    }

    public String getAppName() {
        return "投影精灵";
    }

    public String getArtist() {
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null && c0735f.m5698T()) {
            return "CarPlay";
        }
        C0735f c0735f2 = C0733d.f4428l;
        return (c0735f2 == null || !c0735f2.m5700U()) ? BuildConfig.FLAVOR : "HiCar";
    }

    public Uri getArtwork() {
        return this.f4875a;
    }

    public long getDuration() {
        return super.getDuration();
    }

    public PendingIntent getLaunchIntent() {
        return this.f4877c;
    }

    public Uri getNextArtwork() {
        return this.f4875a;
    }

    public int getPlaybackStatus() {
        return this.f4876b;
    }

    public PendingIntent getPlayerIntent() {
        return this.f4877c;
    }

    public Uri getPreviousArtwork() {
        return this.f4875a;
    }

    public int getSourceType() {
        return 1;
    }

    public String getTitle() {
        return "投影精灵";
    }
}
