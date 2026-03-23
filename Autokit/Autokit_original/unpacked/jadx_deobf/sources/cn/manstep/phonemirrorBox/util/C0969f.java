package cn.manstep.phonemirrorBox.util;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import cn.manstep.phonemirrorBox.C0930q;
import cn.manstep.phonemirrorBox.MainActivity;
import com.stub.StubApp;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0969f {
    /* JADX INFO: renamed from: a */
    public static String m7235a(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        return runningTasks.get(0).topActivity.getPackageName();
    }

    /* JADX INFO: renamed from: b */
    public static boolean m7236b(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(str, str2), 128);
                C0982s.m7379i("ContextUtil", "isExistsActivity: " + activityInfo.toString());
                C0982s.m7379i("ContextUtil", "isExistsActivity: " + activityInfo.permission);
                return true;
            } catch (Exception unused) {
                C0982s.m7374d("ContextUtil", "isExistsActivity: " + str + "/" + str2 + " ActivityNotFound");
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: c */
    public static boolean m7237c(Context context) {
        List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(new Intent("cn.manstep.phonemirrorBox.AUTO_BOX_WEAK"), 0);
        ContentResolver contentResolver = context.getContentResolver();
        Iterator<ResolveInfo> it = listQueryBroadcastReceivers.iterator();
        while (it.hasNext()) {
            String str = it.next().activityInfo.packageName;
            if (!context.getPackageName().equals(str)) {
                C0982s.m7374d("ContextUtil", "isOtherConnected: " + str);
                try {
                    Cursor cursorQuery = contentResolver.query(Uri.parse(String.format(Locale.getDefault(), "content://%s.myfileprovider/box", str)), null, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndex("data"));
                                C0982s.m7386p("ContextUtil", "isOtherConnected: " + string);
                                boolean zEquals = "1".equals(string);
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return zEquals;
                            }
                        } finally {
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: d */
    public static void m7238d(Context context, Class<?> cls, boolean z) {
        ComponentName componentName = new ComponentName(StubApp.getOrigApplicationContext(context.getApplicationContext()), cls);
        PackageManager packageManager = StubApp.getOrigApplicationContext(context.getApplicationContext()).getPackageManager();
        int componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
        if (z) {
            if (componentEnabledSetting == 2) {
                packageManager.setComponentEnabledSetting(componentName, 1, 1);
            }
        } else if (componentEnabledSetting != 2) {
            packageManager.setComponentEnabledSetting(componentName, 2, 1);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m7239e(Context context, String str, String str2) {
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        intent.setFlags(270532608);
        context.startActivity(intent);
    }

    /* JADX INFO: renamed from: f */
    public static void m7240f(Context context, Bundle bundle) {
        String strM7235a = m7235a(context);
        C0982s.m7374d("ContextUtil", "startMainActivity: topName=" + strM7235a + ", context=" + context);
        if (C0930q.m6906g().m6913h() != null && C0930q.m6906g().m6913h().hasWindowFocus()) {
            C0982s.m7386p("ContextUtil", "startMainActivity: isVisible");
            return;
        }
        if ("com.hozonauto.avm".equals(strM7235a)) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.setFlags(268435456);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        Iterator<ActivityManager.RunningTaskInfo> it = activityManager.getRunningTasks(20).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ActivityManager.RunningTaskInfo next = it.next();
            String packageName = next.topActivity.getPackageName();
            C0982s.m7379i("ContextUtil", "startMainActivity: " + packageName);
            if (packageName.equals(context.getPackageName())) {
                C0982s.m7374d("ContextUtil", "startMainActivity: moveTaskToFront");
                activityManager.moveTaskToFront(next.id, 1);
                break;
            }
        }
        context.startActivity(intent);
    }
}
