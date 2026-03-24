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
import cn.manstep.phonemirrorBox.BoxInterface.d;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class AutoBoxMirrorTextureView extends TextureView implements d.g, TextureView.SurfaceTextureListener {
    private static int j;
    private static int k;
    private static SurfaceTexture l;
    private static SurfaceTexture m;
    private static Surface n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<d> f1381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1382c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1383d;
    private cn.manstep.phonemirrorBox.w0.b e;
    private boolean f;
    private i g;
    private int h;
    private boolean i;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AutoBoxMirrorTextureView.this.h < 2) {
                if (d.l != null && cn.manstep.phonemirrorBox.BoxInterface.f.O) {
                    d.l.X0();
                }
                AutoBoxMirrorTextureView.this.h = 4;
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (p.g) {
                return;
            }
            AutoBoxMirrorTextureView.this.b(AutoBoxMirrorTextureView.j, AutoBoxMirrorTextureView.k);
        }
    }

    public AutoBoxMirrorTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1382c = true;
        this.f1383d = false;
        this.f = false;
        this.h = 0;
        this.i = false;
        j();
    }

    public static Surface getSurface() {
        cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorTextureView", "getSurface: surface=" + n);
        return n;
    }

    private void i() {
        d dVar;
        cn.manstep.phonemirrorBox.util.s.e("AutoBoxMirrorTextureView,destroy: ######");
        n = null;
        m = null;
        WeakReference<d> weakReference = this.f1381b;
        if (weakReference == null || (dVar = weakReference.get()) == null) {
            return;
        }
        dVar.U();
    }

    private void j() {
        j.c(this);
        boolean zO = b0.i().o("UseOpenGLRender", false);
        this.f1383d = zO;
        if (zO) {
            this.e = new cn.manstep.phonemirrorBox.w0.b();
        }
        setSurfaceTextureListener(this);
        this.g = new i(this);
    }

    private void k(int i, int i2) {
        i iVar = this.g;
        if (iVar.e <= 0 || iVar.f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = p.k;
            i2 = p.l;
        }
        int i3 = i;
        int i4 = i2;
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,onRotationChanged: Screen:" + i3 + "x" + i4 + ", Video:" + this.g.e + "x" + this.g.f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!d.u()) {
            Context context = getContext();
            i iVar2 = this.g;
            j.a(context, layoutParams, i3, i4, iVar2.e, iVar2.f);
            setLayoutParams(layoutParams);
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
    }

    public static void m(int i, int i2) {
        j = i;
        k = i2;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
        if (i != 501) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorTextureView,on_Box_Phase: ");
        cn.manstep.phonemirrorBox.util.x xVar = (cn.manstep.phonemirrorBox.util.x) obj;
        sb.append(xVar.toString());
        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
        q(xVar.f1934b, xVar.f1935c);
    }

    public void b(int i, int i2) {
        cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorTextureView", "ReSizeView: Screen:" + i + "x" + i2);
        if (getSurface() == null || !getSurface().isValid()) {
            return;
        }
        i iVar = this.g;
        if (iVar.e <= 0 || iVar.f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = p.k;
            i2 = p.l;
        }
        this.f = false;
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,ReSizeView: Screen:" + i + "x" + i2 + ", Video:" + this.g.e + "x" + this.g.f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.i) {
            if (!d.u()) {
                Context context = getContext();
                i iVar2 = this.g;
                j.b(context, layoutParams, i, i2, iVar2.e, iVar2.f);
                setLayoutParams(layoutParams);
            }
            this.i = false;
        }
        if (d.u()) {
            this.g.c(this, i, i2);
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
        new Handler().postDelayed(new a(), 3000L);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d() {
        if (j == 0 || k == 0) {
            m(getWidth(), getHeight());
            this.f1382c = true;
        } else {
            i iVar = this.g;
            if (iVar.a == 0 || iVar.f1667b == 0) {
            }
        }
        if (this.f1382c) {
            int width = getWidth();
            int height = getHeight();
            cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,RecaculateScaleWH: " + width + "x" + height + ", " + j + "x" + k);
            if (width <= 0) {
                width = j;
            }
            if (height <= 0) {
                height = k;
            }
            cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,RecaculateScaleWH: " + width + "," + height);
            i iVar2 = this.g;
            iVar2.a = width;
            iVar2.f1667b = height;
            iVar2.f1668c = 0;
            iVar2.f1669d = 0;
            this.f1382c = false;
        }
    }

    public void l() {
        d dVar;
        m = null;
        this.f = true;
        Surface surface = n;
        if (surface != null) {
            surface.release();
            n = null;
        }
        WeakReference<d> weakReference = this.f1381b;
        if (weakReference == null || (dVar = weakReference.get()) == null) {
            return;
        }
        dVar.S(null, true);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
        this.f1381b = new WeakReference<>(dVar);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
        if (!p.i) {
            setVisibility(8);
            return;
        }
        if (i != 2) {
            if (i == 3) {
                if (p.g) {
                    setVisibility(4);
                } else {
                    setVisibility(0);
                }
                cn.manstep.phonemirrorBox.BoxInterface.f fVar = d.l;
                if (fVar == null || fVar.J() == null || !d.l.J().i()) {
                    f.g(false);
                    return;
                } else {
                    f.b(false);
                    f.g(true);
                    return;
                }
            }
            if (i != 12) {
                if (i == 15) {
                    cn.manstep.phonemirrorBox.util.j.c().e("ReSizeView", 100L, new b());
                    return;
                } else {
                    if (i != 500) {
                        return;
                    }
                    this.i = true;
                    b(j, k);
                    return;
                }
            }
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,on_Box_Phase: PLUG_OUT = " + i);
        this.f = true;
        setVisibility(4);
        if (!p.g) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
        }
        f.g(false);
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        d dVarM = cn.manstep.phonemirrorBox.v0.e.M(this);
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView onAttachedToWindow & boxInterface=" + dVarM);
        this.f1381b = new WeakReference<>(dVarM);
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != AutoBoxMirrorView.getOrientation()) {
            k(j, k);
        } else {
            this.i = true;
            b(j, k);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView onDetachedFromWindow");
        this.f1381b = null;
        cn.manstep.phonemirrorBox.v0.e.S(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        m(i, i2);
        cn.manstep.phonemirrorBox.util.s.e("AutoBoxMirrorTextureView,onSurfaceTextureAvailable: touch set size=" + i + "x" + i2);
        this.f1382c = true;
        SurfaceTexture surfaceTexture2 = m;
        if (surfaceTexture2 != null) {
            setSurfaceTexture(surfaceTexture2);
            if (this.f1383d) {
                n = new Surface(l);
                return;
            } else {
                n = new Surface(m);
                return;
            }
        }
        if (d.u()) {
            setX(CropImageView.DEFAULT_ASPECT_RATIO);
            setY(CropImageView.DEFAULT_ASPECT_RATIO);
            setLeft(0);
            setTop(0);
            this.g.c(this, i, i2);
        }
        if (this.f1383d) {
            this.e.e(this, getContext());
            l = this.e.g();
            n = new Surface(l);
        } else {
            n = new Surface(surfaceTexture);
        }
        d dVar = this.f1381b.get();
        if (dVar != null) {
            cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorTextureView", "onSurfaceTextureAvailable: surface=" + n);
            dVar.S(null, true);
        }
        cn.manstep.phonemirrorBox.w0.b bVar = this.e;
        if (bVar != null) {
            bVar.h();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,onSurfaceTextureDestroyed: SurfaceTexture=" + surfaceTexture + ", bPlugOut=" + this.f);
        if (this.f) {
            i();
            return true;
        }
        m = surfaceTexture;
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        d dVar = this.f1381b.get();
        if (dVar == null) {
            return;
        }
        m(i, i2);
        cn.manstep.phonemirrorBox.util.s.e("AutoBoxMirrorTextureView,onSurfaceTextureSizeChanged: touch set size=" + i + "x" + i2);
        this.f1382c = true;
        dVar.T(0, i, i2);
        cn.manstep.phonemirrorBox.w0.b bVar = this.e;
        if (bVar != null) {
            bVar.h();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.h++;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (d.s() != null && d.s().a()) {
            d();
            i iVar = this.g;
            return cn.manstep.phonemirrorBox.BoxInterface.e.b(motionEvent, iVar.f1668c, iVar.f1669d, iVar.a, iVar.f1667b);
        }
        if (d.s() != null && d.s().g()) {
            if (!d.u()) {
                d();
            }
            int x = ((int) motionEvent.getX()) - this.g.f1668c;
            int y = (int) motionEvent.getY();
            i iVar2 = this.g;
            int i = y - iVar2.f1669d;
            int i2 = iVar2.a;
            int i3 = x > i2 ? 10000 : x > 0 ? (x * 10000) / i2 : 0;
            int i4 = this.g.f1667b;
            int i5 = i <= i4 ? i > 0 ? (i * 10000) / i4 : 0 : 10000;
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                cn.manstep.phonemirrorBox.v0.e.L(0, 0, i3, i5);
                this.g.b(i3, i5);
            } else if (action == 1) {
                this.g.a();
                cn.manstep.phonemirrorBox.v0.e.L(2, 0, i3, i5);
                if (d.l.J().i()) {
                    f.b(false);
                }
            } else {
                if (action != 2) {
                    return super.onTouchEvent(motionEvent);
                }
                this.g.a();
                cn.manstep.phonemirrorBox.v0.e.L(1, 0, i3, i5);
            }
        }
        return true;
    }

    public void p(String str, int i) {
        cn.manstep.phonemirrorBox.w0.b bVar = this.e;
        if (bVar != null) {
            bVar.i(str, i);
        }
    }

    public void q(int i, int i2) {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,setVideoWH: " + i + "x" + i2);
        i iVar = this.g;
        iVar.e = i;
        iVar.f = i2;
        this.i = true;
    }

    public void setUseGlRender(boolean z) {
        this.f1383d = z;
        if (z && this.e == null) {
            this.e = new cn.manstep.phonemirrorBox.w0.b();
        }
        l();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
    }
}
