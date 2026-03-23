package cn.manstep.phonemirrorBox.util;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class z<T> {
    private T a;

    public synchronized T a() {
        return this.a;
    }

    public synchronized T b(T t) {
        this.a = t;
        return t;
    }
}
