package c.g.j;

import android.os.Build;
import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c {
    public static boolean a(Object obj, Object obj2) {
        return Build.VERSION.SDK_INT >= 19 ? defpackage.a.a(obj, obj2) : obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int b(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Arrays.hashCode(objArr) : Arrays.hashCode(objArr);
    }
}
