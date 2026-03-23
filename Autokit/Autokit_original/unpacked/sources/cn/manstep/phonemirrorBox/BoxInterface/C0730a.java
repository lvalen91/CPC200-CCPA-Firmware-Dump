package cn.manstep.phonemirrorBox.BoxInterface;

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
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.p071e0.HandlerC0814b;
import cn.manstep.phonemirrorBox.p072f0.C0826b;
import cn.manstep.phonemirrorBox.p072f0.C0827c;
import cn.manstep.phonemirrorBox.p072f0.C0829e;
import cn.manstep.phonemirrorBox.p072f0.C0830f;
import cn.manstep.phonemirrorBox.p072f0.C0831g;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.util.C0973j;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.JniTools;
import java.io.File;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p093d.p097b.p098a.C1198a;
import p093d.p097b.p098a.C1199b;
import p093d.p097b.p098a.C1200c;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0730a {

    /* JADX INFO: renamed from: w */
    private static c f4337w;

    /* JADX INFO: renamed from: a */
    private int f4339a;

    /* JADX INFO: renamed from: b */
    private int f4340b;

    /* JADX INFO: renamed from: c */
    private C1199b f4341c;

    /* JADX INFO: renamed from: d */
    private int f4342d = 0;

    /* JADX INFO: renamed from: e */
    private b f4343e;

    /* JADX INFO: renamed from: f */
    private static final Map<Integer, Long> f4320f = new ConcurrentHashMap(6);

    /* JADX INFO: renamed from: g */
    public static boolean f4321g = true;

    /* JADX INFO: renamed from: h */
    public static C1200c f4322h = new C1200c();

    /* JADX INFO: renamed from: i */
    public static int f4323i = -1;

    /* JADX INFO: renamed from: j */
    public static boolean f4324j = false;

    /* JADX INFO: renamed from: k */
    public static boolean f4325k = false;

    /* JADX INFO: renamed from: l */
    public static boolean f4326l = false;

    /* JADX INFO: renamed from: m */
    private static MediaPlayer f4327m = null;

    /* JADX INFO: renamed from: n */
    private static boolean f4328n = false;

    /* JADX INFO: renamed from: o */
    private static boolean f4329o = false;

    /* JADX INFO: renamed from: p */
    private static boolean f4330p = false;

    /* JADX INFO: renamed from: q */
    private static boolean f4331q = false;

    /* JADX INFO: renamed from: r */
    private static boolean f4332r = false;

    /* JADX INFO: renamed from: s */
    public static boolean f4333s = false;

    /* JADX INFO: renamed from: t */
    private static int f4334t = 0;

    /* JADX INFO: renamed from: u */
    private static int f4335u = 0;

    /* JADX INFO: renamed from: v */
    private static boolean f4336v = false;

    /* JADX INFO: renamed from: x */
    private static boolean f4338x = false;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.a$a */
    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0730a.f4326l = !C0730a.f4324j;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.a$c */
    class c {

        /* JADX INFO: renamed from: a */
        int f4346a;

        /* JADX INFO: renamed from: b */
        int f4347b;

        /* JADX INFO: renamed from: c */
        int f4348c;

        /* JADX INFO: renamed from: d */
        float f4349d;

        c(C0730a c0730a) {
        }
    }

    public C0730a(int i, int i2, Context context) {
        a aVar = null;
        this.f4341c = null;
        this.f4343e = null;
        try {
            File filesDir = context.getFilesDir();
            if (!filesDir.exists() || !filesDir.isDirectory()) {
                C0982s.m7375e("BoxAudioPlayer: Directory does not exist!");
            } else if (f4327m == null) {
                MediaPlayer mediaPlayer = new MediaPlayer();
                f4327m = mediaPlayer;
                mediaPlayer.setDataSource(filesDir.getAbsolutePath() + "/mute.wav");
                C0982s.m7373c("BoxAudioPlayer: Create Mute MediaPlayer!");
            }
        } catch (Exception e) {
            f4327m = null;
            C0982s.m7375e("BoxAudioPlayer: " + Log.getStackTraceString(e));
        }
        this.f4340b = i;
        this.f4339a = i2;
        f4337w = new c(this);
        b bVar = new b(this, aVar);
        this.f4343e = bVar;
        bVar.start();
        if (this.f4341c == null) {
            this.f4341c = new C1199b(this.f4343e.m5457c());
        }
    }

    /* JADX INFO: renamed from: A */
    public static void m5417A(Context context, boolean z) {
        if (z) {
            f4322h.m9139w(C0795b0.m6071i().m6091m("MicGain", 0));
            f4334t = C0795b0.m6066d(context, "NaviGain", 0);
            f4335u = C0795b0.m6066d(context, "VoiceCallGain", 0);
        }
    }

    /* JADX INFO: renamed from: B */
    public static void m5418B() {
        if (C0795b0.m6071i().m6093o("IsAutoPlayMusic", true)) {
            C0982s.m7373c("BoxAudioPlayer,onResumeRequestAudioFocus: isMusicActive:  " + m5440q(3, 50));
        }
    }

    /* JADX INFO: renamed from: C */
    private void m5419C(int i) {
        C0982s.m7378h("BoxAudioPlayer,onRingStart: index=" + m5434k() + ",bAlertRinging=" + f4331q);
        if (f4331q) {
            return;
        }
        f4331q = true;
        this.f4341c.m9116l(true);
        m5438o(i);
        C0830f.m6249j().m6255m();
        C0991a.m7412t().mo7141e();
    }

    /* JADX INFO: renamed from: D */
    private void m5420D() {
        C0982s.m7378h("BoxAudioPlayer,onRingStop: index=" + m5434k() + ",bAlertRinging=" + f4331q);
        if (f4331q) {
            f4331q = false;
            this.f4341c.m9116l(false);
            C0991a.m7412t().mo7148l();
            C0830f.m6249j().m6251g();
        }
    }

    /* JADX INFO: renamed from: E */
    private void m5421E() {
        C0982s.m7373c("BoxAudioPlayer,onSiriStart: index=" + m5434k());
        this.f4341c.m9116l(true);
        f4330p = true;
        C0991a.m7412t().mo7144h();
        C0733d.f4428l.m5735m1(m5434k());
        C0831g.m6258j().m6263m();
    }

    /* JADX INFO: renamed from: F */
    private void m5422F() {
        C0982s.m7373c("BoxAudioPlayer,onSiriStop: index=" + m5434k());
        f4330p = false;
        this.f4341c.m9116l(false);
        C0991a.m7412t().mo7151o();
        C0733d.f4428l.m5735m1(-1);
        C0831g.m6258j().m6259g();
        C0953u.m7001z().m7044i0();
    }

    /* JADX INFO: renamed from: G */
    public static void m5423G() {
        C0982s.m7373c("BoxAudioPlayer,requestAudioFocus: bStopiPhoneAudio=" + f4326l);
        if (f4333s || !C0733d.m5574G()) {
            return;
        }
        if (f4329o) {
            C0826b.m6214j().m6220m();
        } else {
            C0827c.m6227n().m6236u();
        }
    }

    /* JADX INFO: renamed from: H */
    private static void m5424H() {
        f4321g = true;
        f4327m = null;
        f4325k = false;
        f4323i = -1;
        f4324j = false;
        f4328n = false;
        f4329o = false;
        f4330p = false;
        f4331q = false;
        f4332r = false;
    }

    /* JADX INFO: renamed from: I */
    public static void m5425I(boolean z) {
        f4336v = z;
    }

    /* JADX INFO: renamed from: L */
    public static void m5426L(boolean z, boolean z2) {
        if (!z) {
            f4326l = false;
            return;
        }
        if (z2) {
            f4326l = true;
        } else {
            C0982s.m7373c("BoxAudioPlayer,stopMusicAudioOutput: " + f4324j + " " + f4325k);
            f4326l = f4324j;
        }
        C0973j.m7257c().m7260e("SetStopiPhoneAudio", 2000L, new a());
    }

    /* JADX INFO: renamed from: a */
    private void m5427a(byte[] bArr, int i, int i2) {
        C1199b c1199b;
        int i3;
        int i4;
        if (C0925p.f5887x) {
            C0977n.m7323z(bArr, i, i2, String.format(Locale.getDefault(), "pout_%02d.pcm", Integer.valueOf(m5434k())), MyApplication.m5997b());
        }
        if (f4338x || (c1199b = this.f4341c) == null) {
            return;
        }
        if (!f4328n && !f4329o && !f4330p && !f4331q) {
            if (f4326l) {
                return;
            }
            c1199b.m9112f(bArr, i, i2);
            return;
        }
        if (f4328n && (i4 = f4334t) > 0) {
            JniTools.amplifyPcmData(bArr, i, i2, i4);
        } else if (!f4329o || (i3 = f4335u) <= 0) {
            C0991a.m7412t().m7414B();
        } else {
            JniTools.amplifyPcmData(bArr, i, i2, i3);
        }
        this.f4341c.m9112f(bArr, i, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX INFO: renamed from: c */
    private C1198a m5428c(int i, boolean z) {
        int i2;
        int i3 = 16000;
        int i4 = 0;
        switch (i) {
            case 1:
            case 2:
                i3 = 44100;
                i4 = 16;
                i2 = 2;
                break;
            case 3:
                i3 = 8000;
                i4 = 16;
                i2 = 1;
                break;
            case 4:
                i3 = 48000;
                i4 = 16;
                i2 = 2;
                break;
            case 5:
                i4 = 16;
                i2 = 1;
                break;
            case 6:
                i3 = 24000;
                i4 = 16;
                i2 = 1;
                break;
            case 7:
                i4 = 16;
                i2 = 2;
                break;
            default:
                i3 = 0;
                i2 = 0;
                break;
        }
        C0982s.m7373c("BoxAudioPlayer,GetAudioParamByDecodeType: decode_type=" + i + " rate=" + i3 + " bits=" + i4 + " channel=" + i2);
        if (z) {
            return new C1198a(i3, i2 == 1 ? 16 : 12, i4 != 16 ? 3 : 2);
        }
        return new C1198a(i3, i2 == 1 ? 4 : 12, i4 != 16 ? 3 : 2);
    }

    /* JADX INFO: renamed from: d */
    private void m5429d() {
        m5424H();
        C0827c.m6227n().m6234s();
        C0829e.m6240j().m6242g();
        C0826b.m6214j().m6216g();
        C0831g.m6258j().m6259g();
        C0830f.m6249j().m6251g();
    }

    /* JADX INFO: renamed from: e */
    private String m5430e(int i) {
        switch (i) {
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
                return "Unknown: " + i;
        }
    }

    /* JADX INFO: renamed from: f */
    private String m5431f(int i) {
        if (i == 1) {
            return "AUDIO_MAIN";
        }
        if (i == 2) {
            return "AUDIO_ALTERNATE";
        }
        if (i == 3) {
            return "AUDIO_INPUT";
        }
        return "Unknown Type: " + i;
    }

    /* JADX INFO: renamed from: g */
    private void m5432g() {
        if (C0991a.m7412t().m7425y()) {
            C0730a c0730aM5754z = C0733d.m5599t() ? C0733d.f4428l.m5754z(3) : C0733d.f4428l.m5754z(0);
            if (c0730aM5754z.f4341c.m9106D()) {
                return;
            }
            if (C0827c.m6227n().m6211e() || Build.VERSION.SDK_INT < 26) {
                c0730aM5754z.f4341c.m9114h();
            } else {
                c0730aM5754z.f4341c.m9113g();
            }
        }
    }

    /* JADX INFO: renamed from: j */
    private static int m5433j(int i) {
        if (f4336v) {
            if (i == 1) {
                return 0;
            }
            if (i == 2 || i == 3) {
                return 2;
            }
        } else {
            if (i == 1) {
                return C0953u.m7001z().m7012K();
            }
            if (i == 2) {
                return C0953u.m7001z().m7011J();
            }
            if (i == 3) {
                return C0953u.m7001z().m7003B();
            }
        }
        return 3;
    }

    /* JADX INFO: renamed from: k */
    private int m5434k() {
        return this.f4342d;
    }

    /* JADX INFO: renamed from: l */
    public static void m5435l(Context context) {
        m5424H();
        f4322h.m9139w(C0795b0.m6071i().m6091m("MicGain", 0));
        f4322h.m9138v(C0795b0.m6071i().m6091m("RecordSource", C0953u.m7001z().m7007F()));
        f4336v = C0795b0.m6071i().m6093o("AudioClassify", false);
        f4333s = C0795b0.m6071i().m6093o("AudioTransferMode", false);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        f4320f.put(6, Long.valueOf(jElapsedRealtime));
        f4320f.put(7, Long.valueOf(jElapsedRealtime));
        f4320f.put(8, Long.valueOf(jElapsedRealtime));
        f4320f.put(9, Long.valueOf(jElapsedRealtime));
        f4320f.put(4, Long.valueOf(jElapsedRealtime));
        f4320f.put(5, Long.valueOf(jElapsedRealtime));
        C0827c.m6227n().m6232p(context);
        C0829e.m6240j().m6245l(context);
        C0826b.m6214j().m6219l(context);
        C0831g.m6258j().m6262l(context);
        C0830f.m6249j().m6254l(context);
    }

    /* JADX INFO: renamed from: m */
    private void m5436m(int i) {
        C0730a c0730aM5679H;
        C0982s.m7373c("BoxAudioPlayer,initCallAudioPlayer: index=" + m5434k() + ", decodeType=" + i);
        if (C0733d.m5574G() && (c0730aM5679H = C0733d.f4428l.m5679H()) != null && c0730aM5679H.m5434k() != m5434k()) {
            C0982s.m7373c("BoxAudioPlayer,initCallAudioPlayer: index=" + m5434k() + ", CurrentCallAudioPlayerIndex=" + c0730aM5679H.m5434k());
            return;
        }
        if (C0826b.m6214j().m6211e() || Build.VERSION.SDK_INT < 26) {
            this.f4341c.m9110d(m5428c(i, false), C0826b.m6214j().m6209c());
        } else {
            this.f4341c.m9107a(C0826b.m6214j().m6217i(), m5428c(i, false));
        }
        C0826b.m6214j().m6220m();
        C0826b.m6214j().m6212f(this.f4341c);
        C0733d.f4428l.m5684J0("callVol", C0826b.m6214j().m6210d());
    }

    /* JADX INFO: renamed from: n */
    private void m5437n(int i) {
        C0982s.m7373c("BoxAudioPlayer,initMediaAudioPlayer: decodeType = " + i + ",index=" + m5434k());
        f4326l = false;
        if (C0827c.m6227n().m6211e() || Build.VERSION.SDK_INT < 26) {
            this.f4341c.m9110d(m5428c(i, false), m5433j(0));
        } else {
            this.f4341c.m9107a(C0827c.m6227n().m6230m(), m5428c(i, false));
        }
        C0827c.m6227n().m6212f(this.f4341c);
        C0733d.f4428l.m5684J0("mediaVol", C0827c.m6227n().m6210d());
    }

    /* JADX INFO: renamed from: o */
    private void m5438o(int i) {
        C0982s.m7374d("BoxAudioPlayer", "initRingAudioPlayer: decodeType=" + i + ",index=" + m5434k() + ",isReady=" + this.f4341c.m9106D());
        if (C0830f.m6249j().m6211e() || Build.VERSION.SDK_INT < 26) {
            this.f4341c.m9110d(m5428c(i, false), C0830f.m6249j().m6209c());
        } else {
            this.f4341c.m9107a(C0830f.m6249j().m6252i(), m5428c(i, false));
        }
        C0830f.m6249j().m6212f(this.f4341c);
        C0733d.f4428l.m5684J0("ringVol", C0830f.m6249j().m6210d());
    }

    /* JADX INFO: renamed from: p */
    private void m5439p(int i) {
        C0982s.m7373c("BoxAudioPlayer,initSiriAudioPlayer: decodeType = " + i + ", index=" + m5434k());
        if (C0831g.m6258j().m6211e() || Build.VERSION.SDK_INT < 26) {
            this.f4341c.m9110d(m5428c(i, false), C0831g.m6258j().m6209c());
        } else {
            this.f4341c.m9107a(C0831g.m6258j().m6260i(), m5428c(i, false));
        }
        C0831g.m6258j().m6212f(this.f4341c);
    }

    /* JADX INFO: renamed from: q */
    public static int m5440q(int i, int i2) {
        try {
            return ((Boolean) Class.forName("android.media.AudioSystem").getMethod("isStreamActive", Integer.TYPE, Integer.TYPE).invoke(null, Integer.valueOf(i), Integer.valueOf(i2))).booleanValue() ? 1 : 0;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* JADX INFO: renamed from: r */
    private void m5441r(int i) {
        C0982s.m7374d("BoxAudioPlayer", "onAlternateStart: " + i + ", index=" + m5434k());
        if (f4332r) {
            return;
        }
        f4332r = true;
        if (C0827c.m6227n().m6211e() || Build.VERSION.SDK_INT < 26) {
            this.f4341c.m9110d(m5428c(i, false), 3);
        } else {
            AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
            C0982s.m7374d("BoxAudioPlayer", "onAlternateStart: VolumeControlStream=" + audioAttributesBuild.getVolumeControlStream());
            this.f4341c.m9107a(audioAttributesBuild, m5428c(i, false));
        }
        C0982s.m7374d("BoxAudioPlayer", "onAlternateStart: decodeType=" + i + ",StreamType=" + this.f4341c.m9105C());
        HandlerC0814b.m6192a().m6194c(1, this.f4341c.m9105C());
    }

    /* JADX INFO: renamed from: s */
    private void m5442s() {
        f4332r = false;
    }

    /* JADX INFO: renamed from: u */
    private void m5443u(boolean z) {
        C0982s.m7378h("BoxAudioPlayer,onCallStart: index=" + m5434k());
        this.f4341c.m9116l(true);
        if (z) {
            C0991a.m7412t().m7420s();
        } else {
            C0991a.m7412t().mo7147k();
        }
        f4329o = true;
        C0733d.f4428l.m5733l1(m5434k());
        if (z) {
            return;
        }
        C0826b.m6214j().m6220m();
    }

    /* JADX INFO: renamed from: v */
    private void m5444v() {
        C0982s.m7378h("BoxAudioPlayer,onCallStop: index=" + m5434k() + ",isMusicPlaying=" + C0991a.m7412t().m7425y());
        f4326l = false;
        f4329o = false;
        this.f4341c.m9116l(false);
        C0991a.m7412t().mo7142f();
        C0733d.f4428l.m5733l1(-1);
        C0826b.m6214j().m6216g();
        m5432g();
    }

    /* JADX INFO: renamed from: w */
    private void m5445w() {
        StringBuilder sb = new StringBuilder();
        sb.append("BoxAudioPlayer,onMediaStart: index=");
        sb.append(m5434k());
        sb.append(" ");
        sb.append(f4324j && !f4326l);
        C0982s.m7378h(sb.toString());
        if (C0733d.m5574G()) {
            C0795b0.m6071i().m6085F("MediaPlaying_" + C0733d.f4428l.m5685K(), Boolean.TRUE);
        }
        if (!f4324j || f4326l) {
            f4324j = true;
            f4326l = false;
            C0991a.m7412t().mo7143g();
            C0827c.m6227n().m6236u();
        }
    }

    /* JADX INFO: renamed from: x */
    private void m5446x() {
        C0982s.m7378h("BoxAudioPlayer,onMediaStop: index=" + m5434k());
        if (C0733d.m5574G()) {
            C0795b0.m6071i().m6085F("MediaPlaying_" + C0733d.f4428l.m5685K(), Boolean.FALSE);
        }
        f4324j = false;
        C0991a.m7412t().mo7149m();
        C0827c.m6227n().m6229g();
    }

    /* JADX INFO: renamed from: y */
    private void m5447y(int i) {
        C0982s.m7374d("BoxAudioPlayer", "onNaviReportStart: ");
        f4320f.put(8, Long.valueOf(SystemClock.elapsedRealtime()));
        if (f4328n) {
            return;
        }
        C0982s.m7378h("BoxAudioPlayer,onNaviReportStart: index=" + m5434k());
        C0991a.m7412t().mo7138b();
        f4328n = true;
        this.f4341c.m9116l(true);
        if (C0829e.m6240j().m6211e() || Build.VERSION.SDK_INT < 26) {
            this.f4341c.m9110d(m5428c(i, false), C0829e.m6240j().m6209c());
        } else {
            this.f4341c.m9107a(C0829e.m6240j().m6243i(), m5428c(i, false));
        }
        C0829e.m6240j().m6212f(this.f4341c);
        C0733d.f4428l.m5684J0("navVol", C0829e.m6240j().m6210d());
        C0829e.m6240j().m6246m();
    }

    /* JADX INFO: renamed from: z */
    private void m5448z() {
        C0982s.m7386p("BoxAudioPlayer", "onNaviReportStop: bNavieRport=" + f4328n + ", index=" + m5434k());
        f4320f.put(9, Long.valueOf(SystemClock.elapsedRealtime()));
        if (f4328n) {
            C0982s.m7378h("BoxAudioPlayer,onNaviReportStop: index=" + m5434k());
            f4328n = false;
            this.f4341c.m9116l(false);
            C0953u.m7001z().m7042h0();
            C0991a.m7412t().mo7140d();
            C0829e.m6240j().m6242g();
        }
        f4326l = false;
    }

    /* JADX INFO: renamed from: J */
    public void m5449J(int i) {
        this.f4342d = i;
    }

    /* JADX INFO: renamed from: K */
    public void m5450K() {
        C1199b c1199b = this.f4341c;
        if (c1199b != null) {
            c1199b.m9115i();
        }
        f4324j = false;
        m5429d();
    }

    /* JADX INFO: renamed from: b */
    public void m5451b(float f) {
        C1199b c1199b = this.f4341c;
        if (c1199b != null) {
            c1199b.m9117n(f);
        }
    }

    /* JADX INFO: renamed from: h */
    public void m5452h() {
        C0982s.m7374d("BoxAudioPlayer", "destroy: ");
        C1199b c1199b = this.f4341c;
        if (c1199b != null) {
            c1199b.m9115i();
            this.f4341c = null;
        }
        MediaPlayer mediaPlayer = f4327m;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            f4327m = null;
        }
        b bVar = this.f4343e;
        if (bVar != null) {
            bVar.m5458d();
            this.f4343e = null;
        }
        m5429d();
    }

    /* JADX INFO: renamed from: i */
    public C1199b m5453i() {
        return this.f4341c;
    }

    /* JADX INFO: renamed from: t */
    public void m5454t(C0735f.l lVar) {
        int i;
        f4337w.f4346a = lVar.m5786d().getInt(0);
        f4337w.f4347b = lVar.m5786d().getInt(8);
        c cVar = f4337w;
        if (cVar.f4346a == 5 && cVar.f4347b == 1 && C0925p.f5884u) {
            f4337w.f4346a = 7;
        }
        f4337w.f4349d = lVar.m5786d().getFloat(4);
        f4337w.f4348c = lVar.m5788f() - 12;
        c cVar2 = f4337w;
        int i2 = cVar2.f4346a;
        if (i2 == this.f4340b && cVar2.f4347b == this.f4339a) {
            int i3 = cVar2.f4348c;
            if (i3 != 1) {
                if (i3 != 4) {
                    if (i2 == 1) {
                        return;
                    }
                    m5427a(lVar.m5787e(), 12, f4337w.f4348c);
                    if (f4337w.f4346a == f4323i && C0925p.f5861H) {
                        f4322h.m9127e(lVar.m5787e(), 12, f4337w.f4348c);
                    }
                    return;
                }
                C0982s.m7378h("BoxAudioPlayer,onAudioProcess: change volume duration: " + lVar.m5786d().getFloat(12) + ", AudioSessionId=" + this.f4341c.m9118y());
                C0982s.m7378h("BoxAudioPlayer,onAudioProcess: Lower the volume: " + f4337w.f4349d + ", AudioSessionId=" + this.f4341c.m9118y() + " " + this);
                return;
            }
            byte b2 = lVar.m5786d().get(12);
            C0982s.m7373c("BoxAudioPlayer,onAudioProcess: audioCtrlCmd=" + ((int) b2) + ", " + m5430e(b2));
            C0982s.m7373c("BoxAudioPlayer,onAudioProcess: audioType=" + this.f4339a + ", " + m5431f(this.f4339a));
            C0982s.m7375e("BoxAudioPlayer,onAudioProcess: Recv Audio control data: cmd=" + ((int) b2) + ", AudioType=" + this.f4339a + ", DecodeType=" + this.f4340b);
            switch (b2) {
                case 1:
                    C0982s.m7373c("BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_START audioCtrlCmd=" + ((int) b2));
                    int i4 = this.f4339a;
                    if (i4 == 2) {
                        C0982s.m7374d("BoxAudioPlayer", "onAudioProcess: AUDIO_ALTERNATE Start");
                        if (!f4332r) {
                            m5447y(this.f4340b);
                        } else {
                            m5441r(this.f4340b);
                        }
                    } else if (f4329o) {
                        m5436m(this.f4340b);
                    } else if (f4330p) {
                        m5439p(this.f4340b);
                    } else if (f4331q) {
                        m5438o(this.f4340b);
                    } else if (f4324j) {
                        m5437n(this.f4340b);
                    } else if (i4 == 1 && ((i = this.f4340b) == 2 || i == 4)) {
                        m5437n(this.f4340b);
                        m5445w();
                    } else {
                        C0982s.m7374d("BoxAudioPlayer", "onAudioProcess: ==============index=" + m5434k());
                        this.f4341c.m9109c(m5428c(this.f4340b, false));
                    }
                    break;
                case 2:
                    C0982s.m7373c("BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_STOP," + m5434k() + ",SessionId=" + m5453i().m9118y());
                    if (this.f4339a == 2) {
                        m5448z();
                        m5442s();
                    } else {
                        this.f4341c.m9115i();
                    }
                    if (this.f4339a == 1) {
                        int i5 = this.f4340b;
                        if (i5 == 2 || i5 == 4) {
                            m5446x();
                        }
                    }
                    break;
                case 3:
                    int i6 = f4323i;
                    int i7 = f4337w.f4346a;
                    if (i6 != i7) {
                        f4323i = i7;
                        f4322h.m9128h(m5428c(i7, true));
                    }
                    break;
                case 4:
                case 14:
                    m5443u(b2 == 14);
                    break;
                case 5:
                    m5444v();
                    break;
                case 6:
                    m5447y(this.f4340b);
                    break;
                case 7:
                    m5448z();
                    break;
                case 8:
                    m5421E();
                    break;
                case 9:
                    m5422F();
                    break;
                case 10:
                    m5445w();
                    break;
                case 11:
                    m5446x();
                    break;
                case 12:
                    m5419C(this.f4340b);
                    break;
                case 13:
                    m5420D();
                    break;
                case 15:
                    m5441r(this.f4340b);
                    break;
                case 16:
                    m5442s();
                    break;
                default:
                    C0982s.m7376f("BoxAudioPlayer", "onAudioProcess: unknown " + ((int) b2));
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.a$b */
    private class b extends Thread {

        /* JADX INFO: renamed from: b */
        private Handler f4344b;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.a$b$a */
        class a extends Handler {
            a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                b.this.m5456b();
            }
        }

        private b(C0730a c0730a) {
            this.f4344b = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: b */
        public void m5456b() {
            synchronized (this) {
                if (isAlive()) {
                    if (Looper.myLooper() != null) {
                        Looper.myLooper().quit();
                    }
                    this.f4344b = null;
                }
                notify();
            }
        }

        /* JADX INFO: renamed from: c */
        public Handler m5457c() {
            synchronized (this) {
                if (this.f4344b == null) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        C0982s.m7375e(Log.getStackTraceString(e));
                    }
                }
            }
            return this.f4344b;
        }

        /* JADX INFO: renamed from: d */
        public void m5458d() {
            Handler handler = this.f4344b;
            if (handler != null) {
                handler.sendMessage(Message.obtain(handler, 1));
            }
            try {
                join();
            } catch (InterruptedException e) {
                e.printStackTrace();
                C0982s.m7375e(Log.getStackTraceString(e));
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-19);
            synchronized (this) {
                Looper.prepare();
                this.f4344b = new a();
                notify();
            }
            Looper.loop();
        }

        /* synthetic */ b(C0730a c0730a, a aVar) {
            this(c0730a);
        }
    }
}
