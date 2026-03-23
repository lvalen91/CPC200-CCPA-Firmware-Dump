package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class AutoBoxMirrorView extends SurfaceView implements d.g, SurfaceHolder.Callback {
    private static boolean e = true;
    private static int f;
    private static int g;
    private static int h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<d> f1386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f1387c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1388d;

    public AutoBoxMirrorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1388d = false;
        e();
    }

    private void e() {
        j.c(this);
        getHolder().addCallback(this);
        this.f1387c = new i(this);
    }

    private void f(int i, int i2) {
        i iVar = this.f1387c;
        if (iVar.e <= 0 || iVar.f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = p.k;
            i2 = p.l;
        }
        int i3 = i;
        int i4 = i2;
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,onRotationChanged: Screen:" + i3 + "x" + i4 + ", Video:" + this.f1387c.e + "x" + this.f1387c.f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!d.u()) {
            Context context = getContext();
            i iVar2 = this.f1387c;
            j.a(context, layoutParams, i3, i4, iVar2.e, iVar2.f);
            setLayoutParams(layoutParams);
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,onRotationChanged: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
    }

    public static void g(int i, int i2) {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,setDisplaySize: w=" + i + ", h=" + i2);
        f = i;
        g = i2;
        if (p.i) {
            AutoBoxMirrorTextureView.m(i, i2);
        }
        if (p.g) {
            AutoBoxMirrorSoftView.h(i, i2);
        }
    }

    public static int getOrientation() {
        return h;
    }

    public static void setOrientation(int i) {
        h = i;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
        if (i != 501) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorView,on_Box_Phase: ");
        cn.manstep.phonemirrorBox.util.x xVar = (cn.manstep.phonemirrorBox.util.x) obj;
        sb.append(xVar.toString());
        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
        h(xVar.f1934b, xVar.f1935c);
    }

    public void b(int i, int i2) {
        i iVar = this.f1387c;
        if (iVar.e <= 0 || iVar.f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = p.k;
            i2 = p.l;
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,ReSizeView: Screen:" + i + "x" + i2 + ", Video:" + this.f1387c.e + "x" + this.f1387c.f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.f1388d) {
            if (!d.u()) {
                Context context = getContext();
                i iVar2 = this.f1387c;
                j.b(context, layoutParams, i, i2, iVar2.e, iVar2.f);
                setLayoutParams(layoutParams);
            }
            this.f1388d = false;
        }
        if (d.u()) {
            this.f1387c.c(this, i, i2);
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,ReSizeView: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
    }

    public void d() {
        if (e) {
            int width = getWidth();
            int height = getHeight();
            cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,RecaculateScaleWH: " + width + "x" + height + ", " + f + "x" + g);
            if (width <= 0) {
                width = f;
            }
            if (height <= 0) {
                height = g;
            }
            cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,RecaculateScaleWH: " + width + "," + height);
            i iVar = this.f1387c;
            iVar.a = width;
            iVar.f1667b = height;
            iVar.f1668c = 0;
            iVar.f1669d = 0;
            e = false;
        }
    }

    public void h(int i, int i2) {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,setVideoWH: w=" + i + ", h=" + i2);
        i iVar = this.f1387c;
        iVar.e = i;
        iVar.f = i2;
        this.f1388d = true;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
        this.f1386b = new WeakReference<>(dVar);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
        if (p.i) {
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
                if (i != 15) {
                    if (i != 500) {
                        return;
                    }
                    b(f, g);
                    return;
                } else {
                    if (p.g) {
                        return;
                    }
                    b(f, g);
                    return;
                }
            }
        }
        setVisibility(4);
        if (!p.g) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
        }
        f.g(false);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        d dVarM = cn.manstep.phonemirrorBox.v0.e.M(this);
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,onAttachedToWindow: boxInterface=" + dVarM);
        this.f1386b = new WeakReference<>(dVarM);
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != getOrientation()) {
            f(f, g);
        } else {
            this.f1388d = true;
            b(f, g);
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,onDetachedFromWindow: #");
        this.f1386b = null;
        cn.manstep.phonemirrorBox.v0.e.S(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (d.s() != null && d.s().a()) {
            d();
            i iVar = this.f1387c;
            return cn.manstep.phonemirrorBox.BoxInterface.e.b(motionEvent, iVar.f1668c, iVar.f1669d, iVar.a, iVar.f1667b);
        }
        if (d.s() != null && d.s().g()) {
            if (!d.u()) {
                d();
            }
            int x = ((int) motionEvent.getX()) - this.f1387c.f1668c;
            int y = (int) motionEvent.getY();
            i iVar2 = this.f1387c;
            int i = y - iVar2.f1669d;
            int i2 = iVar2.a;
            int i3 = x > i2 ? 10000 : x > 0 ? (x * 10000) / i2 : 0;
            int i4 = this.f1387c.f1667b;
            int i5 = i <= i4 ? i > 0 ? (i * 10000) / i4 : 0 : 10000;
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.f1387c.b(i3, i5);
                cn.manstep.phonemirrorBox.v0.e.L(0, 0, i3, i5);
            } else if (action == 1) {
                this.f1387c.a();
                cn.manstep.phonemirrorBox.v0.e.L(2, 0, i3, i5);
                if (d.l.J().i()) {
                    f.b(false);
                }
            } else if (action == 2) {
                this.f1387c.a();
                cn.manstep.phonemirrorBox.v0.e.L(1, 0, i3, i5);
            }
        }
        return true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        d dVar = this.f1386b.get();
        if (dVar == null) {
            return;
        }
        f = i2;
        g = i3;
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,surfaceChanged: touch set size=" + i2 + "x" + i3);
        e = true;
        d.x();
        dVar.T(i, i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        d dVar = this.f1386b.get();
        if (dVar == null) {
            return;
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,surfaceCreated: holder=" + surfaceHolder + " ii=" + dVar);
        dVar.S(surfaceHolder, true);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        d dVar = this.f1386b.get();
        if (dVar == null) {
            return;
        }
        dVar.U();
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,surfaceDestroyed: holder=" + surfaceHolder);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
    }
}
