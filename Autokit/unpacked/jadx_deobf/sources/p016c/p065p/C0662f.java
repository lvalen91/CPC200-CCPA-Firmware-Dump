package p016c.p065p;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: c.p.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0662f {
    /* JADX INFO: renamed from: a */
    static <T> ObjectAnimator m5084a(T t, Property<T, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ObjectAnimator.ofObject(t, property, (TypeConverter) null, path) : ObjectAnimator.ofFloat(t, new C0666h(property, path), CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
    }
}
