package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.widget.Button;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class b {
    public abstract int[] a();

    public int b(Context context, boolean z) {
        return z ? cn.manstep.phonemirrorBox.util.c0.b(context, 64.0f) : cn.manstep.phonemirrorBox.util.c0.b(context, 48.0f);
    }

    public abstract int c(Context context, int i);

    public abstract String[] d();

    public abstract int e();

    public abstract void f(Context context, Button button, boolean z, boolean z2, boolean z3);
}
