package d.b.a;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.util.i;
import cn.manstep.phonemirrorBox.util.s;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f2274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d.b.a.a f2275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AudioAttributes f2276d;
    private int f;
    private AudioTrack g;
    private AudioProcess i;
    private i j;
    private Runnable k;
    private boolean l;
    private final Object a = new Object();
    private boolean e = false;
    private boolean h = false;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            byte[] bArrC;
            synchronized (b.this.a) {
                while (b.this.j.g() > 50) {
                    b.this.j.f(0);
                    s.e("AudioPlayer,delayPlayRunnable: AudioTrack get data vector size:" + b.this.j.g());
                }
                bArrC = !b.this.j.e() ? b.this.j.c() : null;
            }
            if (bArrC != null && b.this.g != null) {
                synchronized (b.this) {
                    if (b.this.h) {
                        if (b.this.g.getState() == 0) {
                            s.d("AudioPlayer", "delayPlayRunnable->run: AudioTrack STATE_UNINITIALIZED");
                            return;
                        }
                        int iWrite = -1;
                        try {
                            iWrite = b.this.g.write(bArrC, 0, bArrC.length);
                        } catch (Error | Exception e) {
                            s.f("AudioPlayer", "delayPlayRunnable->run: " + s.g(e));
                        }
                        if (iWrite != bArrC.length) {
                            s.e("AudioPlayer,delayPlayRunnable: mAudioTrack Write data failed: ret = " + iWrite + ", data.length = " + bArrC.length);
                            b.this.E();
                            try {
                                if (!b.this.e || Build.VERSION.SDK_INT < 21) {
                                    b.this.h();
                                } else {
                                    b.this.g();
                                }
                                b.this.g.write(bArrC, 0, bArrC.length);
                            } catch (Exception e2) {
                                s.e("AudioPlayer,delayPlayRunnable: \n" + Log.getStackTraceString(e2));
                            }
                        }
                    }
                }
            }
            synchronized (b.this.a) {
                if (!b.this.j.e()) {
                    b.this.j.f(0);
                }
            }
        }
    }

    public b(Handler handler) {
        AudioTrack.getMaxVolume();
        this.j = new i();
        this.k = new a();
        this.l = false;
        this.f2274b = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        try {
            if (this.g != null) {
                this.g.stop();
                this.g.release();
                this.g = null;
            }
        } catch (Exception e) {
            s.e("AudioPlayer,releaseAudioTrack: \n" + Log.getStackTraceString(e));
        }
        synchronized (this.a) {
            this.j.b();
        }
    }

    private void j() {
        AudioProcess audioProcess = this.i;
        if (audioProcess != null) {
            audioProcess.DestroyAgc();
            this.i = null;
        }
    }

    private void k(byte[] bArr, int i, int i2) {
        if (this.i == null) {
            m();
            return;
        }
        int iCalculateBufferSize = AudioProcess.calculateBufferSize(this.f2275c.a, 2, 1);
        byte[] bArr2 = new byte[iCalculateBufferSize];
        int i3 = 0;
        while (true) {
            int i4 = i3 + iCalculateBufferSize;
            if (i4 > i2) {
                return;
            }
            int i5 = i3 + i;
            System.arraycopy(bArr, i5, bArr2, 0, iCalculateBufferSize);
            this.i.ProcessDataAgc(bArr2);
            System.arraycopy(bArr2, 0, bArr, i5, iCalculateBufferSize);
            i3 = i4;
        }
    }

    private void m() {
        if (this.i == null) {
            AudioProcess audioProcess = new AudioProcess();
            this.i = audioProcess;
            audioProcess.InitAgc(this.f2275c.a, 12);
        }
    }

    private String u(int i) {
        if (i == 4) {
            return "AudioFormat.CHANNEL_OUT_MONO";
        }
        if (i == 12) {
            return "AudioFormat.CHANNEL_OUT_STEREO";
        }
        return "channel=" + i;
    }

    private void v(int i) {
        int i2 = (SystemClock.elapsedRealtime() > 120000L ? 1 : (SystemClock.elapsedRealtime() == 120000L ? 0 : -1));
        int iA = A();
        StringBuilder sb = new StringBuilder();
        sb.append("AudioPlayer, createAudioTrack: AudioTrack getMinBufferSize:");
        d.b.a.a aVar = this.f2275c;
        sb.append(AudioTrack.getMinBufferSize(aVar.a, aVar.f2272b, aVar.f2273c));
        s.e(sb.toString());
        s.e("AudioPlayer, createAudioTrack: AudioTrack mFrequency:" + this.f2275c.a + ", minBufSize:" + iA + ",mChannel:" + this.f2275c.f2272b + ",mSampBit:" + this.f2275c.f2273c);
        d.b.a.a aVar2 = this.f2275c;
        this.g = new AudioTrack(i, aVar2.a, aVar2.f2272b, aVar2.f2273c, iA, 1);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("createAudioTrack: streamType=");
        sb2.append(i);
        sb2.append(",streamType=");
        sb2.append(this.g.getStreamType());
        s.d("AudioPlayer", sb2.toString());
        s.d("AudioPlayer", "createAudioTrack: NativeOutputSampleRate=" + AudioTrack.getNativeOutputSampleRate(i) + ",NativeOutputSampleRate=" + AudioTrack.getNativeOutputSampleRate(this.g.getStreamType()));
        this.g.play();
    }

    private void w(AudioAttributes audioAttributes) {
        x(audioAttributes, new AudioFormat.Builder().setSampleRate(this.f2275c.a).setChannelMask(this.f2275c.f2272b).setEncoding(this.f2275c.f2273c).build());
    }

    private void x(AudioAttributes audioAttributes, AudioFormat audioFormat) {
        int i = (SystemClock.elapsedRealtime() > 120000L ? 1 : (SystemClock.elapsedRealtime() == 120000L ? 0 : -1));
        int iB = Build.VERSION.SDK_INT >= 23 ? B(audioFormat.getChannelCount()) : A();
        s.h("AudioPlayer, createAudioTrack: AudioTrack mFrequency:" + this.f2275c.a + ", minBufSize:" + iB);
        if (Build.VERSION.SDK_INT >= 23) {
            s.d("AudioPlayer", "createAudioTrack: ChannelCount=" + audioFormat.getChannelCount() + ",SampleRate=" + audioFormat.getSampleRate());
        }
        this.g = new AudioTrack(audioAttributes, audioFormat, iB, 1, 0);
        s.d("AudioPlayer", "createAudioTrack: streamType=" + this.g.getStreamType());
        s.d("AudioPlayer", "createAudioTrack: NativeOutputSampleRate=" + AudioTrack.getNativeOutputSampleRate(this.g.getStreamType()));
        this.g.play();
    }

    public int A() {
        return B(this.f2275c.f2272b == 4 ? 1 : 2);
    }

    public int B(int i) {
        d.b.a.a aVar = this.f2275c;
        int minBufferSize = AudioTrack.getMinBufferSize(aVar.a, aVar.f2272b, aVar.f2273c);
        s.d("AudioPlayer", "getPlayerBufSize: minBufSize=" + minBufferSize);
        int i2 = (((this.f2275c.a * i) * (this.f2275c.f2273c == 2 ? 16 : 8)) / 8) / 1000;
        s.c("AudioPlayer,getPlayerBufSize : bufBytesMs:" + i2 + ", channels=" + i + "," + u(this.f2275c.f2272b));
        int i3 = i2 * 200;
        return minBufferSize < i3 ? i3 : minBufferSize;
    }

    public int C() {
        AudioTrack audioTrack = this.g;
        if (audioTrack != null) {
            return audioTrack.getStreamType();
        }
        return -255;
    }

    public boolean D() {
        return this.h;
    }

    public void a(AudioAttributes audioAttributes, d.b.a.a aVar) {
        this.e = false;
        E();
        this.f2275c = aVar;
        this.f2276d = audioAttributes;
        try {
            w(audioAttributes);
            this.h = true;
            s.h("AudioPlayer,AudioInit: AudioSessionId=" + this.g.getAudioSessionId());
        } catch (Exception e) {
            s.e("AudioPlayer,AudioInit: \n" + Log.getStackTraceString(e));
            this.h = false;
        }
    }

    public void b(AudioAttributes audioAttributes, d.b.a.a aVar, AudioFormat audioFormat) {
        this.e = false;
        E();
        this.f2276d = audioAttributes;
        this.f2275c = aVar;
        try {
            x(audioAttributes, audioFormat);
            this.h = true;
            s.h("AudioPlayer,AudioInit: AudioSessionId=" + this.g.getAudioSessionId());
        } catch (Exception e) {
            s.e("AudioPlayer,AudioInit: \n" + Log.getStackTraceString(e));
            this.h = false;
        }
    }

    public void c(d.b.a.a aVar) {
        d(aVar, 3);
    }

    public void d(d.b.a.a aVar, int i) {
        this.e = false;
        E();
        this.f2275c = aVar;
        this.f = i;
        try {
            v(i);
            this.h = true;
            s.h("AudioPlayer,AudioInit: AudioSessionId=" + this.g.getAudioSessionId());
        } catch (Exception e) {
            s.e("AudioPlayer,AudioInit: \n" + Log.getStackTraceString(e));
            this.h = false;
        }
    }

    public void e(byte[] bArr, int i) {
        f(bArr, 0, i);
    }

    public void f(byte[] bArr, int i, int i2) {
        int iWrite;
        if (this.h) {
            if (this.l && p.H) {
                k(bArr, i, i2);
            }
            if (p.E > 0) {
                synchronized (this.a) {
                    byte[] bArrD = this.j.d(i2);
                    System.arraycopy(bArr, i, bArrD, 0, i2);
                    this.j.a(bArrD);
                }
                this.f2274b.postDelayed(this.k, p.E);
                return;
            }
            try {
                if (this.g == null || this.g.getPlayState() != 3 || (iWrite = this.g.write(bArr, i, i2)) == i2) {
                    return;
                }
                s.e("AudioPlayer,AudioProcess: AudioPlayer Write data failed: " + iWrite);
            } catch (Exception e) {
                s.e("AudioPlayer,AudioProcess:\n" + Log.getStackTraceString(e));
            }
        }
    }

    public void g() {
        a(this.f2276d, this.f2275c);
    }

    public void h() {
        d(this.f2275c, this.f);
    }

    public void i() {
        s.c("AudioPlayer,AudioStop: SessionId=" + y());
        this.f2274b.removeCallbacks(this.k);
        synchronized (this) {
            E();
            this.h = false;
        }
        if (this.l) {
            l(false);
        }
    }

    public void l(boolean z) {
        this.l = z;
        if (z) {
            return;
        }
        j();
    }

    public void n(float f) {
        AudioTrack audioTrack;
        if (this.h && (audioTrack = this.g) != null && audioTrack.getPlayState() == 3) {
            s.c("AudioPlayer,SetVolume: volume = " + f + ", ret = " + (Build.VERSION.SDK_INT >= 21 ? this.g.setVolume(f) : this.g.setStereoVolume(f, f)) + ", AudioSessionId: " + y());
        }
    }

    public int y() {
        AudioTrack audioTrack = this.g;
        if (audioTrack != null) {
            return audioTrack.getAudioSessionId();
        }
        return -1;
    }

    public AudioTrack z() {
        return this.g;
    }
}
