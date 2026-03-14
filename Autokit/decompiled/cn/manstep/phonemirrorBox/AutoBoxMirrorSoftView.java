package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import android.view.WindowManager;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class AutoBoxMirrorSoftView extends GLSurfaceView implements d.g, SurfaceHolder.Callback {
    private static d.d.a.b e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f1379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f1380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f1378d = AutoBoxMirrorSoftView.class.getSimpleName();
    private static boolean f = false;
    private static int g = 0;
    private static int h = 0;

    public AutoBoxMirrorSoftView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1379b = context;
        f();
    }

    private DisplayMetrics e(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        if (!g()) {
            try {
                displayMetrics.heightPixels = (displayMetrics.widthPixels * displayMetrics.widthPixels) / displayMetrics.heightPixels;
            } catch (Exception e2) {
                cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e2));
            }
        }
        cn.manstep.phonemirrorBox.util.s.e(f1378d + ",getDM: @@@isScreenLandscape :" + g());
        cn.manstep.phonemirrorBox.util.s.e(f1378d + ",getDM: @@@ outMetrics w : " + displayMetrics.widthPixels + "  h " + displayMetrics.heightPixels);
        return displayMetrics;
    }

    private void f() {
        cn.manstep.phonemirrorBox.util.s.f(f1378d, "softview init");
        try {
            if (!d.d.a.a.a(this.f1379b)) {
                cn.manstep.phonemirrorBox.util.s.f(f1378d, "GLES20Support.detectOpenGLES20(mContext) false");
            }
        } catch (Exception e2) {
            cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e2));
        }
        setEGLContextClientVersion(2);
        d.d.a.b bVar = new d.d.a.b(null, this, e(this.f1379b));
        e = bVar;
        setRenderer(bVar);
        setRenderMode(0);
        this.f1380c = new i(this);
    }

    private boolean g() {
        int i = getResources().getConfiguration().orientation;
        if (i == 2) {
            return true;
        }
        if (i == 1) {
        }
        return false;
    }

    public static d.d.a.b getSoftH264Render() {
        return e;
    }

    public static void h(int i, int i2) {
        g = i;
        h = i2;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
        if (i != 501) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(f1378d);
        sb.append(",on_Box_Phase: ");
        cn.manstep.phonemirrorBox.util.x xVar = (cn.manstep.phonemirrorBox.util.x) obj;
        sb.append(xVar.toString());
        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
        i(xVar.f1934b, xVar.f1935c);
    }

    public void b(int i, int i2) {
        i iVar = this.f1380c;
        if (iVar.e <= 0 || iVar.f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = p.k;
            i2 = p.l;
        }
        int i3 = i;
        int i4 = i2;
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorSoftView,ReSizeView: Screen:" + i3 + "x" + i4 + ", Video:" + this.f1380c.e + "x" + this.f1380c.f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (d.u()) {
            this.f1380c.c(this, i3, i4);
        } else {
            Context context = getContext();
            i iVar2 = this.f1380c;
            j.b(context, layoutParams, i3, i4, iVar2.e, iVar2.f);
            setLayoutParams(layoutParams);
        }
        cn.manstep.phonemirrorBox.util.s.c(f1378d + ",ReSizeView: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
    }

    public void d() {
        if (f) {
            cn.manstep.phonemirrorBox.util.s.c("iv_W = " + getWidth() + ", iv_H = " + getHeight());
            int i = g;
            int i2 = h;
            cn.manstep.phonemirrorBox.util.s.c("caculate_W = " + i + ", caculate_H = " + i2);
            i iVar = this.f1380c;
            iVar.a = i;
            iVar.f1667b = i2;
            iVar.f1668c = 0;
            iVar.f1669d = 0;
            f = false;
        }
    }

    public void i(int i, int i2) {
        i iVar = this.f1380c;
        iVar.e = i;
        iVar.f = i2;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
        new WeakReference(dVar);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
        if (i != 2) {
            if (i == 3) {
                if (p.g) {
                    return;
                }
                setVisibility(4);
                return;
            }
            if (i == 15) {
                if (p.g) {
                    b(g, h);
                    setVisibility(0);
                    return;
                }
                return;
            }
            if (i == 500) {
                b(g, h);
                return;
            }
            switch (i) {
                case 10:
                    if (p.g) {
                        setVisibility(0);
                    }
                    break;
                case 11:
                    setVisibility(4);
                    break;
            }
        }
        setVisibility(4);
        if (p.g) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
        }
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        d dVarM = cn.manstep.phonemirrorBox.v0.e.M(this);
        cn.manstep.phonemirrorBox.util.s.c("@@@AutoBoxMirrorSoftView onAttachedToWindow & boxInterface=" + dVarM);
        new WeakReference(dVarM);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cn.manstep.phonemirrorBox.util.s.c("@@@AutoBoxMirrorSoftView onDetachedFromWindow");
        cn.manstep.phonemirrorBox.v0.e.S(this);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (d.s() != null && d.s().a()) {
            d();
            i iVar = this.f1380c;
            return cn.manstep.phonemirrorBox.BoxInterface.e.b(motionEvent, iVar.f1668c, iVar.f1669d, iVar.a, iVar.f1667b);
        }
        if (d.s() != null && d.s().g()) {
            if (!d.u()) {
                d();
            }
            int x = ((int) motionEvent.getX()) - this.f1380c.f1668c;
            int y = (int) motionEvent.getY();
            i iVar2 = this.f1380c;
            int i = y - iVar2.f1669d;
            int i2 = iVar2.a;
            int i3 = x > i2 ? 10000 : x > 0 ? (x * 10000) / i2 : 0;
            int i4 = this.f1380c.f1667b;
            int i5 = i <= i4 ? i > 0 ? (i * 10000) / i4 : 0 : 10000;
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.f1380c.b(i3, i5);
                cn.manstep.phonemirrorBox.v0.e.L(0, 0, i3, i5);
            } else if (action == 1) {
                this.f1380c.a();
                cn.manstep.phonemirrorBox.v0.e.L(2, 0, i3, i5);
                if (d.l.J().i()) {
                    f.b(false);
                }
            } else {
                if (action != 2) {
                    return super.onTouchEvent(motionEvent);
                }
                this.f1380c.a();
                cn.manstep.phonemirrorBox.v0.e.L(1, 0, i3, i5);
            }
        }
        return true;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        super.surfaceChanged(surfaceHolder, i, i2, i3);
        f = true;
        g = i2;
        h = i3;
        cn.manstep.phonemirrorBox.util.s.e("@@@AutoBoxMirrorSoftView surfaceChanged");
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        super.surfaceCreated(surfaceHolder);
        cn.manstep.phonemirrorBox.util.s.c("@@@AutoBoxMirrorSoftView surfaceCreated holder=" + surfaceHolder);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        super.surfaceDestroyed(surfaceHolder);
        cn.manstep.phonemirrorBox.util.s.c("@@@AutoBoxMirrorSoftView surfaceDestroyed holder=" + surfaceHolder);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
    }
}
