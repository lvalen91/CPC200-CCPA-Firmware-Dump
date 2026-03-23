package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class b implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Context f186c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected g f187d;
    protected LayoutInflater e;
    private m.a f;
    private int g;
    private int h;
    protected n i;

    public b(Context context, int i, int i2) {
        this.f185b = context;
        this.e = LayoutInflater.from(context);
        this.g = i;
        this.h = i2;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(g gVar, boolean z) {
        m.a aVar = this.f;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    protected void b(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.i).addView(view, i);
    }

    @Override // androidx.appcompat.view.menu.m
    public void d(Context context, g gVar) {
        this.f186c = context;
        LayoutInflater.from(context);
        this.f187d = gVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean e(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean f(g gVar, i iVar) {
        return false;
    }

    public abstract void g(i iVar, n.a aVar);

    @Override // androidx.appcompat.view.menu.m
    public void h(m.a aVar) {
        this.f = aVar;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.appcompat.view.menu.m
    public boolean i(r rVar) {
        m.a aVar = this.f;
        g gVar = rVar;
        if (aVar == null) {
            return false;
        }
        if (rVar == null) {
            gVar = this.f187d;
        }
        return aVar.b(gVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.m
    public void j(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.i;
        if (viewGroup == null) {
            return;
        }
        g gVar = this.f187d;
        int i = 0;
        if (gVar != null) {
            gVar.r();
            ArrayList<i> arrayListE = this.f187d.E();
            int size = arrayListE.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i iVar = arrayListE.get(i3);
                if (q(i2, iVar)) {
                    View childAt = viewGroup.getChildAt(i2);
                    i itemData = childAt instanceof n.a ? ((n.a) childAt).getItemData() : null;
                    View viewN = n(iVar, childAt, viewGroup);
                    if (iVar != itemData) {
                        viewN.setPressed(false);
                        viewN.jumpDrawablesToCurrentState();
                    }
                    if (viewN != childAt) {
                        b(viewN, i2);
                    }
                    i2++;
                }
            }
            i = i2;
        }
        while (i < viewGroup.getChildCount()) {
            if (!l(viewGroup, i)) {
                i++;
            }
        }
    }

    public n.a k(ViewGroup viewGroup) {
        return (n.a) this.e.inflate(this.h, viewGroup, false);
    }

    protected boolean l(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    public m.a m() {
        return this.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View n(i iVar, View view, ViewGroup viewGroup) {
        n.a aVarK = view instanceof n.a ? (n.a) view : k(viewGroup);
        g(iVar, aVarK);
        return (View) aVarK;
    }

    public n o(ViewGroup viewGroup) {
        if (this.i == null) {
            n nVar = (n) this.e.inflate(this.g, viewGroup, false);
            this.i = nVar;
            nVar.b(this.f187d);
            j(true);
        }
        return this.i;
    }

    public void p(int i) {
    }

    public abstract boolean q(int i, i iVar);
}
