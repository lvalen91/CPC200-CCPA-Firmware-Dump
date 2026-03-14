package cn.manstep.phonemirrorBox.BoxInterface;

import android.media.MediaMuxer;
import android.os.Build;
import android.os.SystemClock;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.util.n;
import com.yalantis.ucrop.BuildConfig;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class i {
    private MediaMuxer a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1475b = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f1476c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1477d = 0;
    private String e = BuildConfig.FLAVOR;

    public void a(byte[] bArr, int i, int i2) {
        long j = this.f1476c + ((long) (i2 + 4));
        this.f1476c = j;
        if (j < 524288000) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putInt(i2);
            n.x(byteBufferAllocate.array(), 0, 4, this.f1475b);
            n.x(bArr, i, i2, this.f1475b);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            n.y(String.format(Locale.getDefault(), "%d, %d\n", Long.valueOf(jElapsedRealtime), Long.valueOf(jElapsedRealtime - this.f1477d)).getBytes(), this.e);
            this.f1477d = jElapsedRealtime;
        }
    }

    public void b(int i, int i2) {
        this.f1476c = 0L;
        String str = n.s(MyApplication.b()).getAbsolutePath() + "/box_" + i + "x" + i2 + "_" + SystemClock.elapsedRealtime() + ".mp4";
        this.f1475b = str.replace(".mp4", ".h264");
        this.e = str.replace(".mp4", ".ts");
    }

    public void c() {
        MediaMuxer mediaMuxer;
        if (Build.VERSION.SDK_INT < 18 || (mediaMuxer = this.a) == null) {
            return;
        }
        mediaMuxer.stop();
        this.a.release();
        this.a = null;
    }
}
