/**
 * AudioCallback.java
 *
 * Audio frame dispatch callback. Manages multiple AudioTrack outputs for
 * different audio streams (media, call, navigation, Siri, ringtone, alternate).
 * Processes audio control commands from the box protocol and routes PCM data
 * to the appropriate AudioTrack with gain adjustment.
 *
 * Log tag: "BoxAudioPlayer"
 *
 * Audio control commands (byte values in control packets):
 *   1 = AUDIO_OUTPUT_START
 *   2 = AUDIO_OUTPUT_STOP
 *   3 = AUDIO_INPUT_CONFIG
 *   4 = AUDIO_PHONECALL_START
 *   5 = AUDIO_PHONECALL_STOP
 *   6 = AUDIO_NAVI_START
 *   7 = AUDIO_NAVI_STOP
 *   8 = AUDIO_SIRI_START
 *   9 = AUDIO_SIRI_STOP
 *  10 = AUDIO_MEDIA_START
 *  11 = AUDIO_MEDIA_STOP
 *  12 = AUDIO_ALERT_START
 *  13 = AUDIO_ALERT_STOP
 *  14 = AUDIO_PHONECALL_INCOMING
 *  15 = AUDIO_NOTICE_START
 *  16 = AUDIO_NOTICE_STOP
 *
 * Audio types: 1=AUDIO_MAIN, 2=AUDIO_ALTERNATE, 3=AUDIO_INPUT
 *
 * Original: BoxInterface/a.java
 */
package cn.manstep.autokit.protocol;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import cn.manstep.phonemirrorBox.BoxInterface.f;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.JniTools;
import cn.manstep.phonemirrorBox.util.n;
import cn.manstep.phonemirrorBox.util.s;
import java.io.File;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* was: 'cn.manstep.phonemirrorBox.BoxInterface.a' */
public class AudioCallback {
    private static AudioFrameInfo audioFrameInfo; /* was: 'w' */
    private int audioType; /* was: 'a' */
    private int decodeType; /* was: 'f1409b' */
    private d.b.a.b audioTrackWrapper; /* was: 'f1410c' */
    private int playerIndex /* was: 'f1411d' */ = 0;
    private AudioLooperThread audioLooperThread; /* was: 'e' */
    private static final Map<Integer, Long> eventTimestamps /* was: 'f' */ = new ConcurrentHashMap(6);
    public static boolean canRecordMic /* was: 'g' */ = true;
    public static d.b.a.c micRecorder /* was: 'h' */ = new d.b.a.c();
    public static int currentDecodeType /* was: 'i' */ = -1;
    public static boolean isMediaPlaying /* was: 'j' */ = false;
    public static boolean isMediaOutputEnabled /* was: 'k' */ = false;
    public static boolean stopIPhoneAudio /* was: 'l' */ = false;
    private static MediaPlayer muteMediaPlayer /* was: 'm' */ = null;
    private static boolean isNaviActive /* was: 'n' */ = false;
    private static boolean isCallActive /* was: 'o' */ = false;
    private static boolean isSiriActive /* was: 'p' */ = false;
    private static boolean isAlertRinging /* was: 'q' */ = false;
    private static boolean isAlternateActive /* was: 'r' */ = false;
    public static boolean isAudioTransferMode /* was: 's' */ = false;
    private static int naviGain /* was: 't' */ = 0;
    private static int voiceCallGain /* was: 'u' */ = 0;
    private static boolean useAudioClassify /* was: 'v' */ = false;
    private static boolean isAudioMuted /* was: 'x' */ = false;

