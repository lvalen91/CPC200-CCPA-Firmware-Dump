package cn.manstep.phonemirrorBox;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class i {
    public int a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1667b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1668c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1669d = 0;
    public int e = 0;
    public int f = 0;
    private cn.manstep.phonemirrorBox.h0.a g = new cn.manstep.phonemirrorBox.h0.a();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1670b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f1671c;

        a(i iVar, int i, int i2) {
            this.f1670b = i;
            this.f1671c = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.manstep.phonemirrorBox.v0.e.L(1, 0, this.f1670b, this.f1671c);
        }
    }

    public i(View view) {
    }

    public void a() {
        this.g.b("MoveEvent");
    }

    public void b(int i, int i2) {
        this.g.f("MoveEvent", new a(this, i, i2), 17L, 17L);
    }

    public void c(View view, int i, int i2) {
        cn.manstep.phonemirrorBox.util.x xVarM = c0.m();
        cn.manstep.phonemirrorBox.util.x xVarA = c0.a();
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewCommon,resizeAndroidAutoView: VideoSize:" + this.e + "x" + this.f + ", MaxVideoSize:" + xVarM + ", AndroidAutoSize:" + xVarA);
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorViewCommon,resizeAndroidAutoView: screenWxH=");
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
        if (this.e <= 0 || this.f <= 0) {
            return;
        }
        if (u.z().T()) {
            this.f1669d = 0;
            this.f1668c = 0;
            int i3 = xVarM.f1934b;
            this.a = i3;
            this.f1667b = (i3 * this.f) / this.e;
            cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: " + toString());
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = xVarM.f1934b;
        layoutParams.height = xVarM.f1935c;
        cn.manstep.phonemirrorBox.util.s.i("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: start x=" + view.getX() + ", y=" + view.getY() + ", left=" + view.getLeft() + ", top=" + view.getTop());
        int i4 = (this.e - xVarA.f1934b) / 2;
        int i5 = (this.f - xVarA.f1935c) / 2;
        if (i4 != 0 && i5 != 0) {
            xVarA.n(c0.i().g(this.e, this.f));
            i4 = (this.e - xVarA.f1934b) / 2;
            i5 = (this.f - xVarA.f1935c) / 2;
        }
        cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: androidAutoSize=" + xVarA);
        int i6 = (i4 * xVarM.f1934b) / xVarA.f1934b;
        int i7 = (i5 * xVarM.f1935c) / xVarA.f1935c;
        cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: x=" + i6 + ", y=" + i7);
        view.setTop(-i7);
        int i8 = -i6;
        view.setLeft(i8);
        this.f1669d = i7;
        this.f1668c = i6;
        int i9 = xVarM.f1934b + (i6 * 2);
        layoutParams.width = i9;
        int i10 = xVarM.f1935c + (i7 * 2);
        layoutParams.height = i10;
        this.a = i9;
        this.f1667b = i10;
        if (i9 == i) {
            view.setX(i8);
        }
        cn.manstep.phonemirrorBox.util.s.i("AutoBoxMirrorViewCommon", "resizeAndroidAutoView: left=" + this.f1668c + ", top=" + this.f1669d + ", surface=" + this.a + "x" + this.f1667b + ", display=" + (this.a - (this.f1668c * 2)) + "x" + (this.f1667b - (this.f1669d * 2)));
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
        cn.manstep.phonemirrorBox.util.s.i("AutoBoxMirrorViewCommon", sb2.toString());
    }

    public String toString() {
        return "AutoBoxMirrorViewCommon{scaled_width=" + this.a + ", scaled_height=" + this.f1667b + ", scaled_left=" + this.f1668c + ", scaled_top=" + this.f1669d + ", video_width=" + this.e + ", video_height=" + this.f + '}';
    }
}
