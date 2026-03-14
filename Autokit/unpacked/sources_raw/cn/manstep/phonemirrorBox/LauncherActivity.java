package cn.manstep.phonemirrorBox;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.d;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class LauncherActivity extends d {
    static {
        StubApp.interface11(1489);
    }

    private void L(int i) {
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.putExtra("EXTRA_NAME_1", i);
        startActivity(intent);
    }

    private void M(int i) {
        Intent intent = new Intent();
        intent.setAction("GoMainActivity.BroadcastReceiver.action");
        intent.putExtra("GoMainActivity.BroadcastReceiver.data", i);
        sendBroadcast(intent);
        Intent intent2 = new Intent(this, (Class<?>) MainActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt("GoMainActivity.BroadcastReceiver.data", i);
        intent2.putExtras(bundle);
        startActivity(intent2);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected native void onCreate(Bundle bundle);
}
