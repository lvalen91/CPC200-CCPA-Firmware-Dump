package cn.manstep.phonemirrorBox.p076j0;

import android.media.AudioRecord;
import android.os.Build;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;
import p093d.p097b.p098a.C1198a;
import p093d.p097b.p098a.C1200c;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.j0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0880a extends C1200c {

    /* JADX INFO: renamed from: p */
    private a f5483p;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.j0.a$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public int f5484a = 16000;

        /* JADX INFO: renamed from: b */
        public int f5485b = 0;

        /* JADX INFO: renamed from: c */
        public int f5486c = 15;

        /* JADX INFO: renamed from: d */
        public String f5487d = BuildConfig.FLAVOR;

        public String toString() {
            return "DebugParams{rate=" + this.f5484a + ", type=" + this.f5485b + ", index=" + this.f5486c + ", name='" + this.f5487d + "'}";
        }
    }

    public C0880a(int i, a aVar) {
        super(i);
        this.f5483p = aVar;
    }

    @Override // p093d.p097b.p098a.C1200c
    /* JADX INFO: renamed from: f */
    public boolean mo6486f(byte[] bArr, int i, int i2) {
        AudioRecord audioRecord;
        int i3;
        int i4 = 0;
        while (true) {
            if (!this.f7600e || (audioRecord = this.f7599d) == null) {
                break;
            }
            try {
                i3 = audioRecord.read(bArr, i + i4, i2 - i4);
            } catch (Exception e) {
                C0982s.m7376f("AudioRecordDebug", "ReadAudioData:\n" + C0982s.m7377g(e));
            }
            if (i3 > 0) {
                i4 += i3;
                if (i4 == i2) {
                    C0977n.m7323z(bArr, i, i2, this.f5483p.f5487d, MyApplication.m5997b());
                    return true;
                }
                if (i4 > i2) {
                    C0982s.m7375e("AudioRecordDebug,ReadAudioData: read over size: " + i4 + " > " + i2);
                    break;
                }
            } else if (i3 == -3) {
                C0982s.m7375e("AudioRecordDebug,ReadAudioData: read failed: the object isn't properly initialized.");
                m9132l(false);
            } else {
                C0982s.m7375e("AudioRecordDebug,ReadAudioData: read failed:" + i3);
            }
        }
        return false;
    }

    @Override // p093d.p097b.p098a.C1200c
    /* JADX INFO: renamed from: g */
    public int mo6487g(byte[] bArr, int i, int i2) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // p093d.p097b.p098a.C1200c
    /* JADX INFO: renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean mo6488s() {
        if (Build.VERSION.SDK_INT >= 23) {
            a aVar = this.f5483p;
            if (aVar.f5485b == 3) {
                m9136r(aVar.f5486c);
            } else {
                int i = this.f7610o;
                C1198a c1198a = this.f7598c;
                this.f7599d = new AudioRecord(i, c1198a.f7580a, c1198a.f7581b, c1198a.f7582c, this.f7604i);
            }
        }
        AudioRecord audioRecord = this.f7599d;
        if (audioRecord == null) {
            C0982s.m7376f("AudioRecordDebug", "initRecorder: mRecorder == null");
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
        C0982s.m7379i("AudioRecordDebug", "initRecorder: AudioSource=" + this.f7599d.getAudioSource() + "," + this.f7610o);
        StringBuilder sb = new StringBuilder();
        sb.append("initRecorder: ChannelCount=");
        sb.append(this.f7599d.getChannelCount());
        C0982s.m7379i("AudioRecordDebug", sb.toString());
        return true;
    }

    /* JADX INFO: renamed from: x */
    public boolean m6489x() {
        return this.f7599d == null;
    }

    /* JADX INFO: renamed from: y */
    public void m6490y(a aVar) {
        this.f5483p = aVar;
    }
}
