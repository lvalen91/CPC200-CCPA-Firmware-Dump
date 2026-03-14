package cn.manstep.phonemirrorBox.k0;

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
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.BuildConfig;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class j extends Dialog implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<cn.manstep.phonemirrorBox.g0.a> f1712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private cn.manstep.phonemirrorBox.d0.f f1713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<Context> f1714d;
    private List<String> e;
    private PackageManager f;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.manstep.phonemirrorBox.util.g.d((Context) j.this.f1714d.get(), 2131689574);
        }
    }

    public j(Context context) {
        super(context, 2131755249);
        this.f1714d = new WeakReference<>(context);
        this.e = c(context, "android.permission.RECORD_AUDIO");
        this.f = context.getPackageManager();
    }

    private void b(String str) {
        String string;
        Drawable drawableLoadIcon = null;
        try {
            ApplicationInfo applicationInfo = this.f.getApplicationInfo(str, 0);
            drawableLoadIcon = applicationInfo.loadIcon(this.f);
            this.f.getApplicationIcon(str);
            string = applicationInfo.loadLabel(this.f).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            string = BuildConfig.FLAVOR;
        }
        if (TextUtils.isEmpty(string)) {
            string = str;
        }
        this.f1712b.add(new cn.manstep.phonemirrorBox.g0.a(string, str, drawableLoadIcon));
    }

    private List<String> c(Context context, String str) {
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
                            s.c("RecordAppListDialog,getPackagesByPermission: " + packageInfo.packageName);
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

    private void e() {
        this.f1712b = new LinkedList();
        this.f1713c = new cn.manstep.phonemirrorBox.d0.f(this.f1714d.get(), this.f1712b);
        ListView listView = (ListView) findViewById(2131296596);
        listView.setAdapter((ListAdapter) this.f1713c);
        listView.setOnItemClickListener(this);
    }

    private void f() {
        if (Build.VERSION.SDK_INT > 20) {
            g();
        } else {
            h();
        }
    }

    private void g() {
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
        this.f1712b.clear();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
        while (true) {
            try {
                line = bufferedReader.readLine();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (line == null) {
                this.f1713c.notifyDataSetChanged();
                return;
            }
            String[] strArrSplit = line.trim().split("\\s+");
            if (strArrSplit.length > 0 && this.e.contains(strArrSplit[strArrSplit.length - 1])) {
                b(strArrSplit[strArrSplit.length - 1]);
            }
        }
    }

    private void h() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager activityManager = (ActivityManager) this.f1714d.get().getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() > 0) {
            this.f1712b.clear();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (this.e.contains(runningAppProcessInfo.processName)) {
                    b(runningAppProcessInfo.processName);
                }
            }
        }
        this.f1713c.notifyDataSetChanged();
    }

    public void d(Context context, String str) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", str, null));
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            s.e("RecordAppListDialog,getAppDetailSetting: \n" + Log.getStackTraceString(e));
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
        e();
        ((ImageView) findViewById(2131296557)).setOnClickListener(new a());
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ActivityManager activityManager = (ActivityManager) this.f1714d.get().getSystemService("activity");
        if (activityManager != null) {
            try {
                activityManager.killBackgroundProcesses(this.f1712b.get(i).c());
            } catch (Exception e) {
                s.e("RecordAppListDialog, onItemClick: \n" + Log.getStackTraceString(e));
            }
        }
        d(this.f1714d.get(), this.f1712b.get(i).c());
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        f();
        s.c("RecordAppListDialog, onWindowFocusChanged: app count " + this.f1712b.size());
        if (this.f1712b.size() == 0) {
            hide();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }
}
