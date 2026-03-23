package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class l implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final n f732b;

    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ u f733b;

        a(u uVar) {
            this.f733b = uVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Fragment fragmentK = this.f733b.k();
            this.f733b.m();
            c0.n((ViewGroup) fragmentK.I.getParent(), l.this.f732b).j();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    l(n nVar) {
        this.f732b = nVar;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        u uVarV;
        if (h.class.getName().equals(str)) {
            return new h(context, attributeSet, this.f732b);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.j.c.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(c.j.c.Fragment_android_name);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(c.j.c.Fragment_android_id, -1);
        String string = typedArrayObtainStyledAttributes.getString(c.j.c.Fragment_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue == null || !j.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment fragmentG0 = resourceId != -1 ? this.f732b.g0(resourceId) : null;
        if (fragmentG0 == null && string != null) {
            fragmentG0 = this.f732b.h0(string);
        }
        if (fragmentG0 == null && id != -1) {
            fragmentG0 = this.f732b.g0(id);
        }
        if (fragmentG0 == null) {
            fragmentG0 = this.f732b.p0().a(context.getClassLoader(), attributeValue);
            fragmentG0.o = true;
            fragmentG0.x = resourceId != 0 ? resourceId : id;
            fragmentG0.y = id;
            fragmentG0.z = string;
            fragmentG0.p = true;
            n nVar = this.f732b;
            fragmentG0.t = nVar;
            fragmentG0.u = nVar.s0();
            fragmentG0.T0(this.f732b.s0().f(), attributeSet, fragmentG0.f649c);
            uVarV = this.f732b.g(fragmentG0);
            if (n.E0(2)) {
                String str2 = "Fragment " + fragmentG0 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId);
            }
        } else {
            if (fragmentG0.p) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            fragmentG0.p = true;
            n nVar2 = this.f732b;
            fragmentG0.t = nVar2;
            fragmentG0.u = nVar2.s0();
            fragmentG0.T0(this.f732b.s0().f(), attributeSet, fragmentG0.f649c);
            uVarV = this.f732b.v(fragmentG0);
            if (n.E0(2)) {
                String str3 = "Retained Fragment " + fragmentG0 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId);
            }
        }
        fragmentG0.H = (ViewGroup) view;
        uVarV.m();
        uVarV.j();
        View view2 = fragmentG0.I;
        if (view2 == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragmentG0.I.getTag() == null) {
            fragmentG0.I.setTag(string);
        }
        fragmentG0.I.addOnAttachStateChangeListener(new a(uVarV));
        return fragmentG0.I;
    }
}
