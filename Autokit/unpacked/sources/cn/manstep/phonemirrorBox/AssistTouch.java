package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AssistTouch extends ImageView implements InterfaceC0845g {

    /* JADX INFO: renamed from: b */
    float f4217b;

    /* JADX INFO: renamed from: c */
    float f4218c;

    /* JADX INFO: renamed from: d */
    boolean f4219d;

    /* JADX INFO: renamed from: e */
    boolean f4220e;

    /* JADX INFO: renamed from: f */
    int f4221f;

    /* JADX INFO: renamed from: g */
    int f4222g;

    /* JADX INFO: renamed from: h */
    Handler f4223h;

    /* JADX INFO: renamed from: i */
    Runnable f4224i;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AssistTouch$a */
    class RunnableC0708a implements Runnable {
        RunnableC0708a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AssistTouch.this.animate().alpha(0.5f);
        }
    }

    public AssistTouch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4219d = true;
        this.f4220e = false;
        this.f4223h = new Handler();
        C0824f.m6203d().mo6189a(this);
        C0982s.m7373c("AssistTouch,AssistTouch: init");
    }

    /* JADX INFO: renamed from: c */
    private void m5314c() {
        C0824f.m6201b(true);
    }

    private void getSrcWH() {
        setDrawingCacheEnabled(true);
        Bitmap drawingCache = getDrawingCache();
        if (drawingCache != null) {
            this.f4221f = drawingCache.getWidth();
            this.f4222g = drawingCache.getHeight();
        }
        C0982s.m7373c("AssistTouch,getSrcWH: W  H :" + this.f4221f + " " + this.f4222g);
        setDrawingCacheEnabled(false);
    }

    @Override // cn.manstep.phonemirrorBox.InterfaceC0845g
    /* JADX INFO: renamed from: a */
    public void mo5313a(int i, int i2, Object obj) {
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        if (i == 1) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = animate();
            if (i2 != 1) {
                f = 1.0f;
            }
            viewPropertyAnimatorAnimate.alpha(f);
            this.f4219d = i2 != 1;
            C0982s.m7373c("AssistTouch,onMsg: AndroidWorkUILogic.MSG_EXPAND val0=" + i2);
            return;
        }
        if (i != 2) {
            if (i != 4) {
                return;
            }
            m5316d();
            setVisibility(i2 != 1 ? 4 : 0);
            return;
        }
        C0982s.m7373c("AssistTouch,onMsg: getWidth=" + getWidth() + ", getHeight=" + getHeight());
        C0982s.m7373c("AssistTouch,onMsg: getLeft=" + getLeft() + ", getRight=" + getRight());
        C0982s.m7373c("AssistTouch,onMsg: getTop=" + getTop() + ", getBottom=" + getBottom());
        C0982s.m7373c("AssistTouch,onMsg: getX=" + getX() + ", getY=" + getY());
        if (obj instanceof Point) {
            ((Point) obj).set(getLeft(), getTop());
        }
        if (getX() < CropImageView.DEFAULT_ASPECT_RATIO) {
            setX(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        if (getParent() instanceof FrameLayout) {
            if (getX() < ((FrameLayout) getParent()).getWidth() / 2) {
                setX(CropImageView.DEFAULT_ASPECT_RATIO);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    void m5315b() {
        if (getParent() instanceof FrameLayout) {
            FrameLayout frameLayout = (FrameLayout) getParent();
            int bottom = 0;
            int right = getRight() > frameLayout.getRight() ? frameLayout.getRight() - getRight() : getLeft() < 0 ? -getLeft() : 0;
            if (getBottom() > frameLayout.getBottom()) {
                bottom = frameLayout.getBottom() - getBottom();
            } else if (getTop() < 0) {
                bottom = -getTop();
            }
            if (right != 0 || bottom != 0) {
                layout(getLeft() + right, getTop() + bottom, getRight() + right, getBottom() + bottom);
            }
            if (getLeft() >= frameLayout.getWidth() / 2) {
                animate().x(frameLayout.getRight() - getWidth());
            } else {
                animate().x(CropImageView.DEFAULT_ASPECT_RATIO);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public void m5316d() {
        getSrcWH();
        C0982s.m7373c("AssistTouch,resetSelf: W  H :" + this.f4221f + " " + this.f4222g);
        this.f4219d = true;
        this.f4220e = false;
        setLeft(0);
        setRight(this.f4221f);
        setTop(0);
        setBottom(this.f4222g);
        setX(CropImageView.DEFAULT_ASPECT_RATIO);
        setY(CropImageView.DEFAULT_ASPECT_RATIO);
        setMaxHeight(this.f4222g);
        setMaxWidth(this.f4221f);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f4219d) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.f4217b = motionEvent.getX();
                this.f4218c = motionEvent.getY();
                C0982s.m7373c("AssistTouch,onTouchEvent: w=" + getWidth() + " h=" + getHeight());
                return true;
            }
            if (actionMasked == 1) {
                if (this.f4220e) {
                    setbDraging(false);
                    C0824f.m6201b(false);
                } else {
                    m5314c();
                }
                m5315b();
                return true;
            }
            if (actionMasked == 2) {
                float x = motionEvent.getX() - this.f4217b;
                float y = motionEvent.getY() - this.f4218c;
                if (!this.f4220e && (Math.abs(x) > 5.0f || Math.abs(y) > 5.0f)) {
                    setbDraging(true);
                }
                if (this.f4220e) {
                    C0982s.m7373c("AssistTouch,onTouchEvent: change pos");
                    int i = (int) x;
                    int i2 = (int) y;
                    layout(getLeft() + i, getTop() + i2, getRight() + i, getBottom() + i2);
                }
                return true;
            }
            if (motionEvent.getActionMasked() == 3) {
                m5315b();
            }
            setbDraging(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setbDraging(boolean z) {
        if (z != this.f4220e) {
            this.f4220e = z;
            if (!z) {
                if (this.f4224i == null) {
                    this.f4224i = new RunnableC0708a();
                }
                this.f4223h.postDelayed(this.f4224i, 5000L);
            } else {
                Runnable runnable = this.f4224i;
                if (runnable != null) {
                    this.f4223h.removeCallbacks(runnable);
                }
                animate().alpha(1.0f);
            }
        }
    }
}
