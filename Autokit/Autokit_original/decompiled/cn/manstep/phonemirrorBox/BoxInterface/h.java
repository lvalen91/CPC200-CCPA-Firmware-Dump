package cn.manstep.phonemirrorBox.BoxInterface;

import java.util.Vector;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class h {
    public final Vector<byte[]> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Vector<Long> f1474b;

    public h(int i) {
        this.a = new Vector<>(i);
        this.f1474b = new Vector<>(i);
    }

    public void a(byte[] bArr, long j) {
        this.a.add(bArr);
        this.f1474b.add(Long.valueOf(j));
    }

    public void b() {
        this.a.clear();
        this.f1474b.clear();
    }

    public byte[] c() {
        byte[] bArrFirstElement = this.a.firstElement();
        this.a.remove(0);
        return bArrFirstElement;
    }

    public long d() {
        long jLongValue = this.f1474b.firstElement().longValue();
        this.f1474b.remove(0);
        return jLongValue;
    }

    public boolean e() {
        return this.a.isEmpty();
    }

    public int f() {
        return this.a.size();
    }
}
