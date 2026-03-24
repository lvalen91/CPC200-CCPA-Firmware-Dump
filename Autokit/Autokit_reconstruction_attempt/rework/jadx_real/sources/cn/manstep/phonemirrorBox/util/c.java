package cn.manstep.phonemirrorBox.util;

import android.graphics.Bitmap;
import com.yalantis.ucrop.BuildConfig;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c {
    private String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bitmap f1855b;

    public c() {
        this.a = BuildConfig.FLAVOR;
        this.f1855b = null;
    }

    public Bitmap a() {
        return this.f1855b;
    }

    public String b() {
        return this.a;
    }

    public c(String str, String str2, Bitmap bitmap) {
        this.a = BuildConfig.FLAVOR;
        this.f1855b = null;
        this.a = str;
        this.f1855b = bitmap;
    }
}
