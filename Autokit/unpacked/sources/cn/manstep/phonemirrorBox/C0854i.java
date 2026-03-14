package cn.manstep.phonemirrorBox;

import android.view.View;
import android.view.ViewGroup;
import cn.manstep.phonemirrorBox.p074h0.C0852a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0987x;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0854i {

    /* JADX INFO: renamed from: a */
    public int f5013a = 0;

    /* JADX INFO: renamed from: b */
    public int f5014b = 0;

    /* JADX INFO: renamed from: c */
    public int f5015c = 0;

    /* JADX INFO: renamed from: d */
    public int f5016d = 0;

    /* JADX INFO: renamed from: e */
    public int f5017e = 0;

    /* JADX INFO: renamed from: f */
    public int f5018f = 0;

    /* JADX INFO: renamed from: g */
    private C0852a f5019g = new C0852a();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.i$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f5020b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f5021c;

        a(C0854i c0854i, int i, int i2) {
            this.f5020b = i;
            this.f5021c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0995e.m7439L(1, 0, this.f5020b, this.f5021c);
        }
    }

    public C0854i(View view) {
    }

    /* JADX INFO: renamed from: a */
    public void m6345a() {
        this.f5019g.m6336b("MoveEvent");
    }

    /* JADX INFO: renamed from: b */
    public void m6346b(int i, int i2) {
        this.f5019g.m6338f("MoveEvent", new a(this, i, i2), 17L, 17L);
    }

    /* JADX INFO: renamed from: c */
    public void m6347c(View view, int i, int i2) {
        C0987x c0987xM6113m = C0797c0.m6113m();
        C0987x c0987xM6104a = C0797c0.m6104a();
        C0982s.m7373c("AutoBoxMirrorViewCommon,resizeAndroidAutoView: VideoSize:" + this.f5017e + "x" + this.f5018f + ", MaxVideoSize:" + c0987xM6113m + ", AndroidAutoSize:" + c0987xM6104a);
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorViewCommon,resizeAndroidAutoView: screenWxH=");
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        C0982s.m7373c(sb.toString());
        if (this.f5017e <= 0 || this.f5018f <= 0) {
            return;
        }
        if (C0953u.m7001z().m7021T()) {
            this.f5016d = 0;
            this.f5015c = 0;
            int i3 = c0987xM6113m.f6158b;
            this.f5013a = i3;
            this.f5014b = (i3 * this.f5018f) / this.f5017e;
            C0982s.m7374d("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: " + toString());
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = c0987xM6113m.f6158b;
        layoutParams.height = c0987xM6113m.f6159c;
        C0982s.m7379i("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: start x=" + view.getX() + ", y=" + view.getY() + ", left=" + view.getLeft() + ", top=" + view.getTop());
        int i4 = (this.f5017e - c0987xM6104a.f6158b) / 2;
        int i5 = (this.f5018f - c0987xM6104a.f6159c) / 2;
        if (i4 != 0 && i5 != 0) {
            c0987xM6104a.m7401n(C0797c0.m6109i().m6118g(this.f5017e, this.f5018f));
            i4 = (this.f5017e - c0987xM6104a.f6158b) / 2;
            i5 = (this.f5018f - c0987xM6104a.f6159c) / 2;
        }
        C0982s.m7374d("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: androidAutoSize=" + c0987xM6104a);
        int i6 = (i4 * c0987xM6113m.f6158b) / c0987xM6104a.f6158b;
        int i7 = (i5 * c0987xM6113m.f6159c) / c0987xM6104a.f6159c;
        C0982s.m7374d("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: x=" + i6 + ", y=" + i7);
        view.setTop(-i7);
        int i8 = -i6;
        view.setLeft(i8);
        this.f5016d = i7;
        this.f5015c = i6;
        int i9 = c0987xM6113m.f6158b + (i6 * 2);
        layoutParams.width = i9;
        int i10 = c0987xM6113m.f6159c + (i7 * 2);
        layoutParams.height = i10;
        this.f5013a = i9;
        this.f5014b = i10;
        if (i9 == i) {
            view.setX(i8);
        }
        C0982s.m7379i("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: left=" + this.f5015c + ", top=" + this.f5016d + ", surface=" + this.f5013a + "x" + this.f5014b + ", display=" + (this.f5013a - (this.f5015c * 2)) + "x" + (this.f5014b - (this.f5016d * 2)));
        view.setLayoutParams(layoutParams);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("resizeAndroidAutoView: end x=");
        sb2.append(view.getX());
        sb2.append(", y=");
        sb2.append(view.getY());
        sb2.append(", left=");
        sb2.append(view.getLeft());
        sb2.append(", top=");
        sb2.append(view.getTop());
        C0982s.m7379i("AutoBoxMirrorViewCommon", sb2.toString());
    }

    public String toString() {
        return "AutoBoxMirrorViewCommon{scaled_width=" + this.f5013a + ", scaled_height=" + this.f5014b + ", scaled_left=" + this.f5015c + ", scaled_top=" + this.f5016d + ", video_width=" + this.f5017e + ", video_height=" + this.f5018f + '}';
    }
}
