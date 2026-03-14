package cn.manstep.phonemirrorBox.p077k0;

import android.app.ActivityManager;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import cn.manstep.phonemirrorBox.p070d0.C0805f;
import cn.manstep.phonemirrorBox.p073g0.C0846a;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.DialogC0970g;
import com.yalantis.ucrop.BuildConfig;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class DialogC0891j extends Dialog implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b */
    private List<C0846a> f5593b;

    /* JADX INFO: renamed from: c */
    private C0805f f5594c;

    /* JADX INFO: renamed from: d */
    private WeakReference<Context> f5595d;

    /* JADX INFO: renamed from: e */
    private List<String> f5596e;

    /* JADX INFO: renamed from: f */
    private PackageManager f5597f;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.j$a */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC0970g.m7242d((Context) DialogC0891j.this.f5595d.get(), 2131689574);
        }
    }

    public DialogC0891j(Context context) {
        super(context, 2131755249);
        this.f5595d = new WeakReference<>(context);
        this.f5596e = m6621c(context, "android.permission.RECORD_AUDIO");
        this.f5597f = context.getPackageManager();
    }

    /* JADX INFO: renamed from: b */
    private void m6620b(String str) {
        String string;
        Drawable drawableLoadIcon = null;
        try {
            ApplicationInfo applicationInfo = this.f5597f.getApplicationInfo(str, 0);
            drawableLoadIcon = applicationInfo.loadIcon(this.f5597f);
            this.f5597f.getApplicationIcon(str);
            string = applicationInfo.loadLabel(this.f5597f).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            string = BuildConfig.FLAVOR;
        }
        if (TextUtils.isEmpty(string)) {
            string = str;
        }
        this.f5593b.add(new C0846a(string, str, drawableLoadIcon));
    }

    /* JADX INFO: renamed from: c */
    private List<String> m6621c(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
        for (int i = 0; i < installedPackages.size() - 1; i++) {
            PackageInfo packageInfo = installedPackages.get(i);
            try {
                String[] strArr = packageManager.getPackageInfo(packageInfo.packageName, 4096).requestedPermissions;
                if (strArr != null) {
                    int length = strArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        }
                        if (strArr[i2].equals(str)) {
                            C0982s.m7373c("RecordAppListDialog,getPackagesByPermission: " + packageInfo.packageName);
                            if (!"com.android.phone".equals(packageInfo.packageName) && !context.getPackageName().equals(packageInfo.packageName) && !"com.android.gallery3d".equals(packageInfo.packageName)) {
                                arrayList.add(packageInfo.packageName);
                            }
                        } else {
                            i2++;
                        }
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: e */
    private void m6622e() {
        this.f5593b = new LinkedList();
        this.f5594c = new C0805f(this.f5595d.get(), this.f5593b);
        ListView listView = (ListView) findViewById(2131296596);
        listView.setAdapter((ListAdapter) this.f5594c);
        listView.setOnItemClickListener(this);
    }

    /* JADX INFO: renamed from: f */
    private void m6623f() {
        if (Build.VERSION.SDK_INT > 20) {
            m6624g();
        } else {
            m6625h();
        }
    }

    /* JADX INFO: renamed from: g */
    private void m6624g() {
        Process processStart;
        String line;
        ProcessBuilder processBuilder = new ProcessBuilder("sh", "-c", "ps");
        processBuilder.redirectErrorStream(true);
        try {
            processStart = processBuilder.start();
        } catch (IOException e) {
            e.printStackTrace();
            processStart = null;
        }
        if (processStart == null) {
            return;
        }
        this.f5593b.clear();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
        while (true) {
            try {
                line = bufferedReader.readLine();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (line == null) {
                this.f5594c.notifyDataSetChanged();
                return;
            }
            String[] strArrSplit = line.trim().split("\\s+");
            if (strArrSplit.length > 0 && this.f5596e.contains(strArrSplit[strArrSplit.length - 1])) {
                m6620b(strArrSplit[strArrSplit.length - 1]);
            }
        }
    }

    /* JADX INFO: renamed from: h */
    private void m6625h() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager activityManager = (ActivityManager) this.f5595d.get().getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() > 0) {
            this.f5593b.clear();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (this.f5596e.contains(runningAppProcessInfo.processName)) {
                    m6620b(runningAppProcessInfo.processName);
                }
            }
        }
        this.f5594c.notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: d */
    public void m6626d(Context context, String str) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", str, null));
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            C0982s.m7375e("RecordAppListDialog,getAppDetailSetting: \n" + Log.getStackTraceString(e));
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void hide() {
        super.hide();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131493015);
        m6622e();
        ((ImageView) findViewById(2131296557)).setOnClickListener(new a());
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActivityManager activityManager = (ActivityManager) this.f5595d.get().getSystemService("activity");
        if (activityManager != null) {
            try {
                activityManager.killBackgroundProcesses(this.f5593b.get(i).m6323c());
            } catch (Exception e) {
                C0982s.m7375e("RecordAppListDialog, onItemClick: \n" + Log.getStackTraceString(e));
            }
        }
        m6626d(this.f5595d.get(), this.f5593b.get(i).m6323c());
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m6623f();
        C0982s.m7373c("RecordAppListDialog, onWindowFocusChanged: app count " + this.f5593b.size());
        if (this.f5593b.size() == 0) {
            hide();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }
}
