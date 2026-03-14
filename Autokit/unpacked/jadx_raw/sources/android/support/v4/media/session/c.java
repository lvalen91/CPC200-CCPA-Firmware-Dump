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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class c {

    public interface a {
        void a(List<?> list);

        void b(Object obj);

        void c(CharSequence charSequence);

        void d(Object obj);

        void e();

        void f(int i, int i2, int i3, int i4, int i5);

        void g(String str, Bundle bundle);

        void o(Bundle bundle);
    }

    static class b<T extends a> extends MediaController.Callback {
        protected final T a;

        public b(T t) {
            this.a = t;
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            this.a.f(playbackInfo.getPlaybackType(), C0005c.b(playbackInfo), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }

        @Override // android.media.session.MediaController.Callback
        public void onExtrasChanged(Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.a.o(bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.a.d(mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            this.a.b(playbackState);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.a.a(list);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueTitleChanged(CharSequence charSequence) {
            this.a.c(charSequence);
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            this.a.e();
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionEvent(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.a.g(str, bundle);
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.c$c, reason: collision with other inner class name */
    public static class C0005c {
        public static AudioAttributes a(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getAudioAttributes();
        }

        public static int b(Object obj) {
            return c(a(obj));
        }

        private static int c(AudioAttributes audioAttributes) {
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

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static Object b(Context context, Object obj) {
        return new MediaController(context, (MediaSession.Token) obj);
    }

    public static void c(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        ((MediaController) obj).sendCommand(str, bundle, resultReceiver);
    }
}
