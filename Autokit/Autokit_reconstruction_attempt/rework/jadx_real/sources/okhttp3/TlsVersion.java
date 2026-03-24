package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public enum TlsVersion {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");

    final String javaName;

    TlsVersion(String str) {
        this.javaName = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TlsVersion forJavaName(String str) {
        byte b2;
        int iHashCode = str.hashCode();
        if (iHashCode != 79201641) {
            if (iHashCode != 79923350) {
                switch (iHashCode) {
                    case -503070503:
                        b2 = !str.equals("TLSv1.1") ? (byte) -1 : (byte) 2;
                        break;
                    case -503070502:
                        if (str.equals("TLSv1.2")) {
                            b2 = 1;
                            break;
                        }
                        break;
                    case -503070501:
                        if (str.equals("TLSv1.3")) {
                            b2 = 0;
                            break;
                        }
                        break;
                }
            } else if (str.equals("TLSv1")) {
                b2 = 3;
            }
        } else if (str.equals("SSLv3")) {
            b2 = 4;
        }
        if (b2 == 0) {
            return TLS_1_3;
        }
        if (b2 == 1) {
            return TLS_1_2;
        }
        if (b2 == 2) {
            return TLS_1_1;
        }
        if (b2 == 3) {
            return TLS_1_0;
        }
        if (b2 == 4) {
            return SSL_3_0;
        }
        throw new IllegalArgumentException("Unexpected TLS version: " + str);
    }

    static List<TlsVersion> forJavaNames(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(forJavaName(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String javaName() {
        return this.javaName;
    }
}
