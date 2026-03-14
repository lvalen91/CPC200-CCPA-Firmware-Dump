package cn.manstep.phonemirrorBox.BoxInterface;

import android.view.MotionEvent;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class e {
    public float[] a = new float[5];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float[] f1445b = new float[5];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f1446c = new int[5];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f1447d = new int[5];
    public int e = 0;

    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean b(MotionEvent motionEvent, int i, int i2, int i3, int i4) {
        e eVar = new e();
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
                float[] fArr = eVar.a;
                int i7 = eVar.e;
                fArr[i7] = f2;
                eVar.f1445b[i7] = f;
                eVar.f1446c[i7] = i5;
                eVar.f1447d[i7] = pointerId;
                eVar.e = i7 + 1;
            }
        }
        cn.manstep.phonemirrorBox.v0.e.K(eVar);
        return true;
    }

    int a() {
        return this.e * 16;
    }

    void c(ByteBuffer byteBuffer, int i) {
        for (int i2 = 0; i2 < this.e; i2++) {
            int i3 = i2 * 16;
            byteBuffer.putFloat(i + 0 + i3, this.a[i2]);
            byteBuffer.putFloat(i + 4 + i3, this.f1445b[i2]);
            byteBuffer.putInt(i + 8 + i3, this.f1446c[i2]);
            byteBuffer.putInt(i + 12 + i3, this.f1447d[i2]);
        }
    }
}
