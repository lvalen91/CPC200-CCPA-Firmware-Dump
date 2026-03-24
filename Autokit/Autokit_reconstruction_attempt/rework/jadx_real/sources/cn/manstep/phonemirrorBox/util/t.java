package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class t {
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Point f1927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Point f1928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Point f1929d;
    private a f;
    int e = 50;
    private int g = 2;

    public interface a {
        void j();
    }

    public t(Context context) {
        a();
    }

    private void a() {
        this.f1927b = new Point();
        this.f1928c = new Point();
        this.f1929d = new Point();
    }

    public void b(a aVar) {
        this.f = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean c(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        boolean z = false;
        if (actionMasked == 0) {
            this.a = 0;
            this.f1927b.x = (int) motionEvent.getX(0);
            this.f1927b.y = (int) motionEvent.getY(0);
        } else if (actionMasked == 1) {
            this.a = 0;
        } else if (actionMasked == 2) {
            int i = this.a;
            if (i != 0 && i != 1 && i == 3 && motionEvent.getPointerCount() == 3) {
                Point point = new Point((int) motionEvent.getX(0), (int) motionEvent.getY(0));
                Point point2 = new Point((int) motionEvent.getX(1), (int) motionEvent.getY(1));
                Point point3 = new Point((int) motionEvent.getX(2), (int) motionEvent.getY(2));
                int i2 = this.g;
                if (i2 == 0) {
                    int i3 = this.f1927b.y - point.y;
                    int i4 = this.e;
                    if (i3 > i4 && this.f1928c.y - point2.y > i4 && this.f1929d.y - point3.y > i4) {
                    }
                } else if (i2 == 1) {
                    int i5 = this.f1927b.x - point.x;
                    int i6 = this.e;
                    if (i5 > i6 && this.f1928c.x - point2.x > i6 && this.f1929d.x - point3.x > i6) {
                    }
                } else if (i2 != 3) {
                    int i7 = point.y - this.f1927b.y;
                    int i8 = this.e;
                    if (i7 > i8 && point2.y - this.f1928c.y > i8 && point3.y - this.f1929d.y > i8) {
                        z = true;
                    }
                } else {
                    int i9 = point.x - this.f1927b.x;
                    int i10 = this.e;
                    if (i9 > i10 && point2.x - this.f1928c.x > i10 && point3.x - this.f1929d.x > i10) {
                    }
                }
                if (z) {
                    this.f.j();
                }
                return true;
            }
        } else if (actionMasked != 5) {
            if (actionMasked == 6) {
                this.a = 1;
            }
        } else if (this.a != 1) {
            if (motionEvent.getPointerCount() == 2) {
                this.a = 2;
                this.f1928c.x = (int) motionEvent.getX(1);
                this.f1928c.y = (int) motionEvent.getY(1);
            } else if (motionEvent.getPointerCount() == 3) {
                this.a = 3;
                this.f1928c.x = (int) motionEvent.getX(1);
                this.f1928c.y = (int) motionEvent.getY(1);
                this.f1929d.x = (int) motionEvent.getX(2);
                this.f1929d.y = (int) motionEvent.getY(2);
            }
        }
        return false;
    }
}
