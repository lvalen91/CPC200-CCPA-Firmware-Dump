package androidx.databinding;

import android.view.View;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class c {
    public List<c> a() {
        return Collections.emptyList();
    }

    public abstract ViewDataBinding b(e eVar, View view, int i);

    public abstract ViewDataBinding c(e eVar, View[] viewArr, int i);
}
