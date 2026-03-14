package cn.manstep.phonemirrorBox.p071e0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.manstep.phonemirrorBox.MainActivity;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.e0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class HandlerC0814b extends Handler {

    /* JADX INFO: renamed from: b */
    private static volatile HandlerC0814b f4868b;

    /* JADX INFO: renamed from: a */
    private WeakReference<MainActivity> f4869a;

    private HandlerC0814b(Looper looper) {
        super(looper);
    }

    /* JADX INFO: renamed from: a */
    public static HandlerC0814b m6192a() {
        if (f4868b == null) {
            synchronized (HandlerC0814b.class) {
                if (f4868b == null) {
                    f4868b = new HandlerC0814b(Looper.getMainLooper());
                }
            }
        }
        return f4868b;
    }

    /* JADX INFO: renamed from: b */
    public void m6193b() {
        removeCallbacksAndMessages(null);
        m6195d(null);
    }

    /* JADX INFO: renamed from: c */
    public void m6194c(int i, int i2) {
        Message messageObtainMessage = obtainMessage();
        messageObtainMessage.what = i;
        messageObtainMessage.arg1 = i2;
        sendMessage(messageObtainMessage);
    }

    /* JADX INFO: renamed from: d */
    public void m6195d(MainActivity mainActivity) {
        if (mainActivity != null) {
            this.f4869a = new WeakReference<>(mainActivity);
        } else {
            this.f4869a = null;
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        WeakReference<MainActivity> weakReference = this.f4869a;
        MainActivity mainActivity = weakReference != null ? weakReference.get() : null;
        if (mainActivity == null || message.what != 1) {
            return;
        }
        mainActivity.setVolumeControlStream(message.arg1);
    }
}
