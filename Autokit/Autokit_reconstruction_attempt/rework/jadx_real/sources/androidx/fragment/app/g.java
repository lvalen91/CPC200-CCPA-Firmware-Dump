package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class g {
    @Deprecated
    public Fragment b(Context context, String str, Bundle bundle) {
        return Fragment.p0(context, str, bundle);
    }

    public abstract View c(int i);

    public abstract boolean d();
}
