package d.b.a;

import android.media.AudioFormat;
import android.media.AudioRecord;
import android.os.Build;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.JniTools;
import cn.manstep.phonemirrorBox.util.i;
import cn.manstep.phonemirrorBox.util.n;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.BuildConfig;
import java.util.Locale;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c {
    private final i a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f2278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected a f2279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected AudioRecord f2280d;
    protected boolean e;
    private boolean f;
    private AudioProcess g;
    private int h;
    protected int i;
    private int j;
    private byte[] k;
    private byte[] l;
    private byte[] m;
    private int n;
    protected int o;

    public c() {
        this.a = new i();
        this.f2278b = 1;
        this.e = false;
        this.f = false;
        this.h = 320;
        this.j = 0;
        this.n = 0;
        this.o = 1;
    }

    private void a() {
        AudioProcess audioProcess = this.g;
        if (audioProcess != null) {
            audioProcess.Destroy();
            this.g = null;
            this.m = null;
            this.l = null;
            synchronized (this.a) {
                this.a.b();
                this.j = 0;
                this.k = null;
            }
            this.f = false;
        }
    }

    private void d() {
        s.c("AudioRecorder,InitAECProcesser: !!!");
        if (this.g == null) {
            AudioProcess audioProcess = new AudioProcess();
            this.g = audioProcess;
            audioProcess.Init(this.f2279c.a);
            int i = this.h;
            this.l = new byte[i];
            this.m = new byte[i];
        }
    }

    private int m() {
        a aVar = this.f2279c;
        if (aVar == null) {
            return 0;
        }
        int minBufferSize = AudioRecord.getMinBufferSize(aVar.a, aVar.f2272b, aVar.f2273c);
        s.d("AudioRecorder", "calculateBufSize: minBufSize=" + minBufferSize + ",mChannelCount=" + this.f2278b);
        if (minBufferSize <= 0) {
            s.f("AudioRecorder", "calculateBufSize: " + minBufferSize + ", " + p(minBufferSize));
            return this.f2278b * 512;
        }
        if (this.f2278b > 1) {
            a aVar2 = this.f2279c;
            minBufferSize = AudioRecord.getMinBufferSize(aVar2.a, 16, aVar2.f2273c) * this.f2278b;
        }
        int i = this.h;
        int i2 = minBufferSize / i < 8 ? i * 8 : i * ((((minBufferSize / i) / 4) * 4) + 4);
        s.d("AudioRecorder", "calculateBufSize: minBufSize=" + i2);
        return i2;
    }

    private String p(int i) {
        if (i == -6) {
            return "ERROR_DEAD_OBJECT";
        }
        if (i == -3) {
            return "ERROR_INVALID_OPERATION";
        }
        if (i == -2) {
            return "ERROR_BAD_VALUE";
        }
        if (i == -1) {
            return "ERROR";
        }
        return BuildConfig.FLAVOR + i;
    }

    private void t(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        if (i2 % 2 != 0 || i4 % 2 != 0) {
            s.e("reSampleAudio size error!!!");
        }
        float f = i2 / i4;
        for (int i5 = 0; i5 < i4 / 2; i5++) {
            int i6 = (i5 * 2) + i3;
            int iFloor = (((int) Math.floor(i5 * f)) * 2) + i;
            bArr2[i6] = bArr[iFloor];
            bArr2[i6 + 1] = bArr[iFloor + 1];
        }
    }

    protected void b(byte[] bArr, int i, int i2) {
        byte[] bArrC;
        int i3 = 0;
        while (this.h + i3 <= i2) {
            synchronized (this.a) {
                bArrC = this.a.c();
                if (p.w) {
                    n.A(bArrC, "output.pcm", MyApplication.b());
                }
                if (!this.f) {
                    s.d("AudioRecorder", "DoAECProcess: Start DoAeEC, OutPut Audio buffer size: " + this.a.g());
                    this.f = true;
                }
            }
            if (bArrC != null) {
                int i4 = i + i3;
                System.arraycopy(bArr, i4, this.l, 0, this.h);
                this.g.ProcessData(bArrC, this.l, this.m);
                System.arraycopy(this.m, 0, bArr, i4, this.h);
                synchronized (this.a) {
                    if (!this.a.e()) {
                        this.a.f(0);
                    }
                }
            } else {
                s.f("AudioRecorder", "DoAECProcess: OutPut Audio buffer not enough: " + this.a.g());
            }
            i3 += this.h;
        }
    }

    public int c() {
        s.e("AudioRecord GetBufferSize: " + this.i);
        return this.i;
    }

    public void e(byte[] bArr, int i, int i2) {
        int i3;
        synchronized (this.a) {
            if (this.k == null) {
                this.k = new byte[this.h];
            }
            if (this.j != 0) {
                byte[] bArr2 = this.k;
                int i4 = this.h - this.j;
                if (i4 >= 0) {
                    System.arraycopy(bArr, i + 0, bArr2, this.j, i4);
                    i3 = i4 + 0;
                    this.a.a(bArr2);
                } else {
                    s.e("AudioRecorder,PushOutPutAudio: len = " + i4);
                    i3 = 0;
                }
                this.j = 0;
            } else {
                i3 = 0;
            }
            while (this.h + i3 <= i2) {
                byte[] bArrD = this.a.d(this.h);
                System.arraycopy(bArr, i + i3, bArrD, 0, this.h);
                this.a.a(bArrD);
                i3 += this.h;
            }
            if (i3 < i2) {
                byte[] bArr3 = this.k;
                int i5 = i2 - i3;
                if (i5 > bArr3.length) {
                    s.f("AudioRecorder", "PushOutPutAudio: java.lang.ArrayIndexOutOfBoundsException");
                    return;
                } else {
                    System.arraycopy(bArr, i + i3, bArr3, 0, i5);
                    this.j = i5;
                }
            }
            int i6 = AudioProcess.RecordDelay / 10;
            if (this.f) {
                i6 += 8;
            }
            s.f("AudioRecorder", "PushOutPutAudio: OutPut Audio buffer size: " + this.a.g());
            while (this.a.g() > i6) {
                this.a.f(0);
                s.f("AudioRecorder", "PushOutPutAudio: OutPut Audio buffer overrun size: " + this.a.g());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c8, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean f(byte[] bArr, int i, int i2) {
        int iU;
        byte[] bArr2 = new byte[i2];
        int i3 = 0;
        while (true) {
            if (!this.e || this.f2280d == null) {
                break;
            }
            try {
                iU = u.z().a0() ? u(bArr, i + i3, i2 - i3) : this.f2278b > 1 ? g(bArr, i + i3, i2 - i3) : this.f2280d.read(bArr, i + i3, i2 - i3);
            } catch (Exception e) {
                s.f("AudioRecorder", "ReadAudioData:\n" + s.g(e));
            }
            if (iU > 0) {
                i3 += iU;
                if (i3 == i2) {
                    if (p.x) {
                        n.z(bArr, i, i2, "input_src.pcm", MyApplication.b());
                    }
                    if (p.H) {
                        b(bArr, i, i2);
                    }
                    if (p.y && p.H) {
                        n.z(bArr, i, i2, "input_aec.pcm", MyApplication.b());
                    }
                    if (this.n != 0) {
                        JniTools.amplifyPcmData(bArr, i, i2, this.n);
                    }
                    return true;
                }
                if (i3 > i2) {
                    s.e("AudioRecorder,ReadAudioData: read over size: " + i3 + " > " + i2);
                    break;
                }
            } else if (iU == -3) {
                s.e("AudioRecorder,ReadAudioData: read failed: the object isn't properly initialized.");
                l(false);
            } else {
                s.e("AudioRecorder,ReadAudioData: read failed:" + iU);
            }
        }
    }

    public int g(byte[] bArr, int i, int i2) {
        int iE = u.z().E();
        int i3 = 0;
        if (iE >= this.f2278b) {
            iE = 0;
        }
        int i4 = this.i;
        byte[] bArr2 = new byte[i4];
        int i5 = this.f2280d.read(bArr2, 0, i4);
        if (i5 > 0) {
            if (p.x) {
                n.z(bArr2, 0, i5, "input2_16k_" + this.f2278b + ".pcm", MyApplication.b());
            }
            while (true) {
                int i6 = this.f2278b;
                if (i3 >= i5 / i6) {
                    break;
                }
                bArr[i3 + i] = bArr2[((i3 / 2) * i6 * 2) + (iE * 2) + (i3 % 2)];
                i3++;
            }
        }
        return i5 / this.f2278b;
    }

    public void h(a aVar) {
        this.f2279c = aVar;
        this.h = AudioProcess.calculateBufferSize(aVar.a, 2, 1);
        int i = this.f2278b;
        if (i == 8) {
            this.f2279c.f2272b = 1020;
        } else if (i == 2) {
            this.f2279c.f2272b = 12;
        }
        this.i = m();
        s.d("AudioRecorder", "SetAudioRecordConfig: mBufSize=" + this.i + ", " + aVar.toString());
    }

    public void i() {
        j(true);
    }

    public void j(boolean z) {
        s.c("AudioRecorder,StartAudioRecord: notice = " + z);
        if (this.f2279c != null) {
            l(false);
            if (z) {
                cn.manstep.phonemirrorBox.v0.a.t().p();
                s.c("AudioRecorder,StartAudioRecord: AUTO_BOX_MODE_REQUEST_MIC");
            }
            if (this.i > 0) {
                s.c("AudioRecorder,StartAudioRecord: mBufSize = " + this.i);
                try {
                    this.e = s();
                    s.c("AudioRecorder,StartAudioRecord: notice=" + z + ", isRecording=" + this.e);
                    if (this.e && p.H) {
                        d();
                    }
                } catch (Exception e) {
                    s.e("AudioRecorder,StartAudioRecord: " + e.getMessage() + "\n" + s.g(e));
                    d.O(1, 17);
                    this.f2280d = null;
                }
            }
            if (this.f2280d != null) {
                s.d("AudioRecorder", "StartAudioRecord: AudioSource=" + this.f2280d.getAudioSource() + ",ChannelCount=" + this.f2280d.getChannelCount());
                StringBuilder sb = new StringBuilder();
                sb.append("StartAudioRecord: SampleRate=");
                sb.append(this.f2280d.getSampleRate());
                s.i("AudioRecorder", sb.toString());
            }
        }
    }

    public void k() {
        l(true);
    }

    protected void l(boolean z) {
        s.c("AudioRecorder,StopAudioRecord: notice=" + z + ", isRecording=" + this.e);
        if (this.e) {
            if (z) {
                cn.manstep.phonemirrorBox.v0.a.t().D();
                s.c("AudioRecorder,StopAudioRecord: AUTO_BOX_MODE_RELEASE_MIC");
            }
            try {
                this.e = false;
                this.f2280d.stop();
                this.f2280d.release();
                this.f2280d = null;
                if (p.H) {
                    a();
                }
            } catch (Exception e) {
                s.f("AudioRecorder", "StopAudioRecord\n" + s.g(e));
            }
        }
    }

    public int n() {
        AudioRecord audioRecord = this.f2280d;
        if (audioRecord != null) {
            return audioRecord.getChannelCount();
        }
        return 1;
    }

    public boolean o() {
        return this.e;
    }

    public int q() {
        AudioRecord audioRecord = this.f2280d;
        if (audioRecord == null) {
            return 0;
        }
        return audioRecord.getRecordingState();
    }

    protected void r(int i) {
        AudioFormat audioFormatBuild = new AudioFormat.Builder().setEncoding(this.f2279c.f2273c).setSampleRate(this.f2279c.a).setChannelIndexMask(i).build();
        this.f2278b = audioFormatBuild.getChannelCount();
        this.i = m();
        s.i("AudioRecorder", "initMultiChannelRecorder: " + String.format(Locale.getDefault(), "ChannelCount=%d, channelIndexMask=%d(0x%02x), BufSize=%d, audioSource=%d", Integer.valueOf(this.f2278b), Integer.valueOf(i), Integer.valueOf(i), Integer.valueOf(this.i), Integer.valueOf(this.o)));
        try {
            this.f2280d = new AudioRecord.Builder().setAudioFormat(audioFormatBuild).setAudioSource(this.o).setBufferSizeInBytes(this.i).build();
        } catch (Exception e) {
            this.f2280d = null;
            s.f("AudioRecorder", "initMultiChannelRecorder:\n" + s.g(e));
        }
    }

    protected boolean s() {
        if (u.z().a0()) {
            s.c("AudioRecorder,initRecorder: use 48K record");
            int i = this.o;
            a aVar = this.f2279c;
            this.f2280d = new AudioRecord(i, 48000, aVar.f2272b, aVar.f2273c, (48000 / aVar.a) * this.i);
        } else {
            int iM = b0.i().m("RecordChannel", u.z().D());
            s.d("AudioRecorder", "initRecorder: indexMask=" + iM);
            if (Build.VERSION.SDK_INT < 23 || iM <= 0 || iM == 16) {
                int i2 = this.o;
                a aVar2 = this.f2279c;
                this.f2280d = new AudioRecord(i2, aVar2.a, aVar2.f2272b, aVar2.f2273c, this.i);
            } else {
                r(iM);
            }
        }
        AudioRecord audioRecord = this.f2280d;
        if (audioRecord == null) {
            s.f("AudioRecorder", "initRecorder: mRecorder == null");
            return false;
        }
        if (audioRecord.getState() != 1) {
            d.P(1, 26, 0);
            return false;
        }
        this.f2280d.startRecording();
        if (this.f2280d.getRecordingState() != 3) {
            d.P(1, 26, 1);
        } else {
            d.O(1, 27);
        }
        s.i("AudioRecorder", "initRecorder: AudioSource=" + this.f2280d.getAudioSource() + "," + this.o);
        StringBuilder sb = new StringBuilder();
        sb.append("initRecorder: ChannelCount=");
        sb.append(this.f2280d.getChannelCount());
        s.i("AudioRecorder", sb.toString());
        return true;
    }

    protected int u(byte[] bArr, int i, int i2) {
        int i3 = (i2 * 48000) / this.f2279c.a;
        byte[] bArr2 = new byte[i3];
        int i4 = this.f2280d.read(bArr2, 0, i3);
        if (i4 <= 0) {
            return i4;
        }
        if (p.x) {
            n.z(bArr2, 0, i4, "input2_48k_1.pcm", MyApplication.b());
        }
        int i5 = (this.f2279c.a * i4) / 48000;
        t(bArr2, 0, i4, bArr, i, i5);
        return i5;
    }

    public void v(int i) {
        this.o = i;
    }

    public void w(int i) {
        this.n = i;
        s.c("AudioRecorder,setMicGain: gain = " + i + "db");
    }

    public c(int i) {
        this.a = new i();
        this.f2278b = 1;
        this.e = false;
        this.f = false;
        this.h = 320;
        this.j = 0;
        this.n = 0;
        this.o = i;
    }
}
