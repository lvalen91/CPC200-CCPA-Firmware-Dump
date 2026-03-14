package cn.manstep.phonemirrorBox.p072f0;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import cn.manstep.phonemirrorBox.MediaButtonReceiver;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0828d extends MediaSessionCompat.AbstractC0024c {

    /* JADX INFO: renamed from: e */
    private final MediaButtonReceiver f4899e = new MediaButtonReceiver();

    /* JADX INFO: renamed from: f */
    private final WeakReference<Context> f4900f;

    /* JADX INFO: renamed from: g */
    private MediaSessionCompat f4901g;

    public C0828d(Context context) {
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.f4900f = weakReference;
        MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(weakReference.get(), "MS@" + Integer.toHexString(hashCode()));
        this.f4901g = mediaSessionCompat;
        mediaSessionCompat.m101g(this, new Handler(Looper.getMainLooper()));
        this.f4901g.m102h(7);
        m6238E(true);
    }

    /* JADX INFO: renamed from: D */
    public void m6237D() {
        if (this.f4901g != null) {
            m6238E(false);
            this.f4901g.m98d();
            this.f4901g = null;
        }
    }

    /* JADX INFO: renamed from: E */
    public void m6238E(boolean z) {
        MediaSessionCompat mediaSessionCompat = this.f4901g;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.m99e(z);
            if (Build.VERSION.SDK_INT >= 21) {
                PlaybackStateCompat.C0035b c0035b = new PlaybackStateCompat.C0035b();
                c0035b.m262b(z ? 3 : 0, 0L, CropImageView.DEFAULT_ASPECT_RATIO);
                this.f4901g.m103i(c0035b.m261a());
            }
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.AbstractC0024c
    /* JADX INFO: renamed from: g */
    public boolean mo127g(Intent intent) {
        C0982s.m7374d("MediaSessionClient", "onMediaButtonEvent: " + intent.getAction());
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent != null) {
            C0982s.m7379i("MediaSessionClient", "onMediaButtonEvent: keyCode=" + keyEvent.getKeyCode() + ", keyAction:" + keyEvent.getAction() + ", repeatCount:" + keyEvent.getRepeatCount());
        }
        this.f4899e.onReceive(this.f4900f.get(), intent);
        return true;
    }
}
