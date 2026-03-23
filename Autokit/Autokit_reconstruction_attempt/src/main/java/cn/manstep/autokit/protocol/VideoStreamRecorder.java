/**
 * VideoStreamRecorder.java
 * /* UNVERIFIED: purpose inferred from code analysis */
 *
 * Debug/diagnostic utility that records raw H.264 video stream data to files.
 * Writes NAL units with a 4-byte little-endian length prefix to a .h264 file,
 * and frame timestamps to a .ts text file. Has a 500MB size cap.
 *
 * Used when Config.bSaveVideo (p.f1806d) is enabled for debugging video decode issues.
 *
 * Original: BoxInterface/i.java
 */
package cn.manstep.autokit.protocol;

import android.media.MediaMuxer;
import android.os.Build;
import android.os.SystemClock;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.util.n;
import com.yalantis.ucrop.BuildConfig;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;

public class VideoStreamRecorder {
    private MediaMuxer mediaMuxer;                   /* was: field 'a' */
    private String h264FilePath = BuildConfig.FLAVOR; /* was: field 'f1475b' (renamed from 'b') */
    private long totalBytesWritten = 0;              /* was: field 'f1476c' (renamed from 'c') */
    private long lastTimestamp = 0;                  /* was: field 'f1477d' (renamed from 'd') */
    private String timestampFilePath = BuildConfig.FLAVOR; /* was: field 'e' */

    /**
     * Write a NAL unit to the recording file.
     * Prepends a 4-byte little-endian length, then writes the NAL data.
     * Also logs elapsed time deltas to the timestamp file.
     * Stops writing after 500 MB (524288000 bytes).
     *
     * was: method 'a(byte[], int, int)'
     */
    public void writeNalUnit(byte[] data, int offset, int length) {
        long newTotal = this.totalBytesWritten + ((long) (length + 4));
        this.totalBytesWritten = newTotal;
        if (newTotal < 524288000) { /* 500 MB cap */
            ByteBuffer lenBuffer = ByteBuffer.allocate(4);
            lenBuffer.order(ByteOrder.LITTLE_ENDIAN);
            lenBuffer.putInt(length);
            n.x(lenBuffer.array(), 0, 4, this.h264FilePath);
            n.x(data, offset, length, this.h264FilePath);
            long now = SystemClock.elapsedRealtime();
            n.y(String.format(Locale.getDefault(), "%d, %d\n",
                    Long.valueOf(now), Long.valueOf(now - this.lastTimestamp)).getBytes(),
                    this.timestampFilePath);
            this.lastTimestamp = now;
        }
    }

    /**
     * Begin a new recording session with the given video dimensions.
     * Creates output file paths based on resolution and timestamp.
     *
     * was: method 'b(int, int)'
     */
    public void startRecording(int width, int height) {
        this.totalBytesWritten = 0L;
        String basePath = n.s(MyApplication.b()).getAbsolutePath()
                + "/box_" + width + "x" + height + "_" + SystemClock.elapsedRealtime() + ".mp4";
        this.h264FilePath = basePath.replace(".mp4", ".h264");
        this.timestampFilePath = basePath.replace(".mp4", ".ts");
    }

    /**
     * Stop recording and release the MediaMuxer if active.
     *
     * was: method 'c()'
     */
    public void stopRecording() {
        MediaMuxer muxer;
        if (Build.VERSION.SDK_INT < 18 || (muxer = this.mediaMuxer) == null) {
            return;
        }
        muxer.stop();
        this.mediaMuxer.release();
        this.mediaMuxer = null;
    }
}
