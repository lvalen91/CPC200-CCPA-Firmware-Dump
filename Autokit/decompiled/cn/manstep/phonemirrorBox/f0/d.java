package cn.manstep.phonemirrorBox.f0;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import cn.manstep.phonemirrorBox.MediaButtonReceiver;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class d extends MediaSessionCompat.c {
    private final MediaButtonReceiver e = new MediaButtonReceiver();
    private final WeakReference<Context> f;
    private MediaSessionCompat g;

    public d(Context context) {
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.f = weakReference;
        MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(weakReference.get(), "MS@" + Integer.toHexString(hashCode()));
        this.g = mediaSessionCompat;
        mediaSessionCompat.g(this, new Handler(Looper.getMainLooper()));
        this.g.h(7);
        E(true);
    }

    public void D() {
        if (this.g != null) {
            E(false);
            this.g.d();
            this.g = null;
        }
    }

    public void E(boolean z) {
        MediaSessionCompat mediaSessionCompat = this.g;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.e(z);
            if (Build.VERSION.SDK_INT >= 21) {
                PlaybackStateCompat.b bVar = new PlaybackStateCompat.b();
                bVar.b(z ? 3 : 0, 0L, CropImageView.DEFAULT_ASPECT_RATIO);
                this.g.i(bVar.a());
            }
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.c
    public boolean g(Intent intent) {
        s.d("MediaSessionClient", "onMediaButtonEvent: " + intent.getAction());
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent != null) {
            s.i("MediaSessionClient", "onMediaButtonEvent: keyCode=" + keyEvent.getKeyCode() + ", keyAction:" + keyEvent.getAction() + ", repeatCount:" + keyEvent.getRepeatCount());
        }
        this.e.onReceive(this.f.get(), intent);
        return true;
    }
}
