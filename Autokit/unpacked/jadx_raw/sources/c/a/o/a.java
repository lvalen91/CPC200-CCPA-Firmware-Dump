package c.a.o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import c.a.j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a {
    private Context a;

    private a(Context context) {
        this.a = context;
    }

    public static a b(Context context) {
        return new a(context);
    }

    public boolean a() {
        return this.a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int c() {
        return this.a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int d() {
        Configuration configuration = this.a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600) {
            return 5;
        }
        if (i > 960 && i2 > 720) {
            return 5;
        }
        if (i > 720 && i2 > 960) {
            return 5;
        }
        if (i >= 500) {
            return 4;
        }
        if (i > 640 && i2 > 480) {
            return 4;
        }
        if (i <= 480 || i2 <= 640) {
            return i >= 360 ? 3 : 2;
        }
        return 4;
    }

    public int e() {
        return this.a.getResources().getDimensionPixelSize(c.a.d.abc_action_bar_stacked_tab_max_width);
    }

    public int f() {
        TypedArray typedArrayObtainStyledAttributes = this.a.obtainStyledAttributes(null, j.ActionBar, c.a.a.actionBarStyle, 0);
        int layoutDimension = typedArrayObtainStyledAttributes.getLayoutDimension(j.ActionBar_height, 0);
        Resources resources = this.a.getResources();
        if (!g()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(c.a.d.abc_action_bar_stacked_max_height));
        }
        typedArrayObtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean g() {
        return this.a.getResources().getBoolean(c.a.b.abc_action_bar_embed_tabs);
    }

    public boolean h() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.a).hasPermanentMenuKey();
    }
}
