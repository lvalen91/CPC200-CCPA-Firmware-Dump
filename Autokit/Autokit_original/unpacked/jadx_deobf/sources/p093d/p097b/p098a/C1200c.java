package p093d.p097b.p098a;

import android.media.AudioFormat;
import android.media.AudioRecord;
import android.os.Build;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.util.C0972i;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.JniTools;
import com.yalantis.ucrop.BuildConfig;
import java.util.Locale;
import net.iwebrtc.audioprocess.sdk.AudioProcess;

/* JADX INFO: renamed from: d.b.a.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1200c {

    /* JADX INFO: renamed from: a */
    private final C0972i f7596a;

    /* JADX INFO: renamed from: b */
    protected int f7597b;

    /* JADX INFO: renamed from: c */
    protected C1198a f7598c;

    /* JADX INFO: renamed from: d */
    protected AudioRecord f7599d;

    /* JADX INFO: renamed from: e */
    protected boolean f7600e;

    /* JADX INFO: renamed from: f */
    private boolean f7601f;

    /* JADX INFO: renamed from: g */
    private AudioProcess f7602g;

    /* JADX INFO: renamed from: h */
    private int f7603h;

    /* JADX INFO: renamed from: i */
    protected int f7604i;

    /* JADX INFO: renamed from: j */
    private int f7605j;

    /* JADX INFO: renamed from: k */
    private byte[] f7606k;

    /* JADX INFO: renamed from: l */
    private byte[] f7607l;

    /* JADX INFO: renamed from: m */
    private byte[] f7608m;

    /* JADX INFO: renamed from: n */
    private int f7609n;

    /* JADX INFO: renamed from: o */
    protected int f7610o;

    public C1200c() {
        this.f7596a = new C0972i();
        this.f7597b = 1;
        this.f7600e = false;
        this.f7601f = false;
        this.f7603h = 320;
        this.f7605j = 0;
        this.f7609n = 0;
        this.f7610o = 1;
    }

    /* JADX INFO: renamed from: a */
    private void m9120a() {
        AudioProcess audioProcess = this.f7602g;
        if (audioProcess != null) {
            audioProcess.Destroy();
            this.f7602g = null;
            this.f7608m = null;
            this.f7607l = null;
            synchronized (this.f7596a) {
                this.f7596a.m7250b();
                this.f7605j = 0;
                this.f7606k = null;
            }
            this.f7601f = false;
        }
    }

    /* JADX INFO: renamed from: d */
    private void m9121d() {
        C0982s.m7373c("AudioRecorder,InitAECProcesser: !!!");
        if (this.f7602g == null) {
            AudioProcess audioProcess = new AudioProcess();
            this.f7602g = audioProcess;
            audioProcess.Init(this.f7598c.f7580a);
            int i = this.f7603h;
            this.f7607l = new byte[i];
            this.f7608m = new byte[i];
        }
    }

    /* JADX INFO: renamed from: m */
    private int m9122m() {
        C1198a c1198a = this.f7598c;
        if (c1198a == null) {
            return 0;
        }
        int minBufferSize = AudioRecord.getMinBufferSize(c1198a.f7580a, c1198a.f7581b, c1198a.f7582c);
        C0982s.m7374d("AudioRecorder", "calculateBufSize: minBufSize=" + minBufferSize + ",mChannelCount=" + this.f7597b);
        if (minBufferSize <= 0) {
            C0982s.m7376f("AudioRecorder", "calculateBufSize: " + minBufferSize + ", " + m9123p(minBufferSize));
            return this.f7597b * 512;
        }
        if (this.f7597b > 1) {
            C1198a c1198a2 = this.f7598c;
            minBufferSize = AudioRecord.getMinBufferSize(c1198a2.f7580a, 16, c1198a2.f7582c) * this.f7597b;
        }
        int i = this.f7603h;
        int i2 = minBufferSize / i < 8 ? i * 8 : i * ((((minBufferSize / i) / 4) * 4) + 4);
        C0982s.m7374d("AudioRecorder", "calculateBufSize: minBufSize=" + i2);
        return i2;
    }

    /* JADX INFO: renamed from: p */
    private String m9123p(int i) {
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

    /* JADX INFO: renamed from: t */
    private void m9124t(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        if (i2 % 2 != 0 || i4 % 2 != 0) {
            C0982s.m7375e("reSampleAudio size error!!!");
        }
        float f = i2 / i4;
        for (int i5 = 0; i5 < i4 / 2; i5++) {
            int i6 = (i5 * 2) + i3;
            int iFloor = (((int) Math.floor(i5 * f)) * 2) + i;
            bArr2[i6] = bArr[iFloor];
            bArr2[i6 + 1] = bArr[iFloor + 1];
        }
    }

    /* JADX INFO: renamed from: b */
    protected void m9125b(byte[] bArr, int i, int i2) {
        byte[] bArrM7251c;
        int i3 = 0;
        while (this.f7603h + i3 <= i2) {
            synchronized (this.f7596a) {
                bArrM7251c = this.f7596a.m7251c();
                if (C0925p.f5886w) {
                    C0977n.m7297A(bArrM7251c, "output.pcm", MyApplication.m5997b());
                }
                if (!this.f7601f) {
                    C0982s.m7374d("AudioRecorder", "DoAECProcess: Start DoAeEC, OutPut Audio buffer size: " + this.f7596a.m7255g());
                    this.f7601f = true;
                }
            }
            if (bArrM7251c != null) {
                int i4 = i + i3;
                System.arraycopy(bArr, i4, this.f7607l, 0, this.f7603h);
                this.f7602g.ProcessData(bArrM7251c, this.f7607l, this.f7608m);
                System.arraycopy(this.f7608m, 0, bArr, i4, this.f7603h);
                synchronized (this.f7596a) {
                    if (!this.f7596a.m7253e()) {
                        this.f7596a.m7254f(0);
                    }
                }
            } else {
                C0982s.m7376f("AudioRecorder", "DoAECProcess: OutPut Audio buffer not enough: " + this.f7596a.m7255g());
            }
            i3 += this.f7603h;
        }
    }

    /* JADX INFO: renamed from: c */
    public int m9126c() {
        C0982s.m7375e("AudioRecord GetBufferSize: " + this.f7604i);
        return this.f7604i;
    }

    /* JADX INFO: renamed from: e */
    public void m9127e(byte[] bArr, int i, int i2) {
        int i3;
        synchronized (this.f7596a) {
            if (this.f7606k == null) {
                this.f7606k = new byte[this.f7603h];
            }
            if (this.f7605j != 0) {
                byte[] bArr2 = this.f7606k;
                int i4 = this.f7603h - this.f7605j;
                if (i4 >= 0) {
                    System.arraycopy(bArr, i + 0, bArr2, this.f7605j, i4);
                    i3 = i4 + 0;
                    this.f7596a.m7249a(bArr2);
                } else {
                    C0982s.m7375e("AudioRecorder,PushOutPutAudio: len = " + i4);
                    i3 = 0;
                }
                this.f7605j = 0;
            } else {
                i3 = 0;
            }
            while (this.f7603h + i3 <= i2) {
                byte[] bArrM7252d = this.f7596a.m7252d(this.f7603h);
                System.arraycopy(bArr, i + i3, bArrM7252d, 0, this.f7603h);
                this.f7596a.m7249a(bArrM7252d);
                i3 += this.f7603h;
            }
            if (i3 < i2) {
                byte[] bArr3 = this.f7606k;
                int i5 = i2 - i3;
                if (i5 > bArr3.length) {
                    C0982s.m7376f("AudioRecorder", "PushOutPutAudio: java.lang.ArrayIndexOutOfBoundsException");
                    return;
                } else {
                    System.arraycopy(bArr, i + i3, bArr3, 0, i5);
                    this.f7605j = i5;
                }
            }
            int i6 = AudioProcess.RecordDelay / 10;
            if (this.f7601f) {
                i6 += 8;
            }
            C0982s.m7376f("AudioRecorder", "PushOutPutAudio: OutPut Audio buffer size: " + this.f7596a.m7255g());
            while (this.f7596a.m7255g() > i6) {
                this.f7596a.m7254f(0);
                C0982s.m7376f("AudioRecorder", "PushOutPutAudio: OutPut Audio buffer overrun size: " + this.f7596a.m7255g());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c8, code lost:
    
        return false;
     */
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mo6486f(byte[] bArr, int i, int i2) {
        int iM9137u;
        byte[] bArr2 = new byte[i2];
        int i3 = 0;
        while (true) {
            if (!this.f7600e || this.f7599d == null) {
                break;
            }
            try {
                iM9137u = C0953u.m7001z().m7028a0() ? m9137u(bArr, i + i3, i2 - i3) : this.f7597b > 1 ? mo6487g(bArr, i + i3, i2 - i3) : this.f7599d.read(bArr, i + i3, i2 - i3);
            } catch (Exception e) {
                C0982s.m7376f("AudioRecorder", "ReadAudioData:\n" + C0982s.m7377g(e));
            }
            if (iM9137u > 0) {
                i3 += iM9137u;
                if (i3 == i2) {
                    if (C0925p.f5887x) {
                        C0977n.m7323z(bArr, i, i2, "input_src.pcm", MyApplication.m5997b());
                    }
                    if (C0925p.f5861H) {
                        m9125b(bArr, i, i2);
                    }
                    if (C0925p.f5888y && C0925p.f5861H) {
                        C0977n.m7323z(bArr, i, i2, "input_aec.pcm", MyApplication.m5997b());
                    }
                    if (this.f7609n != 0) {
                        JniTools.amplifyPcmData(bArr, i, i2, this.f7609n);
                    }
                    return true;
                }
                if (i3 > i2) {
                    C0982s.m7375e("AudioRecorder,ReadAudioData: read over size: " + i3 + " > " + i2);
                    break;
                }
            } else if (iM9137u == -3) {
                C0982s.m7375e("AudioRecorder,ReadAudioData: read failed: the object isn't properly initialized.");
                m9132l(false);
            } else {
                C0982s.m7375e("AudioRecorder,ReadAudioData: read failed:" + iM9137u);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public int mo6487g(byte[] bArr, int i, int i2) {
        int iM7006E = C0953u.m7001z().m7006E();
        int i3 = 0;
        if (iM7006E >= this.f7597b) {
            iM7006E = 0;
        }
        int i4 = this.f7604i;
        byte[] bArr2 = new byte[i4];
        int i5 = this.f7599d.read(bArr2, 0, i4);
        if (i5 > 0) {
            if (C0925p.f5887x) {
                C0977n.m7323z(bArr2, 0, i5, "input2_16k_" + this.f7597b + ".pcm", MyApplication.m5997b());
            }
            while (true) {
                int i6 = this.f7597b;
                if (i3 >= i5 / i6) {
                    break;
                }
                bArr[i3 + i] = bArr2[((i3 / 2) * i6 * 2) + (iM7006E * 2) + (i3 % 2)];
                i3++;
            }
        }
        return i5 / this.f7597b;
    }

    /* JADX INFO: renamed from: h */
    public void m9128h(C1198a c1198a) {
        this.f7598c = c1198a;
        this.f7603h = AudioProcess.calculateBufferSize(c1198a.f7580a, 2, 1);
        int i = this.f7597b;
        if (i == 8) {
            this.f7598c.f7581b = 1020;
        } else if (i == 2) {
            this.f7598c.f7581b = 12;
        }
        this.f7604i = m9122m();
        C0982s.m7374d("AudioRecorder", "SetAudioRecordConfig: mBufSize=" + this.f7604i + ", " + c1198a.toString());
    }

    /* JADX INFO: renamed from: i */
    public void m9129i() {
        m9130j(true);
    }

    /* JADX INFO: renamed from: j */
    public void m9130j(boolean z) {
        C0982s.m7373c("AudioRecorder,StartAudioRecord: notice = " + z);
        if (this.f7598c != null) {
            m9132l(false);
            if (z) {
                C0991a.m7412t().mo7152p();
                C0982s.m7373c("AudioRecorder,StartAudioRecord: AUTO_BOX_MODE_REQUEST_MIC");
            }
            if (this.f7604i > 0) {
                C0982s.m7373c("AudioRecorder,StartAudioRecord: mBufSize = " + this.f7604i);
                try {
                    this.f7600e = mo6488s();
                    C0982s.m7373c("AudioRecorder,StartAudioRecord: notice=" + z + ", isRecording=" + this.f7600e);
                    if (this.f7600e && C0925p.f5861H) {
                        m9121d();
                    }
                } catch (Exception e) {
                    C0982s.m7375e("AudioRecorder,StartAudioRecord: " + e.getMessage() + "\n" + C0982s.m7377g(e));
                    C0733d.m5579O(1, 17);
                    this.f7599d = null;
                }
            }
            if (this.f7599d != null) {
                C0982s.m7374d("AudioRecorder", "StartAudioRecord: AudioSource=" + this.f7599d.getAudioSource() + ",ChannelCount=" + this.f7599d.getChannelCount());
                StringBuilder sb = new StringBuilder();
                sb.append("StartAudioRecord: SampleRate=");
                sb.append(this.f7599d.getSampleRate());
                C0982s.m7379i("AudioRecorder", sb.toString());
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public void m9131k() {
        m9132l(true);
    }

    /* JADX INFO: renamed from: l */
    protected void m9132l(boolean z) {
        C0982s.m7373c("AudioRecorder,StopAudioRecord: notice=" + z + ", isRecording=" + this.f7600e);
        if (this.f7600e) {
            if (z) {
                C0991a.m7412t().m7416D();
                C0982s.m7373c("AudioRecorder,StopAudioRecord: AUTO_BOX_MODE_RELEASE_MIC");
            }
            try {
                this.f7600e = false;
                this.f7599d.stop();
                this.f7599d.release();
                this.f7599d = null;
                if (C0925p.f5861H) {
                    m9120a();
                }
            } catch (Exception e) {
                C0982s.m7376f("AudioRecorder", "StopAudioRecord\n" + C0982s.m7377g(e));
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public int m9133n() {
        AudioRecord audioRecord = this.f7599d;
        if (audioRecord != null) {
            return audioRecord.getChannelCount();
        }
        return 1;
    }

    /* JADX INFO: renamed from: o */
    public boolean m9134o() {
        return this.f7600e;
    }

    /* JADX INFO: renamed from: q */
    public int m9135q() {
        AudioRecord audioRecord = this.f7599d;
        if (audioRecord == null) {
            return 0;
        }
        return audioRecord.getRecordingState();
    }

    /* JADX INFO: renamed from: r */
    protected void m9136r(int i) {
        AudioFormat audioFormatBuild = new AudioFormat.Builder().setEncoding(this.f7598c.f7582c).setSampleRate(this.f7598c.f7580a).setChannelIndexMask(i).build();
        this.f7597b = audioFormatBuild.getChannelCount();
        this.f7604i = m9122m();
        C0982s.m7379i("AudioRecorder", "initMultiChannelRecorder: " + String.format(Locale.getDefault(), "ChannelCount=%d, channelIndexMask=%d(0x%02x), BufSize=%d, audioSource=%d", Integer.valueOf(this.f7597b), Integer.valueOf(i), Integer.valueOf(i), Integer.valueOf(this.f7604i), Integer.valueOf(this.f7610o)));
        try {
            this.f7599d = new AudioRecord.Builder().setAudioFormat(audioFormatBuild).setAudioSource(this.f7610o).setBufferSizeInBytes(this.f7604i).build();
        } catch (Exception e) {
            this.f7599d = null;
            C0982s.m7376f("AudioRecorder", "initMultiChannelRecorder:\n" + C0982s.m7377g(e));
        }
    }

    /* JADX INFO: renamed from: s */
    protected boolean mo6488s() {
        if (C0953u.m7001z().m7028a0()) {
            C0982s.m7373c("AudioRecorder,initRecorder: use 48K record");
            int i = this.f7610o;
            C1198a c1198a = this.f7598c;
            this.f7599d = new AudioRecord(i, 48000, c1198a.f7581b, c1198a.f7582c, (48000 / c1198a.f7580a) * this.f7604i);
        } else {
            int iM6091m = C0795b0.m6071i().m6091m("RecordChannel", C0953u.m7001z().m7005D());
            C0982s.m7374d("AudioRecorder", "initRecorder: indexMask=" + iM6091m);
            if (Build.VERSION.SDK_INT < 23 || iM6091m <= 0 || iM6091m == 16) {
                int i2 = this.f7610o;
                C1198a c1198a2 = this.f7598c;
                this.f7599d = new AudioRecord(i2, c1198a2.f7580a, c1198a2.f7581b, c1198a2.f7582c, this.f7604i);
            } else {
                m9136r(iM6091m);
            }
        }
        AudioRecord audioRecord = this.f7599d;
        if (audioRecord == null) {
            C0982s.m7376f("AudioRecorder", "initRecorder: mRecorder == null");
            return false;
        }
        if (audioRecord.getState() != 1) {
            C0733d.m5580P(1, 26, 0);
            return false;
        }
        this.f7599d.startRecording();
        if (this.f7599d.getRecordingState() != 3) {
            C0733d.m5580P(1, 26, 1);
        } else {
            C0733d.m5579O(1, 27);
        }
        C0982s.m7379i("AudioRecorder", "initRecorder: AudioSource=" + this.f7599d.getAudioSource() + "," + this.f7610o);
        StringBuilder sb = new StringBuilder();
        sb.append("initRecorder: ChannelCount=");
        sb.append(this.f7599d.getChannelCount());
        C0982s.m7379i("AudioRecorder", sb.toString());
        return true;
    }

    /* JADX INFO: renamed from: u */
    protected int m9137u(byte[] bArr, int i, int i2) {
        int i3 = (i2 * 48000) / this.f7598c.f7580a;
        byte[] bArr2 = new byte[i3];
        int i4 = this.f7599d.read(bArr2, 0, i3);
        if (i4 <= 0) {
            return i4;
        }
        if (C0925p.f5887x) {
            C0977n.m7323z(bArr2, 0, i4, "input2_48k_1.pcm", MyApplication.m5997b());
        }
        int i5 = (this.f7598c.f7580a * i4) / 48000;
        m9124t(bArr2, 0, i4, bArr, i, i5);
        return i5;
    }

    /* JADX INFO: renamed from: v */
    public void m9138v(int i) {
        this.f7610o = i;
    }

    /* JADX INFO: renamed from: w */
    public void m9139w(int i) {
        this.f7609n = i;
        C0982s.m7373c("AudioRecorder,setMicGain: gain = " + i + "db");
    }

    public C1200c(int i) {
        this.f7596a = new C0972i();
        this.f7597b = 1;
        this.f7600e = false;
        this.f7601f = false;
        this.f7603h = 320;
        this.f7605j = 0;
        this.f7609n = 0;
        this.f7610o = i;
    }
}
