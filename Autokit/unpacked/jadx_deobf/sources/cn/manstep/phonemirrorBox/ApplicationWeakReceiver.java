package cn.manstep.phonemirrorBox;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.util.C0964c0;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ApplicationWeakReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("cn.manstep.phonemirrorBox.AUTO_BOX_WEAK".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("cn.manstep.phonemirrorBox.AUTO_BOX_WEAK", 0);
            if (intExtra != 0) {
                if (1 == intExtra) {
                    C0964c0.m7195s(context, true);
                }
            } else {
                C0964c0.m7195s(context, false);
                if (C0733d.f4428l == null || !C0735f.f4458O) {
                    return;
                }
                C0733d.m5579O(1, 25);
                C0733d.f4428l.m5713b1();
            }
        }
    }
}
