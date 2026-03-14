package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.appcompat.view.menu.InterfaceC0108n;
import java.util.ArrayList;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0096b implements InterfaceC0107m {

    /* JADX INFO: renamed from: b */
    protected Context f572b;

    /* JADX INFO: renamed from: c */
    protected Context f573c;

    /* JADX INFO: renamed from: d */
    protected C0101g f574d;

    /* JADX INFO: renamed from: e */
    protected LayoutInflater f575e;

    /* JADX INFO: renamed from: f */
    private InterfaceC0107m.a f576f;

    /* JADX INFO: renamed from: g */
    private int f577g;

    /* JADX INFO: renamed from: h */
    private int f578h;

    /* JADX INFO: renamed from: i */
    protected InterfaceC0108n f579i;

    public AbstractC0096b(Context context, int i, int i2) {
        this.f572b = context;
        this.f575e = LayoutInflater.from(context);
        this.f577g = i;
        this.f578h = i2;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: a */
    public void mo666a(C0101g c0101g, boolean z) {
        InterfaceC0107m.a aVar = this.f576f;
        if (aVar != null) {
            aVar.mo532a(c0101g, z);
        }
    }

    /* JADX INFO: renamed from: b */
    protected void m667b(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f579i).addView(view, i);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: d */
    public void mo668d(Context context, C0101g c0101g) {
        this.f573c = context;
        LayoutInflater.from(context);
        this.f574d = c0101g;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: e */
    public boolean mo669e(C0101g c0101g, C0103i c0103i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: f */
    public boolean mo670f(C0101g c0101g, C0103i c0103i) {
        return false;
    }

    /* JADX INFO: renamed from: g */
    public abstract void mo671g(C0103i c0103i, InterfaceC0108n.a aVar);

    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: h */
    public void mo672h(InterfaceC0107m.a aVar) {
        this.f576f = aVar;
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
    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: i */
    public boolean mo673i(SubMenuC0112r subMenuC0112r) {
        InterfaceC0107m.a aVar = this.f576f;
        C0101g c0101g = subMenuC0112r;
        if (aVar == null) {
            return false;
        }
        if (subMenuC0112r == null) {
            c0101g = this.f574d;
        }
        return aVar.mo533b(c0101g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.InterfaceC0107m
    /* JADX INFO: renamed from: j */
    public void mo674j(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f579i;
        if (viewGroup == null) {
            return;
        }
        C0101g c0101g = this.f574d;
        int i = 0;
        if (c0101g != null) {
            c0101g.m765r();
            ArrayList<C0103i> arrayListM729E = this.f574d.m729E();
            int size = arrayListM729E.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                C0103i c0103i = arrayListM729E.get(i3);
                if (mo681q(i2, c0103i)) {
                    View childAt = viewGroup.getChildAt(i2);
                    C0103i itemData = childAt instanceof InterfaceC0108n.a ? ((InterfaceC0108n.a) childAt).getItemData() : null;
                    View viewMo678n = mo678n(c0103i, childAt, viewGroup);
                    if (c0103i != itemData) {
                        viewMo678n.setPressed(false);
                        viewMo678n.jumpDrawablesToCurrentState();
                    }
                    if (viewMo678n != childAt) {
                        m667b(viewMo678n, i2);
                    }
                    i2++;
                }
            }
            i = i2;
        }
        while (i < viewGroup.getChildCount()) {
            if (!mo676l(viewGroup, i)) {
                i++;
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public InterfaceC0108n.a m675k(ViewGroup viewGroup) {
        return (InterfaceC0108n.a) this.f575e.inflate(this.f578h, viewGroup, false);
    }

    /* JADX INFO: renamed from: l */
    protected boolean mo676l(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    /* JADX INFO: renamed from: m */
    public InterfaceC0107m.a m677m() {
        return this.f576f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: n */
    public View mo678n(C0103i c0103i, View view, ViewGroup viewGroup) {
        InterfaceC0108n.a aVarM675k = view instanceof InterfaceC0108n.a ? (InterfaceC0108n.a) view : m675k(viewGroup);
        mo671g(c0103i, aVarM675k);
        return (View) aVarM675k;
    }

    /* JADX INFO: renamed from: o */
    public InterfaceC0108n mo679o(ViewGroup viewGroup) {
        if (this.f579i == null) {
            InterfaceC0108n interfaceC0108n = (InterfaceC0108n) this.f575e.inflate(this.f577g, viewGroup, false);
            this.f579i = interfaceC0108n;
            interfaceC0108n.mo653b(this.f574d);
            mo674j(true);
        }
        return this.f579i;
    }

    /* JADX INFO: renamed from: p */
    public void m680p(int i) {
    }

    /* JADX INFO: renamed from: q */
    public abstract boolean mo681q(int i, C0103i c0103i);
}