    /* was: 'cn.manstep.phonemirrorBox.BoxInterface.a$a' (RunnableC0072a) */
    static class StopIPhoneAudioRunnable implements Runnable {
        StopIPhoneAudioRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioCallback.stopIPhoneAudio = !AudioCallback.isMediaPlaying;
        }
    }

    /* Inner class holding audio frame info parsed from protocol packet */
    /* was: 'c' */
    class AudioFrameInfo {
        int decodeType; /* was: 'a' */
        int audioType; /* was: 'f1413b' */
        int dataLength; /* was: 'f1414c' */
        float volume; /* was: 'f1415d' */

        AudioFrameInfo(AudioCallback audioCallback) {
        }
    }

    /**
     * Constructor.
     *
     * @param decodeType audio decode type (sample rate/channels config)
     * @param audioType  audio type (1=MAIN, 2=ALTERNATE, 3=INPUT)
     * @param context    application context for file access
     */
    /* was: 'a(int, int, Context)' -- NOTE: original order is (decodeType, audioType, context) */
    public AudioCallback(int decodeType, int audioType, Context context) {
        StopIPhoneAudioRunnable runnableC0072a = null;
        this.audioTrackWrapper = null;
        this.audioLooperThread = null;
        try {
            File filesDir = context.getFilesDir();
            if (!filesDir.exists() || !filesDir.isDirectory()) {
                s.e("BoxAudioPlayer: Directory does not exist!");
            } else if (muteMediaPlayer == null) {
                MediaPlayer mediaPlayer = new MediaPlayer();
                muteMediaPlayer = mediaPlayer;
                mediaPlayer.setDataSource(filesDir.getAbsolutePath() + "/mute.wav");
                s.c("BoxAudioPlayer: Create Mute MediaPlayer!");
            }
        } catch (Exception e) {
            muteMediaPlayer = null;
            s.e("BoxAudioPlayer: " + Log.getStackTraceString(e));
        }
        this.decodeType = decodeType;
        this.audioType = audioType;
        audioFrameInfo = new AudioFrameInfo(this);
        AudioLooperThread looperThread = new AudioLooperThread(this, runnableC0072a);
        this.audioLooperThread = looperThread;
        looperThread.start();
        if (this.audioTrackWrapper == null) {
            this.audioTrackWrapper = new d.b.a.b(this.audioLooperThread.getHandler() /* was: 'c()' */);
        }
    }

    /* was: 'A' */
    public static void updateGainSettings(Context context, boolean z) {
        if (z) {
            micRecorder.w(b0.i().m("MicGain", 0));
            naviGain = b0.d(context, "NaviGain", 0);
            voiceCallGain = b0.d(context, "VoiceCallGain", 0);
        }
    }

    /* was: 'B' */
    public static void onResumeRequestAudioFocus() {
        if (b0.i().o("IsAutoPlayMusic", true)) {
            s.c("BoxAudioPlayer,onResumeRequestAudioFocus: isMusicActive:  " + isStreamActive(3, 50) /* was: 'q(3, 50)' */);
        }
    }

    /* was: 'C' */
    private void onRingStart(int decodeType) {
        s.h("BoxAudioPlayer,onRingStart: index=" + getPlayerIndex() /* was: 'k()' */ + ",bAlertRinging=" + isAlertRinging);
        if (isAlertRinging) {
            return;
        }
        isAlertRinging = true;
        this.audioTrackWrapper.l(true);
        initRingAudioPlayer(decodeType); /* was: 'o(decodeType)' */
        cn.manstep.phonemirrorBox.f0.f.j().m();
        cn.manstep.phonemirrorBox.v0.a.t().e();
    }

    /* was: 'D' */
    private void onRingStop() {
        s.h("BoxAudioPlayer,onRingStop: index=" + getPlayerIndex() + ",bAlertRinging=" + isAlertRinging);
        if (isAlertRinging) {
            isAlertRinging = false;
            this.audioTrackWrapper.l(false);
            cn.manstep.phonemirrorBox.v0.a.t().l();
            cn.manstep.phonemirrorBox.f0.f.j().g();
        }
    }

    /* was: 'E' */
    private void onSiriStart() {
        s.c("BoxAudioPlayer,onSiriStart: index=" + getPlayerIndex());
        this.audioTrackWrapper.l(true);
        isSiriActive = true;
        cn.manstep.phonemirrorBox.v0.a.t().h();
        d.l.m1(getPlayerIndex());
        cn.manstep.phonemirrorBox.f0.g.j().m();
    }

    /* was: 'F' */
    private void onSiriStop() {
        s.c("BoxAudioPlayer,onSiriStop: index=" + getPlayerIndex());
        isSiriActive = false;
        this.audioTrackWrapper.l(false);
        cn.manstep.phonemirrorBox.v0.a.t().o();
        d.l.m1(-1);
        cn.manstep.phonemirrorBox.f0.g.j().g();
        u.z().i0(); /* was: 'DeviceConfig.getInstance().i0()' */
    }

    /* was: 'G' */
    public static void requestAudioFocus() {
        s.c("BoxAudioPlayer,requestAudioFocus: bStopiPhoneAudio=" + stopIPhoneAudio);
        if (isAudioTransferMode || !d.G()) {
            return;
        }
        if (isCallActive) {
            cn.manstep.phonemirrorBox.f0.b.j().m();
        } else {
            cn.manstep.phonemirrorBox.f0.c.n().u();
        }
    }

    /* was: 'H' */
    private static void resetAllState() {
        canRecordMic = true;
        muteMediaPlayer = null;
        isMediaOutputEnabled = false;
        currentDecodeType = -1;
        isMediaPlaying = false;
        isNaviActive = false;
        isCallActive = false;
        isSiriActive = false;
        isAlertRinging = false;
        isAlternateActive = false;
    }

    /* was: 'I' */
    public static void setAudioMuted(boolean z) {
        useAudioClassify = z; /* was: field 'v' — original: I(boolean z) { v = z; } */
    }

    /* was: 'L' */
    public static void stopMusicAudioOutput(boolean z, boolean z2) {
        if (!z) {
            stopIPhoneAudio = false;
            return;
        }
        if (z2) {
            stopIPhoneAudio = true;
        } else {
            s.c("BoxAudioPlayer,stopMusicAudioOutput: " + isMediaPlaying + " " + isMediaOutputEnabled);
            stopIPhoneAudio = isMediaPlaying;
        }
        cn.manstep.phonemirrorBox.util.j.c().e("SetStopiPhoneAudio", 2000L, new StopIPhoneAudioRunnable());
    }

    /* was: 'a(byte[], int, int)' -- write PCM data to audio track */
    private void writePcmData(byte[] bArr, int offset, int length) {
        d.b.a.b trackWrapper;
        int gain;
        int gainValue;
        if (p.x) { /* was: 'GlobalConfig.x' -- UNCERTAIN: appears to be a debug/recording flag */
            n.z(bArr, offset, length, String.format(Locale.getDefault(), "pout_%02d.pcm", Integer.valueOf(getPlayerIndex())), MyApplication.b());
        }
        if (isAudioMuted || (trackWrapper = this.audioTrackWrapper) == null) {
            return;
        }
        if (!isNaviActive && !isCallActive && !isSiriActive && !isAlertRinging) {
            if (stopIPhoneAudio) {
                return;
            }
            trackWrapper.f(bArr, offset, length);
            return;
        }
        if (isNaviActive && (gainValue = naviGain) > 0) {
            JniTools.amplifyPcmData(bArr, offset, length, gainValue);
        } else if (!isCallActive || (gain = voiceCallGain) <= 0) {
            cn.manstep.phonemirrorBox.v0.a.t().B();
        } else {
            JniTools.amplifyPcmData(bArr, offset, length, gain);
        }
        this.audioTrackWrapper.f(bArr, offset, length);
    }

    /* was: 'c(int, boolean)' -- get audio params by decode type */
    private d.b.a.a getAudioParamByDecodeType(int decodeType, boolean isInput) {
        int channels;
        int sampleRate = 16000;
        int bitDepth = 0;
        switch (decodeType) {
            case 1:
            case 2:
                sampleRate = 44100;
                bitDepth = 16;
                channels = 2;
                break;
            case 3:
                sampleRate = 8000;
                bitDepth = 16;
                channels = 1;
                break;
            case 4:
                sampleRate = 48000;
                bitDepth = 16;
                channels = 2;
                break;
            case 5:
                bitDepth = 16;
                channels = 1;
                break;
            case 6:
                sampleRate = 24000;
                bitDepth = 16;
                channels = 1;
                break;
            case 7:
                bitDepth = 16;
                channels = 2;
                break;
            default:
                sampleRate = 0;
                channels = 0;
                break;
        }
        s.c("BoxAudioPlayer,GetAudioParamByDecodeType: decode_type=" + decodeType + " rate=" + sampleRate + " bits=" + bitDepth + " channel=" + channels);
        if (isInput) {
            return new d.b.a.a(sampleRate, channels == 1 ? 16 : 12, bitDepth != 16 ? 3 : 2);
        }
        return new d.b.a.a(sampleRate, channels == 1 ? 4 : 12, bitDepth != 16 ? 3 : 2);
    }

    /* was: 'd' -- reset all audio focus managers */
    private void resetAllAudioFocus() {
        resetAllState(); /* was: 'H()' */
        cn.manstep.phonemirrorBox.f0.c.n().s();
        cn.manstep.phonemirrorBox.f0.e.j().g();
        cn.manstep.phonemirrorBox.f0.b.j().g();
        cn.manstep.phonemirrorBox.f0.g.j().g();
        cn.manstep.phonemirrorBox.f0.f.j().g();
    }

    /* was: 'e(int)' -- get audio control command name */
    private String getAudioControlCommandName(int cmd) {
        switch (cmd) {
            case 1:
                return "AUDIO_OUTPUT_START";
            case 2:
                return "AUDIO_OUTPUT_STOP";
            case 3:
                return "AUDIO_INPUT_CONFIG";
            case 4:
                return "AUDIO_PHONECALL_START";
            case 5:
                return "AUDIO_PHONECALL_STOP";
            case 6:
                return "AUDIO_NAVI_START";
            case 7:
                return "AUDIO_NAVI_STOP";
            case 8:
                return "AUDIO_SIRI_START";
            case 9:
                return "AUDIO_SIRI_STOP";
            case 10:
                return "AUDIO_MEDIA_START";
            case 11:
                return "AUDIO_MEDIA_STOP";
            case 12:
                return "AUDIO_ALERT_START";
            case 13:
                return "AUDIO_ALERT_STOP";
            case 14:
                return "AUDIO_PHONECALL_INCOMING";
            case 15:
                return "AUDIO_NOTICE_START";
            case 16:
                return "AUDIO_NOTICE_STOP";
            default:
                return "Unknown: " + cmd;
        }
    }

    /* was: 'f(int)' -- get audio type name */
    private String getAudioTypeName(int type) {
        if (type == 1) {
            return "AUDIO_MAIN";
        }
        if (type == 2) {
            return "AUDIO_ALTERNATE";
        }
        if (type == 3) {
            return "AUDIO_INPUT";
        }
        return "Unknown Type: " + type;
    }

    /* was: 'g' -- resume media audio if music was playing */
    private void resumeMediaAudioIfNeeded() {
        if (cn.manstep.phonemirrorBox.v0.a.t().y()) {
            AudioCallback playerZ = d.t() ? d.l.z(3) : d.l.z(0);
            if (playerZ.audioTrackWrapper.D()) {
                return;
            }
            if (cn.manstep.phonemirrorBox.f0.c.n().e() || Build.VERSION.SDK_INT < 26) {
                playerZ.audioTrackWrapper.h();
            } else {
                playerZ.audioTrackWrapper.g();
            }
        }
    }

    /* was: 'j(int)' -- get stream type for audio classify mode */
    private static int getStreamType(int audioType) {
        if (useAudioClassify) {
            if (audioType == 1) {
                return 0;
            }
            if (audioType == 2 || audioType == 3) {
                return 2;
            }
        } else {
            if (audioType == 1) {
                return u.z().K(); /* was: 'DeviceConfig.getInstance().K()' */
            }
            if (audioType == 2) {
                return u.z().J();
            }
            if (audioType == 3) {
                return u.z().B();
            }
        }
        return 3;
    }

    /* was: 'k' -- get player index */
    private int getPlayerIndex() {
        return this.playerIndex;
    }

    /* was: 'l(Context)' -- initialize audio system */
    public static void initAudioSystem(Context context) {
        resetAllState();
        micRecorder.w(b0.i().m("MicGain", 0));
        micRecorder.v(b0.i().m("RecordSource", u.z().F()));
        useAudioClassify = b0.i().o("AudioClassify", false);
        isAudioTransferMode = b0.i().o("AudioTransferMode", false);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        eventTimestamps.put(6, Long.valueOf(elapsedRealtime));
        eventTimestamps.put(7, Long.valueOf(elapsedRealtime));
        eventTimestamps.put(8, Long.valueOf(elapsedRealtime));
        eventTimestamps.put(9, Long.valueOf(elapsedRealtime));
        eventTimestamps.put(4, Long.valueOf(elapsedRealtime));
        eventTimestamps.put(5, Long.valueOf(elapsedRealtime));
        cn.manstep.phonemirrorBox.f0.c.n().p(context);
        cn.manstep.phonemirrorBox.f0.e.j().l(context);
        cn.manstep.phonemirrorBox.f0.b.j().l(context);
        cn.manstep.phonemirrorBox.f0.g.j().l(context);
        cn.manstep.phonemirrorBox.f0.f.j().l(context);
    }

    /* was: 'm(int)' -- init call audio player */
    private void initCallAudioPlayer(int decodeType) {
        AudioCallback existingCallPlayer;
        s.c("BoxAudioPlayer,initCallAudioPlayer: index=" + getPlayerIndex() + ", decodeType=" + decodeType);
        if (d.G() && (existingCallPlayer = d.l.H()) != null && existingCallPlayer.getPlayerIndex() != getPlayerIndex()) {
            s.c("BoxAudioPlayer,initCallAudioPlayer: index=" + getPlayerIndex() + ", CurrentCallAudioPlayerIndex=" + existingCallPlayer.getPlayerIndex());
            return;
        }
        if (cn.manstep.phonemirrorBox.f0.b.j().e() || Build.VERSION.SDK_INT < 26) {
            this.audioTrackWrapper.d(getAudioParamByDecodeType(decodeType, false), cn.manstep.phonemirrorBox.f0.b.j().c());
        } else {
            this.audioTrackWrapper.a(cn.manstep.phonemirrorBox.f0.b.j().i(), getAudioParamByDecodeType(decodeType, false));
        }
        cn.manstep.phonemirrorBox.f0.b.j().m();
        cn.manstep.phonemirrorBox.f0.b.j().f(this.audioTrackWrapper);
        d.l.J0("callVol", cn.manstep.phonemirrorBox.f0.b.j().d());
    }

    /* was: 'n(int)' -- init media audio player */
    private void initMediaAudioPlayer(int decodeType) {
        s.c("BoxAudioPlayer,initMediaAudioPlayer: decodeType = " + decodeType + ",index=" + getPlayerIndex());
        stopIPhoneAudio = false;
        if (cn.manstep.phonemirrorBox.f0.c.n().e() || Build.VERSION.SDK_INT < 26) {
            this.audioTrackWrapper.d(getAudioParamByDecodeType(decodeType, false), getStreamType(0));
        } else {
            this.audioTrackWrapper.a(cn.manstep.phonemirrorBox.f0.c.n().m(), getAudioParamByDecodeType(decodeType, false));
        }
        cn.manstep.phonemirrorBox.f0.c.n().f(this.audioTrackWrapper);
        d.l.J0("mediaVol", cn.manstep.phonemirrorBox.f0.c.n().d());
    }

    /* was: 'o(int)' -- init ring audio player */
    private void initRingAudioPlayer(int decodeType) {
        s.d("BoxAudioPlayer", "initRingAudioPlayer: decodeType=" + decodeType + ",index=" + getPlayerIndex() + ",isReady=" + this.audioTrackWrapper.D());
        if (cn.manstep.phonemirrorBox.f0.f.j().e() || Build.VERSION.SDK_INT < 26) {
            this.audioTrackWrapper.d(getAudioParamByDecodeType(decodeType, false), cn.manstep.phonemirrorBox.f0.f.j().c());
        } else {
            this.audioTrackWrapper.a(cn.manstep.phonemirrorBox.f0.f.j().i(), getAudioParamByDecodeType(decodeType, false));
        }
        cn.manstep.phonemirrorBox.f0.f.j().f(this.audioTrackWrapper);
        d.l.J0("ringVol", cn.manstep.phonemirrorBox.f0.f.j().d());
    }

    /* was: 'p(int)' -- init siri audio player */
    private void initSiriAudioPlayer(int decodeType) {
        s.c("BoxAudioPlayer,initSiriAudioPlayer: decodeType = " + decodeType + ", index=" + getPlayerIndex());
        if (cn.manstep.phonemirrorBox.f0.g.j().e() || Build.VERSION.SDK_INT < 26) {
            this.audioTrackWrapper.d(getAudioParamByDecodeType(decodeType, false), cn.manstep.phonemirrorBox.f0.g.j().c());
        } else {
            this.audioTrackWrapper.a(cn.manstep.phonemirrorBox.f0.g.j().i(), getAudioParamByDecodeType(decodeType, false));
        }
        cn.manstep.phonemirrorBox.f0.g.j().f(this.audioTrackWrapper);
    }

    /* was: 'q(int, int)' -- check if audio stream is active (reflective) */
    public static int isStreamActive(int streamType, int inPastMs) {
        try {
            return ((Boolean) Class.forName("android.media.AudioSystem").getMethod("isStreamActive", Integer.TYPE, Integer.TYPE).invoke(null, Integer.valueOf(streamType), Integer.valueOf(inPastMs))).booleanValue() ? 1 : 0;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* was: 'r(int)' -- on alternate audio start */
    private void onAlternateStart(int decodeType) {
        s.d("BoxAudioPlayer", "onAlternateStart: " + decodeType + ", index=" + getPlayerIndex());
        if (isAlternateActive) {
            return;
        }
        isAlternateActive = true;
        if (cn.manstep.phonemirrorBox.f0.c.n().e() || Build.VERSION.SDK_INT < 26) {
            this.audioTrackWrapper.d(getAudioParamByDecodeType(decodeType, false), 3);
        } else {
            AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
            s.d("BoxAudioPlayer", "onAlternateStart: VolumeControlStream=" + audioAttributesBuild.getVolumeControlStream());
            this.audioTrackWrapper.a(audioAttributesBuild, getAudioParamByDecodeType(decodeType, false));
        }
        s.d("BoxAudioPlayer", "onAlternateStart: decodeType=" + decodeType + ",StreamType=" + this.audioTrackWrapper.C());
        cn.manstep.phonemirrorBox.e0.b.a().c(1, this.audioTrackWrapper.C());
    }

    /* was: 's' -- on alternate audio stop */
    private void onAlternateStop() {
        isAlternateActive = false;
    }

    /* was: 'u(boolean)' -- on call start */
    private void onCallStart(boolean isIncoming) {
        s.h("BoxAudioPlayer,onCallStart: index=" + getPlayerIndex());
        this.audioTrackWrapper.l(true);
        if (isIncoming) {
            cn.manstep.phonemirrorBox.v0.a.t().s();
        } else {
            cn.manstep.phonemirrorBox.v0.a.t().k();
        }
        isCallActive = true;
        d.l.l1(getPlayerIndex());
        if (isIncoming) {
            return;
        }
        cn.manstep.phonemirrorBox.f0.b.j().m();
    }

    /* was: 'v' -- on call stop */
    private void onCallStop() {
        s.h("BoxAudioPlayer,onCallStop: index=" + getPlayerIndex() + ",isMusicPlaying=" + cn.manstep.phonemirrorBox.v0.a.t().y());
        stopIPhoneAudio = false;
        isCallActive = false;
        this.audioTrackWrapper.l(false);
        cn.manstep.phonemirrorBox.v0.a.t().f();
        d.l.l1(-1);
        cn.manstep.phonemirrorBox.f0.b.j().g();
        resumeMediaAudioIfNeeded(); /* was: 'g()' */
    }

    /* was: 'w' -- on media start */
    private void onMediaStart() {
        StringBuilder sb = new StringBuilder();
        sb.append("BoxAudioPlayer,onMediaStart: index=");
        sb.append(getPlayerIndex());
        sb.append(" ");
        sb.append(isMediaPlaying && !stopIPhoneAudio);
        s.h(sb.toString());
        if (d.G()) {
            b0.i().F("MediaPlaying_" + d.l.K(), Boolean.TRUE);
        }
        if (!isMediaPlaying || stopIPhoneAudio) {
            isMediaPlaying = true;
            stopIPhoneAudio = false;
            cn.manstep.phonemirrorBox.v0.a.t().g();
            cn.manstep.phonemirrorBox.f0.c.n().u();
        }
    }

    /* was: 'x' -- on media stop */
    private void onMediaStop() {
        s.h("BoxAudioPlayer,onMediaStop: index=" + getPlayerIndex());
        if (d.G()) {
            b0.i().F("MediaPlaying_" + d.l.K(), Boolean.FALSE);
        }
        isMediaPlaying = false;
        cn.manstep.phonemirrorBox.v0.a.t().m();
        cn.manstep.phonemirrorBox.f0.c.n().g();
    }

    /* was: 'y(int)' -- on navi report start */
    private void onNaviReportStart(int decodeType) {
        s.d("BoxAudioPlayer", "onNaviReportStart: ");
        eventTimestamps.put(8, Long.valueOf(SystemClock.elapsedRealtime()));
        if (isNaviActive) {
            return;
        }
        s.h("BoxAudioPlayer,onNaviReportStart: index=" + getPlayerIndex());
        cn.manstep.phonemirrorBox.v0.a.t().b();
        isNaviActive = true;
        this.audioTrackWrapper.l(true);
        if (cn.manstep.phonemirrorBox.f0.e.j().e() || Build.VERSION.SDK_INT < 26) {
            this.audioTrackWrapper.d(getAudioParamByDecodeType(decodeType, false), cn.manstep.phonemirrorBox.f0.e.j().c());
        } else {
            this.audioTrackWrapper.a(cn.manstep.phonemirrorBox.f0.e.j().i(), getAudioParamByDecodeType(decodeType, false));
        }
        cn.manstep.phonemirrorBox.f0.e.j().f(this.audioTrackWrapper);
        d.l.J0("navVol", cn.manstep.phonemirrorBox.f0.e.j().d());
        cn.manstep.phonemirrorBox.f0.e.j().m();
    }

    /* was: 'z' -- on navi report stop */
    private void onNaviReportStop() {
        s.p("BoxAudioPlayer", "onNaviReportStop: bNavieRport=" + isNaviActive + ", index=" + getPlayerIndex());
        eventTimestamps.put(9, Long.valueOf(SystemClock.elapsedRealtime()));
        if (isNaviActive) {
            s.h("BoxAudioPlayer,onNaviReportStop: index=" + getPlayerIndex());
            isNaviActive = false;
            this.audioTrackWrapper.l(false);
            u.z().h0();
            cn.manstep.phonemirrorBox.v0.a.t().d();
            cn.manstep.phonemirrorBox.f0.e.j().g();
        }
        stopIPhoneAudio = false;
    }

    /* was: 'J(int)' -- set player index */
    public void setPlayerIndex(int index) {
        this.playerIndex = index;
    }

    /* was: 'K' -- stop and release audio */
    public void stopAndRelease() {
        d.b.a.b trackWrapper = this.audioTrackWrapper;
        if (trackWrapper != null) {
            trackWrapper.i();
        }
        isMediaPlaying = false;
        resetAllAudioFocus(); /* was: 'd()' */
    }

    /* was: 'b(float)' -- set volume */
    public void setVolume(float volume) {
        d.b.a.b trackWrapper = this.audioTrackWrapper;
        if (trackWrapper != null) {
            trackWrapper.n(volume);
        }
    }

    /* was: 'h' -- destroy */
    public void destroy() {
        s.d("BoxAudioPlayer", "destroy: ");
        d.b.a.b trackWrapper = this.audioTrackWrapper;
        if (trackWrapper != null) {
            trackWrapper.i();
            this.audioTrackWrapper = null;
        }
        MediaPlayer mediaPlayer = muteMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            muteMediaPlayer = null;
        }
        AudioLooperThread looperThread = this.audioLooperThread;
        if (looperThread != null) {
            looperThread.quit(); /* was: 'd()' */
            this.audioLooperThread = null;
        }
        resetAllAudioFocus();
    }

    /* was: 'i' -- get audio track wrapper */
    public d.b.a.b getAudioTrackWrapper() {
        return this.audioTrackWrapper;
    }

    /**
     * Process an audio frame packet from the protocol.
     * Dispatches to the appropriate audio handler based on the audio control command.
     *
     * was: 't(f.l)'
     * @param packet the protocol packet (was: 'lVar')
     */
    public void onAudioProcess(f.l packet /* was: 'lVar' */) {
        int decodeTypeLocal;
        audioFrameInfo.decodeType = packet.d().getInt(0);
        audioFrameInfo.audioType = packet.d().getInt(8);
        AudioFrameInfo info = audioFrameInfo;
        if (info.decodeType == 5 && info.audioType == 1 && p.u) { /* was: 'GlobalConfig.hideNavBar' */
            audioFrameInfo.decodeType = 7;
        }
        audioFrameInfo.volume = packet.d().getFloat(4);
        audioFrameInfo.dataLength = packet.f() - 12;
        AudioFrameInfo info2 = audioFrameInfo;
        int infoDecodeType = info2.decodeType;
        if (infoDecodeType == this.decodeType && info2.audioType == this.audioType) {
            int dataLen = info2.dataLength;
            if (dataLen != 1) {
                if (dataLen != 4) {
                    if (infoDecodeType == 1) {
                        return;
                    }
                    writePcmData(packet.e(), 12, audioFrameInfo.dataLength);
                    if (audioFrameInfo.decodeType == currentDecodeType && p.H) { /* was: 'GlobalConfig.enableHeartbeat' */
                        micRecorder.e(packet.e(), 12, audioFrameInfo.dataLength);
                    }
                    return;
                }
                s.h("BoxAudioPlayer,onAudioProcess: change volume duration: " + packet.d().getFloat(12) + ", AudioSessionId=" + this.audioTrackWrapper.y());
                s.h("BoxAudioPlayer,onAudioProcess: Lower the volume: " + audioFrameInfo.volume + ", AudioSessionId=" + this.audioTrackWrapper.y() + " " + this);
                return;
            }
            byte audioCtrlCmd = packet.d().get(12);
            s.c("BoxAudioPlayer,onAudioProcess: audioCtrlCmd=" + ((int) audioCtrlCmd) + ", " + getAudioControlCommandName(audioCtrlCmd));
            s.c("BoxAudioPlayer,onAudioProcess: audioType=" + this.audioType + ", " + getAudioTypeName(this.audioType));
            s.e("BoxAudioPlayer,onAudioProcess: Recv Audio control data: cmd=" + ((int) audioCtrlCmd) + ", AudioType=" + this.audioType + ", DecodeType=" + this.decodeType);
            switch (audioCtrlCmd) {
                case 1:
                    s.c("BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_START audioCtrlCmd=" + ((int) audioCtrlCmd));
                    int currentAudioType = this.audioType;
                    if (currentAudioType == 2) {
                        s.d("BoxAudioPlayer", "onAudioProcess: AUDIO_ALTERNATE Start");
                        if (!isAlternateActive) {
                            onNaviReportStart(this.decodeType); /* was: 'y(this.f1409b)' */
                        } else {
                            onAlternateStart(this.decodeType); /* was: 'r(this.f1409b)' */
                        }
                    } else if (isCallActive) {
                        initCallAudioPlayer(this.decodeType);
                    } else if (isSiriActive) {
                        initSiriAudioPlayer(this.decodeType);
                    } else if (isAlertRinging) {
                        initRingAudioPlayer(this.decodeType);
                    } else if (isMediaPlaying) {
                        initMediaAudioPlayer(this.decodeType);
                    } else if (currentAudioType == 1 && ((decodeTypeLocal = this.decodeType) == 2 || decodeTypeLocal == 4)) {
                        initMediaAudioPlayer(this.decodeType);
                        onMediaStart(); /* was: 'w()' */
                    } else {
                        s.d("BoxAudioPlayer", "onAudioProcess: ==============index=" + getPlayerIndex());
                        this.audioTrackWrapper.c(getAudioParamByDecodeType(this.decodeType, false));
                    }
                    break;
                case 2:
                    s.c("BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_STOP," + getPlayerIndex() + ",SessionId=" + getAudioTrackWrapper().y());
                    if (this.audioType == 2) {
                        onNaviReportStop(); /* was: 'z()' */
                        onAlternateStop(); /* was: 's()' */
                    } else {
                        this.audioTrackWrapper.i();
                    }
                    if (this.audioType == 1) {
                        int dt = this.decodeType;
                        if (dt == 2 || dt == 4) {
                            onMediaStop(); /* was: 'x()' */
                        }
                    }
                    break;
                case 3:
                    int prevDecodeType = currentDecodeType;
                    int newDecodeType = audioFrameInfo.decodeType;
                    if (prevDecodeType != newDecodeType) {
                        currentDecodeType = newDecodeType;
                        micRecorder.h(getAudioParamByDecodeType(newDecodeType, true));
                    }
                    break;
                case 4:
                case 14:
                    onCallStart(audioCtrlCmd == 14); /* was: 'u(b2 == 14)' */
                    break;
                case 5:
                    onCallStop(); /* was: 'v()' */
                    break;
                case 6:
                    onNaviReportStart(this.decodeType);
                    break;
                case 7:
                    onNaviReportStop();
                    break;
                case 8:
                    onSiriStart(); /* was: 'E()' */
                    break;
                case 9:
                    onSiriStop(); /* was: 'F()' */
                    break;
                case 10:
                    onMediaStart();
                    break;
                case 11:
                    onMediaStop();
                    break;
                case 12:
                    onRingStart(this.decodeType); /* was: 'C(this.f1409b)' */
                    break;
                case 13:
                    onRingStop(); /* was: 'D()' */
                    break;
                case 15:
                    onAlternateStart(this.decodeType);
                    break;
                case 16:
                    onAlternateStop();
                    break;
                default:
                    s.f("BoxAudioPlayer", "onAudioProcess: unknown " + ((int) audioCtrlCmd));
                    break;
            }
        }
    }

    /* was: 'cn.manstep.phonemirrorBox.BoxInterface.a$b' -- audio looper thread */
    private class AudioLooperThread extends Thread {
        private Handler handler; /* was: 'f1412b' */

        /* was: 'cn.manstep.phonemirrorBox.BoxInterface.a$b$a' (HandlerC0073a) */
        class QuitHandler extends Handler {
            QuitHandler() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                AudioLooperThread.this.quitLooper(); /* was: 'b()' */
            }
        }

        private AudioLooperThread(AudioCallback audioCallback) {
            this.handler = null;
        }

        /* was: 'b' */
        public void quitLooper() {
            synchronized (this) {
                if (isAlive()) {
                    if (Looper.myLooper() != null) {
                        Looper.myLooper().quit();
                    }
                    this.handler = null;
                }
                notify();
            }
        }

        /* was: 'c' */
        public Handler getHandler() {
            synchronized (this) {
                if (this.handler == null) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        s.e(Log.getStackTraceString(e));
                    }
                }
            }
            return this.handler;
        }

        /* was: 'd' */
        public void quit() {
            Handler h = this.handler;
            if (h != null) {
                h.sendMessage(Message.obtain(h, 1));
            }
            try {
                join();
            } catch (InterruptedException e) {
                e.printStackTrace();
                s.e(Log.getStackTraceString(e));
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-19);
            synchronized (this) {
                Looper.prepare();
                this.handler = new QuitHandler();
                notify();
            }
            Looper.loop();
        }

        /* synthetic */ AudioLooperThread(AudioCallback audioCallback, StopIPhoneAudioRunnable unused) {
            this(audioCallback);
        }
    }
}
