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
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AndroidJpegView extends ImageView implements C0733d.g {

    /* JADX INFO: renamed from: b */
    private Bitmap f4205b;

    /* JADX INFO: renamed from: c */
    private BitmapFactory.Options f4206c;

    /* JADX INFO: renamed from: d */
    private Handler f4207d;

    /* JADX INFO: renamed from: e */
    private int f4208e;

    /* JADX INFO: renamed from: f */
    private int f4209f;

    /* JADX INFO: renamed from: g */
    private int f4210g;

    /* JADX INFO: renamed from: h */
    private int f4211h;

    /* JADX INFO: renamed from: i */
    private int f4212i;

    /* JADX INFO: renamed from: j */
    private int f4213j;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AndroidJpegView$a */
    class HandlerC0706a extends Handler {
        HandlerC0706a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (AndroidJpegView.this) {
                if (2 == message.what) {
                    AndroidJpegView.this.f4205b = Bitmap.createBitmap(AndroidJpegView.this.f4208e, AndroidJpegView.this.f4209f, Bitmap.Config.ARGB_8888);
                    AndroidJpegView.this.f4206c.inBitmap = AndroidJpegView.this.f4205b;
                    AndroidJpegView.this.f4206c.inSampleSize = 1;
                    AndroidJpegView.this.setImageBitmap(AndroidJpegView.this.f4205b);
                    AndroidJpegView.this.invalidate();
                    AndroidJpegView.this.m5311b();
                    AndroidJpegView.this.notify();
                } else if (1 == message.what) {
                    if (AndroidJpegView.this.f4211h == 0) {
                        AndroidJpegView.this.m5311b();
                    }
                    AndroidJpegView.this.invalidate();
                }
            }
        }
    }

    public AndroidJpegView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4205b = null;
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.f4206c = options;
        this.f4208e = 0;
        this.f4209f = 0;
        this.f4210g = 0;
        this.f4211h = 0;
        this.f4212i = 0;
        this.f4213j = 0;
        options.inSampleSize = 1;
        this.f4207d = new HandlerC0706a();
        C0982s.m7373c("AndroidJpegView B");
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i, Object obj) {
    }

    /* JADX INFO: renamed from: b */
    public void m5311b() {
        C0982s.m7373c("iv_W = " + getWidth() + ", iv_H = " + getHeight());
        int iWidth = getDrawable().getBounds().width();
        int iHeight = getDrawable().getBounds().height();
        C0982s.m7373c("drawable_X = " + iWidth + ", drawable_Y = " + iHeight);
        float[] fArr = new float[10];
        getImageMatrix().getValues(fArr);
        float f = fArr[0];
        float f2 = fArr[4];
        C0982s.m7373c("scale_X = " + f + ", scale_Y = " + f2);
        int i = (int) (((float) iWidth) * f);
        int i2 = (int) (((float) iHeight) * f2);
        C0982s.m7373c("caculate_W = " + i + ", caculate_H = " + i2);
        this.f4210g = i;
        this.f4211h = i2;
        this.f4212i = (getWidth() - i) / 2;
        this.f4213j = (getHeight() - i2) / 2;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i) {
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        C0982s.m7373c("AndroidJpegView onAttachedToWindow");
        C0995e.m7440M(this);
        super.onAttachedToWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        C0982s.m7373c("AndroidJpegView onDetachedFromWindow");
        this.f4205b = null;
        this.f4208e = 0;
        this.f4209f = 0;
        C0995e.m7446S(this);
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
        int x = ((int) motionEvent.getX()) - this.f4212i;
        int y = ((int) motionEvent.getY()) - this.f4213j;
        int i = this.f4210g;
        int i2 = x > i ? 10000 : x > 0 ? (x * 10000) / i : 0;
        int y2 = y <= this.f4211h ? y > 0 ? (((int) motionEvent.getY()) * 10000) / this.f4211h : 0 : 10000;
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            C0995e.m7439L(0, 0, i2, y2);
        } else if (action == 1) {
            C0995e.m7439L(2, 0, i2, y2);
            C0824f.m6201b(false);
        } else if (action == 2) {
            C0995e.m7439L(1, 0, i2, y2);
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        int i = byteBufferWrap.getInt(4) - 36;
        int i2 = byteBufferWrap.getInt(8);
        int i3 = byteBufferWrap.getInt(12);
        int i4 = (byteBufferWrap.getInt(24) >> 16) & 255;
        if (i <= 0 || i2 <= 0 || i3 <= 0 || i2 > 2000 || i3 > 2000) {
            C0982s.m7373c("Error bytes:" + bArr.length + "W:" + i2 + "H:" + i3 + "jpegsize:" + i);
            return;
        }
        this.f4208e = i2;
        this.f4209f = i3;
        Bitmap bitmap = this.f4205b;
        boolean z = (bitmap != null && bitmap.getWidth() == this.f4208e && this.f4205b.getHeight() == this.f4209f) ? false : true;
        synchronized (this) {
            if (z) {
                try {
                    this.f4207d.sendMessage(this.f4207d.obtainMessage(2));
                    try {
                        C0982s.m7373c("AndroidJpegView wait start w:" + this.f4208e + " h:" + this.f4209f);
                        wait();
                        StringBuilder sb = new StringBuilder();
                        sb.append("AndroidJpegView wait over:");
                        sb.append(this.f4205b);
                        C0982s.m7373c(sb.toString());
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        C0982s.m7375e(Log.getStackTraceString(e));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (i4 != 2) {
                if (this.f4211h == 0) {
                    C0982s.m7373c("AndroidJpegView need RecaculateScaleWH");
                    this.f4207d.sendMessage(this.f4207d.obtainMessage(1));
                }
            } else {
                try {
                    this.f4205b = BitmapFactory.decodeByteArray(byteBufferWrap.array(), 32, i, this.f4206c);
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                    C0982s.m7375e(Log.getStackTraceString(e2));
                }
                this.f4207d.sendMessage(this.f4207d.obtainMessage(1));
            }
        }
    }
}
