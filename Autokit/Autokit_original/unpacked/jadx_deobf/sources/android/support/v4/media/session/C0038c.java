package android.support.v4.media.session;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.ResultReceiver;
import java.util.List;

/* JADX INFO: renamed from: android.support.v4.media.session.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0038c {

    /* JADX INFO: renamed from: android.support.v4.media.session.c$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        void mo80a(List<?> list);

        /* JADX INFO: renamed from: b */
        void mo81b(Object obj);

        /* JADX INFO: renamed from: c */
        void mo82c(CharSequence charSequence);

        /* JADX INFO: renamed from: d */
        void mo83d(Object obj);

        /* JADX INFO: renamed from: e */
        void mo84e();

        /* JADX INFO: renamed from: f */
        void mo85f(int i, int i2, int i3, int i4, int i5);

        /* JADX INFO: renamed from: g */
        void mo86g(String str, Bundle bundle);

        /* JADX INFO: renamed from: o */
        void mo87o(Bundle bundle);
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.c$b */
    static class b<T extends a> extends MediaController.Callback {

        /* JADX INFO: renamed from: a */
        protected final T f150a;

        public b(T t) {
            this.f150a = t;
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            this.f150a.mo85f(playbackInfo.getPlaybackType(), c.m270b(playbackInfo), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }

        @Override // android.media.session.MediaController.Callback
        public void onExtrasChanged(Bundle bundle) {
            MediaSessionCompat.m95a(bundle);
            this.f150a.mo87o(bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.f150a.mo83d(mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            this.f150a.mo81b(playbackState);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.f150a.mo80a(list);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueTitleChanged(CharSequence charSequence) {
            this.f150a.mo82c(charSequence);
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            this.f150a.mo84e();
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionEvent(String str, Bundle bundle) {
            MediaSessionCompat.m95a(bundle);
            this.f150a.mo86g(str, bundle);
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.c$c */
    public static class c {
        /* JADX INFO: renamed from: a */
        public static AudioAttributes m269a(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getAudioAttributes();
        }

        /* JADX INFO: renamed from: b */
        public static int m270b(Object obj) {
            return m271c(m269a(obj));
        }

        /* JADX INFO: renamed from: c */
        private static int m271c(AudioAttributes audioAttributes) {
            if ((audioAttributes.getFlags() & 1) == 1) {
                return 7;
            }
            if ((audioAttributes.getFlags() & 4) == 4) {
                return 6;
            }
            int usage = audioAttributes.getUsage();
            if (usage == 13) {
                return 1;
            }
            switch (usage) {
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                default:
                    return 3;
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static Object m266a(a aVar) {
        return new b(aVar);
    }

    /* JADX INFO: renamed from: b */
    public static Object m267b(Context context, Object obj) {
        return new MediaController(context, (MediaSession.Token) obj);
    }

    /* JADX INFO: renamed from: c */
    public static void m268c(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        ((MediaController) obj).sendCommand(str, bundle, resultReceiver);
    }
}
