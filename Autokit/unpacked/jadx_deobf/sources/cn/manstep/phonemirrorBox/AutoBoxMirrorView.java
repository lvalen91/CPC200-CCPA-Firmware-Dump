package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0734e;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0987x;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoBoxMirrorView extends SurfaceView implements C0733d.g, SurfaceHolder.Callback {

    /* JADX INFO: renamed from: e */
    private static boolean f4255e = true;

    /* JADX INFO: renamed from: f */
    private static int f4256f;

    /* JADX INFO: renamed from: g */
    private static int f4257g;

    /* JADX INFO: renamed from: h */
    private static int f4258h;

    /* JADX INFO: renamed from: b */
    private WeakReference<C0733d> f4259b;

    /* JADX INFO: renamed from: c */
    private C0854i f4260c;

    /* JADX INFO: renamed from: d */
    private boolean f4261d;

    public AutoBoxMirrorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4261d = false;
        m5343e();
    }

    /* JADX INFO: renamed from: e */
    private void m5343e() {
        C0879j.m6485c(this);
        getHolder().addCallback(this);
        this.f4260c = new C0854i(this);
    }

    /* JADX INFO: renamed from: f */
    private void m5344f(int i, int i2) {
        C0854i c0854i = this.f4260c;
        if (c0854i.f5017e <= 0 || c0854i.f5018f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = C0925p.f5874k;
            i2 = C0925p.f5875l;
        }
        int i3 = i;
        int i4 = i2;
        C0982s.m7373c("AutoBoxMirrorView,onRotationChanged: Screen:" + i3 + "x" + i4 + ", Video:" + this.f4260c.f5017e + "x" + this.f4260c.f5018f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!C0733d.m5600u()) {
            Context context = getContext();
            C0854i c0854i2 = this.f4260c;
            C0879j.m6483a(context, layoutParams, i3, i4, c0854i2.f5017e, c0854i2.f5018f);
            setLayoutParams(layoutParams);
        }
        C0982s.m7373c("AutoBoxMirrorView,onRotationChanged: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
    }

    /* JADX INFO: renamed from: g */
    public static void m5345g(int i, int i2) {
        C0982s.m7373c("AutoBoxMirrorView,setDisplaySize: w=" + i + ", h=" + i2);
        f4256f = i;
        f4257g = i2;
        if (C0925p.f5872i) {
            AutoBoxMirrorTextureView.m5337m(i, i2);
        }
        if (C0925p.f5870g) {
            AutoBoxMirrorSoftView.m5326h(i, i2);
        }
    }

    public static int getOrientation() {
        return f4258h;
    }

    public static void setOrientation(int i) {
        f4258h = i;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i, Object obj) {
        if (i != 501) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorView,on_Box_Phase: ");
        C0987x c0987x = (C0987x) obj;
        sb.append(c0987x.toString());
        C0982s.m7373c(sb.toString());
        m5348h(c0987x.f6158b, c0987x.f6159c);
    }

    /* JADX INFO: renamed from: b */
    public void m5346b(int i, int i2) {
        C0854i c0854i = this.f4260c;
        if (c0854i.f5017e <= 0 || c0854i.f5018f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = C0925p.f5874k;
            i2 = C0925p.f5875l;
        }
        C0982s.m7373c("AutoBoxMirrorView,ReSizeView: Screen:" + i + "x" + i2 + ", Video:" + this.f4260c.f5017e + "x" + this.f4260c.f5018f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.f4261d) {
            if (!C0733d.m5600u()) {
                Context context = getContext();
                C0854i c0854i2 = this.f4260c;
                C0879j.m6484b(context, layoutParams, i, i2, c0854i2.f5017e, c0854i2.f5018f);
                setLayoutParams(layoutParams);
            }
            this.f4261d = false;
        }
        if (C0733d.m5600u()) {
            this.f4260c.m6347c(this, i, i2);
        }
        C0982s.m7373c("AutoBoxMirrorView,ReSizeView: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i) {
    }

    /* JADX INFO: renamed from: d */
    public void m5347d() {
        if (f4255e) {
            int width = getWidth();
            int height = getHeight();
            C0982s.m7373c("AutoBoxMirrorView,RecaculateScaleWH: " + width + "x" + height + ", " + f4256f + "x" + f4257g);
            if (width <= 0) {
                width = f4256f;
            }
            if (height <= 0) {
                height = f4257g;
            }
            C0982s.m7373c("AutoBoxMirrorView,RecaculateScaleWH: " + width + "," + height);
            C0854i c0854i = this.f4260c;
            c0854i.f5013a = width;
            c0854i.f5014b = height;
            c0854i.f5015c = 0;
            c0854i.f5016d = 0;
            f4255e = false;
        }
    }

    /* JADX INFO: renamed from: h */
    public void m5348h(int i, int i2) {
        C0982s.m7373c("AutoBoxMirrorView,setVideoWH: w=" + i + ", h=" + i2);
        C0854i c0854i = this.f4260c;
        c0854i.f5017e = i;
        c0854i.f5018f = i2;
        this.f4261d = true;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
        this.f4259b = new WeakReference<>(c0733d);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i) {
        if (C0925p.f5872i) {
            setVisibility(8);
            return;
        }
        if (i != 2) {
            if (i == 3) {
                if (C0925p.f5870g) {
                    setVisibility(4);
                } else {
                    setVisibility(0);
                }
                C0735f c0735f = C0733d.f4428l;
                if (c0735f == null || c0735f.m5683J() == null || !C0733d.f4428l.m5683J().mo6927i()) {
                    C0824f.m6206g(false);
                    return;
                } else {
                    C0824f.m6201b(false);
                    C0824f.m6206g(true);
                    return;
                }
            }
            if (i != 12) {
                if (i != 15) {
                    if (i != 500) {
                        return;
                    }
                    m5346b(f4256f, f4257g);
                    return;
                } else {
                    if (C0925p.f5870g) {
                        return;
                    }
                    m5346b(f4256f, f4257g);
                    return;
                }
            }
        }
        setVisibility(4);
        if (!C0925p.f5870g) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
        }
        C0824f.m6206g(false);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        C0733d c0733dM7440M = C0995e.m7440M(this);
        C0982s.m7373c("AutoBoxMirrorView,onAttachedToWindow: boxInterface=" + c0733dM7440M);
        this.f4259b = new WeakReference<>(c0733dM7440M);
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != getOrientation()) {
            m5344f(f4256f, f4257g);
        } else {
            this.f4261d = true;
            m5346b(f4256f, f4257g);
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        C0982s.m7373c("AutoBoxMirrorView,onDetachedFromWindow: #");
        this.f4259b = null;
        C0995e.m7446S(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (C0733d.m5598s() != null && C0733d.m5598s().mo6919a()) {
            m5347d();
            C0854i c0854i = this.f4260c;
            return C0734e.m5625b(motionEvent, c0854i.f5015c, c0854i.f5016d, c0854i.f5013a, c0854i.f5014b);
        }
        if (C0733d.m5598s() != null && C0733d.m5598s().mo6925g()) {
            if (!C0733d.m5600u()) {
                m5347d();
            }
            int x = ((int) motionEvent.getX()) - this.f4260c.f5015c;
            int y = (int) motionEvent.getY();
            C0854i c0854i2 = this.f4260c;
            int i = y - c0854i2.f5016d;
            int i2 = c0854i2.f5013a;
            int i3 = x > i2 ? 10000 : x > 0 ? (x * 10000) / i2 : 0;
            int i4 = this.f4260c.f5014b;
            int i5 = i <= i4 ? i > 0 ? (i * 10000) / i4 : 0 : 10000;
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.f4260c.m6346b(i3, i5);
                C0995e.m7439L(0, 0, i3, i5);
            } else if (action == 1) {
                this.f4260c.m6345a();
                C0995e.m7439L(2, 0, i3, i5);
                if (C0733d.f4428l.m5683J().mo6927i()) {
                    C0824f.m6201b(false);
                }
            } else if (action == 2) {
                this.f4260c.m6345a();
                C0995e.m7439L(1, 0, i3, i5);
            }
        }
        return true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        C0733d c0733d = this.f4259b.get();
        if (c0733d == null) {
            return;
        }
        f4256f = i2;
        f4257g = i3;
        C0982s.m7373c("AutoBoxMirrorView,surfaceChanged: touch set size=" + i2 + "x" + i3);
        f4255e = true;
        C0733d.m5603x();
        c0733d.m5612T(i, i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        C0733d c0733d = this.f4259b.get();
        if (c0733d == null) {
            return;
        }
        C0982s.m7373c("AutoBoxMirrorView,surfaceCreated: holder=" + surfaceHolder + " ii=" + c0733d);
        c0733d.m5611S(surfaceHolder, true);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        C0733d c0733d = this.f4259b.get();
        if (c0733d == null) {
            return;
        }
        c0733d.m5613U();
        C0982s.m7373c("AutoBoxMirrorView,surfaceDestroyed: holder=" + surfaceHolder);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
    }
}
