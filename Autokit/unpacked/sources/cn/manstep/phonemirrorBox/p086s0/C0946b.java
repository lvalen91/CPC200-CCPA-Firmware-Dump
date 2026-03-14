package cn.manstep.phonemirrorBox.p086s0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.s0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0946b {
    /* JADX INFO: renamed from: a */
    public static String m6972a(Context context, String str) {
        Signature[] apkContentsSigners;
        StringBuilder sb = new StringBuilder();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), Build.VERSION.SDK_INT >= 28 ? 134217728 : 64);
            if (Build.VERSION.SDK_INT >= 28) {
                SigningInfo signingInfo = packageInfo.signingInfo;
                apkContentsSigners = signingInfo.hasMultipleSigners() ? signingInfo.getApkContentsSigners() : signingInfo.getSigningCertificateHistory();
            } else {
                apkContentsSigners = packageInfo.signatures;
            }
            if (apkContentsSigners != null) {
                for (Signature signature : apkContentsSigners) {
                    byte[] bArrDigest = MessageDigest.getInstance(str).digest(signature.toByteArray());
                    StringBuilder sb2 = new StringBuilder();
                    for (byte b2 : bArrDigest) {
                        String upperCase = Integer.toHexString(b2 & 255).toUpperCase(Locale.US);
                        if (upperCase.length() == 1) {
                            sb2.append("0");
                        }
                        sb2.append(upperCase);
                    }
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append(sb2.toString());
                }
            }
        } catch (Error | Exception unused) {
        }
        return sb.toString();
    }
}
