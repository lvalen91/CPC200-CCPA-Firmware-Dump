package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class h {
    private void a(Context context, String str) {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(new File("/data/data/cn.manstep.phonemirror/" + str));
            cn.manstep.phonemirrorBox.util.s.c("Copying: " + str);
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
            cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
        }
    }

    private boolean b(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("/data/data/cn.manstep.phonemirror/");
            sb.append(str);
            return new File(sb.toString()).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    public void c(Context context) {
        if (!b("adb")) {
            a(context, "adb");
        }
        if (!b("adb.pub")) {
            a(context, "adb.pub");
        }
        if (!b("airport.key")) {
            a(context, "airport.key");
        }
        if (!b("helloworld0")) {
            a(context, "helloworld0");
        }
        if (!b("helloworld1")) {
            a(context, "helloworld1");
        }
        if (!b("helloworld2")) {
            a(context, "helloworld2");
        }
        if (!b("libby265n.so")) {
            a(context, "libby265n.so");
        }
        if (!b("libby265n_x86.so")) {
            a(context, "libby265n_x86.so");
        }
        if (!b("libscreencap40.so")) {
            a(context, "libscreencap40.so");
        }
        if (!b("libscreencap41.so")) {
            a(context, "libscreencap41.so");
        }
        if (!b("libscreencap43.so")) {
            a(context, "libscreencap43.so");
        }
        if (!b("libscreencap50.so")) {
            a(context, "libscreencap50.so");
        }
        if (!b("libscreencap50_x86.so")) {
            a(context, "libscreencap50_x86.so");
        }
        if (!b("libscreencap442.so")) {
            a(context, "libscreencap442.so");
        }
        if (!b("mirrorcoper.apk")) {
            a(context, "mirrorcoper.apk");
        }
        if (!b("AirServer.dat")) {
            a(context, "AirServer.dat");
        }
        if (b("libscreencap60.so")) {
            return;
        }
        a(context, "libscreencap60.so");
    }
}
