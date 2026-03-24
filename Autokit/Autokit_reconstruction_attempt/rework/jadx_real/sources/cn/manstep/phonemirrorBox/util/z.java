package cn.manstep.phonemirrorBox.util;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
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
