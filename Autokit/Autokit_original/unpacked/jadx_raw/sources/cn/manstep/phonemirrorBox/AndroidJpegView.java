package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.ImageView;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AndroidJpegView extends ImageView implements d.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bitmap f1367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BitmapFactory.Options f1368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f1369d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (AndroidJpegView.this) {
                if (2 == message.what) {
                    AndroidJpegView.this.f1367b = Bitmap.createBitmap(AndroidJpegView.this.e, AndroidJpegView.this.f, Bitmap.Config.ARGB_8888);
                    AndroidJpegView.this.f1368c.inBitmap = AndroidJpegView.this.f1367b;
                    AndroidJpegView.this.f1368c.inSampleSize = 1;
                    AndroidJpegView.this.setImageBitmap(AndroidJpegView.this.f1367b);
                    AndroidJpegView.this.invalidate();
                    AndroidJpegView.this.b();
                    AndroidJpegView.this.notify();
                } else if (1 == message.what) {
                    if (AndroidJpegView.this.h == 0) {
                        AndroidJpegView.this.b();
                    }
                    AndroidJpegView.this.invalidate();
                }
            }
        }
    }

    public AndroidJpegView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1367b = null;
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.f1368c = options;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        options.inSampleSize = 1;
        this.f1369d = new a();
        cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView B");
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
    }

    public void b() {
        cn.manstep.phonemirrorBox.util.s.c("iv_W = " + getWidth() + ", iv_H = " + getHeight());
        int iWidth = getDrawable().getBounds().width();
        int iHeight = getDrawable().getBounds().height();
        cn.manstep.phonemirrorBox.util.s.c("drawable_X = " + iWidth + ", drawable_Y = " + iHeight);
        float[] fArr = new float[10];
        getImageMatrix().getValues(fArr);
        float f = fArr[0];
        float f2 = fArr[4];
        cn.manstep.phonemirrorBox.util.s.c("scale_X = " + f + ", scale_Y = " + f2);
        int i = (int) (((float) iWidth) * f);
        int i2 = (int) (((float) iHeight) * f2);
        cn.manstep.phonemirrorBox.util.s.c("caculate_W = " + i + ", caculate_H = " + i2);
        this.g = i;
        this.h = i2;
        this.i = (getWidth() - i) / 2;
        this.j = (getHeight() - i2) / 2;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView onAttachedToWindow");
        cn.manstep.phonemirrorBox.v0.e.M(this);
        super.onAttachedToWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView onDetachedFromWindow");
        this.f1367b = null;
        this.e = 0;
        this.f = 0;
        cn.manstep.phonemirrorBox.v0.e.S(this);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int x = ((int) motionEvent.getX()) - this.i;
        int y = ((int) motionEvent.getY()) - this.j;
        int i = this.g;
        int i2 = x > i ? 10000 : x > 0 ? (x * 10000) / i : 0;
        int y2 = y <= this.h ? y > 0 ? (((int) motionEvent.getY()) * 10000) / this.h : 0 : 10000;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            cn.manstep.phonemirrorBox.v0.e.L(0, 0, i2, y2);
        } else if (action == 1) {
            cn.manstep.phonemirrorBox.v0.e.L(2, 0, i2, y2);
            f.b(false);
        } else if (action == 2) {
            cn.manstep.phonemirrorBox.v0.e.L(1, 0, i2, y2);
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        int i = byteBufferWrap.getInt(4) - 36;
        int i2 = byteBufferWrap.getInt(8);
        int i3 = byteBufferWrap.getInt(12);
        int i4 = (byteBufferWrap.getInt(24) >> 16) & 255;
        if (i <= 0 || i2 <= 0 || i3 <= 0 || i2 > 2000 || i3 > 2000) {
            cn.manstep.phonemirrorBox.util.s.c("Error bytes:" + bArr.length + "W:" + i2 + "H:" + i3 + "jpegsize:" + i);
            return;
        }
        this.e = i2;
        this.f = i3;
        Bitmap bitmap = this.f1367b;
        boolean z = (bitmap != null && bitmap.getWidth() == this.e && this.f1367b.getHeight() == this.f) ? false : true;
        synchronized (this) {
            if (z) {
                try {
                    this.f1369d.sendMessage(this.f1369d.obtainMessage(2));
                    try {
                        cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView wait start w:" + this.e + " h:" + this.f);
                        wait();
                        StringBuilder sb = new StringBuilder();
                        sb.append("AndroidJpegView wait over:");
                        sb.append(this.f1367b);
                        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (i4 != 2) {
                if (this.h == 0) {
                    cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView need RecaculateScaleWH");
                    this.f1369d.sendMessage(this.f1369d.obtainMessage(1));
                }
            } else {
                try {
                    this.f1367b = BitmapFactory.decodeByteArray(byteBufferWrap.array(), 32, i, this.f1368c);
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                    cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e2));
                }
                this.f1369d.sendMessage(this.f1369d.obtainMessage(1));
            }
        }
    }
}
