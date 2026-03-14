package p016c.p017a.p024o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import p016c.p017a.C0493a;
import p016c.p017a.C0494b;
import p016c.p017a.C0496d;
import p016c.p017a.C0502j;

/* JADX INFO: renamed from: c.a.o.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0511a {

    /* JADX INFO: renamed from: a */
    private Context f3160a;

    private C0511a(Context context) {
        this.f3160a = context;
    }

    /* JADX INFO: renamed from: b */
    public static C0511a m4119b(Context context) {
        return new C0511a(context);
    }

    /* JADX INFO: renamed from: a */
    public boolean m4120a() {
        return this.f3160a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* JADX INFO: renamed from: c */
    public int m4121c() {
        return this.f3160a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    /* JADX INFO: renamed from: d */
    public int m4122d() {
        Configuration configuration = this.f3160a.getResources().getConfiguration();
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

    /* JADX INFO: renamed from: e */
    public int m4123e() {
        return this.f3160a.getResources().getDimensionPixelSize(C0496d.abc_action_bar_stacked_tab_max_width);
    }

    /* JADX INFO: renamed from: f */
    public int m4124f() {
        TypedArray typedArrayObtainStyledAttributes = this.f3160a.obtainStyledAttributes(null, C0502j.ActionBar, C0493a.actionBarStyle, 0);
        int layoutDimension = typedArrayObtainStyledAttributes.getLayoutDimension(C0502j.ActionBar_height, 0);
        Resources resources = this.f3160a.getResources();
        if (!m4125g()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(C0496d.abc_action_bar_stacked_max_height));
        }
        typedArrayObtainStyledAttributes.recycle();
        return layoutDimension;
    }

    /* JADX INFO: renamed from: g */
    public boolean m4125g() {
        return this.f3160a.getResources().getBoolean(C0494b.abc_action_bar_embed_tabs);
    }

    /* JADX INFO: renamed from: h */
    public boolean m4126h() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.f3160a).hasPermanentMenuKey();
    }
}
