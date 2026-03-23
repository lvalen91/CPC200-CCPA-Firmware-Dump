package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import androidx.core.app.AbstractC0238h;
import androidx.core.content.C0242a;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: androidx.core.app.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0231a extends C0242a {

    /* JADX INFO: renamed from: c */
    private static d f1715c;

    /* JADX INFO: renamed from: androidx.core.app.a$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String[] f1716b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Activity f1717c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ int f1718d;

        a(String[] strArr, Activity activity, int i) {
            this.f1716b = strArr;
            this.f1717c = activity;
            this.f1718d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f1716b.length];
            PackageManager packageManager = this.f1717c.getPackageManager();
            String packageName = this.f1717c.getPackageName();
            int length = this.f1716b.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.f1716b[i], packageName);
            }
            ((c) this.f1717c).onRequestPermissionsResult(this.f1718d, this.f1716b, iArr);
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.a$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Activity f1719b;

        b(Activity activity) {
            this.f1719b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1719b.isFinishing() || C0233c.m1660i(this.f1719b)) {
                return;
            }
            this.f1719b.recreate();
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.a$c */
    public interface c {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* JADX INFO: renamed from: androidx.core.app.a$d */
    public interface d {
        /* JADX INFO: renamed from: a */
        boolean m1650a(Activity activity, String[] strArr, int i);
    }

    /* JADX INFO: renamed from: androidx.core.app.a$e */
    public interface e {
        void validateRequestPermissionsRequestCode(int i);
    }

    /* JADX INFO: renamed from: androidx.core.app.a$f */
    private static class f extends SharedElementCallback {

        /* JADX INFO: renamed from: a */
        private final AbstractC0238h f1720a;

        /* JADX INFO: renamed from: androidx.core.app.a$f$a */
        class a implements AbstractC0238h.a {
            a(f fVar, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            }
        }

        f(AbstractC0238h abstractC0238h) {
            this.f1720a = abstractC0238h;
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f1720a.m1673a(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f1720a.m1674b(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.f1720a.m1675c(list, map);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.f1720a.m1676d(list);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.f1720a.m1677e(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.f1720a.m1678f(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementsArrived(List<String> list, List<View> list2, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.f1720a.m1679g(list, list2, new a(this, onSharedElementsReadyListener));
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m1639i(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    /* JADX INFO: renamed from: j */
    public static void m1640j(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    /* JADX INFO: renamed from: k */
    public static void m1641k(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    /* JADX INFO: renamed from: l */
    public static void m1642l(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            activity.recreate();
        } else if (i <= 23) {
            new Handler(activity.getMainLooper()).post(new b(activity));
        } else {
            if (C0233c.m1660i(activity)) {
                return;
            }
            activity.recreate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: m */
    public static void m1643m(Activity activity, String[] strArr, int i) {
        d dVar = f1715c;
        if (dVar == null || !dVar.m1650a(activity, strArr, i)) {
            for (String str : strArr) {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
                }
            }
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof e) {
                    ((e) activity).validateRequestPermissionsRequestCode(i);
                }
                activity.requestPermissions(strArr, i);
            } else if (activity instanceof c) {
                new Handler(Looper.getMainLooper()).post(new a(strArr, activity, i));
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public static void m1644n(Activity activity, AbstractC0238h abstractC0238h) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(abstractC0238h != null ? new f(abstractC0238h) : null);
        }
    }

    /* JADX INFO: renamed from: o */
    public static void m1645o(Activity activity, AbstractC0238h abstractC0238h) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(abstractC0238h != null ? new f(abstractC0238h) : null);
        }
    }

    /* JADX INFO: renamed from: p */
    public static boolean m1646p(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    /* JADX INFO: renamed from: q */
    public static void m1647q(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    /* JADX INFO: renamed from: r */
    public static void m1648r(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    /* JADX INFO: renamed from: s */
    public static void m1649s(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }
}
