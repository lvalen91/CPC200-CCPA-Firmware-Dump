package p093d.p099c.p120b.p123e.p125c;

import p093d.p099c.p120b.p123e.p124b.C1277c;
import p093d.p099c.p120b.p123e.p124b.EnumC1275a;
import p093d.p099c.p120b.p123e.p124b.EnumC1276b;

/* JADX INFO: renamed from: d.c.b.e.c.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1283f {

    /* JADX INFO: renamed from: a */
    private EnumC1276b f7971a;

    /* JADX INFO: renamed from: b */
    private EnumC1275a f7972b;

    /* JADX INFO: renamed from: c */
    private C1277c f7973c;

    /* JADX INFO: renamed from: d */
    private int f7974d = -1;

    /* JADX INFO: renamed from: e */
    private C1279b f7975e;

    /* JADX INFO: renamed from: b */
    public static boolean m9594b(int i) {
        return i >= 0 && i < 8;
    }

    /* JADX INFO: renamed from: a */
    public C1279b m9595a() {
        return this.f7975e;
    }

    /* JADX INFO: renamed from: c */
    public void m9596c(EnumC1275a enumC1275a) {
        this.f7972b = enumC1275a;
    }

    /* JADX INFO: renamed from: d */
    public void m9597d(int i) {
        this.f7974d = i;
    }

    /* JADX INFO: renamed from: e */
    public void m9598e(C1279b c1279b) {
        this.f7975e = c1279b;
    }

    /* JADX INFO: renamed from: f */
    public void m9599f(EnumC1276b enumC1276b) {
        this.f7971a = enumC1276b;
    }

    /* JADX INFO: renamed from: g */
    public void m9600g(C1277c c1277c) {
        this.f7973c = c1277c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f7971a);
        sb.append("\n ecLevel: ");
        sb.append(this.f7972b);
        sb.append("\n version: ");
        sb.append(this.f7973c);
        sb.append("\n maskPattern: ");
        sb.append(this.f7974d);
        if (this.f7975e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f7975e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
