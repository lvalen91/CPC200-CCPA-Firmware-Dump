package cn.manstep.phonemirrorBox.j0;

import android.media.AudioRecord;
import android.os.Build;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.util.n;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.BuildConfig;
import d.b.a.c;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class a extends c {
    private C0087a p;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.j0.a$a, reason: collision with other inner class name */
    public static class C0087a {
        public int a = 16000;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1674b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1675c = 15;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f1676d = BuildConfig.FLAVOR;

        public String toString() {
            return "DebugParams{rate=" + this.a + ", type=" + this.f1674b + ", index=" + this.f1675c + ", name='" + this.f1676d + "'}";
        }
    }

    public a(int i, C0087a c0087a) {
        super(i);
        this.p = c0087a;
    }

    @Override // d.b.a.c
    public boolean f(byte[] bArr, int i, int i2) {
        AudioRecord audioRecord;
        int i3;
        int i4 = 0;
        while (true) {
            if (!this.e || (audioRecord = this.f2280d) == null) {
                break;
            }
            try {
                i3 = audioRecord.read(bArr, i + i4, i2 - i4);
            } catch (Exception e) {
                s.f("AudioRecordDebug", "ReadAudioData:\n" + s.g(e));
            }
            if (i3 > 0) {
                i4 += i3;
                if (i4 == i2) {
                    n.z(bArr, i, i2, this.p.f1676d, MyApplication.b());
                    return true;
                }
                if (i4 > i2) {
                    s.e("AudioRecordDebug,ReadAudioData: read over size: " + i4 + " > " + i2);
                    break;
                }
            } else if (i3 == -3) {
                s.e("AudioRecordDebug,ReadAudioData: read failed: the object isn't properly initialized.");
                l(false);
            } else {
                s.e("AudioRecordDebug,ReadAudioData: read failed:" + i3);
            }
        }
        return false;
    }

    @Override // d.b.a.c
    public int g(byte[] bArr, int i, int i2) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // d.b.a.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean s() {
        if (Build.VERSION.SDK_INT >= 23) {
            C0087a c0087a = this.p;
            if (c0087a.f1674b == 3) {
                r(c0087a.f1675c);
            } else {
                int i = this.o;
                d.b.a.a aVar = this.f2279c;
                this.f2280d = new AudioRecord(i, aVar.a, aVar.f2272b, aVar.f2273c, this.i);
            }
        }
        AudioRecord audioRecord = this.f2280d;
        if (audioRecord == null) {
            s.f("AudioRecordDebug", "initRecorder: mRecorder == null");
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
        s.i("AudioRecordDebug", "initRecorder: AudioSource=" + this.f2280d.getAudioSource() + "," + this.o);
        StringBuilder sb = new StringBuilder();
        sb.append("initRecorder: ChannelCount=");
        sb.append(this.f2280d.getChannelCount());
        s.i("AudioRecordDebug", sb.toString());
        return true;
    }

    public boolean x() {
        return this.f2280d == null;
    }

    public void y(C0087a c0087a) {
        this.p = c0087a;
    }
}
