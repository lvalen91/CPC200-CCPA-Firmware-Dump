package cn.manstep.phonemirrorBox.f0;

import android.media.AudioManager;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a {
    protected int a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f1627b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f1628c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected d.b.a.b f1629d;
    protected AudioManager e;

    public int a() {
        return this.f1627b;
    }

    public int b() {
        d.b.a.b bVar = this.f1629d;
        if (bVar != null) {
            return bVar.C();
        }
        return -255;
    }

    public int c() {
        return this.a;
    }

    public int d() {
        return -1;
    }

    public boolean e() {
        return this.f1628c;
    }

    public void f(d.b.a.b bVar) {
        this.f1629d = bVar;
    }
}
