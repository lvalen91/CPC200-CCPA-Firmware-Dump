package androidx.core.widget;

import android.os.Build;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public interface b {
    public static final boolean a;

    static {
        a = Build.VERSION.SDK_INT >= 27;
    }
}
