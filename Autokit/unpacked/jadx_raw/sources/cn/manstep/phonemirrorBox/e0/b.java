package cn.manstep.phonemirrorBox.e0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.manstep.phonemirrorBox.MainActivity;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b extends Handler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile b f1621b;
    private WeakReference<MainActivity> a;

    private b(Looper looper) {
        super(looper);
    }

    public static b a() {
        if (f1621b == null) {
            synchronized (b.class) {
                if (f1621b == null) {
                    f1621b = new b(Looper.getMainLooper());
                }
            }
        }
        return f1621b;
    }

    public void b() {
        removeCallbacksAndMessages(null);
        d(null);
    }

    public void c(int i, int i2) {
        Message messageObtainMessage = obtainMessage();
        messageObtainMessage.what = i;
        messageObtainMessage.arg1 = i2;
        sendMessage(messageObtainMessage);
    }

    public void d(MainActivity mainActivity) {
        if (mainActivity != null) {
            this.a = new WeakReference<>(mainActivity);
        } else {
            this.a = null;
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        WeakReference<MainActivity> weakReference = this.a;
        MainActivity mainActivity = weakReference != null ? weakReference.get() : null;
        if (mainActivity == null || message.what != 1) {
            return;
        }
        mainActivity.setVolumeControlStream(message.arg1);
    }
}
