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
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0734e;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0987x;
import java.lang.ref.WeakReference;
import p093d.p126d.p127a.C1284a;
import p093d.p126d.p127a.C1285b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoBoxMirrorSoftView extends GLSurfaceView implements C0733d.g, SurfaceHolder.Callback {

    /* JADX INFO: renamed from: e */
    private static C1285b f4234e;

    /* JADX INFO: renamed from: b */
    private Context f4238b;

    /* JADX INFO: renamed from: c */
    private C0854i f4239c;

    /* JADX INFO: renamed from: d */
    private static final String f4233d = AutoBoxMirrorSoftView.class.getSimpleName();

    /* JADX INFO: renamed from: f */
    private static boolean f4235f = false;

    /* JADX INFO: renamed from: g */
    private static int f4236g = 0;

    /* JADX INFO: renamed from: h */
    private static int f4237h = 0;

    public AutoBoxMirrorSoftView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4238b = context;
        m5324f();
    }

    /* JADX INFO: renamed from: e */
    private DisplayMetrics m5323e(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        if (!m5325g()) {
            try {
                displayMetrics.heightPixels = (displayMetrics.widthPixels * displayMetrics.widthPixels) / displayMetrics.heightPixels;
            } catch (Exception e) {
                C0982s.m7375e(Log.getStackTraceString(e));
            }
        }
        C0982s.m7375e(f4233d + ",getDM: @@@isScreenLandscape :" + m5325g());
        C0982s.m7375e(f4233d + ",getDM: @@@ outMetrics w : " + displayMetrics.widthPixels + "  h " + displayMetrics.heightPixels);
        return displayMetrics;
    }

    /* JADX INFO: renamed from: f */
    private void m5324f() {
        C0982s.m7376f(f4233d, "softview init");
        try {
            if (!C1284a.m9601a(this.f4238b)) {
                C0982s.m7376f(f4233d, "GLES20Support.detectOpenGLES20(mContext) false");
            }
        } catch (Exception e) {
            C0982s.m7375e(Log.getStackTraceString(e));
        }
        setEGLContextClientVersion(2);
        C1285b c1285b = new C1285b(null, this, m5323e(this.f4238b));
        f4234e = c1285b;
        setRenderer(c1285b);
        setRenderMode(0);
        this.f4239c = new C0854i(this);
    }

    /* JADX INFO: renamed from: g */
    private boolean m5325g() {
        int i = getResources().getConfiguration().orientation;
        if (i == 2) {
            return true;
        }
        if (i == 1) {
        }
        return false;
    }

    public static C1285b getSoftH264Render() {
        return f4234e;
    }

    /* JADX INFO: renamed from: h */
    public static void m5326h(int i, int i2) {
        f4236g = i;
        f4237h = i2;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i, Object obj) {
        if (i != 501) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(f4233d);
        sb.append(",on_Box_Phase: ");
        C0987x c0987x = (C0987x) obj;
        sb.append(c0987x.toString());
        C0982s.m7373c(sb.toString());
        m5329i(c0987x.f6158b, c0987x.f6159c);
    }

    /* JADX INFO: renamed from: b */
    public void m5327b(int i, int i2) {
        C0854i c0854i = this.f4239c;
        if (c0854i.f5017e <= 0 || c0854i.f5018f <= 0) {
            return;
        }
        if (i == 0 || i2 == 0) {
            i = C0925p.f5874k;
            i2 = C0925p.f5875l;
        }
        int i3 = i;
        int i4 = i2;
        C0982s.m7373c("AutoBoxMirrorSoftView,ReSizeView: Screen:" + i3 + "x" + i4 + ", Video:" + this.f4239c.f5017e + "x" + this.f4239c.f5018f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (C0733d.m5600u()) {
            this.f4239c.m6347c(this, i3, i4);
        } else {
            Context context = getContext();
            C0854i c0854i2 = this.f4239c;
            C0879j.m6484b(context, layoutParams, i3, i4, c0854i2.f5017e, c0854i2.f5018f);
            setLayoutParams(layoutParams);
        }
        C0982s.m7373c(f4233d + ",ReSizeView: ViewGroup.LayoutParams: " + layoutParams.width + "x" + layoutParams.height);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i) {
    }

    /* JADX INFO: renamed from: d */
    public void m5328d() {
        if (f4235f) {
            C0982s.m7373c("iv_W = " + getWidth() + ", iv_H = " + getHeight());
            int i = f4236g;
            int i2 = f4237h;
            C0982s.m7373c("caculate_W = " + i + ", caculate_H = " + i2);
            C0854i c0854i = this.f4239c;
            c0854i.f5013a = i;
            c0854i.f5014b = i2;
            c0854i.f5015c = 0;
            c0854i.f5016d = 0;
            f4235f = false;
        }
    }

    /* JADX INFO: renamed from: i */
    public void m5329i(int i, int i2) {
        C0854i c0854i = this.f4239c;
        c0854i.f5017e = i;
        c0854i.f5018f = i2;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
        new WeakReference(c0733d);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i) {
        if (i != 2) {
            if (i == 3) {
                if (C0925p.f5870g) {
                    return;
                }
                setVisibility(4);
                return;
            }
            if (i == 15) {
                if (C0925p.f5870g) {
                    m5327b(f4236g, f4237h);
                    setVisibility(0);
                    return;
                }
                return;
            }
            if (i == 500) {
                m5327b(f4236g, f4237h);
                return;
            }
            switch (i) {
                case 10:
                    if (C0925p.f5870g) {
                        setVisibility(0);
                    }
                    break;
                case 11:
                    setVisibility(4);
                    break;
            }
        }
        setVisibility(4);
        if (C0925p.f5870g) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
        }
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0733d c0733dM7440M = C0995e.m7440M(this);
        C0982s.m7373c("@@@AutoBoxMirrorSoftView onAttachedToWindow & boxInterface=" + c0733dM7440M);
        new WeakReference(c0733dM7440M);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0982s.m7373c("@@@AutoBoxMirrorSoftView onDetachedFromWindow");
        C0995e.m7446S(this);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (C0733d.m5598s() != null && C0733d.m5598s().mo6919a()) {
            m5328d();
            C0854i c0854i = this.f4239c;
            return C0734e.m5625b(motionEvent, c0854i.f5015c, c0854i.f5016d, c0854i.f5013a, c0854i.f5014b);
        }
        if (C0733d.m5598s() != null && C0733d.m5598s().mo6925g()) {
            if (!C0733d.m5600u()) {
                m5328d();
            }
            int x = ((int) motionEvent.getX()) - this.f4239c.f5015c;
            int y = (int) motionEvent.getY();
            C0854i c0854i2 = this.f4239c;
            int i = y - c0854i2.f5016d;
            int i2 = c0854i2.f5013a;
            int i3 = x > i2 ? 10000 : x > 0 ? (x * 10000) / i2 : 0;
            int i4 = this.f4239c.f5014b;
            int i5 = i <= i4 ? i > 0 ? (i * 10000) / i4 : 0 : 10000;
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.f4239c.m6346b(i3, i5);
                C0995e.m7439L(0, 0, i3, i5);
            } else if (action == 1) {
                this.f4239c.m6345a();
                C0995e.m7439L(2, 0, i3, i5);
                if (C0733d.f4428l.m5683J().mo6927i()) {
                    C0824f.m6201b(false);
                }
            } else {
                if (action != 2) {
                    return super.onTouchEvent(motionEvent);
                }
                this.f4239c.m6345a();
                C0995e.m7439L(1, 0, i3, i5);
            }
        }
        return true;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        super.surfaceChanged(surfaceHolder, i, i2, i3);
        f4235f = true;
        f4236g = i2;
        f4237h = i3;
        C0982s.m7375e("@@@AutoBoxMirrorSoftView surfaceChanged");
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        super.surfaceCreated(surfaceHolder);
        C0982s.m7373c("@@@AutoBoxMirrorSoftView surfaceCreated holder=" + surfaceHolder);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        super.surfaceDestroyed(surfaceHolder);
        C0982s.m7373c("@@@AutoBoxMirrorSoftView surfaceDestroyed holder=" + surfaceHolder);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
    }
}
