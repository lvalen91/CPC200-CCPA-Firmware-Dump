package cn.manstep.phonemirrorBox.util;

import android.graphics.Bitmap;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0963c {

    /* JADX INFO: renamed from: a */
    private String f6011a;

    /* JADX INFO: renamed from: b */
    private Bitmap f6012b;

    public C0963c() {
        this.f6011a = BuildConfig.FLAVOR;
        this.f6012b = null;
    }

    /* JADX INFO: renamed from: a */
    public Bitmap m7175a() {
        return this.f6012b;
    }

    /* JADX INFO: renamed from: b */
    public String m7176b() {
        return this.f6011a;
    }

    public C0963c(String str, String str2, Bitmap bitmap) {
        this.f6011a = BuildConfig.FLAVOR;
        this.f6012b = null;
        this.f6011a = str;
        this.f6012b = bitmap;
    }
}
