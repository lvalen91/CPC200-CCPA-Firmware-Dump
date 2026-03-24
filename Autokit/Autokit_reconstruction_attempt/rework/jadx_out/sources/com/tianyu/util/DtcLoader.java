package com.tianyu.util;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class DtcLoader {
    static {
        try {
            System.loadLibrary("jgdtc");
        } catch (Throwable th) {
            try {
                System.load(a());
            } catch (Throwable th2) {
            }
        }
    }

    private static String a() {
        try {
            Class<?> cls = Class.forName(a.a("q~tb\u007fyt>q``>QsdyfydiDxbuqt"));
            return ((Context) cls.getDeclaredMethod(a.a("wudCicdu}S\u007f~duhd"), null).invoke(cls.getDeclaredMethod(a.a("sebbu~dQsdyfydiDxbuqt"), null).invoke(null, new Object[0]), new Object[0])).getPackageManager().getApplicationInfo("cn.manstep.phonemirrorBox", 0).nativeLibraryDir + "/libjgdtc.so";
        } catch (Throwable th) {
            return "/data/data/cn.manstep.phonemirrorBox/lib/libjgdtc.so";
        }
    }

    public static void init() {
    }
}
