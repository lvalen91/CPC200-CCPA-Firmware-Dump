package cn.manstep.phonemirrorBox.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AdjustSizeView extends View {

    /* JADX INFO: renamed from: b */
    private int f4753b;

    /* JADX INFO: renamed from: c */
    private float f4754c;

    /* JADX INFO: renamed from: d */
    private float f4755d;

    /* JADX INFO: renamed from: e */
    private float f4756e;

    /* JADX INFO: renamed from: f */
    private float f4757f;

    /* JADX INFO: renamed from: g */
    private float f4758g;

    /* JADX INFO: renamed from: h */
    private float f4759h;

    /* JADX INFO: renamed from: i */
    private float f4760i;

    /* JADX INFO: renamed from: j */
    private float f4761j;

    /* JADX INFO: renamed from: k */
    private float f4762k;

    /* JADX INFO: renamed from: l */
    private float f4763l;

    /* JADX INFO: renamed from: m */
    private Paint f4764m;

    /* JADX INFO: renamed from: n */
    private Paint f4765n;

    /* JADX INFO: renamed from: o */
    private RectF f4766o;

    /* JADX INFO: renamed from: p */
    private WindowManager f4767p;

    public AdjustSizeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4753b = 8;
        this.f4754c = CropImageView.DEFAULT_ASPECT_RATIO;
        this.f4755d = CropImageView.DEFAULT_ASPECT_RATIO;
        this.f4767p = (WindowManager) context.getSystemService("window");
    }

    /* JADX INFO: renamed from: a */
    private int m6124a(float f, float f2) {
        RectF rectF = this.f4766o;
        float f3 = f - rectF.left;
        float f4 = f2 - rectF.top;
        float f5 = rectF.right - f;
        float f6 = rectF.bottom - f2;
        this.f4753b = 8;
        if (f3 < 80.0f) {
            this.f4753b = 7;
            if (f4 < 80.0f) {
                this.f4753b = 0;
            } else if (f6 < 80.0f) {
                this.f4753b = 6;
            }
        }
        if (f4 < 80.0f) {
            this.f4753b = 1;
            if (f3 < 80.0f) {
                this.f4753b = 0;
            } else if (f5 < 80.0f) {
                this.f4753b = 2;
            }
        }
        if (f5 < 80.0f) {
            this.f4753b = 3;
            if (f6 < 80.0f) {
                this.f4753b = 4;
            } else if (f4 < 80.0f) {
                this.f4753b = 2;
            }
        }
        if (f6 < 80.0f) {
            this.f4753b = 5;
            if (f5 < 80.0f) {
                this.f4753b = 4;
            } else if (f3 < 80.0f) {
                this.f4753b = 6;
            }
        }
        return this.f4753b;
    }

    /* JADX INFO: renamed from: b */
    private void m6125b(int i, int i2) {
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            this.f4767p.getDefaultDisplay().getRealSize(point);
        } else {
            this.f4767p.getDefaultDisplay().getSize(point);
        }
        this.f4762k = point.x;
        this.f4763l = point.y;
        Paint paint = new Paint();
        this.f4764m = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f4764m.setColor(i);
        this.f4764m.setAntiAlias(true);
        this.f4764m.setStrokeWidth(10.0f);
        Paint paint2 = new Paint();
        this.f4765n = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f4765n.setColor(i2);
        this.f4765n.setAntiAlias(true);
        this.f4765n.setStrokeWidth(4.0f);
        this.f4766o = new RectF();
    }

    /* JADX INFO: renamed from: e */
    private void m6126e(float f) {
        float f2 = f + 50.0f;
        this.f4759h = f2;
        float f3 = this.f4756e;
        if (f2 < f3 + 400.0f) {
            this.f4759h = f3 + 400.0f;
        } else {
            float f4 = this.f4763l;
            if (f2 > f4) {
                this.f4759h = f4;
            }
        }
        m6134n(this.f4758g, this.f4756e, this.f4757f, this.f4759h);
    }

    /* JADX INFO: renamed from: f */
    private void m6127f(float f, float f2) {
        float f3 = f - 50.0f;
        this.f4758g = f3;
        this.f4759h = f2 + 50.0f;
        float f4 = this.f4754c;
        if (f3 < f4) {
            this.f4758g = f4;
        } else {
            float f5 = this.f4757f;
            if (f3 > f5 - 400.0f) {
                this.f4758g = f5 - 400.0f;
            }
        }
        float f6 = this.f4759h;
        float f7 = this.f4756e;
        if (f6 < f7 + 400.0f) {
            this.f4759h = f7 + 400.0f;
        } else {
            float f8 = this.f4763l;
            if (f6 > f8) {
                this.f4759h = f8;
            }
        }
        m6134n(this.f4758g, this.f4756e, this.f4757f, this.f4759h);
    }

    /* JADX INFO: renamed from: g */
    private void m6128g(float f, float f2) {
        float f3 = f + 50.0f;
        this.f4757f = f3;
        this.f4759h = f2 + 50.0f;
        float f4 = this.f4758g;
        if (f3 < f4 + 400.0f) {
            this.f4757f = f4 + 400.0f;
        } else {
            float f5 = this.f4762k;
            if (f3 > f5) {
                this.f4757f = f5;
            }
        }
        float f6 = this.f4759h;
        float f7 = this.f4756e;
        if (f6 < f7 + 400.0f) {
            this.f4759h = f7 + 400.0f;
        } else {
            float f8 = this.f4763l;
            if (f6 > f8) {
                this.f4759h = f8;
            }
        }
        m6134n(this.f4758g, this.f4756e, this.f4757f, this.f4759h);
    }

    /* JADX INFO: renamed from: h */
    private void m6129h(float f) {
        float f2 = f - 50.0f;
        this.f4758g = f2;
        float f3 = this.f4754c;
        if (f2 < f3) {
            this.f4758g = f3;
        } else {
            float f4 = this.f4757f;
            if (f2 > f4 - 400.0f) {
                this.f4758g = f4 - 400.0f;
            }
        }
        m6134n(this.f4758g, this.f4756e, this.f4757f, this.f4759h);
    }

    /* JADX INFO: renamed from: i */
    private void m6130i(float f) {
        float f2 = f + 50.0f;
        this.f4757f = f2;
        float f3 = this.f4758g;
        if (f2 < f3 + 400.0f) {
            this.f4757f = f3 + 400.0f;
        } else {
            float f4 = this.f4762k;
            if (f2 > f4) {
                this.f4757f = f4;
            }
        }
        m6134n(this.f4758g, this.f4756e, this.f4757f, this.f4759h);
    }

    /* JADX INFO: renamed from: j */
    private void m6131j(float f) {
        float f2 = f - 50.0f;
        this.f4756e = f2;
        float f3 = this.f4755d;
        if (f2 < f3) {
            this.f4756e = f3;
        } else {
            float f4 = this.f4759h;
            if (f2 > f4 - 400.0f) {
                this.f4756e = f4 - 400.0f;
            }
        }
        m6134n(this.f4758g, this.f4756e, this.f4757f, this.f4759h);
    }

    /* JADX INFO: renamed from: k */
    private void m6132k(float f, float f2) {
        float f3 = f - 50.0f;
        this.f4758g = f3;
        this.f4756e = f2 - 50.0f;
        float f4 = this.f4754c;
        if (f3 < f4) {
            this.f4758g = f4;
        } else {
            float f5 = this.f4757f;
            if (f3 > f5 - 400.0f) {
                this.f4758g = f5 - 400.0f;
            }
        }
        float f6 = this.f4756e;
        float f7 = this.f4755d;
        if (f6 < f7) {
            this.f4756e = f7;
        } else {
            float f8 = this.f4759h;
            if (f6 > f8 - 400.0f) {
                this.f4756e = f8 - 400.0f;
            }
        }
        m6134n(this.f4758g, this.f4756e, this.f4757f, this.f4759h);
    }

    /* JADX INFO: renamed from: l */
    private void m6133l(float f, float f2) {
        float f3 = f + 50.0f;
        this.f4757f = f3;
        this.f4756e = f2 - 50.0f;
        float f4 = this.f4758g;
        if (f3 < f4 + 400.0f) {
            this.f4757f = f4 + 400.0f;
        } else {
            float f5 = this.f4762k;
            if (f3 > f5) {
                this.f4757f = f5;
            }
        }
        float f6 = this.f4756e;
        float f7 = this.f4755d;
        if (f6 < f7) {
            this.f4756e = f7;
        } else {
            float f8 = this.f4759h;
            if (f6 > f8 - 400.0f) {
                this.f4756e = f8 - 400.0f;
            }
        }
        m6134n(this.f4758g, this.f4756e, this.f4757f, this.f4759h);
    }

    /* JADX INFO: renamed from: n */
    private void m6134n(float f, float f2, float f3, float f4) {
        this.f4766o.set((int) f, (int) f2, (int) f3, (int) f4);
    }

    /* JADX INFO: renamed from: c */
    public void m6135c(int i, int i2) {
        m6125b(i, i2);
        float f = this.f4762k;
        float f2 = (f / 2.0f) - 200.0f;
        this.f4758g = f2;
        float f3 = this.f4763l;
        float f4 = (f3 / 2.0f) - 200.0f;
        this.f4756e = f4;
        float f5 = (f3 / 2.0f) + 200.0f;
        this.f4759h = f5;
        float f6 = (f / 2.0f) + 200.0f;
        this.f4757f = f6;
        m6134n(f2, f4, f6, f5);
    }

    /* JADX INFO: renamed from: d */
    public void m6136d(int i, int i2, Rect rect) {
        m6125b(i, i2);
        float f = rect.left;
        this.f4758g = f;
        float f2 = rect.top;
        this.f4756e = f2;
        float f3 = rect.bottom;
        this.f4759h = f3;
        float f4 = rect.right;
        this.f4757f = f4;
        m6134n(f, f2, f4, f3);
    }

    public Rect getSize() {
        return new Rect((int) this.f4758g, (int) this.f4756e, (int) this.f4757f, (int) this.f4759h);
    }

    /* JADX INFO: renamed from: m */
    public void m6137m() {
        float f = this.f4762k;
        float f2 = (f / 2.0f) - 200.0f;
        this.f4758g = f2;
        float f3 = this.f4763l;
        float f4 = (f3 / 2.0f) - 200.0f;
        this.f4756e = f4;
        float f5 = (f3 / 2.0f) + 200.0f;
        this.f4759h = f5;
        float f6 = (f / 2.0f) + 200.0f;
        this.f4757f = f6;
        m6134n(f2, f4, f6, f5);
        postInvalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f = ((this.f4757f - this.f4758g) / 100.0f) * 5.0f;
        canvas.drawRect(this.f4766o, this.f4764m);
        this.f4765n.setTextSize(f);
        canvas.drawText(((int) this.f4758g) + "," + ((int) this.f4756e), this.f4758g + 15.0f, this.f4756e + f + 10.0f, this.f4765n);
        float f2 = 5.0f * f;
        canvas.drawText(((int) this.f4757f) + "," + ((int) this.f4756e), this.f4757f - f2, this.f4756e + f + 10.0f, this.f4765n);
        canvas.drawText(((int) this.f4758g) + "," + ((int) this.f4759h), this.f4758g + 15.0f, this.f4759h - 15.0f, this.f4765n);
        canvas.drawText(((int) this.f4757f) + "," + ((int) this.f4759h), this.f4757f - f2, this.f4759h - 15.0f, this.f4765n);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f4753b = m6124a(motionEvent.getX(), motionEvent.getY());
            return true;
        }
        if (action != 2) {
            return true;
        }
        this.f4760i = motionEvent.getX();
        float y = motionEvent.getY();
        this.f4761j = y;
        switch (this.f4753b) {
            case 0:
                m6132k(this.f4760i, y);
                break;
            case 1:
                m6131j(y);
                break;
            case 2:
                m6133l(this.f4760i, y);
                break;
            case 3:
                m6130i(this.f4760i);
                break;
            case 4:
                m6128g(this.f4760i, y);
                break;
            case 5:
                m6126e(y);
                break;
            case 6:
                m6127f(this.f4760i, y);
                break;
            case 7:
                m6129h(this.f4760i);
                break;
        }
        postInvalidate();
        return true;
    }
}
