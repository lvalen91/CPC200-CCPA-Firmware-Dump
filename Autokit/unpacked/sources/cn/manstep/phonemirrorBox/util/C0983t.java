package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.t */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0983t {

    /* JADX INFO: renamed from: a */
    private int f6146a;

    /* JADX INFO: renamed from: b */
    private Point f6147b;

    /* JADX INFO: renamed from: c */
    private Point f6148c;

    /* JADX INFO: renamed from: d */
    private Point f6149d;

    /* JADX INFO: renamed from: f */
    private a f6151f;

    /* JADX INFO: renamed from: e */
    int f6150e = 50;

    /* JADX INFO: renamed from: g */
    private int f6152g = 2;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.t$a */
    public interface a {
        /* JADX INFO: renamed from: j */
        void mo5950j();
    }

    public C0983t(Context context) {
        m7387a();
    }

    /* JADX INFO: renamed from: a */
    private void m7387a() {
        this.f6147b = new Point();
        this.f6148c = new Point();
        this.f6149d = new Point();
    }

    /* JADX INFO: renamed from: b */
    public void m7388b(a aVar) {
        this.f6151f = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0126  */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m7389c(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        boolean z = false;
        if (actionMasked == 0) {
            this.f6146a = 0;
            this.f6147b.x = (int) motionEvent.getX(0);
            this.f6147b.y = (int) motionEvent.getY(0);
        } else if (actionMasked == 1) {
            this.f6146a = 0;
        } else if (actionMasked == 2) {
            int i = this.f6146a;
            if (i != 0 && i != 1 && i == 3 && motionEvent.getPointerCount() == 3) {
                Point point = new Point((int) motionEvent.getX(0), (int) motionEvent.getY(0));
                Point point2 = new Point((int) motionEvent.getX(1), (int) motionEvent.getY(1));
                Point point3 = new Point((int) motionEvent.getX(2), (int) motionEvent.getY(2));
                int i2 = this.f6152g;
                if (i2 == 0) {
                    int i3 = this.f6147b.y - point.y;
                    int i4 = this.f6150e;
                    if (i3 > i4 && this.f6148c.y - point2.y > i4 && this.f6149d.y - point3.y > i4) {
                    }
                } else if (i2 == 1) {
                    int i5 = this.f6147b.x - point.x;
                    int i6 = this.f6150e;
                    if (i5 > i6 && this.f6148c.x - point2.x > i6 && this.f6149d.x - point3.x > i6) {
                    }
                } else if (i2 != 3) {
                    int i7 = point.y - this.f6147b.y;
                    int i8 = this.f6150e;
                    if (i7 > i8 && point2.y - this.f6148c.y > i8 && point3.y - this.f6149d.y > i8) {
                        z = true;
                    }
                } else {
                    int i9 = point.x - this.f6147b.x;
                    int i10 = this.f6150e;
                    if (i9 > i10 && point2.x - this.f6148c.x > i10 && point3.x - this.f6149d.x > i10) {
                    }
                }
                if (z) {
                    this.f6151f.mo5950j();
                }
                return true;
            }
        } else if (actionMasked != 5) {
            if (actionMasked == 6) {
                this.f6146a = 1;
            }
        } else if (this.f6146a != 1) {
            if (motionEvent.getPointerCount() == 2) {
                this.f6146a = 2;
                this.f6148c.x = (int) motionEvent.getX(1);
                this.f6148c.y = (int) motionEvent.getY(1);
            } else if (motionEvent.getPointerCount() == 3) {
                this.f6146a = 3;
                this.f6148c.x = (int) motionEvent.getX(1);
                this.f6148c.y = (int) motionEvent.getY(1);
                this.f6149d.x = (int) motionEvent.getX(2);
                this.f6149d.y = (int) motionEvent.getY(2);
            }
        }
        return false;
    }
}
