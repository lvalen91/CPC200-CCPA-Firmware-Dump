package cn.manstep.phonemirrorBox.BoxInterface;

import android.media.MediaMuxer;
import android.os.Build;
import android.os.SystemClock;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.util.C0977n;
import com.yalantis.ucrop.BuildConfig;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0738i {

    /* JADX INFO: renamed from: a */
    private MediaMuxer f4540a;

    /* JADX INFO: renamed from: b */
    private String f4541b = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: c */
    private long f4542c = 0;

    /* JADX INFO: renamed from: d */
    private long f4543d = 0;

    /* JADX INFO: renamed from: e */
    private String f4544e = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: a */
    public void m5806a(byte[] bArr, int i, int i2) {
        long j = this.f4542c + ((long) (i2 + 4));
        this.f4542c = j;
        if (j < 524288000) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putInt(i2);
            C0977n.m7321x(byteBufferAllocate.array(), 0, 4, this.f4541b);
            C0977n.m7321x(bArr, i, i2, this.f4541b);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            C0977n.m7322y(String.format(Locale.getDefault(), "%d, %d\n", Long.valueOf(jElapsedRealtime), Long.valueOf(jElapsedRealtime - this.f4543d)).getBytes(), this.f4544e);
            this.f4543d = jElapsedRealtime;
        }
    }

    /* JADX INFO: renamed from: b */
    public void m5807b(int i, int i2) {
        this.f4542c = 0L;
        String str = C0977n.m7316s(MyApplication.m5997b()).getAbsolutePath() + "/box_" + i + "x" + i2 + "_" + SystemClock.elapsedRealtime() + ".mp4";
        this.f4541b = str.replace(".mp4", ".h264");
        this.f4544e = str.replace(".mp4", ".ts");
    }

    /* JADX INFO: renamed from: c */
    public void m5808c() {
        MediaMuxer mediaMuxer;
        if (Build.VERSION.SDK_INT < 18 || (mediaMuxer = this.f4540a) == null) {
            return;
        }
        mediaMuxer.stop();
        this.f4540a.release();
        this.f4540a = null;
    }
}
