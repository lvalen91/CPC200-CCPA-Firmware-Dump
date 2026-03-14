package cn.manstep.phonemirrorBox;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.ActivityC0081d;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class LauncherActivity extends ActivityC0081d {
    static {
        StubApp.interface11(1489);
    }

    /* JADX INFO: renamed from: L */
    private void m5873L(int i) {
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.putExtra("EXTRA_NAME_1", i);
        startActivity(intent);
    }

    /* JADX INFO: renamed from: M */
    private void m5874M(int i) {
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

    @Override // androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected native void onCreate(Bundle bundle);
}
