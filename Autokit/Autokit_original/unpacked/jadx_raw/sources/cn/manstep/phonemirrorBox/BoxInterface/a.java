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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a {
    private static c w;
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d.b.a.b f1410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1411d = 0;
    private b e;
    private static final Map<Integer, Long> f = new ConcurrentHashMap(6);
    public static boolean g = true;
    public static d.b.a.c h = new d.b.a.c();
    public static int i = -1;
    public static boolean j = false;
    public static boolean k = false;
    public static boolean l = false;
    private static MediaPlayer m = null;
    private static boolean n = false;
    private static boolean o = false;
    private static boolean p = false;
    private static boolean q = false;
    private static boolean r = false;
    public static boolean s = false;
    private static int t = 0;
    private static int u = 0;
    private static boolean v = false;
    private static boolean x = false;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.a$a, reason: collision with other inner class name */
    static class RunnableC0072a implements Runnable {
        RunnableC0072a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.l = !a.j;
        }
    }

    class c {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1413b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1414c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f1415d;

        c(a aVar) {
        }
    }

    public a(int i2, int i3, Context context) {
        RunnableC0072a runnableC0072a = null;
        this.f1410c = null;
        this.e = null;
        try {
            File filesDir = context.getFilesDir();
            if (!filesDir.exists() || !filesDir.isDirectory()) {
                s.e("BoxAudioPlayer: Directory does not exist!");
            } else if (m == null) {
                MediaPlayer mediaPlayer = new MediaPlayer();
                m = mediaPlayer;
                mediaPlayer.setDataSource(filesDir.getAbsolutePath() + "/mute.wav");
                s.c("BoxAudioPlayer: Create Mute MediaPlayer!");
            }
        } catch (Exception e) {
            m = null;
            s.e("BoxAudioPlayer: " + Log.getStackTraceString(e));
        }
        this.f1409b = i2;
        this.a = i3;
        w = new c(this);
        b bVar = new b(this, runnableC0072a);
        this.e = bVar;
        bVar.start();
        if (this.f1410c == null) {
            this.f1410c = new d.b.a.b(this.e.c());
        }
    }

    public static void A(Context context, boolean z) {
        if (z) {
            h.w(b0.i().m("MicGain", 0));
            t = b0.d(context, "NaviGain", 0);
            u = b0.d(context, "VoiceCallGain", 0);
        }
    }

    public static void B() {
        if (b0.i().o("IsAutoPlayMusic", true)) {
            s.c("BoxAudioPlayer,onResumeRequestAudioFocus: isMusicActive:  " + q(3, 50));
        }
    }

    private void C(int i2) {
        s.h("BoxAudioPlayer,onRingStart: index=" + k() + ",bAlertRinging=" + q);
        if (q) {
            return;
        }
        q = true;
        this.f1410c.l(true);
        o(i2);
        cn.manstep.phonemirrorBox.f0.f.j().m();
        cn.manstep.phonemirrorBox.v0.a.t().e();
    }

    private void D() {
        s.h("BoxAudioPlayer,onRingStop: index=" + k() + ",bAlertRinging=" + q);
        if (q) {
            q = false;
            this.f1410c.l(false);
            cn.manstep.phonemirrorBox.v0.a.t().l();
            cn.manstep.phonemirrorBox.f0.f.j().g();
        }
    }

    private void E() {
        s.c("BoxAudioPlayer,onSiriStart: index=" + k());
        this.f1410c.l(true);
        p = true;
        cn.manstep.phonemirrorBox.v0.a.t().h();
        d.l.m1(k());
        cn.manstep.phonemirrorBox.f0.g.j().m();
    }

    private void F() {
        s.c("BoxAudioPlayer,onSiriStop: index=" + k());
        p = false;
        this.f1410c.l(false);
        cn.manstep.phonemirrorBox.v0.a.t().o();
        d.l.m1(-1);
        cn.manstep.phonemirrorBox.f0.g.j().g();
        u.z().i0();
    }

    public static void G() {
        s.c("BoxAudioPlayer,requestAudioFocus: bStopiPhoneAudio=" + l);
        if (s || !d.G()) {
            return;
        }
        if (o) {
            cn.manstep.phonemirrorBox.f0.b.j().m();
        } else {
            cn.manstep.phonemirrorBox.f0.c.n().u();
        }
    }

    private static void H() {
        g = true;
        m = null;
        k = false;
        i = -1;
        j = false;
        n = false;
        o = false;
        p = false;
        q = false;
        r = false;
    }

    public static void I(boolean z) {
        v = z;
    }

    public static void L(boolean z, boolean z2) {
        if (!z) {
            l = false;
            return;
        }
        if (z2) {
            l = true;
        } else {
            s.c("BoxAudioPlayer,stopMusicAudioOutput: " + j + " " + k);
            l = j;
        }
        cn.manstep.phonemirrorBox.util.j.c().e("SetStopiPhoneAudio", 2000L, new RunnableC0072a());
    }

    private void a(byte[] bArr, int i2, int i3) {
        d.b.a.b bVar;
        int i4;
        int i5;
        if (p.x) {
            n.z(bArr, i2, i3, String.format(Locale.getDefault(), "pout_%02d.pcm", Integer.valueOf(k())), MyApplication.b());
        }
        if (x || (bVar = this.f1410c) == null) {
            return;
        }
        if (!n && !o && !p && !q) {
            if (l) {
                return;
            }
            bVar.f(bArr, i2, i3);
            return;
        }
        if (n && (i5 = t) > 0) {
            JniTools.amplifyPcmData(bArr, i2, i3, i5);
        } else if (!o || (i4 = u) <= 0) {
            cn.manstep.phonemirrorBox.v0.a.t().B();
        } else {
            JniTools.amplifyPcmData(bArr, i2, i3, i4);
        }
        this.f1410c.f(bArr, i2, i3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private d.b.a.a c(int i2, boolean z) {
        int i3;
        int i4 = 16000;
        int i5 = 0;
        switch (i2) {
            case 1:
            case 2:
                i4 = 44100;
                i5 = 16;
                i3 = 2;
                break;
            case 3:
                i4 = 8000;
                i5 = 16;
                i3 = 1;
                break;
            case 4:
                i4 = 48000;
                i5 = 16;
                i3 = 2;
                break;
            case 5:
                i5 = 16;
                i3 = 1;
                break;
            case 6:
                i4 = 24000;
                i5 = 16;
                i3 = 1;
                break;
            case 7:
                i5 = 16;
                i3 = 2;
                break;
            default:
                i4 = 0;
                i3 = 0;
                break;
        }
        s.c("BoxAudioPlayer,GetAudioParamByDecodeType: decode_type=" + i2 + " rate=" + i4 + " bits=" + i5 + " channel=" + i3);
        if (z) {
            return new d.b.a.a(i4, i3 == 1 ? 16 : 12, i5 != 16 ? 3 : 2);
        }
        return new d.b.a.a(i4, i3 == 1 ? 4 : 12, i5 != 16 ? 3 : 2);
    }

    private void d() {
        H();
        cn.manstep.phonemirrorBox.f0.c.n().s();
        cn.manstep.phonemirrorBox.f0.e.j().g();
        cn.manstep.phonemirrorBox.f0.b.j().g();
        cn.manstep.phonemirrorBox.f0.g.j().g();
        cn.manstep.phonemirrorBox.f0.f.j().g();
    }

    private String e(int i2) {
        switch (i2) {
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
                return "Unknown: " + i2;
        }
    }

    private String f(int i2) {
        if (i2 == 1) {
            return "AUDIO_MAIN";
        }
        if (i2 == 2) {
            return "AUDIO_ALTERNATE";
        }
        if (i2 == 3) {
            return "AUDIO_INPUT";
        }
        return "Unknown Type: " + i2;
    }

    private void g() {
        if (cn.manstep.phonemirrorBox.v0.a.t().y()) {
            a aVarZ = d.t() ? d.l.z(3) : d.l.z(0);
            if (aVarZ.f1410c.D()) {
                return;
            }
            if (cn.manstep.phonemirrorBox.f0.c.n().e() || Build.VERSION.SDK_INT < 26) {
                aVarZ.f1410c.h();
            } else {
                aVarZ.f1410c.g();
            }
        }
    }

    private static int j(int i2) {
        if (v) {
            if (i2 == 1) {
                return 0;
            }
            if (i2 == 2 || i2 == 3) {
                return 2;
            }
        } else {
            if (i2 == 1) {
                return u.z().K();
            }
            if (i2 == 2) {
                return u.z().J();
            }
            if (i2 == 3) {
                return u.z().B();
            }
        }
        return 3;
    }

    private int k() {
        return this.f1411d;
    }

    public static void l(Context context) {
        H();
        h.w(b0.i().m("MicGain", 0));
        h.v(b0.i().m("RecordSource", u.z().F()));
        v = b0.i().o("AudioClassify", false);
        s = b0.i().o("AudioTransferMode", false);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        f.put(6, Long.valueOf(jElapsedRealtime));
        f.put(7, Long.valueOf(jElapsedRealtime));
        f.put(8, Long.valueOf(jElapsedRealtime));
        f.put(9, Long.valueOf(jElapsedRealtime));
        f.put(4, Long.valueOf(jElapsedRealtime));
        f.put(5, Long.valueOf(jElapsedRealtime));
        cn.manstep.phonemirrorBox.f0.c.n().p(context);
        cn.manstep.phonemirrorBox.f0.e.j().l(context);
        cn.manstep.phonemirrorBox.f0.b.j().l(context);
        cn.manstep.phonemirrorBox.f0.g.j().l(context);
        cn.manstep.phonemirrorBox.f0.f.j().l(context);
    }

    private void m(int i2) {
        a aVarH;
        s.c("BoxAudioPlayer,initCallAudioPlayer: index=" + k() + ", decodeType=" + i2);
        if (d.G() && (aVarH = d.l.H()) != null && aVarH.k() != k()) {
            s.c("BoxAudioPlayer,initCallAudioPlayer: index=" + k() + ", CurrentCallAudioPlayerIndex=" + aVarH.k());
            return;
        }
        if (cn.manstep.phonemirrorBox.f0.b.j().e() || Build.VERSION.SDK_INT < 26) {
            this.f1410c.d(c(i2, false), cn.manstep.phonemirrorBox.f0.b.j().c());
        } else {
            this.f1410c.a(cn.manstep.phonemirrorBox.f0.b.j().i(), c(i2, false));
        }
        cn.manstep.phonemirrorBox.f0.b.j().m();
        cn.manstep.phonemirrorBox.f0.b.j().f(this.f1410c);
        d.l.J0("callVol", cn.manstep.phonemirrorBox.f0.b.j().d());
    }

    private void n(int i2) {
        s.c("BoxAudioPlayer,initMediaAudioPlayer: decodeType = " + i2 + ",index=" + k());
        l = false;
        if (cn.manstep.phonemirrorBox.f0.c.n().e() || Build.VERSION.SDK_INT < 26) {
            this.f1410c.d(c(i2, false), j(0));
        } else {
            this.f1410c.a(cn.manstep.phonemirrorBox.f0.c.n().m(), c(i2, false));
        }
        cn.manstep.phonemirrorBox.f0.c.n().f(this.f1410c);
        d.l.J0("mediaVol", cn.manstep.phonemirrorBox.f0.c.n().d());
    }

    private void o(int i2) {
        s.d("BoxAudioPlayer", "initRingAudioPlayer: decodeType=" + i2 + ",index=" + k() + ",isReady=" + this.f1410c.D());
        if (cn.manstep.phonemirrorBox.f0.f.j().e() || Build.VERSION.SDK_INT < 26) {
            this.f1410c.d(c(i2, false), cn.manstep.phonemirrorBox.f0.f.j().c());
        } else {
            this.f1410c.a(cn.manstep.phonemirrorBox.f0.f.j().i(), c(i2, false));
        }
        cn.manstep.phonemirrorBox.f0.f.j().f(this.f1410c);
        d.l.J0("ringVol", cn.manstep.phonemirrorBox.f0.f.j().d());
    }

    private void p(int i2) {
        s.c("BoxAudioPlayer,initSiriAudioPlayer: decodeType = " + i2 + ", index=" + k());
        if (cn.manstep.phonemirrorBox.f0.g.j().e() || Build.VERSION.SDK_INT < 26) {
            this.f1410c.d(c(i2, false), cn.manstep.phonemirrorBox.f0.g.j().c());
        } else {
            this.f1410c.a(cn.manstep.phonemirrorBox.f0.g.j().i(), c(i2, false));
        }
        cn.manstep.phonemirrorBox.f0.g.j().f(this.f1410c);
    }

    public static int q(int i2, int i3) {
        try {
            return ((Boolean) Class.forName("android.media.AudioSystem").getMethod("isStreamActive", Integer.TYPE, Integer.TYPE).invoke(null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue() ? 1 : 0;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    private void r(int i2) {
        s.d("BoxAudioPlayer", "onAlternateStart: " + i2 + ", index=" + k());
        if (r) {
            return;
        }
        r = true;
        if (cn.manstep.phonemirrorBox.f0.c.n().e() || Build.VERSION.SDK_INT < 26) {
            this.f1410c.d(c(i2, false), 3);
        } else {
            AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
            s.d("BoxAudioPlayer", "onAlternateStart: VolumeControlStream=" + audioAttributesBuild.getVolumeControlStream());
            this.f1410c.a(audioAttributesBuild, c(i2, false));
        }
        s.d("BoxAudioPlayer", "onAlternateStart: decodeType=" + i2 + ",StreamType=" + this.f1410c.C());
        cn.manstep.phonemirrorBox.e0.b.a().c(1, this.f1410c.C());
    }

    private void s() {
        r = false;
    }

    private void u(boolean z) {
        s.h("BoxAudioPlayer,onCallStart: index=" + k());
        this.f1410c.l(true);
        if (z) {
            cn.manstep.phonemirrorBox.v0.a.t().s();
        } else {
            cn.manstep.phonemirrorBox.v0.a.t().k();
        }
        o = true;
        d.l.l1(k());
        if (z) {
            return;
        }
        cn.manstep.phonemirrorBox.f0.b.j().m();
    }

    private void v() {
        s.h("BoxAudioPlayer,onCallStop: index=" + k() + ",isMusicPlaying=" + cn.manstep.phonemirrorBox.v0.a.t().y());
        l = false;
        o = false;
        this.f1410c.l(false);
        cn.manstep.phonemirrorBox.v0.a.t().f();
        d.l.l1(-1);
        cn.manstep.phonemirrorBox.f0.b.j().g();
        g();
    }

    private void w() {
        StringBuilder sb = new StringBuilder();
        sb.append("BoxAudioPlayer,onMediaStart: index=");
        sb.append(k());
        sb.append(" ");
        sb.append(j && !l);
        s.h(sb.toString());
        if (d.G()) {
            b0.i().F("MediaPlaying_" + d.l.K(), Boolean.TRUE);
        }
        if (!j || l) {
            j = true;
            l = false;
            cn.manstep.phonemirrorBox.v0.a.t().g();
            cn.manstep.phonemirrorBox.f0.c.n().u();
        }
    }

    private void x() {
        s.h("BoxAudioPlayer,onMediaStop: index=" + k());
        if (d.G()) {
            b0.i().F("MediaPlaying_" + d.l.K(), Boolean.FALSE);
        }
        j = false;
        cn.manstep.phonemirrorBox.v0.a.t().m();
        cn.manstep.phonemirrorBox.f0.c.n().g();
    }

    private void y(int i2) {
        s.d("BoxAudioPlayer", "onNaviReportStart: ");
        f.put(8, Long.valueOf(SystemClock.elapsedRealtime()));
        if (n) {
            return;
        }
        s.h("BoxAudioPlayer,onNaviReportStart: index=" + k());
        cn.manstep.phonemirrorBox.v0.a.t().b();
        n = true;
        this.f1410c.l(true);
        if (cn.manstep.phonemirrorBox.f0.e.j().e() || Build.VERSION.SDK_INT < 26) {
            this.f1410c.d(c(i2, false), cn.manstep.phonemirrorBox.f0.e.j().c());
        } else {
            this.f1410c.a(cn.manstep.phonemirrorBox.f0.e.j().i(), c(i2, false));
        }
        cn.manstep.phonemirrorBox.f0.e.j().f(this.f1410c);
        d.l.J0("navVol", cn.manstep.phonemirrorBox.f0.e.j().d());
        cn.manstep.phonemirrorBox.f0.e.j().m();
    }

    private void z() {
        s.p("BoxAudioPlayer", "onNaviReportStop: bNavieRport=" + n + ", index=" + k());
        f.put(9, Long.valueOf(SystemClock.elapsedRealtime()));
        if (n) {
            s.h("BoxAudioPlayer,onNaviReportStop: index=" + k());
            n = false;
            this.f1410c.l(false);
            u.z().h0();
            cn.manstep.phonemirrorBox.v0.a.t().d();
            cn.manstep.phonemirrorBox.f0.e.j().g();
        }
        l = false;
    }

    public void J(int i2) {
        this.f1411d = i2;
    }

    public void K() {
        d.b.a.b bVar = this.f1410c;
        if (bVar != null) {
            bVar.i();
        }
        j = false;
        d();
    }

    public void b(float f2) {
        d.b.a.b bVar = this.f1410c;
        if (bVar != null) {
            bVar.n(f2);
        }
    }

    public void h() {
        s.d("BoxAudioPlayer", "destroy: ");
        d.b.a.b bVar = this.f1410c;
        if (bVar != null) {
            bVar.i();
            this.f1410c = null;
        }
        MediaPlayer mediaPlayer = m;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            m = null;
        }
        b bVar2 = this.e;
        if (bVar2 != null) {
            bVar2.d();
            this.e = null;
        }
        d();
    }

    public d.b.a.b i() {
        return this.f1410c;
    }

    public void t(f.l lVar) {
        int i2;
        w.a = lVar.d().getInt(0);
        w.f1413b = lVar.d().getInt(8);
        c cVar = w;
        if (cVar.a == 5 && cVar.f1413b == 1 && p.u) {
            w.a = 7;
        }
        w.f1415d = lVar.d().getFloat(4);
        w.f1414c = lVar.f() - 12;
        c cVar2 = w;
        int i3 = cVar2.a;
        if (i3 == this.f1409b && cVar2.f1413b == this.a) {
            int i4 = cVar2.f1414c;
            if (i4 != 1) {
                if (i4 != 4) {
                    if (i3 == 1) {
                        return;
                    }
                    a(lVar.e(), 12, w.f1414c);
                    if (w.a == i && p.H) {
                        h.e(lVar.e(), 12, w.f1414c);
                    }
                    return;
                }
                s.h("BoxAudioPlayer,onAudioProcess: change volume duration: " + lVar.d().getFloat(12) + ", AudioSessionId=" + this.f1410c.y());
                s.h("BoxAudioPlayer,onAudioProcess: Lower the volume: " + w.f1415d + ", AudioSessionId=" + this.f1410c.y() + " " + this);
                return;
            }
            byte b2 = lVar.d().get(12);
            s.c("BoxAudioPlayer,onAudioProcess: audioCtrlCmd=" + ((int) b2) + ", " + e(b2));
            s.c("BoxAudioPlayer,onAudioProcess: audioType=" + this.a + ", " + f(this.a));
            s.e("BoxAudioPlayer,onAudioProcess: Recv Audio control data: cmd=" + ((int) b2) + ", AudioType=" + this.a + ", DecodeType=" + this.f1409b);
            switch (b2) {
                case 1:
                    s.c("BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_START audioCtrlCmd=" + ((int) b2));
                    int i5 = this.a;
                    if (i5 == 2) {
                        s.d("BoxAudioPlayer", "onAudioProcess: AUDIO_ALTERNATE Start");
                        if (!r) {
                            y(this.f1409b);
                        } else {
                            r(this.f1409b);
                        }
                    } else if (o) {
                        m(this.f1409b);
                    } else if (p) {
                        p(this.f1409b);
                    } else if (q) {
                        o(this.f1409b);
                    } else if (j) {
                        n(this.f1409b);
                    } else if (i5 == 1 && ((i2 = this.f1409b) == 2 || i2 == 4)) {
                        n(this.f1409b);
                        w();
                    } else {
                        s.d("BoxAudioPlayer", "onAudioProcess: ==============index=" + k());
                        this.f1410c.c(c(this.f1409b, false));
                    }
                    break;
                case 2:
                    s.c("BoxAudioPlayer,onAudioProcess: AUDIO_OUTPUT_STOP," + k() + ",SessionId=" + i().y());
                    if (this.a == 2) {
                        z();
                        s();
                    } else {
                        this.f1410c.i();
                    }
                    if (this.a == 1) {
                        int i6 = this.f1409b;
                        if (i6 == 2 || i6 == 4) {
                            x();
                        }
                    }
                    break;
                case 3:
                    int i7 = i;
                    int i8 = w.a;
                    if (i7 != i8) {
                        i = i8;
                        h.h(c(i8, true));
                    }
                    break;
                case 4:
                case 14:
                    u(b2 == 14);
                    break;
                case 5:
                    v();
                    break;
                case 6:
                    y(this.f1409b);
                    break;
                case 7:
                    z();
                    break;
                case 8:
                    E();
                    break;
                case 9:
                    F();
                    break;
                case 10:
                    w();
                    break;
                case 11:
                    x();
                    break;
                case 12:
                    C(this.f1409b);
                    break;
                case 13:
                    D();
                    break;
                case 15:
                    r(this.f1409b);
                    break;
                case 16:
                    s();
                    break;
                default:
                    s.f("BoxAudioPlayer", "onAudioProcess: unknown " + ((int) b2));
                    break;
            }
        }
    }

    private class b extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Handler f1412b;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.a$b$a, reason: collision with other inner class name */
        class HandlerC0073a extends Handler {
            HandlerC0073a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                b.this.b();
            }
        }

        private b(a aVar) {
            this.f1412b = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            synchronized (this) {
                if (isAlive()) {
                    if (Looper.myLooper() != null) {
                        Looper.myLooper().quit();
                    }
                    this.f1412b = null;
                }
                notify();
            }
        }

        public Handler c() {
            synchronized (this) {
                if (this.f1412b == null) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        s.e(Log.getStackTraceString(e));
                    }
                }
            }
            return this.f1412b;
        }

        public void d() {
            Handler handler = this.f1412b;
            if (handler != null) {
                handler.sendMessage(Message.obtain(handler, 1));
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
                this.f1412b = new HandlerC0073a();
                notify();
            }
            Looper.loop();
        }

        /* synthetic */ b(a aVar, RunnableC0072a runnableC0072a) {
            this(aVar);
        }
    }
}
