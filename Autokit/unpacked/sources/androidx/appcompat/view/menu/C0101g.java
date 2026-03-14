package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.content.C0242a;
import androidx.core.view.AbstractC0260b;
import androidx.core.view.C0293w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p016c.p041g.p043e.p044a.InterfaceMenuC0599a;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0101g implements InterfaceMenuC0599a {

    /* JADX INFO: renamed from: A */
    private static final int[] f637A = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a */
    private final Context f638a;

    /* JADX INFO: renamed from: b */
    private final Resources f639b;

    /* JADX INFO: renamed from: c */
    private boolean f640c;

    /* JADX INFO: renamed from: d */
    private boolean f641d;

    /* JADX INFO: renamed from: e */
    private a f642e;

    /* JADX INFO: renamed from: m */
    private ContextMenu.ContextMenuInfo f650m;

    /* JADX INFO: renamed from: n */
    CharSequence f651n;

    /* JADX INFO: renamed from: o */
    Drawable f652o;

    /* JADX INFO: renamed from: p */
    View f653p;

    /* JADX INFO: renamed from: x */
    private C0103i f661x;

    /* JADX INFO: renamed from: z */
    private boolean f663z;

    /* JADX INFO: renamed from: l */
    private int f649l = 0;

    /* JADX INFO: renamed from: q */
    private boolean f654q = false;

    /* JADX INFO: renamed from: r */
    private boolean f655r = false;

    /* JADX INFO: renamed from: s */
    private boolean f656s = false;

    /* JADX INFO: renamed from: t */
    private boolean f657t = false;

    /* JADX INFO: renamed from: u */
    private boolean f658u = false;

    /* JADX INFO: renamed from: v */
    private ArrayList<C0103i> f659v = new ArrayList<>();

    /* JADX INFO: renamed from: w */
    private CopyOnWriteArrayList<WeakReference<InterfaceC0107m>> f660w = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: y */
    private boolean f662y = false;

    /* JADX INFO: renamed from: f */
    private ArrayList<C0103i> f643f = new ArrayList<>();

    /* JADX INFO: renamed from: g */
    private ArrayList<C0103i> f644g = new ArrayList<>();

    /* JADX INFO: renamed from: h */
    private boolean f645h = true;

    /* JADX INFO: renamed from: i */
    private ArrayList<C0103i> f646i = new ArrayList<>();

    /* JADX INFO: renamed from: j */
    private ArrayList<C0103i> f647j = new ArrayList<>();

    /* JADX INFO: renamed from: k */
    private boolean f648k = true;

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.g$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        boolean mo511a(C0101g c0101g, MenuItem menuItem);

        /* JADX INFO: renamed from: b */
        void mo513b(C0101g c0101g);
    }

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.g$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        boolean mo652a(C0103i c0103i);
    }

    public C0101g(Context context) {
        this.f638a = context;
        this.f639b = context.getResources();
        m721b0(true);
    }

    /* JADX INFO: renamed from: B */
    private static int m718B(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = f637A;
            if (i2 < iArr.length) {
                return (i & 65535) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    /* JADX INFO: renamed from: N */
    private void m719N(int i, boolean z) {
        if (i < 0 || i >= this.f643f.size()) {
            return;
        }
        this.f643f.remove(i);
        if (z) {
            m735K(true);
        }
    }

    /* JADX INFO: renamed from: W */
    private void m720W(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resourcesM727C = m727C();
        if (view != null) {
            this.f653p = view;
            this.f651n = null;
            this.f652o = null;
        } else {
            if (i > 0) {
                this.f651n = resourcesM727C.getText(i);
            } else if (charSequence != null) {
                this.f651n = charSequence;
            }
            if (i2 > 0) {
                this.f652o = C0242a.m1699d(m768u(), i2);
            } else if (drawable != null) {
                this.f652o = drawable;
            }
            this.f653p = null;
        }
        m735K(false);
    }

    /* JADX INFO: renamed from: b0 */
    private void m721b0(boolean z) {
        this.f641d = z && this.f639b.getConfiguration().keyboard != 1 && C0293w.m2168e(ViewConfiguration.get(this.f638a), this.f638a);
    }

    /* JADX INFO: renamed from: g */
    private C0103i m722g(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new C0103i(this, i, i2, i3, i4, charSequence, i5);
    }

    /* JADX INFO: renamed from: i */
    private void m723i(boolean z) {
        if (this.f660w.isEmpty()) {
            return;
        }
        m755d0();
        for (WeakReference<InterfaceC0107m> weakReference : this.f660w) {
            InterfaceC0107m interfaceC0107m = weakReference.get();
            if (interfaceC0107m == null) {
                this.f660w.remove(weakReference);
            } else {
                interfaceC0107m.mo674j(z);
            }
        }
        m753c0();
    }

    /* JADX INFO: renamed from: j */
    private boolean m724j(SubMenuC0112r subMenuC0112r, InterfaceC0107m interfaceC0107m) {
        if (this.f660w.isEmpty()) {
            return false;
        }
        boolean zMo673i = interfaceC0107m != null ? interfaceC0107m.mo673i(subMenuC0112r) : false;
        for (WeakReference<InterfaceC0107m> weakReference : this.f660w) {
            InterfaceC0107m interfaceC0107m2 = weakReference.get();
            if (interfaceC0107m2 == null) {
                this.f660w.remove(weakReference);
            } else if (!zMo673i) {
                zMo673i = interfaceC0107m2.mo673i(subMenuC0112r);
            }
        }
        return zMo673i;
    }

    /* JADX INFO: renamed from: n */
    private static int m725n(ArrayList<C0103i> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).m781f() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: A */
    boolean m726A() {
        return this.f657t;
    }

    /* JADX INFO: renamed from: C */
    Resources m727C() {
        return this.f639b;
    }

    /* JADX INFO: renamed from: D */
    public C0101g mo728D() {
        return this;
    }

    /* JADX INFO: renamed from: E */
    public ArrayList<C0103i> m729E() {
        if (!this.f645h) {
            return this.f644g;
        }
        this.f644g.clear();
        int size = this.f643f.size();
        for (int i = 0; i < size; i++) {
            C0103i c0103i = this.f643f.get(i);
            if (c0103i.isVisible()) {
                this.f644g.add(c0103i);
            }
        }
        this.f645h = false;
        this.f648k = true;
        return this.f644g;
    }

    /* JADX INFO: renamed from: F */
    public boolean mo730F() {
        return this.f662y;
    }

    /* JADX INFO: renamed from: G */
    boolean mo731G() {
        return this.f640c;
    }

    /* JADX INFO: renamed from: H */
    public boolean mo732H() {
        return this.f641d;
    }

    /* JADX INFO: renamed from: I */
    void m733I(C0103i c0103i) {
        this.f648k = true;
        m735K(true);
    }

    /* JADX INFO: renamed from: J */
    void m734J(C0103i c0103i) {
        this.f645h = true;
        m735K(true);
    }

    /* JADX INFO: renamed from: K */
    public void m735K(boolean z) {
        if (this.f654q) {
            this.f655r = true;
            if (z) {
                this.f656s = true;
                return;
            }
            return;
        }
        if (z) {
            this.f645h = true;
            this.f648k = true;
        }
        m723i(z);
    }

    /* JADX INFO: renamed from: L */
    public boolean m736L(MenuItem menuItem, int i) {
        return m737M(menuItem, null, i);
    }

    /* JADX INFO: renamed from: M */
    public boolean m737M(MenuItem menuItem, InterfaceC0107m interfaceC0107m, int i) {
        C0103i c0103i = (C0103i) menuItem;
        if (c0103i == null || !c0103i.isEnabled()) {
            return false;
        }
        boolean zM786k = c0103i.m786k();
        AbstractC0260b abstractC0260bMo662b = c0103i.mo662b();
        boolean z = abstractC0260bMo662b != null && abstractC0260bMo662b.mo803a();
        if (c0103i.m785j()) {
            zM786k |= c0103i.expandActionView();
            if (zM786k) {
                m756e(true);
            }
        } else if (c0103i.hasSubMenu() || z) {
            if ((i & 4) == 0) {
                m756e(false);
            }
            if (!c0103i.hasSubMenu()) {
                c0103i.m799x(new SubMenuC0112r(m768u(), this, c0103i));
            }
            SubMenuC0112r subMenuC0112r = (SubMenuC0112r) c0103i.getSubMenu();
            if (z) {
                abstractC0260bMo662b.mo806f(subMenuC0112r);
            }
            zM786k |= m724j(subMenuC0112r, interfaceC0107m);
            if (!zM786k) {
                m756e(true);
            }
        } else if ((i & 1) == 0) {
            m756e(true);
        }
        return zM786k;
    }

    /* JADX INFO: renamed from: O */
    public void m738O(InterfaceC0107m interfaceC0107m) {
        for (WeakReference<InterfaceC0107m> weakReference : this.f660w) {
            InterfaceC0107m interfaceC0107m2 = weakReference.get();
            if (interfaceC0107m2 == null || interfaceC0107m2 == interfaceC0107m) {
                this.f660w.remove(weakReference);
            }
        }
    }

    /* JADX INFO: renamed from: P */
    public void m739P(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo767t());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0112r) item.getSubMenu()).m739P(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (menuItemFindItem = findItem(i2)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    /* JADX INFO: renamed from: Q */
    public void m740Q(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0112r) item.getSubMenu()).m740Q(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo767t(), sparseArray);
        }
    }

    /* JADX INFO: renamed from: R */
    public void mo741R(a aVar) {
        this.f642e = aVar;
    }

    /* JADX INFO: renamed from: S */
    public C0101g m742S(int i) {
        this.f649l = i;
        return this;
    }

    /* JADX INFO: renamed from: T */
    void m743T(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f643f.size();
        m755d0();
        for (int i = 0; i < size; i++) {
            C0103i c0103i = this.f643f.get(i);
            if (c0103i.getGroupId() == groupId && c0103i.m788m() && c0103i.isCheckable()) {
                c0103i.m794s(c0103i == menuItem);
            }
        }
        m753c0();
    }

    /* JADX INFO: renamed from: U */
    protected C0101g m744U(int i) {
        m720W(0, null, i, null, null);
        return this;
    }

    /* JADX INFO: renamed from: V */
    protected C0101g m745V(Drawable drawable) {
        m720W(0, null, 0, drawable, null);
        return this;
    }

    /* JADX INFO: renamed from: X */
    protected C0101g m746X(int i) {
        m720W(i, null, 0, null, null);
        return this;
    }

    /* JADX INFO: renamed from: Y */
    protected C0101g m747Y(CharSequence charSequence) {
        m720W(0, charSequence, 0, null, null);
        return this;
    }

    /* JADX INFO: renamed from: Z */
    protected C0101g m748Z(View view) {
        m720W(0, null, 0, null, view);
        return this;
    }

    /* JADX INFO: renamed from: a */
    protected MenuItem m749a(int i, int i2, int i3, CharSequence charSequence) {
        int iM718B = m718B(i3);
        C0103i c0103iM722g = m722g(i, i2, i3, iM718B, charSequence, this.f649l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f650m;
        if (contextMenuInfo != null) {
            c0103iM722g.m797v(contextMenuInfo);
        }
        ArrayList<C0103i> arrayList = this.f643f;
        arrayList.add(m725n(arrayList, iM718B), c0103iM722g);
        m735K(true);
        return c0103iM722g;
    }

    /* JADX INFO: renamed from: a0 */
    public void m750a0(boolean z) {
        this.f663z = z;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m749a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f638a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* JADX INFO: renamed from: b */
    public void m751b(InterfaceC0107m interfaceC0107m) {
        m752c(interfaceC0107m, this.f638a);
    }

    /* JADX INFO: renamed from: c */
    public void m752c(InterfaceC0107m interfaceC0107m, Context context) {
        this.f660w.add(new WeakReference<>(interfaceC0107m));
        interfaceC0107m.mo668d(context, this);
        this.f648k = true;
    }

    /* JADX INFO: renamed from: c0 */
    public void m753c0() {
        this.f654q = false;
        if (this.f655r) {
            this.f655r = false;
            m735K(this.f656s);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        C0103i c0103i = this.f661x;
        if (c0103i != null) {
            mo757f(c0103i);
        }
        this.f643f.clear();
        m735K(true);
    }

    public void clearHeader() {
        this.f652o = null;
        this.f651n = null;
        this.f653p = null;
        m735K(false);
    }

    @Override // android.view.Menu
    public void close() {
        m756e(true);
    }

    /* JADX INFO: renamed from: d */
    public void m754d() {
        a aVar = this.f642e;
        if (aVar != null) {
            aVar.mo513b(this);
        }
    }

    /* JADX INFO: renamed from: d0 */
    public void m755d0() {
        if (this.f654q) {
            return;
        }
        this.f654q = true;
        this.f655r = false;
        this.f656s = false;
    }

    /* JADX INFO: renamed from: e */
    public final void m756e(boolean z) {
        if (this.f658u) {
            return;
        }
        this.f658u = true;
        for (WeakReference<InterfaceC0107m> weakReference : this.f660w) {
            InterfaceC0107m interfaceC0107m = weakReference.get();
            if (interfaceC0107m == null) {
                this.f660w.remove(weakReference);
            } else {
                interfaceC0107m.mo666a(this, z);
            }
        }
        this.f658u = false;
    }

    /* JADX INFO: renamed from: f */
    public boolean mo757f(C0103i c0103i) {
        boolean zMo669e = false;
        if (!this.f660w.isEmpty() && this.f661x == c0103i) {
            m755d0();
            for (WeakReference<InterfaceC0107m> weakReference : this.f660w) {
                InterfaceC0107m interfaceC0107m = weakReference.get();
                if (interfaceC0107m != null) {
                    zMo669e = interfaceC0107m.mo669e(this, c0103i);
                    if (zMo669e) {
                        break;
                    }
                } else {
                    this.f660w.remove(weakReference);
                }
            }
            m753c0();
            if (zMo669e) {
                this.f661x = null;
            }
        }
        return zMo669e;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            C0103i c0103i = this.f643f.get(i2);
            if (c0103i.getItemId() == i) {
                return c0103i;
            }
            if (c0103i.hasSubMenu() && (menuItemFindItem = c0103i.getSubMenu().findItem(i)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f643f.get(i);
    }

    /* JADX INFO: renamed from: h */
    boolean mo758h(C0101g c0101g, MenuItem menuItem) {
        a aVar = this.f642e;
        return aVar != null && aVar.mo511a(c0101g, menuItem);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f663z) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f643f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m763p(i, keyEvent) != null;
    }

    /* JADX INFO: renamed from: k */
    public boolean mo759k(C0103i c0103i) {
        boolean zMo670f = false;
        if (this.f660w.isEmpty()) {
            return false;
        }
        m755d0();
        for (WeakReference<InterfaceC0107m> weakReference : this.f660w) {
            InterfaceC0107m interfaceC0107m = weakReference.get();
            if (interfaceC0107m != null) {
                zMo670f = interfaceC0107m.mo670f(this, c0103i);
                if (zMo670f) {
                    break;
                }
            } else {
                this.f660w.remove(weakReference);
            }
        }
        m753c0();
        if (zMo670f) {
            this.f661x = c0103i;
        }
        return zMo670f;
    }

    /* JADX INFO: renamed from: l */
    public int m760l(int i) {
        return m761m(i, 0);
    }

    /* JADX INFO: renamed from: m */
    public int m761m(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < size) {
            if (this.f643f.get(i2).getGroupId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* JADX INFO: renamed from: o */
    public int m762o(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f643f.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* JADX INFO: renamed from: p */
    C0103i m763p(int i, KeyEvent keyEvent) {
        ArrayList<C0103i> arrayList = this.f659v;
        arrayList.clear();
        m764q(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean zMo731G = mo731G();
        for (int i2 = 0; i2 < size; i2++) {
            C0103i c0103i = arrayList.get(i2);
            char alphabeticShortcut = zMo731G ? c0103i.getAlphabeticShortcut() : c0103i.getNumericShortcut();
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (zMo731G && alphabeticShortcut == '\b' && i == 67))) {
                return c0103i;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return m736L(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        C0103i c0103iM763p = m763p(i, keyEvent);
        boolean zM736L = c0103iM763p != null ? m736L(c0103iM763p, i2) : false;
        if ((i2 & 2) != 0) {
            m756e(true);
        }
        return zM736L;
    }

    /* JADX INFO: renamed from: q */
    void m764q(List<C0103i> list, int i, KeyEvent keyEvent) {
        boolean zMo731G = mo731G();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f643f.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0103i c0103i = this.f643f.get(i2);
                if (c0103i.hasSubMenu()) {
                    ((C0101g) c0103i.getSubMenu()).m764q(list, i, keyEvent);
                }
                char alphabeticShortcut = zMo731G ? c0103i.getAlphabeticShortcut() : c0103i.getNumericShortcut();
                if (((modifiers & 69647) == ((zMo731G ? c0103i.getAlphabeticModifiers() : c0103i.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (zMo731G && alphabeticShortcut == '\b' && i == 67)) && c0103i.isEnabled()) {
                        list.add(c0103i);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: r */
    public void m765r() {
        ArrayList<C0103i> arrayListM729E = m729E();
        if (this.f648k) {
            boolean zMo695c = false;
            for (WeakReference<InterfaceC0107m> weakReference : this.f660w) {
                InterfaceC0107m interfaceC0107m = weakReference.get();
                if (interfaceC0107m == null) {
                    this.f660w.remove(weakReference);
                } else {
                    zMo695c |= interfaceC0107m.mo695c();
                }
            }
            if (zMo695c) {
                this.f646i.clear();
                this.f647j.clear();
                int size = arrayListM729E.size();
                for (int i = 0; i < size; i++) {
                    C0103i c0103i = arrayListM729E.get(i);
                    if (c0103i.m787l()) {
                        this.f646i.add(c0103i);
                    } else {
                        this.f647j.add(c0103i);
                    }
                }
            } else {
                this.f646i.clear();
                this.f647j.clear();
                this.f647j.addAll(m729E());
            }
            this.f648k = false;
        }
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int iM760l = m760l(i);
        if (iM760l >= 0) {
            int size = this.f643f.size() - iM760l;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || this.f643f.get(iM760l).getGroupId() != i) {
                    break;
                }
                m719N(iM760l, false);
                i2 = i3;
            }
            m735K(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m719N(m762o(i), true);
    }

    /* JADX INFO: renamed from: s */
    public ArrayList<C0103i> m766s() {
        m765r();
        return this.f646i;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f643f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0103i c0103i = this.f643f.get(i2);
            if (c0103i.getGroupId() == i) {
                c0103i.m795t(z2);
                c0103i.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f662y = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f643f.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0103i c0103i = this.f643f.get(i2);
            if (c0103i.getGroupId() == i) {
                c0103i.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f643f.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            C0103i c0103i = this.f643f.get(i2);
            if (c0103i.getGroupId() == i && c0103i.m800y(z)) {
                z2 = true;
            }
        }
        if (z2) {
            m735K(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f640c = z;
        m735K(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f643f.size();
    }

    /* JADX INFO: renamed from: t */
    protected String mo767t() {
        return "android:menu:actionviewstates";
    }

    /* JADX INFO: renamed from: u */
    public Context m768u() {
        return this.f638a;
    }

    /* JADX INFO: renamed from: v */
    public C0103i m769v() {
        return this.f661x;
    }

    /* JADX INFO: renamed from: w */
    public Drawable m770w() {
        return this.f652o;
    }

    /* JADX INFO: renamed from: x */
    public CharSequence m771x() {
        return this.f651n;
    }

    /* JADX INFO: renamed from: y */
    public View m772y() {
        return this.f653p;
    }

    /* JADX INFO: renamed from: z */
    public ArrayList<C0103i> m773z() {
        m765r();
        return this.f647j;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m749a(0, 0, 0, this.f639b.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f639b.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m749a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        C0103i c0103i = (C0103i) m749a(i, i2, i3, charSequence);
        SubMenuC0112r subMenuC0112r = new SubMenuC0112r(this.f638a, this, c0103i);
        c0103i.m799x(subMenuC0112r);
        return subMenuC0112r;
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m749a(i, i2, i3, this.f639b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f639b.getString(i4));
    }
}
