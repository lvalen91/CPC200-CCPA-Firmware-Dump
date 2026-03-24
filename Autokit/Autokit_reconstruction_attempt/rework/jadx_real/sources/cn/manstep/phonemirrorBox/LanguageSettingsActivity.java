package cn.manstep.phonemirrorBox;

import android.R;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.view.View;
import android.widget.AdapterView;
import com.stub.StubApp;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class LanguageSettingsActivity extends k implements View.OnClickListener {
    private int t = 0;
    private int u = 0;

    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ cn.manstep.phonemirrorBox.d0.k f1501b;

        a(cn.manstep.phonemirrorBox.d0.k kVar) {
            this.f1501b = kVar;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.f1501b.a(i);
            this.f1501b.notifyDataSetChanged();
            LanguageSettingsActivity.this.u = i;
        }
    }

    class b implements Runnable {
        b(LanguageSettingsActivity languageSettingsActivity) {
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
        if (this.u != this.t) {
            b0.i().F("LanguageID", Integer.valueOf(this.u));
            new Handler().postDelayed(new b(this), 500L);
        }
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // cn.manstep.phonemirrorBox.k, androidx.appcompat.app.d, androidx.fragment.app.e, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
