package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: android.support.v4.media.session.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0042g {

    /* JADX INFO: renamed from: android.support.v4.media.session.g$a */
    static final class a {
        /* JADX INFO: renamed from: a */
        public static String m296a(Object obj) {
            return ((PlaybackState.CustomAction) obj).getAction();
        }

        /* JADX INFO: renamed from: b */
        public static Bundle m297b(Object obj) {
            return ((PlaybackState.CustomAction) obj).getExtras();
        }

        /* JADX INFO: renamed from: c */
        public static int m298c(Object obj) {
            return ((PlaybackState.CustomAction) obj).getIcon();
        }

        /* JADX INFO: renamed from: d */
        public static CharSequence m299d(Object obj) {
            return ((PlaybackState.CustomAction) obj).getName();
        }

        /* JADX INFO: renamed from: e */
        public static Object m300e(String str, CharSequence charSequence, int i, Bundle bundle) {
            PlaybackState.CustomAction.Builder builder = new PlaybackState.CustomAction.Builder(str, charSequence, i);
            builder.setExtras(bundle);
            return builder.build();
        }
    }

    /* JADX INFO: renamed from: a */
    public static long m286a(Object obj) {
        return ((PlaybackState) obj).getActions();
    }

    /* JADX INFO: renamed from: b */
    public static long m287b(Object obj) {
        return ((PlaybackState) obj).getActiveQueueItemId();
    }

    /* JADX INFO: renamed from: c */
    public static long m288c(Object obj) {
        return ((PlaybackState) obj).getBufferedPosition();
    }

    /* JADX INFO: renamed from: d */
    public static List<Object> m289d(Object obj) {
        return ((PlaybackState) obj).getCustomActions();
    }

    /* JADX INFO: renamed from: e */
    public static CharSequence m290e(Object obj) {
        return ((PlaybackState) obj).getErrorMessage();
    }

    /* JADX INFO: renamed from: f */
    public static long m291f(Object obj) {
        return ((PlaybackState) obj).getLastPositionUpdateTime();
    }

    /* JADX INFO: renamed from: g */
    public static float m292g(Object obj) {
        return ((PlaybackState) obj).getPlaybackSpeed();
    }

    /* JADX INFO: renamed from: h */
    public static long m293h(Object obj) {
        return ((PlaybackState) obj).getPosition();
    }

    /* JADX INFO: renamed from: i */
    public static int m294i(Object obj) {
        return ((PlaybackState) obj).getState();
    }

    /* JADX INFO: renamed from: j */
    public static Object m295j(int i, long j, long j2, float f, long j3, CharSequence charSequence, long j4, List<Object> list, long j5) {
        PlaybackState.Builder builder = new PlaybackState.Builder();
        builder.setState(i, j, f, j4);
        builder.setBufferedPosition(j2);
        builder.setActions(j3);
        builder.setErrorMessage(charSequence);
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            builder.addCustomAction((PlaybackState.CustomAction) it.next());
        }
        builder.setActiveQueueItemId(j5);
        return builder.build();
    }
}
