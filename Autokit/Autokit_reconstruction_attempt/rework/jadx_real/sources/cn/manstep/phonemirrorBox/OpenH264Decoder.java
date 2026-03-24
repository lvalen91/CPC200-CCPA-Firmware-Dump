package cn.manstep.phonemirrorBox;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class OpenH264Decoder {
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d.d.a.b f1549d = null;
    private int e;
    public byte[] f;

    static {
        try {
            System.loadLibrary("openH264decoder");
        } catch (UnsatisfiedLinkError e) {
            p.g = false;
            cn.manstep.phonemirrorBox.util.s.f("OpenH264Decoder", "static initializer: " + cn.manstep.phonemirrorBox.util.s.g(e));
        }
    }

    private native void nativeDestroy();

    private native void nativeInit();

    public void a() {
        d.d.a.b bVar = this.f1549d;
        if (bVar != null) {
            bVar.a();
            this.f1549d = null;
        }
        nativeDestroy();
    }

    public void b() {
        this.f = new byte[4392000];
        this.f1548c = 0;
        this.f1547b = 0;
        this.a = 0;
        this.f1549d = AutoBoxMirrorSoftView.getSoftH264Render();
        this.e = 0;
        nativeInit();
    }

    public void c(byte[] bArr, int i, int i2) {
        d.d.a.b bVar;
        byte[] bArr2 = this.f;
        int iDecodeFrameOffset = decodeFrameOffset(bArr, i, i2, bArr2, bArr2.length);
        this.e++;
        if (this.a != getWidth() || this.f1547b != getHeight()) {
            int width = getWidth();
            int height = getHeight();
            this.f1548c = width;
            this.a = width;
            this.f1547b = height;
            if (this.f.length < ((width * height) * 3) / 2) {
                this.f = new byte[((width * height) * 3) / 2];
            }
            cn.manstep.phonemirrorBox.util.s.e("mShowWidth = " + this.f1548c);
            d.d.a.b bVar2 = this.f1549d;
            if (bVar2 != null) {
                bVar2.b(this.f1548c, this.f1547b);
            }
        }
        if (iDecodeFrameOffset <= 0 || (bVar = this.f1549d) == null || this.e <= 0) {
            return;
        }
        bVar.c(this.f);
    }

    public native int decodeFrameOffset(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

    public native int getHeight();

    public native int getWidth();
}
