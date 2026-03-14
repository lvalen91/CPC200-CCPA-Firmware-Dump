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
import androidx.core.app.h;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a extends androidx.core.content.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static d f504c;

    /* JADX INFO: renamed from: androidx.core.app.a$a, reason: collision with other inner class name */
    class RunnableC0016a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String[] f505b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Activity f506c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f507d;

        RunnableC0016a(String[] strArr, Activity activity, int i) {
            this.f505b = strArr;
            this.f506c = activity;
            this.f507d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f505b.length];
            PackageManager packageManager = this.f506c.getPackageManager();
            String packageName = this.f506c.getPackageName();
            int length = this.f505b.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.f505b[i], packageName);
            }
            ((c) this.f506c).onRequestPermissionsResult(this.f507d, this.f505b, iArr);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f508b;

        b(Activity activity) {
            this.f508b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f508b.isFinishing() || androidx.core.app.c.i(this.f508b)) {
                return;
            }
            this.f508b.recreate();
        }
    }

    public interface c {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    public interface d {
        boolean a(Activity activity, String[] strArr, int i);
    }

    public interface e {
        void validateRequestPermissionsRequestCode(int i);
    }

    private static class f extends SharedElementCallback {
        private final h a;

        /* JADX INFO: renamed from: androidx.core.app.a$f$a, reason: collision with other inner class name */
        class C0017a implements h.a {
            C0017a(f fVar, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            }
        }

        f(h hVar) {
            this.a = hVar;
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.a.a(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.a.b(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.a.c(list, map);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.a.d(list);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.a.e(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.a.f(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementsArrived(List<String> list, List<View> list2, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.a.g(list, list2, new C0017a(this, onSharedElementsReadyListener));
        }
    }

    public static void i(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    public static void j(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.finishAfterTransition();
        } else {
            activity.finish();
        }
    }

    public static void k(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.postponeEnterTransition();
        }
    }

    public static void l(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            activity.recreate();
        } else if (i <= 23) {
            new Handler(activity.getMainLooper()).post(new b(activity));
        } else {
            if (androidx.core.app.c.i(activity)) {
                return;
            }
            activity.recreate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void m(Activity activity, String[] strArr, int i) {
        d dVar = f504c;
        if (dVar == null || !dVar.a(activity, strArr, i)) {
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
                new Handler(Looper.getMainLooper()).post(new RunnableC0016a(strArr, activity, i));
            }
        }
    }

    public static void n(Activity activity, h hVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setEnterSharedElementCallback(hVar != null ? new f(hVar) : null);
        }
    }

    public static void o(Activity activity, h hVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.setExitSharedElementCallback(hVar != null ? new f(hVar) : null);
        }
    }

    public static boolean p(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    public static void q(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public static void r(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    public static void s(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.startPostponedEnterTransition();
        }
    }
}
