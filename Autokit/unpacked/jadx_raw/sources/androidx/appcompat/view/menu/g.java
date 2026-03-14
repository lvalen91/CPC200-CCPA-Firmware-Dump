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
import androidx.core.view.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g implements c.g.e.a.a {
    private static final int[] A = {1, 4, 5, 3, 2, 0};
    private final Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f210d;
    private a e;
    private ContextMenu.ContextMenuInfo m;
    CharSequence n;
    Drawable o;
    View p;
    private i x;
    private boolean z;
    private int l = 0;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private boolean t = false;
    private boolean u = false;
    private ArrayList<i> v = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<m>> w = new CopyOnWriteArrayList<>();
    private boolean y = false;
    private ArrayList<i> f = new ArrayList<>();
    private ArrayList<i> g = new ArrayList<>();
    private boolean h = true;
    private ArrayList<i> i = new ArrayList<>();
    private ArrayList<i> j = new ArrayList<>();
    private boolean k = true;

    public interface a {
        boolean a(g gVar, MenuItem menuItem);

        void b(g gVar);
    }

    public interface b {
        boolean a(i iVar);
    }

    public g(Context context) {
        this.a = context;
        this.f208b = context.getResources();
        b0(true);
    }

    private static int B(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = A;
            if (i2 < iArr.length) {
                return (i & 65535) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void N(int i, boolean z) {
        if (i < 0 || i >= this.f.size()) {
            return;
        }
        this.f.remove(i);
        if (z) {
            K(true);
        }
    }

    private void W(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resourcesC = C();
        if (view != null) {
            this.p = view;
            this.n = null;
            this.o = null;
        } else {
            if (i > 0) {
                this.n = resourcesC.getText(i);
            } else if (charSequence != null) {
                this.n = charSequence;
            }
            if (i2 > 0) {
                this.o = androidx.core.content.a.d(u(), i2);
            } else if (drawable != null) {
                this.o = drawable;
            }
            this.p = null;
        }
        K(false);
    }

    private void b0(boolean z) {
        this.f210d = z && this.f208b.getConfiguration().keyboard != 1 && w.e(ViewConfiguration.get(this.a), this.a);
    }

    private i g(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new i(this, i, i2, i3, i4, charSequence, i5);
    }

    private void i(boolean z) {
        if (this.w.isEmpty()) {
            return;
        }
        d0();
        for (WeakReference<m> weakReference : this.w) {
            m mVar = weakReference.get();
            if (mVar == null) {
                this.w.remove(weakReference);
            } else {
                mVar.j(z);
            }
        }
        c0();
    }

    private boolean j(r rVar, m mVar) {
        if (this.w.isEmpty()) {
            return false;
        }
        boolean zI = mVar != null ? mVar.i(rVar) : false;
        for (WeakReference<m> weakReference : this.w) {
            m mVar2 = weakReference.get();
            if (mVar2 == null) {
                this.w.remove(weakReference);
            } else if (!zI) {
                zI = mVar2.i(rVar);
            }
        }
        return zI;
    }

    private static int n(ArrayList<i> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).f() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    boolean A() {
        return this.t;
    }

    Resources C() {
        return this.f208b;
    }

    public g D() {
        return this;
    }

    public ArrayList<i> E() {
        if (!this.h) {
            return this.g;
        }
        this.g.clear();
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            i iVar = this.f.get(i);
            if (iVar.isVisible()) {
                this.g.add(iVar);
            }
        }
        this.h = false;
        this.k = true;
        return this.g;
    }

    public boolean F() {
        return this.y;
    }

    boolean G() {
        return this.f209c;
    }

    public boolean H() {
        return this.f210d;
    }

    void I(i iVar) {
        this.k = true;
        K(true);
    }

    void J(i iVar) {
        this.h = true;
        K(true);
    }

    public void K(boolean z) {
        if (this.q) {
            this.r = true;
            if (z) {
                this.s = true;
                return;
            }
            return;
        }
        if (z) {
            this.h = true;
            this.k = true;
        }
        i(z);
    }

    public boolean L(MenuItem menuItem, int i) {
        return M(menuItem, null, i);
    }

    public boolean M(MenuItem menuItem, m mVar, int i) {
        i iVar = (i) menuItem;
        if (iVar == null || !iVar.isEnabled()) {
            return false;
        }
        boolean zK = iVar.k();
        androidx.core.view.b bVarB = iVar.b();
        boolean z = bVarB != null && bVarB.a();
        if (iVar.j()) {
            zK |= iVar.expandActionView();
            if (zK) {
                e(true);
            }
        } else if (iVar.hasSubMenu() || z) {
            if ((i & 4) == 0) {
                e(false);
            }
            if (!iVar.hasSubMenu()) {
                iVar.x(new r(u(), this, iVar));
            }
            r rVar = (r) iVar.getSubMenu();
            if (z) {
                bVarB.f(rVar);
            }
            zK |= j(rVar, mVar);
            if (!zK) {
                e(true);
            }
        } else if ((i & 1) == 0) {
            e(true);
        }
        return zK;
    }

    public void O(m mVar) {
        for (WeakReference<m> weakReference : this.w) {
            m mVar2 = weakReference.get();
            if (mVar2 == null || mVar2 == mVar) {
                this.w.remove(weakReference);
            }
        }
    }

    public void P(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(t());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((r) item.getSubMenu()).P(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (menuItemFindItem = findItem(i2)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    public void Q(Bundle bundle) {
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
                ((r) item.getSubMenu()).Q(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(t(), sparseArray);
        }
    }

    public void R(a aVar) {
        this.e = aVar;
    }

    public g S(int i) {
        this.l = i;
        return this;
    }

    void T(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f.size();
        d0();
        for (int i = 0; i < size; i++) {
            i iVar = this.f.get(i);
            if (iVar.getGroupId() == groupId && iVar.m() && iVar.isCheckable()) {
                iVar.s(iVar == menuItem);
            }
        }
        c0();
    }

    protected g U(int i) {
        W(0, null, i, null, null);
        return this;
    }

    protected g V(Drawable drawable) {
        W(0, null, 0, drawable, null);
        return this;
    }

    protected g X(int i) {
        W(i, null, 0, null, null);
        return this;
    }

    protected g Y(CharSequence charSequence) {
        W(0, charSequence, 0, null, null);
        return this;
    }

    protected g Z(View view) {
        W(0, null, 0, null, view);
        return this;
    }

    protected MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int iB = B(i3);
        i iVarG = g(i, i2, i3, iB, charSequence, this.l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.m;
        if (contextMenuInfo != null) {
            iVarG.v(contextMenuInfo);
        }
        ArrayList<i> arrayList = this.f;
        arrayList.add(n(arrayList, iB), iVarG);
        K(true);
        return iVarG;
    }

    public void a0(boolean z) {
        this.z = z;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.a.getPackageManager();
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

    public void b(m mVar) {
        c(mVar, this.a);
    }

    public void c(m mVar, Context context) {
        this.w.add(new WeakReference<>(mVar));
        mVar.d(context, this);
        this.k = true;
    }

    public void c0() {
        this.q = false;
        if (this.r) {
            this.r = false;
            K(this.s);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        i iVar = this.x;
        if (iVar != null) {
            f(iVar);
        }
        this.f.clear();
        K(true);
    }

    public void clearHeader() {
        this.o = null;
        this.n = null;
        this.p = null;
        K(false);
    }

    @Override // android.view.Menu
    public void close() {
        e(true);
    }

    public void d() {
        a aVar = this.e;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    public void d0() {
        if (this.q) {
            return;
        }
        this.q = true;
        this.r = false;
        this.s = false;
    }

    public final void e(boolean z) {
        if (this.u) {
            return;
        }
        this.u = true;
        for (WeakReference<m> weakReference : this.w) {
            m mVar = weakReference.get();
            if (mVar == null) {
                this.w.remove(weakReference);
            } else {
                mVar.a(this, z);
            }
        }
        this.u = false;
    }

    public boolean f(i iVar) {
        boolean zE = false;
        if (!this.w.isEmpty() && this.x == iVar) {
            d0();
            for (WeakReference<m> weakReference : this.w) {
                m mVar = weakReference.get();
                if (mVar != null) {
                    zE = mVar.e(this, iVar);
                    if (zE) {
                        break;
                    }
                } else {
                    this.w.remove(weakReference);
                }
            }
            c0();
            if (zE) {
                this.x = null;
            }
        }
        return zE;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.f.get(i2);
            if (iVar.getItemId() == i) {
                return iVar;
            }
            if (iVar.hasSubMenu() && (menuItemFindItem = iVar.getSubMenu().findItem(i)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f.get(i);
    }

    boolean h(g gVar, MenuItem menuItem) {
        a aVar = this.e;
        return aVar != null && aVar.a(gVar, menuItem);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.z) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return p(i, keyEvent) != null;
    }

    public boolean k(i iVar) {
        boolean zF = false;
        if (this.w.isEmpty()) {
            return false;
        }
        d0();
        for (WeakReference<m> weakReference : this.w) {
            m mVar = weakReference.get();
            if (mVar != null) {
                zF = mVar.f(this, iVar);
                if (zF) {
                    break;
                }
            } else {
                this.w.remove(weakReference);
            }
        }
        c0();
        if (zF) {
            this.x = iVar;
        }
        return zF;
    }

    public int l(int i) {
        return m(i, 0);
    }

    public int m(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < size) {
            if (this.f.get(i2).getGroupId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public int o(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    i p(int i, KeyEvent keyEvent) {
        ArrayList<i> arrayList = this.v;
        arrayList.clear();
        q(arrayList, i, keyEvent);
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
        boolean zG = G();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = arrayList.get(i2);
            char alphabeticShortcut = zG ? iVar.getAlphabeticShortcut() : iVar.getNumericShortcut();
            if ((alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) || ((alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) || (zG && alphabeticShortcut == '\b' && i == 67))) {
                return iVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return L(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        i iVarP = p(i, keyEvent);
        boolean zL = iVarP != null ? L(iVarP, i2) : false;
        if ((i2 & 2) != 0) {
            e(true);
        }
        return zL;
    }

    void q(List<i> list, int i, KeyEvent keyEvent) {
        boolean zG = G();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f.size();
            for (int i2 = 0; i2 < size; i2++) {
                i iVar = this.f.get(i2);
                if (iVar.hasSubMenu()) {
                    ((g) iVar.getSubMenu()).q(list, i, keyEvent);
                }
                char alphabeticShortcut = zG ? iVar.getAlphabeticShortcut() : iVar.getNumericShortcut();
                if (((modifiers & 69647) == ((zG ? iVar.getAlphabeticModifiers() : iVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (zG && alphabeticShortcut == '\b' && i == 67)) && iVar.isEnabled()) {
                        list.add(iVar);
                    }
                }
            }
        }
    }

    public void r() {
        ArrayList<i> arrayListE = E();
        if (this.k) {
            boolean zC = false;
            for (WeakReference<m> weakReference : this.w) {
                m mVar = weakReference.get();
                if (mVar == null) {
                    this.w.remove(weakReference);
                } else {
                    zC |= mVar.c();
                }
            }
            if (zC) {
                this.i.clear();
                this.j.clear();
                int size = arrayListE.size();
                for (int i = 0; i < size; i++) {
                    i iVar = arrayListE.get(i);
                    if (iVar.l()) {
                        this.i.add(iVar);
                    } else {
                        this.j.add(iVar);
                    }
                }
            } else {
                this.i.clear();
                this.j.clear();
                this.j.addAll(E());
            }
            this.k = false;
        }
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int iL = l(i);
        if (iL >= 0) {
            int size = this.f.size() - iL;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || this.f.get(iL).getGroupId() != i) {
                    break;
                }
                N(iL, false);
                i2 = i3;
            }
            K(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        N(o(i), true);
    }

    public ArrayList<i> s() {
        r();
        return this.i;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.f.get(i2);
            if (iVar.getGroupId() == i) {
                iVar.t(z2);
                iVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.y = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.f.get(i2);
            if (iVar.getGroupId() == i) {
                iVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            i iVar = this.f.get(i2);
            if (iVar.getGroupId() == i && iVar.y(z)) {
                z2 = true;
            }
        }
        if (z2) {
            K(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f209c = z;
        K(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f.size();
    }

    protected String t() {
        return "android:menu:actionviewstates";
    }

    public Context u() {
        return this.a;
    }

    public i v() {
        return this.x;
    }

    public Drawable w() {
        return this.o;
    }

    public CharSequence x() {
        return this.n;
    }

    public View y() {
        return this.p;
    }

    public ArrayList<i> z() {
        r();
        return this.j;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(0, 0, 0, this.f208b.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f208b.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        i iVar = (i) a(i, i2, i3, charSequence);
        r rVar = new r(this.a, this, iVar);
        iVar.x(rVar);
        return rVar;
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.f208b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f208b.getString(i4));
    }
}
