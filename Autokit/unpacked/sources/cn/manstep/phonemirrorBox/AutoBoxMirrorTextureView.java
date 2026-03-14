package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.ViewGroup;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0734e;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.p090w0.C0998b;
import cn.manstep.phonemirrorBox.util.C0973j;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0987x;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoBoxMirrorTextureView extends TextureView implements C0733d.g, TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: j */
    private static int f4240j;

    /* JADX INFO: renamed from: k */
    private static int f4241k;

    /* JADX INFO: renamed from: l */
    private static SurfaceTexture f4242l;

    /* JADX INFO: renamed from: m */
    private static SurfaceTexture f4243m;

    /* JADX INFO: renamed from: n */
    private static Surface f4244n;

    /* JADX INFO: renamed from: b */
    private WeakReference<C0733d> f4245b;

    /* JADX INFO: renamed from: c */
    private boolean f4246c;

    /* JADX INFO: renamed from: d */
    private boolean f4247d;

    /* JADX INFO: renamed from: e */
    private C0998b f4248e;

    /* JADX INFO: renamed from: f */
    private boolean f4249f;

    /* JADX INFO: renamed from: g */
    private C0854i f4250g;

    /* JADX INFO: renamed from: h */
    private int f4251h;

    /* JADX INFO: renamed from: i */
    private boolean f4252i;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoBoxMirrorTextureView$a */
    class RunnableC0713a implements Runnable {
        RunnableC0713a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AutoBoxMirrorTextureView.this.f4251h < 2) {
                if (C0733d.f4428l != null && C0735f.f4458O) {
                    C0733d.f4428l.m5706X0();
                }
                AutoBoxMirrorTextureView.this.f4251h = 4;
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoBoxMirrorTextureView$b */
    class RunnableC0714b implements Runnable {
        RunnableC0714b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0925p.f5870g) {
                return;
            }
            AutoBoxMirrorTextureView.this.m5338b(AutoBoxMirrorTextureView.f4240j, AutoBoxMirrorTextureView.f4241k);
        }
    }

    public AutoBoxMirrorTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4246c = true;
        this.f4247d = false;
        this.f4249f = false;
        this.f4251h = 0;
        this.f4252i = false;
        m5335j();
    }

    public static Surface getSurface() {
        C0982s.m7374d("AutoBoxMirrorTextureView", "getSurface: surface=" + f4244n);
        return f4244n;
    }

    /* JADX INFO: renamed from: i */
    private void m5334i() {
        C0733d c0733d;
        C0982s.m7375e("AutoBoxMirrorTextureView,destroy: ######");
        f4244n = null;
        f4243m = null;
        WeakReference<C0733d> weakReference = this.f4245b;
        if (weakReference == null || (c0733d = weakReference.get()) == null) {
            return;
        }
        c0733d.m5613U();
    }

    /* JADX INFO: renamed from: j */
    private void m5335j() {
        C0879j.m6485c(this);
        boolean zM6093o = C0795b0.m6071i().m6093o("UseOpenGLRender", false);
        this.f4247d = zM6093o;
        if (zM6093o) {
            this.f4248e = new C0998b();
        }
        setSurfaceTextureListener(this);
        this.f4250g = new C0854i(this);
    }

    /* JADX INFO: renamed from: k */
    private void m5336k(int i, int i2) {
        C0854i c0854i = this.f4250g;
        if (c0854i.f5017e <= 0 || c0854i.f5018f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = C0925p.f5874k;
            i2 = C0925p.f5875l;
        }
        int i3 = i;
        int i4 = i2;
        C0982s.m7373c("AutoBoxMirrorTextureView,onRotationChanged: Screen:" + i3 + "x" + i4 + ", Video:" + this.f4250g.f5017e + "x" + this.f4250g.f5018f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!C0733d.m5600u()) {
            Context context = getContext();
            C0854i c0854i2 = this.f4250g;
            C0879j.m6483a(context, layoutParams, i3, i4, c0854i2.f5017e, c0854i2.f5018f);
            setLayoutParams(layoutParams);
        }
        C0982s.m7373c("AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
    }

    /* JADX INFO: renamed from: m */
    public static void m5337m(int i, int i2) {
        f4240j = i;
        f4241k = i2;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i, Object obj) {
        if (i != 501) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorTextureView,on_Box_Phase: ");
        C0987x c0987x = (C0987x) obj;
        sb.append(c0987x.toString());
        C0982s.m7373c(sb.toString());
        m5342q(c0987x.f6158b, c0987x.f6159c);
    }

    /* JADX INFO: renamed from: b */
    public void m5338b(int i, int i2) {
        C0982s.m7374d("AutoBoxMirrorTextureView", "ReSizeView: Screen:" + i + "x" + i2);
        if (getSurface() == null || !getSurface().isValid()) {
            return;
        }
        C0854i c0854i = this.f4250g;
        if (c0854i.f5017e <= 0 || c0854i.f5018f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = C0925p.f5874k;
            i2 = C0925p.f5875l;
        }
        this.f4249f = false;
        C0982s.m7373c("AutoBoxMirrorTextureView,ReSizeView: Screen:" + i + "x" + i2 + ", Video:" + this.f4250g.f5017e + "x" + this.f4250g.f5018f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.f4252i) {
            if (!C0733d.m5600u()) {
                Context context = getContext();
                C0854i c0854i2 = this.f4250g;
                C0879j.m6484b(context, layoutParams, i, i2, c0854i2.f5017e, c0854i2.f5018f);
                setLayoutParams(layoutParams);
            }
            this.f4252i = false;
        }
        if (C0733d.m5600u()) {
            this.f4250g.m6347c(this, i, i2);
        }
        C0982s.m7373c("AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
        new Handler().postDelayed(new RunnableC0713a(), 3000L);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i) {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0012  */
    /* JADX INFO: renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m5339d() {
        if (f4240j == 0 || f4241k == 0) {
            m5337m(getWidth(), getHeight());
            this.f4246c = true;
        } else {
            C0854i c0854i = this.f4250g;
            if (c0854i.f5013a == 0 || c0854i.f5014b == 0) {
            }
        }
        if (this.f4246c) {
            int width = getWidth();
            int height = getHeight();
            C0982s.m7373c("AutoBoxMirrorTextureView,RecaculateScaleWH: " + width + "x" + height + ", " + f4240j + "x" + f4241k);
            if (width <= 0) {
                width = f4240j;
            }
            if (height <= 0) {
                height = f4241k;
            }
            C0982s.m7373c("AutoBoxMirrorTextureView,RecaculateScaleWH: " + width + "," + height);
            C0854i c0854i2 = this.f4250g;
            c0854i2.f5013a = width;
            c0854i2.f5014b = height;
            c0854i2.f5015c = 0;
            c0854i2.f5016d = 0;
            this.f4246c = false;
        }
    }

    /* JADX INFO: renamed from: l */
    public void m5340l() {
        C0733d c0733d;
        f4243m = null;
        this.f4249f = true;
        Surface surface = f4244n;
        if (surface != null) {
            surface.release();
            f4244n = null;
        }
        WeakReference<C0733d> weakReference = this.f4245b;
        if (weakReference == null || (c0733d = weakReference.get()) == null) {
            return;
        }
        c0733d.m5611S(null, true);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
        this.f4245b = new WeakReference<>(c0733d);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i) {
        if (!C0925p.f5872i) {
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
                if (i == 15) {
                    C0973j.m7257c().m7260e("ReSizeView", 100L, new RunnableC0714b());
                    return;
                } else {
                    if (i != 500) {
                        return;
                    }
                    this.f4252i = true;
                    m5338b(f4240j, f4241k);
                    return;
                }
            }
        }
        C0982s.m7373c("AutoBoxMirrorTextureView,on_Box_Phase: PLUG_OUT = " + i);
        this.f4249f = true;
        setVisibility(4);
        if (!C0925p.f5870g) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
        }
        C0824f.m6206g(false);
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        C0733d c0733dM7440M = C0995e.m7440M(this);
        C0982s.m7373c("AutoBoxMirrorTextureView onAttachedToWindow & boxInterface=" + c0733dM7440M);
        this.f4245b = new WeakReference<>(c0733dM7440M);
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != AutoBoxMirrorView.getOrientation()) {
            m5336k(f4240j, f4241k);
        } else {
            this.f4252i = true;
            m5338b(f4240j, f4241k);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        C0982s.m7373c("AutoBoxMirrorTextureView onDetachedFromWindow");
        this.f4245b = null;
        C0995e.m7446S(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        m5337m(i, i2);
        C0982s.m7375e("AutoBoxMirrorTextureView,onSurfaceTextureAvailable: touch set size=" + i + "x" + i2);
        this.f4246c = true;
        SurfaceTexture surfaceTexture2 = f4243m;
        if (surfaceTexture2 != null) {
            setSurfaceTexture(surfaceTexture2);
            if (this.f4247d) {
                f4244n = new Surface(f4242l);
                return;
            } else {
                f4244n = new Surface(f4243m);
                return;
            }
        }
        if (C0733d.m5600u()) {
            setX(CropImageView.DEFAULT_ASPECT_RATIO);
            setY(CropImageView.DEFAULT_ASPECT_RATIO);
            setLeft(0);
            setTop(0);
            this.f4250g.m6347c(this, i, i2);
        }
        if (this.f4247d) {
            this.f4248e.m7478e(this, getContext());
            f4242l = this.f4248e.m7479g();
            f4244n = new Surface(f4242l);
        } else {
            f4244n = new Surface(surfaceTexture);
        }
        C0733d c0733d = this.f4245b.get();
        if (c0733d != null) {
            C0982s.m7374d("AutoBoxMirrorTextureView", "onSurfaceTextureAvailable: surface=" + f4244n);
            c0733d.m5611S(null, true);
        }
        C0998b c0998b = this.f4248e;
        if (c0998b != null) {
            c0998b.m7480h();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        C0982s.m7373c("AutoBoxMirrorTextureView,onSurfaceTextureDestroyed: SurfaceTexture=" + surfaceTexture + ", bPlugOut=" + this.f4249f);
        if (this.f4249f) {
            m5334i();
            return true;
        }
        f4243m = surfaceTexture;
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        C0733d c0733d = this.f4245b.get();
        if (c0733d == null) {
            return;
        }
        m5337m(i, i2);
        C0982s.m7375e("AutoBoxMirrorTextureView,onSurfaceTextureSizeChanged: touch set size=" + i + "x" + i2);
        this.f4246c = true;
        c0733d.m5612T(0, i, i2);
        C0998b c0998b = this.f4248e;
        if (c0998b != null) {
            c0998b.m7480h();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f4251h++;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (C0733d.m5598s() != null && C0733d.m5598s().mo6919a()) {
            m5339d();
            C0854i c0854i = this.f4250g;
            return C0734e.m5625b(motionEvent, c0854i.f5015c, c0854i.f5016d, c0854i.f5013a, c0854i.f5014b);
        }
        if (C0733d.m5598s() != null && C0733d.m5598s().mo6925g()) {
            if (!C0733d.m5600u()) {
                m5339d();
            }
            int x = ((int) motionEvent.getX()) - this.f4250g.f5015c;
            int y = (int) motionEvent.getY();
            C0854i c0854i2 = this.f4250g;
            int i = y - c0854i2.f5016d;
            int i2 = c0854i2.f5013a;
            int i3 = x > i2 ? 10000 : x > 0 ? (x * 10000) / i2 : 0;
            int i4 = this.f4250g.f5014b;
            int i5 = i <= i4 ? i > 0 ? (i * 10000) / i4 : 0 : 10000;
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                C0995e.m7439L(0, 0, i3, i5);
                this.f4250g.m6346b(i3, i5);
            } else if (action == 1) {
                this.f4250g.m6345a();
                C0995e.m7439L(2, 0, i3, i5);
                if (C0733d.f4428l.m5683J().mo6927i()) {
                    C0824f.m6201b(false);
                }
            } else {
                if (action != 2) {
                    return super.onTouchEvent(motionEvent);
                }
                this.f4250g.m6345a();
                C0995e.m7439L(1, 0, i3, i5);
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: p */
    public void m5341p(String str, int i) {
        C0998b c0998b = this.f4248e;
        if (c0998b != null) {
            c0998b.m7481i(str, i);
        }
    }

    /* JADX INFO: renamed from: q */
    public void m5342q(int i, int i2) {
        C0982s.m7373c("AutoBoxMirrorTextureView,setVideoWH: " + i + "x" + i2);
        C0854i c0854i = this.f4250g;
        c0854i.f5017e = i;
        c0854i.f5018f = i2;
        this.f4252i = true;
    }

    public void setUseGlRender(boolean z) {
        this.f4247d = z;
        if (z && this.f4248e == null) {
            this.f4248e = new C0998b();
        }
        m5340l();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
    }
}
