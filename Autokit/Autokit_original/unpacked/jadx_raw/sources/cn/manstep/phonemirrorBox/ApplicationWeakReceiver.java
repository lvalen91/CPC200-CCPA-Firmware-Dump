package cn.manstep.phonemirrorBox;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cn.manstep.phonemirrorBox.BoxInterface.d;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ApplicationWeakReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("cn.manstep.phonemirrorBox.AUTO_BOX_WEAK".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("cn.manstep.phonemirrorBox.AUTO_BOX_WEAK", 0);
            if (intExtra != 0) {
                if (1 == intExtra) {
                    cn.manstep.phonemirrorBox.util.c0.s(context, true);
                }
            } else {
                cn.manstep.phonemirrorBox.util.c0.s(context, false);
                if (d.l == null || !cn.manstep.phonemirrorBox.BoxInterface.f.O) {
                    return;
                }
                d.O(1, 25);
                d.l.b1();
            }
        }
    }
}
