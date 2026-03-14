package cn.manstep.phonemirrorBox.util;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.y */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0988y {
    /* JADX INFO: renamed from: a */
    public static void m7404a(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            cls.getMethod("set", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception unused) {
        }
    }
}
