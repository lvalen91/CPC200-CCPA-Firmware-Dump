package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class i implements Iterable<Intent> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<Intent> f524b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f525c;

    public interface a {
        Intent getSupportParentActivityIntent();
    }

    private i(Context context) {
        this.f525c = context;
    }

    public static i d(Context context) {
        return new i(context);
    }

    public i a(Intent intent) {
        this.f524b.add(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i b(Activity activity) {
        Intent supportParentActivityIntent = activity instanceof a ? ((a) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = g.a(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f525c.getPackageManager());
            }
            c(component);
            a(supportParentActivityIntent);
        }
        return this;
    }

    public i c(ComponentName componentName) {
        int size = this.f524b.size();
        try {
            Intent intentB = g.b(this.f525c, componentName);
            while (intentB != null) {
                this.f524b.add(size, intentB);
                intentB = g.b(this.f525c, intentB.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public void e() {
        f(null);
    }

    public void f(Bundle bundle) {
        if (this.f524b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        ArrayList<Intent> arrayList = this.f524b;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (androidx.core.content.a.g(this.f525c, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.f525c.startActivity(intent);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f524b.iterator();
    }
}
