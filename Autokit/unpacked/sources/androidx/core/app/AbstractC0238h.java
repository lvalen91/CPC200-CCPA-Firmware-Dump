package androidx.core.app;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: androidx.core.app.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0238h {

    /* JADX INFO: renamed from: androidx.core.app.h$a */
    public interface a {
    }

    /* JADX INFO: renamed from: a */
    public abstract Parcelable m1673a(View view, Matrix matrix, RectF rectF);

    /* JADX INFO: renamed from: b */
    public abstract View m1674b(Context context, Parcelable parcelable);

    /* JADX INFO: renamed from: c */
    public abstract void m1675c(List<String> list, Map<String, View> map);

    /* JADX INFO: renamed from: d */
    public abstract void m1676d(List<View> list);

    /* JADX INFO: renamed from: e */
    public abstract void m1677e(List<String> list, List<View> list2, List<View> list3);

    /* JADX INFO: renamed from: f */
    public abstract void m1678f(List<String> list, List<View> list2, List<View> list3);

    /* JADX INFO: renamed from: g */
    public abstract void m1679g(List<String> list, List<View> list2, a aVar);
}
