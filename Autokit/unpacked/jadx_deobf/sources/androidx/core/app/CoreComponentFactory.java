package androidx.core.app;

import android.app.Activity;
import android.app.AppComponentFactory;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Intent;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class CoreComponentFactory extends AppComponentFactory {

    /* JADX INFO: renamed from: androidx.core.app.CoreComponentFactory$a */
    public interface InterfaceC0230a {
        /* JADX INFO: renamed from: a */
        Object m1638a();
    }

    /* JADX INFO: renamed from: a */
    static <T> T m1637a(T t) {
        T t2;
        return (!(t instanceof InterfaceC0230a) || (t2 = (T) ((InterfaceC0230a) t).m1638a()) == null) ? t : t2;
    }

    @Override // android.app.AppComponentFactory
    public Activity instantiateActivity(ClassLoader classLoader, String str, Intent intent) {
        return (Activity) m1637a(super.instantiateActivity(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    public Application instantiateApplication(ClassLoader classLoader, String str) {
        return (Application) m1637a(super.instantiateApplication(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    public ContentProvider instantiateProvider(ClassLoader classLoader, String str) {
        return (ContentProvider) m1637a(super.instantiateProvider(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    public BroadcastReceiver instantiateReceiver(ClassLoader classLoader, String str, Intent intent) {
        return (BroadcastReceiver) m1637a(super.instantiateReceiver(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    public Service instantiateService(ClassLoader classLoader, String str, Intent intent) {
        return (Service) m1637a(super.instantiateService(classLoader, str, intent));
    }
}
