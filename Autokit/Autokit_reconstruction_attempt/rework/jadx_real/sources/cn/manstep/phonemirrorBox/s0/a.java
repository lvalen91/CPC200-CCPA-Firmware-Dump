package cn.manstep.phonemirrorBox.s0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a {
    public static String a(Context context) {
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
                    X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signature.toByteArray()));
                    if (sb.length() > 0) {
                        sb.append("\n");
                    }
                    sb.append(x509Certificate.getSubjectDN().getName());
                    sb.append("\n");
                    sb.append(x509Certificate.getNotBefore());
                    sb.append("\n");
                    sb.append(x509Certificate.getNotAfter());
                    sb.append("\n");
                    sb.append(x509Certificate.getType());
                    sb.append("\n");
                    sb.append(x509Certificate.getSerialNumber());
                }
            }
        } catch (Throwable unused) {
        }
        return sb.toString();
    }

    public static String b(Context context) {
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
                    String upperCase = ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signature.toByteArray()))).getSerialNumber().toString(16).toUpperCase();
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append(upperCase);
                }
            }
        } catch (Error | Exception unused) {
        }
        return sb.toString();
    }
}
