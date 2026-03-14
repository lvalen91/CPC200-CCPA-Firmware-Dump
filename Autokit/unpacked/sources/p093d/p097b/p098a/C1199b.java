package p093d.p097b.p098a;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.util.C0972i;
import cn.manstep.phonemirrorBox.util.C0982s;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: renamed from: d.b.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1199b {

    /* JADX INFO: renamed from: b */
    private Handler f7584b;

    /* JADX INFO: renamed from: c */
    private C1198a f7585c;

    /* JADX INFO: renamed from: d */
    private AudioAttributes f7586d;

    /* JADX INFO: renamed from: f */
    private int f7588f;

    /* JADX INFO: renamed from: g */
    private AudioTrack f7589g;

    /* JADX INFO: renamed from: i */
    private AudioProcess f7591i;

    /* JADX INFO: renamed from: j */
    private C0972i f7592j;

    /* JADX INFO: renamed from: k */
    private Runnable f7593k;

    /* JADX INFO: renamed from: l */
    private boolean f7594l;

    /* JADX INFO: renamed from: a */
    private final Object f7583a = new Object();

    /* JADX INFO: renamed from: e */
    private boolean f7587e = false;

    /* JADX INFO: renamed from: h */
    private boolean f7590h = false;

    /* JADX INFO: renamed from: d.b.a.b$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            byte[] bArrM7251c;
            synchronized (C1199b.this.f7583a) {
                while (C1199b.this.f7592j.m7255g() > 50) {
                    C1199b.this.f7592j.m7254f(0);
                    C0982s.m7375e("AudioPlayer,delayPlayRunnable: AudioTrack get data vector size:" + C1199b.this.f7592j.m7255g());
                }
                bArrM7251c = !C1199b.this.f7592j.m7253e() ? C1199b.this.f7592j.m7251c() : null;
            }
            if (bArrM7251c != null && C1199b.this.f7589g != null) {
                synchronized (C1199b.this) {
                    if (C1199b.this.f7590h) {
                        if (C1199b.this.f7589g.getState() == 0) {
                            C0982s.m7374d("AudioPlayer", "delayPlayRunnable->run: AudioTrack STATE_UNINITIALIZED");
                            return;
                        }
                        int iWrite = -1;
                        try {
                            iWrite = C1199b.this.f7589g.write(bArrM7251c, 0, bArrM7251c.length);
                        } catch (Error | Exception e) {
                            C0982s.m7376f("AudioPlayer", "delayPlayRunnable->run: " + C0982s.m7377g(e));
                        }
                        if (iWrite != bArrM7251c.length) {
                            C0982s.m7375e("AudioPlayer,delayPlayRunnable: mAudioTrack Write data failed: ret = " + iWrite + ", data.length = " + bArrM7251c.length);
                            C1199b.this.m9089E();
                            try {
                                if (!C1199b.this.f7587e || Build.VERSION.SDK_INT < 21) {
                                    C1199b.this.m9114h();
                                } else {
                                    C1199b.this.m9113g();
                                }
                                C1199b.this.f7589g.write(bArrM7251c, 0, bArrM7251c.length);
                            } catch (Exception e2) {
                                C0982s.m7375e("AudioPlayer,delayPlayRunnable: \n" + Log.getStackTraceString(e2));
                            }
                        }
                    }
                }
            }
            synchronized (C1199b.this.f7583a) {
                if (!C1199b.this.f7592j.m7253e()) {
                    C1199b.this.f7592j.m7254f(0);
                }
            }
        }
    }

    public C1199b(Handler handler) {
        AudioTrack.getMaxVolume();
        this.f7592j = new C0972i();
        this.f7593k = new a();
        this.f7594l = false;
        this.f7584b = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E */
    public void m9089E() {
        try {
            if (this.f7589g != null) {
                this.f7589g.stop();
                this.f7589g.release();
                this.f7589g = null;
            }
        } catch (Exception e) {
            C0982s.m7375e("AudioPlayer,releaseAudioTrack: \n" + Log.getStackTraceString(e));
        }
        synchronized (this.f7583a) {
            this.f7592j.m7250b();
        }
    }

    /* JADX INFO: renamed from: j */
    private void m9090j() {
        AudioProcess audioProcess = this.f7591i;
        if (audioProcess != null) {
            audioProcess.DestroyAgc();
            this.f7591i = null;
        }
    }

    /* JADX INFO: renamed from: k */
    private void m9091k(byte[] bArr, int i, int i2) {
        if (this.f7591i == null) {
            m9092m();
            return;
        }
        int iCalculateBufferSize = AudioProcess.calculateBufferSize(this.f7585c.f7580a, 2, 1);
        byte[] bArr2 = new byte[iCalculateBufferSize];
        int i3 = 0;
        while (true) {
            int i4 = i3 + iCalculateBufferSize;
            if (i4 > i2) {
                return;
            }
            int i5 = i3 + i;
            System.arraycopy(bArr, i5, bArr2, 0, iCalculateBufferSize);
            this.f7591i.ProcessDataAgc(bArr2);
            System.arraycopy(bArr2, 0, bArr, i5, iCalculateBufferSize);
            i3 = i4;
        }
    }

    /* JADX INFO: renamed from: m */
    private void m9092m() {
        if (this.f7591i == null) {
            AudioProcess audioProcess = new AudioProcess();
            this.f7591i = audioProcess;
            audioProcess.InitAgc(this.f7585c.f7580a, 12);
        }
    }

    /* JADX INFO: renamed from: u */
    private String m9099u(int i) {
        if (i == 4) {
            return "AudioFormat.CHANNEL_OUT_MONO";
        }
        if (i == 12) {
            return "AudioFormat.CHANNEL_OUT_STEREO";
        }
        return "channel=" + i;
    }

    /* JADX INFO: renamed from: v */
    private void m9100v(int i) {
        int i2 = (SystemClock.elapsedRealtime() > 120000L ? 1 : (SystemClock.elapsedRealtime() == 120000L ? 0 : -1));
        int iM9103A = m9103A();
        StringBuilder sb = new StringBuilder();
        sb.append("AudioPlayer, createAudioTrack: AudioTrack getMinBufferSize:");
        C1198a c1198a = this.f7585c;
        sb.append(AudioTrack.getMinBufferSize(c1198a.f7580a, c1198a.f7581b, c1198a.f7582c));
        C0982s.m7375e(sb.toString());
        C0982s.m7375e("AudioPlayer, createAudioTrack: AudioTrack mFrequency:" + this.f7585c.f7580a + ", minBufSize:" + iM9103A + ",mChannel:" + this.f7585c.f7581b + ",mSampBit:" + this.f7585c.f7582c);
        C1198a c1198a2 = this.f7585c;
        this.f7589g = new AudioTrack(i, c1198a2.f7580a, c1198a2.f7581b, c1198a2.f7582c, iM9103A, 1);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("createAudioTrack: streamType=");
        sb2.append(i);
        sb2.append(",streamType=");
        sb2.append(this.f7589g.getStreamType());
        C0982s.m7374d("AudioPlayer", sb2.toString());
        C0982s.m7374d("AudioPlayer", "createAudioTrack: NativeOutputSampleRate=" + AudioTrack.getNativeOutputSampleRate(i) + ",NativeOutputSampleRate=" + AudioTrack.getNativeOutputSampleRate(this.f7589g.getStreamType()));
        this.f7589g.play();
    }

    /* JADX INFO: renamed from: w */
    private void m9101w(AudioAttributes audioAttributes) {
        m9102x(audioAttributes, new AudioFormat.Builder().setSampleRate(this.f7585c.f7580a).setChannelMask(this.f7585c.f7581b).setEncoding(this.f7585c.f7582c).build());
    }

    /* JADX INFO: renamed from: x */
    private void m9102x(AudioAttributes audioAttributes, AudioFormat audioFormat) {
        int i = (SystemClock.elapsedRealtime() > 120000L ? 1 : (SystemClock.elapsedRealtime() == 120000L ? 0 : -1));
        int iM9104B = Build.VERSION.SDK_INT >= 23 ? m9104B(audioFormat.getChannelCount()) : m9103A();
        C0982s.m7378h("AudioPlayer, createAudioTrack: AudioTrack mFrequency:" + this.f7585c.f7580a + ", minBufSize:" + iM9104B);
        if (Build.VERSION.SDK_INT >= 23) {
            C0982s.m7374d("AudioPlayer", "createAudioTrack: ChannelCount=" + audioFormat.getChannelCount() + ",SampleRate=" + audioFormat.getSampleRate());
        }
        this.f7589g = new AudioTrack(audioAttributes, audioFormat, iM9104B, 1, 0);
        C0982s.m7374d("AudioPlayer", "createAudioTrack: streamType=" + this.f7589g.getStreamType());
        C0982s.m7374d("AudioPlayer", "createAudioTrack: NativeOutputSampleRate=" + AudioTrack.getNativeOutputSampleRate(this.f7589g.getStreamType()));
        this.f7589g.play();
    }

    /* JADX INFO: renamed from: A */
    public int m9103A() {
        return m9104B(this.f7585c.f7581b == 4 ? 1 : 2);
    }

    /* JADX INFO: renamed from: B */
    public int m9104B(int i) {
        C1198a c1198a = this.f7585c;
        int minBufferSize = AudioTrack.getMinBufferSize(c1198a.f7580a, c1198a.f7581b, c1198a.f7582c);
        C0982s.m7374d("AudioPlayer", "getPlayerBufSize: minBufSize=" + minBufferSize);
        int i2 = (((this.f7585c.f7580a * i) * (this.f7585c.f7582c == 2 ? 16 : 8)) / 8) / 1000;
        C0982s.m7373c("AudioPlayer,getPlayerBufSize : bufBytesMs:" + i2 + ", channels=" + i + "," + m9099u(this.f7585c.f7581b));
        int i3 = i2 * 200;
        return minBufferSize < i3 ? i3 : minBufferSize;
    }

    /* JADX INFO: renamed from: C */
    public int m9105C() {
        AudioTrack audioTrack = this.f7589g;
        if (audioTrack != null) {
            return audioTrack.getStreamType();
        }
        return -255;
    }

    /* JADX INFO: renamed from: D */
    public boolean m9106D() {
        return this.f7590h;
    }

    /* JADX INFO: renamed from: a */
    public void m9107a(AudioAttributes audioAttributes, C1198a c1198a) {
        this.f7587e = false;
        m9089E();
        this.f7585c = c1198a;
        this.f7586d = audioAttributes;
        try {
            m9101w(audioAttributes);
            this.f7590h = true;
            C0982s.m7378h("AudioPlayer,AudioInit: AudioSessionId=" + this.f7589g.getAudioSessionId());
        } catch (Exception e) {
            C0982s.m7375e("AudioPlayer,AudioInit: \n" + Log.getStackTraceString(e));
            this.f7590h = false;
        }
    }

    /* JADX INFO: renamed from: b */
    public void m9108b(AudioAttributes audioAttributes, C1198a c1198a, AudioFormat audioFormat) {
        this.f7587e = false;
        m9089E();
        this.f7586d = audioAttributes;
        this.f7585c = c1198a;
        try {
            m9102x(audioAttributes, audioFormat);
            this.f7590h = true;
            C0982s.m7378h("AudioPlayer,AudioInit: AudioSessionId=" + this.f7589g.getAudioSessionId());
        } catch (Exception e) {
            C0982s.m7375e("AudioPlayer,AudioInit: \n" + Log.getStackTraceString(e));
            this.f7590h = false;
        }
    }

    /* JADX INFO: renamed from: c */
    public void m9109c(C1198a c1198a) {
        m9110d(c1198a, 3);
    }

    /* JADX INFO: renamed from: d */
    public void m9110d(C1198a c1198a, int i) {
        this.f7587e = false;
        m9089E();
        this.f7585c = c1198a;
        this.f7588f = i;
        try {
            m9100v(i);
            this.f7590h = true;
            C0982s.m7378h("AudioPlayer,AudioInit: AudioSessionId=" + this.f7589g.getAudioSessionId());
        } catch (Exception e) {
            C0982s.m7375e("AudioPlayer,AudioInit: \n" + Log.getStackTraceString(e));
            this.f7590h = false;
        }
    }

    /* JADX INFO: renamed from: e */
    public void m9111e(byte[] bArr, int i) {
        m9112f(bArr, 0, i);
    }

    /* JADX INFO: renamed from: f */
    public void m9112f(byte[] bArr, int i, int i2) {
        int iWrite;
        if (this.f7590h) {
            if (this.f7594l && C0925p.f5861H) {
                m9091k(bArr, i, i2);
            }
            if (C0925p.f5858E > 0) {
                synchronized (this.f7583a) {
                    byte[] bArrM7252d = this.f7592j.m7252d(i2);
                    System.arraycopy(bArr, i, bArrM7252d, 0, i2);
                    this.f7592j.m7249a(bArrM7252d);
                }
                this.f7584b.postDelayed(this.f7593k, C0925p.f5858E);
                return;
            }
            try {
                if (this.f7589g == null || this.f7589g.getPlayState() != 3 || (iWrite = this.f7589g.write(bArr, i, i2)) == i2) {
                    return;
                }
                C0982s.m7375e("AudioPlayer,AudioProcess: AudioPlayer Write data failed: " + iWrite);
            } catch (Exception e) {
                C0982s.m7375e("AudioPlayer,AudioProcess:\n" + Log.getStackTraceString(e));
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public void m9113g() {
        m9107a(this.f7586d, this.f7585c);
    }

    /* JADX INFO: renamed from: h */
    public void m9114h() {
        m9110d(this.f7585c, this.f7588f);
    }

    /* JADX INFO: renamed from: i */
    public void m9115i() {
        C0982s.m7373c("AudioPlayer,AudioStop: SessionId=" + m9118y());
        this.f7584b.removeCallbacks(this.f7593k);
        synchronized (this) {
            m9089E();
            this.f7590h = false;
        }
        if (this.f7594l) {
            m9116l(false);
        }
    }

    /* JADX INFO: renamed from: l */
    public void m9116l(boolean z) {
        this.f7594l = z;
        if (z) {
            return;
        }
        m9090j();
    }

    /* JADX INFO: renamed from: n */
    public void m9117n(float f) {
        AudioTrack audioTrack;
        if (this.f7590h && (audioTrack = this.f7589g) != null && audioTrack.getPlayState() == 3) {
            C0982s.m7373c("AudioPlayer,SetVolume: volume = " + f + ", ret = " + (Build.VERSION.SDK_INT >= 21 ? this.f7589g.setVolume(f) : this.f7589g.setStereoVolume(f, f)) + ", AudioSessionId: " + m9118y());
        }
    }

    /* JADX INFO: renamed from: y */
    public int m9118y() {
        AudioTrack audioTrack = this.f7589g;
        if (audioTrack != null) {
            return audioTrack.getAudioSessionId();
        }
        return -1;
    }

    /* JADX INFO: renamed from: z */
    public AudioTrack m9119z() {
        return this.f7589g;
    }
}
