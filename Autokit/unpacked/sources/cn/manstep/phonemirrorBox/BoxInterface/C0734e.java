package cn.manstep.phonemirrorBox.BoxInterface;

import android.view.MotionEvent;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0734e {

    /* JADX INFO: renamed from: a */
    public float[] f4452a = new float[5];

    /* JADX INFO: renamed from: b */
    public float[] f4453b = new float[5];

    /* JADX INFO: renamed from: c */
    public int[] f4454c = new int[5];

    /* JADX INFO: renamed from: d */
    public int[] f4455d = new int[5];

    /* JADX INFO: renamed from: e */
    public int f4456e = 0;

    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001e  */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m5625b(MotionEvent motionEvent, int i, int i2, int i3, int i4) {
        C0734e c0734e = new C0734e();
        int actionMasked = motionEvent.getActionMasked();
        int i5 = 2;
        if (actionMasked == 0) {
            i5 = 1;
        } else if (actionMasked == 1) {
            i5 = 0;
        } else if (actionMasked != 2) {
            if (actionMasked != 5) {
            }
        }
        int pointerCount = motionEvent.getPointerCount();
        if (pointerCount > 5) {
            pointerCount = 5;
        }
        for (int i6 = 0; i6 < pointerCount; i6++) {
            int pointerId = motionEvent.getPointerId(i6);
            if (pointerId >= 5) {
                return true;
            }
            if ((motionEvent.getActionMasked() != 5 && motionEvent.getActionMasked() != 6) || pointerId == motionEvent.getPointerId(motionEvent.getActionIndex())) {
                int x = ((int) motionEvent.getX(i6)) - i;
                int y = ((int) motionEvent.getY(i6)) - i2;
                float f = CropImageView.DEFAULT_ASPECT_RATIO;
                float f2 = x > i3 ? 1.0f : x > 0 ? (x * 1.0f) / i3 : CropImageView.DEFAULT_ASPECT_RATIO;
                float f3 = y > i4 ? 1.0f : y > 0 ? (y * 1.0f) / i4 : CropImageView.DEFAULT_ASPECT_RATIO;
                if (f2 < CropImageView.DEFAULT_ASPECT_RATIO) {
                    f2 = CropImageView.DEFAULT_ASPECT_RATIO;
                } else if (f2 > 1.0f) {
                    f2 = 1.0f;
                }
                if (f3 >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    f = f3 > 1.0f ? 1.0f : f3;
                }
                float[] fArr = c0734e.f4452a;
                int i7 = c0734e.f4456e;
                fArr[i7] = f2;
                c0734e.f4453b[i7] = f;
                c0734e.f4454c[i7] = i5;
                c0734e.f4455d[i7] = pointerId;
                c0734e.f4456e = i7 + 1;
            }
        }
        C0995e.m7438K(c0734e);
        return true;
    }

    /* JADX INFO: renamed from: a */
    int m5626a() {
        return this.f4456e * 16;
    }

    /* JADX INFO: renamed from: c */
    void m5627c(ByteBuffer byteBuffer, int i) {
        for (int i2 = 0; i2 < this.f4456e; i2++) {
            int i3 = i2 * 16;
            byteBuffer.putFloat(i + 0 + i3, this.f4452a[i2]);
            byteBuffer.putFloat(i + 4 + i3, this.f4453b[i2]);
            byteBuffer.putInt(i + 8 + i3, this.f4454c[i2]);
            byteBuffer.putInt(i + 12 + i3, this.f4455d[i2]);
        }
    }
}
