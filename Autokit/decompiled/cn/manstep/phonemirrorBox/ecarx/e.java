package cn.manstep.phonemirrorBox.ecarx;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.manstep.phonemirrorBox.BoxInterface.f;
import cn.manstep.phonemirrorBox.MainActivity;
import com.ecarx.sdk.mediacenter.MusicPlaybackInfo;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
class e extends MusicPlaybackInfo {
    private Uri a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PendingIntent f1625c;

    public e(Context context, boolean z) {
        this.f1624b = 1;
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.addFlags(872480768);
        this.f1625c = PendingIntent.getActivity(context, 0, intent, 0);
        this.f1624b = z ? 1 : 0;
        this.a = Uri.parse("android.resource://" + StubApp.getOrigApplicationContext(context.getApplicationContext()).getPackageName() + "/2131230907");
    }

    public String getAlbum() {
        return BuildConfig.FLAVOR;
    }

    public String getAppName() {
        return "投影精灵";
    }

    public String getArtist() {
        f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
        if (fVar != null && fVar.T()) {
            return "CarPlay";
        }
        f fVar2 = cn.manstep.phonemirrorBox.BoxInterface.d.l;
        return (fVar2 == null || !fVar2.U()) ? BuildConfig.FLAVOR : "HiCar";
    }

    public Uri getArtwork() {
        return this.a;
    }

    public long getDuration() {
        return super.getDuration();
    }

    public PendingIntent getLaunchIntent() {
        return this.f1625c;
    }

    public Uri getNextArtwork() {
        return this.a;
    }

    public int getPlaybackStatus() {
        return this.f1624b;
    }

    public PendingIntent getPlayerIntent() {
        return this.f1625c;
    }

    public Uri getPreviousArtwork() {
        return this.a;
    }

    public int getSourceType() {
        return 1;
    }

    public String getTitle() {
        return "投影精灵";
    }
}
