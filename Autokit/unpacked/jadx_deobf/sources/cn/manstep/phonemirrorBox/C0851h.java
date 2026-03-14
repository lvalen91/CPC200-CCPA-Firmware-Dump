package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.util.Log;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0851h {
    /* JADX INFO: renamed from: a */
    private void m6330a(Context context, String str) {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(new File("/data/data/cn.manstep.phonemirror/" + str));
            C0982s.m7373c("Copying: " + str);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i == -1) {
                    fileOutputStream.flush();
                    inputStreamOpen.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (IOException e) {
            e.printStackTrace();
            C0982s.m7375e(Log.getStackTraceString(e));
        }
    }

    /* JADX INFO: renamed from: b */
    private boolean m6331b(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("/data/data/cn.manstep.phonemirror/");
            sb.append(str);
            return new File(sb.toString()).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: c */
    public void m6332c(Context context) {
        if (!m6331b("adb")) {
            m6330a(context, "adb");
        }
        if (!m6331b("adb.pub")) {
            m6330a(context, "adb.pub");
        }
        if (!m6331b("airport.key")) {
            m6330a(context, "airport.key");
        }
        if (!m6331b("helloworld0")) {
            m6330a(context, "helloworld0");
        }
        if (!m6331b("helloworld1")) {
            m6330a(context, "helloworld1");
        }
        if (!m6331b("helloworld2")) {
            m6330a(context, "helloworld2");
        }
        if (!m6331b("libby265n.so")) {
            m6330a(context, "libby265n.so");
        }
        if (!m6331b("libby265n_x86.so")) {
            m6330a(context, "libby265n_x86.so");
        }
        if (!m6331b("libscreencap40.so")) {
            m6330a(context, "libscreencap40.so");
        }
        if (!m6331b("libscreencap41.so")) {
            m6330a(context, "libscreencap41.so");
        }
        if (!m6331b("libscreencap43.so")) {
            m6330a(context, "libscreencap43.so");
        }
        if (!m6331b("libscreencap50.so")) {
            m6330a(context, "libscreencap50.so");
        }
        if (!m6331b("libscreencap50_x86.so")) {
            m6330a(context, "libscreencap50_x86.so");
        }
        if (!m6331b("libscreencap442.so")) {
            m6330a(context, "libscreencap442.so");
        }
        if (!m6331b("mirrorcoper.apk")) {
            m6330a(context, "mirrorcoper.apk");
        }
        if (!m6331b("AirServer.dat")) {
            m6330a(context, "AirServer.dat");
        }
        if (m6331b("libscreencap60.so")) {
            return;
        }
        m6330a(context, "libscreencap60.so");
    }
}
