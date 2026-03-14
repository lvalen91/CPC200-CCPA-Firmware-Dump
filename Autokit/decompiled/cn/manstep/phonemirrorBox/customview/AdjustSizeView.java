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

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class AdjustSizeView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f1571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f1572d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;
    private Paint m;
    private Paint n;
    private RectF o;
    private WindowManager p;

    public AdjustSizeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1570b = 8;
        this.f1571c = CropImageView.DEFAULT_ASPECT_RATIO;
        this.f1572d = CropImageView.DEFAULT_ASPECT_RATIO;
        this.p = (WindowManager) context.getSystemService("window");
    }

    private int a(float f, float f2) {
        RectF rectF = this.o;
        float f3 = f - rectF.left;
        float f4 = f2 - rectF.top;
        float f5 = rectF.right - f;
        float f6 = rectF.bottom - f2;
        this.f1570b = 8;
        if (f3 < 80.0f) {
            this.f1570b = 7;
            if (f4 < 80.0f) {
                this.f1570b = 0;
            } else if (f6 < 80.0f) {
                this.f1570b = 6;
            }
        }
        if (f4 < 80.0f) {
            this.f1570b = 1;
            if (f3 < 80.0f) {
                this.f1570b = 0;
            } else if (f5 < 80.0f) {
                this.f1570b = 2;
            }
        }
        if (f5 < 80.0f) {
            this.f1570b = 3;
            if (f6 < 80.0f) {
                this.f1570b = 4;
            } else if (f4 < 80.0f) {
                this.f1570b = 2;
            }
        }
        if (f6 < 80.0f) {
            this.f1570b = 5;
            if (f5 < 80.0f) {
                this.f1570b = 4;
            } else if (f3 < 80.0f) {
                this.f1570b = 6;
            }
        }
        return this.f1570b;
    }

    private void b(int i, int i2) {
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            this.p.getDefaultDisplay().getRealSize(point);
        } else {
            this.p.getDefaultDisplay().getSize(point);
        }
        this.k = point.x;
        this.l = point.y;
        Paint paint = new Paint();
        this.m = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.m.setColor(i);
        this.m.setAntiAlias(true);
        this.m.setStrokeWidth(10.0f);
        Paint paint2 = new Paint();
        this.n = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.n.setColor(i2);
        this.n.setAntiAlias(true);
        this.n.setStrokeWidth(4.0f);
        this.o = new RectF();
    }

    private void e(float f) {
        float f2 = f + 50.0f;
        this.h = f2;
        float f3 = this.e;
        if (f2 < f3 + 400.0f) {
            this.h = f3 + 400.0f;
        } else {
            float f4 = this.l;
            if (f2 > f4) {
                this.h = f4;
            }
        }
        n(this.g, this.e, this.f, this.h);
    }

    private void f(float f, float f2) {
        float f3 = f - 50.0f;
        this.g = f3;
        this.h = f2 + 50.0f;
        float f4 = this.f1571c;
        if (f3 < f4) {
            this.g = f4;
        } else {
            float f5 = this.f;
            if (f3 > f5 - 400.0f) {
                this.g = f5 - 400.0f;
            }
        }
        float f6 = this.h;
        float f7 = this.e;
        if (f6 < f7 + 400.0f) {
            this.h = f7 + 400.0f;
        } else {
            float f8 = this.l;
            if (f6 > f8) {
                this.h = f8;
            }
        }
        n(this.g, this.e, this.f, this.h);
    }

    private void g(float f, float f2) {
        float f3 = f + 50.0f;
        this.f = f3;
        this.h = f2 + 50.0f;
        float f4 = this.g;
        if (f3 < f4 + 400.0f) {
            this.f = f4 + 400.0f;
        } else {
            float f5 = this.k;
            if (f3 > f5) {
                this.f = f5;
            }
        }
        float f6 = this.h;
        float f7 = this.e;
        if (f6 < f7 + 400.0f) {
            this.h = f7 + 400.0f;
        } else {
            float f8 = this.l;
            if (f6 > f8) {
                this.h = f8;
            }
        }
        n(this.g, this.e, this.f, this.h);
    }

    private void h(float f) {
        float f2 = f - 50.0f;
        this.g = f2;
        float f3 = this.f1571c;
        if (f2 < f3) {
            this.g = f3;
        } else {
            float f4 = this.f;
            if (f2 > f4 - 400.0f) {
                this.g = f4 - 400.0f;
            }
        }
        n(this.g, this.e, this.f, this.h);
    }

    private void i(float f) {
        float f2 = f + 50.0f;
        this.f = f2;
        float f3 = this.g;
        if (f2 < f3 + 400.0f) {
            this.f = f3 + 400.0f;
        } else {
            float f4 = this.k;
            if (f2 > f4) {
                this.f = f4;
            }
        }
        n(this.g, this.e, this.f, this.h);
    }

    private void j(float f) {
        float f2 = f - 50.0f;
        this.e = f2;
        float f3 = this.f1572d;
        if (f2 < f3) {
            this.e = f3;
        } else {
            float f4 = this.h;
            if (f2 > f4 - 400.0f) {
                this.e = f4 - 400.0f;
            }
        }
        n(this.g, this.e, this.f, this.h);
    }

    private void k(float f, float f2) {
        float f3 = f - 50.0f;
        this.g = f3;
        this.e = f2 - 50.0f;
        float f4 = this.f1571c;
        if (f3 < f4) {
            this.g = f4;
        } else {
            float f5 = this.f;
            if (f3 > f5 - 400.0f) {
                this.g = f5 - 400.0f;
            }
        }
        float f6 = this.e;
        float f7 = this.f1572d;
        if (f6 < f7) {
            this.e = f7;
        } else {
            float f8 = this.h;
            if (f6 > f8 - 400.0f) {
                this.e = f8 - 400.0f;
            }
        }
        n(this.g, this.e, this.f, this.h);
    }

    private void l(float f, float f2) {
        float f3 = f + 50.0f;
        this.f = f3;
        this.e = f2 - 50.0f;
        float f4 = this.g;
        if (f3 < f4 + 400.0f) {
            this.f = f4 + 400.0f;
        } else {
            float f5 = this.k;
            if (f3 > f5) {
                this.f = f5;
            }
        }
        float f6 = this.e;
        float f7 = this.f1572d;
        if (f6 < f7) {
            this.e = f7;
        } else {
            float f8 = this.h;
            if (f6 > f8 - 400.0f) {
                this.e = f8 - 400.0f;
            }
        }
        n(this.g, this.e, this.f, this.h);
    }

    private void n(float f, float f2, float f3, float f4) {
        this.o.set((int) f, (int) f2, (int) f3, (int) f4);
    }

    public void c(int i, int i2) {
        b(i, i2);
        float f = this.k;
        float f2 = (f / 2.0f) - 200.0f;
        this.g = f2;
        float f3 = this.l;
        float f4 = (f3 / 2.0f) - 200.0f;
        this.e = f4;
        float f5 = (f3 / 2.0f) + 200.0f;
        this.h = f5;
        float f6 = (f / 2.0f) + 200.0f;
        this.f = f6;
        n(f2, f4, f6, f5);
    }

    public void d(int i, int i2, Rect rect) {
        b(i, i2);
        float f = rect.left;
        this.g = f;
        float f2 = rect.top;
        this.e = f2;
        float f3 = rect.bottom;
        this.h = f3;
        float f4 = rect.right;
        this.f = f4;
        n(f, f2, f4, f3);
    }

    public Rect getSize() {
        return new Rect((int) this.g, (int) this.e, (int) this.f, (int) this.h);
    }

    public void m() {
        float f = this.k;
        float f2 = (f / 2.0f) - 200.0f;
        this.g = f2;
        float f3 = this.l;
        float f4 = (f3 / 2.0f) - 200.0f;
        this.e = f4;
        float f5 = (f3 / 2.0f) + 200.0f;
        this.h = f5;
        float f6 = (f / 2.0f) + 200.0f;
        this.f = f6;
        n(f2, f4, f6, f5);
        postInvalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f = ((this.f - this.g) / 100.0f) * 5.0f;
        canvas.drawRect(this.o, this.m);
        this.n.setTextSize(f);
        canvas.drawText(((int) this.g) + "," + ((int) this.e), this.g + 15.0f, this.e + f + 10.0f, this.n);
        float f2 = 5.0f * f;
        canvas.drawText(((int) this.f) + "," + ((int) this.e), this.f - f2, this.e + f + 10.0f, this.n);
        canvas.drawText(((int) this.g) + "," + ((int) this.h), this.g + 15.0f, this.h - 15.0f, this.n);
        canvas.drawText(((int) this.f) + "," + ((int) this.h), this.f - f2, this.h - 15.0f, this.n);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1570b = a(motionEvent.getX(), motionEvent.getY());
            return true;
        }
        if (action != 2) {
            return true;
        }
        this.i = motionEvent.getX();
        float y = motionEvent.getY();
        this.j = y;
        switch (this.f1570b) {
            case 0:
                k(this.i, y);
                break;
            case 1:
                j(y);
                break;
            case 2:
                l(this.i, y);
                break;
            case 3:
                i(this.i);
                break;
            case 4:
                g(this.i, y);
                break;
            case 5:
                e(y);
                break;
            case 6:
                f(this.i, y);
                break;
            case 7:
                h(this.i);
                break;
        }
        postInvalidate();
        return true;
    }
}
