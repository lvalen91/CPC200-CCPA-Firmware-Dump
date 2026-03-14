package p016c.p065p;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: c.p.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0668i {
    /* JADX INFO: renamed from: a */
    static PropertyValuesHolder m5090a(Property<?, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? PropertyValuesHolder.ofObject(property, (TypeConverter) null, path) : PropertyValuesHolder.ofFloat(new C0666h(property, path), CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
    }
}
