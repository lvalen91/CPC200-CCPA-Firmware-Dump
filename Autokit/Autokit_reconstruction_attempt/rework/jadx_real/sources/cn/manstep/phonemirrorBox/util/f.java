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
import cn.manstep.phonemirrorBox.MainActivity;
import com.stub.StubApp;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class f {
    public static String a(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        return runningTasks.get(0).topActivity.getPackageName();
    }

    public static boolean b(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(new ComponentName(str, str2), 128);
                s.i("ContextUtil", "isExistsActivity: " + activityInfo.toString());
                s.i("ContextUtil", "isExistsActivity: " + activityInfo.permission);
                return true;
            } catch (Exception unused) {
                s.d("ContextUtil", "isExistsActivity: " + str + "/" + str2 + " ActivityNotFound");
            }
        }
        return false;
    }

    public static boolean c(Context context) {
        List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(new Intent("cn.manstep.phonemirrorBox.AUTO_BOX_WEAK"), 0);
        ContentResolver contentResolver = context.getContentResolver();
        Iterator<ResolveInfo> it = listQueryBroadcastReceivers.iterator();
        while (it.hasNext()) {
            String str = it.next().activityInfo.packageName;
            if (!context.getPackageName().equals(str)) {
                s.d("ContextUtil", "isOtherConnected: " + str);
                try {
                    Cursor cursorQuery = contentResolver.query(Uri.parse(String.format(Locale.getDefault(), "content://%s.myfileprovider/box", str)), null, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndex("data"));
                                s.p("ContextUtil", "isOtherConnected: " + string);
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

    public static void d(Context context, Class<?> cls, boolean z) {
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

    public static void e(Context context, String str, String str2) {
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        intent.setFlags(270532608);
        context.startActivity(intent);
    }

    public static void f(Context context, Bundle bundle) {
        String strA = a(context);
        s.d("ContextUtil", "startMainActivity: topName=" + strA + ", context=" + context);
        if (cn.manstep.phonemirrorBox.q.g().h() != null && cn.manstep.phonemirrorBox.q.g().h().hasWindowFocus()) {
            s.p("ContextUtil", "startMainActivity: isVisible");
            return;
        }
        if ("com.hozonauto.avm".equals(strA)) {
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
            s.i("ContextUtil", "startMainActivity: " + packageName);
            if (packageName.equals(context.getPackageName())) {
                s.d("ContextUtil", "startMainActivity: moveTaskToFront");
                activityManager.moveTaskToFront(next.id, 1);
                break;
            }
        }
        context.startActivity(intent);
    }
}
