package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.core.content.C0242a;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: androidx.core.app.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0239i implements Iterable<Intent> {

    /* JADX INFO: renamed from: b */
    private final ArrayList<Intent> f1744b = new ArrayList<>();

    /* JADX INFO: renamed from: c */
    private final Context f1745c;

    /* JADX INFO: renamed from: androidx.core.app.i$a */
    public interface a {
        Intent getSupportParentActivityIntent();
    }

    private C0239i(Context context) {
        this.f1745c = context;
    }

    /* JADX INFO: renamed from: d */
    public static C0239i m1680d(Context context) {
        return new C0239i(context);
    }

    /* JADX INFO: renamed from: a */
    public C0239i m1681a(Intent intent) {
        this.f1744b.add(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    public C0239i m1682b(Activity activity) {
        Intent supportParentActivityIntent = activity instanceof a ? ((a) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = C0237g.m1667a(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f1745c.getPackageManager());
            }
            m1683c(component);
            m1681a(supportParentActivityIntent);
        }
        return this;
    }

    /* JADX INFO: renamed from: c */
    public C0239i m1683c(ComponentName componentName) {
        int size = this.f1744b.size();
        try {
            Intent intentM1668b = C0237g.m1668b(this.f1745c, componentName);
            while (intentM1668b != null) {
                this.f1744b.add(size, intentM1668b);
                intentM1668b = C0237g.m1668b(this.f1745c, intentM1668b.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* JADX INFO: renamed from: e */
    public void m1684e() {
        m1685f(null);
    }

    /* JADX INFO: renamed from: f */
    public void m1685f(Bundle bundle) {
        if (this.f1744b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        ArrayList<Intent> arrayList = this.f1744b;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (C0242a.m1702g(this.f1745c, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.f1745c.startActivity(intent);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f1744b.iterator();
    }
}
