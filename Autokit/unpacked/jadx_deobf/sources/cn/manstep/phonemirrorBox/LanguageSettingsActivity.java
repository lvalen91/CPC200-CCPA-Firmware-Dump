package cn.manstep.phonemirrorBox;

import android.R;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.view.View;
import android.widget.AdapterView;
import cn.manstep.phonemirrorBox.p070d0.C0810k;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class LanguageSettingsActivity extends ActivityC0881k implements View.OnClickListener {

    /* JADX INFO: renamed from: t */
    private int f4604t = 0;

    /* JADX INFO: renamed from: u */
    private int f4605u = 0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.LanguageSettingsActivity$a */
    class C0752a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ C0810k f4606b;

        C0752a(C0810k c0810k) {
            this.f4606b = c0810k;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f4606b.m6187a(i);
            this.f4606b.notifyDataSetChanged();
            LanguageSettingsActivity.this.f4605u = i;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.LanguageSettingsActivity$b */
    class RunnableC0753b implements Runnable {
        RunnableC0753b(LanguageSettingsActivity languageSettingsActivity) {
        }

        @Override // java.lang.Runnable
        public void run() {
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    static {
        StubApp.interface11(1488);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != 2131296380) {
            if (id != 2131296382) {
                return;
            }
            finish();
            overridePendingTransition(R.anim.slide_in_left, R.anim.slide_out_right);
            return;
        }
        if (this.f4605u != this.f4604t) {
            C0795b0.m6071i().m6085F("LanguageID", Integer.valueOf(this.f4605u));
            new Handler().postDelayed(new RunnableC0753b(this), 500L);
        }
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.appcompat.app.ActivityC0081d, androidx.fragment.app.ActivityC0356e, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
