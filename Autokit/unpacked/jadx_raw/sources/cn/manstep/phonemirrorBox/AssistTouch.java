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
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AssistTouch extends ImageView implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f1372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    float f1373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1374d;
    boolean e;
    int f;
    int g;
    Handler h;
    Runnable i;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AssistTouch.this.animate().alpha(0.5f);
        }
    }

    public AssistTouch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1374d = true;
        this.e = false;
        this.h = new Handler();
        f.d().a(this);
        cn.manstep.phonemirrorBox.util.s.c("AssistTouch,AssistTouch: init");
    }

    private void c() {
        f.b(true);
    }

    private void getSrcWH() {
        setDrawingCacheEnabled(true);
        Bitmap drawingCache = getDrawingCache();
        if (drawingCache != null) {
            this.f = drawingCache.getWidth();
            this.g = drawingCache.getHeight();
        }
        cn.manstep.phonemirrorBox.util.s.c("AssistTouch,getSrcWH: W  H :" + this.f + " " + this.g);
        setDrawingCacheEnabled(false);
    }

    @Override // cn.manstep.phonemirrorBox.g
    public void a(int i, int i2, Object obj) {
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        if (i == 1) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = animate();
            if (i2 != 1) {
                f = 1.0f;
            }
            viewPropertyAnimatorAnimate.alpha(f);
            this.f1374d = i2 != 1;
            cn.manstep.phonemirrorBox.util.s.c("AssistTouch,onMsg: AndroidWorkUILogic.MSG_EXPAND val0=" + i2);
            return;
        }
        if (i != 2) {
            if (i != 4) {
                return;
            }
            d();
            setVisibility(i2 != 1 ? 4 : 0);
            return;
        }
        cn.manstep.phonemirrorBox.util.s.c("AssistTouch,onMsg: getWidth=" + getWidth() + ", getHeight=" + getHeight());
        cn.manstep.phonemirrorBox.util.s.c("AssistTouch,onMsg: getLeft=" + getLeft() + ", getRight=" + getRight());
        cn.manstep.phonemirrorBox.util.s.c("AssistTouch,onMsg: getTop=" + getTop() + ", getBottom=" + getBottom());
        cn.manstep.phonemirrorBox.util.s.c("AssistTouch,onMsg: getX=" + getX() + ", getY=" + getY());
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

    void b() {
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

    public void d() {
        getSrcWH();
        cn.manstep.phonemirrorBox.util.s.c("AssistTouch,resetSelf: W  H :" + this.f + " " + this.g);
        this.f1374d = true;
        this.e = false;
        setLeft(0);
        setRight(this.f);
        setTop(0);
        setBottom(this.g);
        setX(CropImageView.DEFAULT_ASPECT_RATIO);
        setY(CropImageView.DEFAULT_ASPECT_RATIO);
        setMaxHeight(this.g);
        setMaxWidth(this.f);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f1374d) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.f1372b = motionEvent.getX();
                this.f1373c = motionEvent.getY();
                cn.manstep.phonemirrorBox.util.s.c("AssistTouch,onTouchEvent: w=" + getWidth() + " h=" + getHeight());
                return true;
            }
            if (actionMasked == 1) {
                if (this.e) {
                    setbDraging(false);
                    f.b(false);
                } else {
                    c();
                }
                b();
                return true;
            }
            if (actionMasked == 2) {
                float x = motionEvent.getX() - this.f1372b;
                float y = motionEvent.getY() - this.f1373c;
                if (!this.e && (Math.abs(x) > 5.0f || Math.abs(y) > 5.0f)) {
                    setbDraging(true);
                }
                if (this.e) {
                    cn.manstep.phonemirrorBox.util.s.c("AssistTouch,onTouchEvent: change pos");
                    int i = (int) x;
                    int i2 = (int) y;
                    layout(getLeft() + i, getTop() + i2, getRight() + i, getBottom() + i2);
                }
                return true;
            }
            if (motionEvent.getActionMasked() == 3) {
                b();
            }
            setbDraging(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setbDraging(boolean z) {
        if (z != this.e) {
            this.e = z;
            if (!z) {
                if (this.i == null) {
                    this.i = new a();
                }
                this.h.postDelayed(this.i, 5000L);
            } else {
                Runnable runnable = this.i;
                if (runnable != null) {
                    this.h.removeCallbacks(runnable);
                }
                animate().alpha(1.0f);
            }
        }
    }
}
