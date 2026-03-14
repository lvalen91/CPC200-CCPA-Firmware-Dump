package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import p016c.p055j.C0636c;

/* JADX INFO: renamed from: androidx.fragment.app.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class LayoutInflaterFactory2C0364l implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: b */
    final AbstractC0366n f2274b;

    /* JADX INFO: renamed from: androidx.fragment.app.l$a */
    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ C0373u f2275b;

        a(C0373u c0373u) {
            this.f2275b = c0373u;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Fragment fragmentM2852k = this.f2275b.m2852k();
            this.f2275b.m2853m();
            AbstractC0353c0.m2572n((ViewGroup) fragmentM2852k.f2054I.getParent(), LayoutInflaterFactory2C0364l.this.f2274b).m2580j();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    LayoutInflaterFactory2C0364l(AbstractC0366n abstractC0366n) {
        this.f2274b = abstractC0366n;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        C0373u c0373uM2787v;
        if (C0360h.class.getName().equals(str)) {
            return new C0360h(context, attributeSet, this.f2274b);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0636c.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(C0636c.Fragment_android_name);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C0636c.Fragment_android_id, -1);
        String string = typedArrayObtainStyledAttributes.getString(C0636c.Fragment_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue == null || !C0362j.m2654b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment fragmentM2763g0 = resourceId != -1 ? this.f2274b.m2763g0(resourceId) : null;
        if (fragmentM2763g0 == null && string != null) {
            fragmentM2763g0 = this.f2274b.m2766h0(string);
        }
        if (fragmentM2763g0 == null && id != -1) {
            fragmentM2763g0 = this.f2274b.m2763g0(id);
        }
        if (fragmentM2763g0 == null) {
            fragmentM2763g0 = this.f2274b.m2779p0().mo2657a(context.getClassLoader(), attributeValue);
            fragmentM2763g0.f2084o = true;
            fragmentM2763g0.f2093x = resourceId != 0 ? resourceId : id;
            fragmentM2763g0.f2094y = id;
            fragmentM2763g0.f2095z = string;
            fragmentM2763g0.f2085p = true;
            AbstractC0366n abstractC0366n = this.f2274b;
            fragmentM2763g0.f2089t = abstractC0366n;
            fragmentM2763g0.f2090u = abstractC0366n.m2783s0();
            fragmentM2763g0.m2431T0(this.f2274b.m2783s0().m2659f(), attributeSet, fragmentM2763g0.f2072c);
            c0373uM2787v = this.f2274b.m2762g(fragmentM2763g0);
            if (AbstractC0366n.m2677E0(2)) {
                String str2 = "Fragment " + fragmentM2763g0 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId);
            }
        } else {
            if (fragmentM2763g0.f2085p) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            fragmentM2763g0.f2085p = true;
            AbstractC0366n abstractC0366n2 = this.f2274b;
            fragmentM2763g0.f2089t = abstractC0366n2;
            fragmentM2763g0.f2090u = abstractC0366n2.m2783s0();
            fragmentM2763g0.m2431T0(this.f2274b.m2783s0().m2659f(), attributeSet, fragmentM2763g0.f2072c);
            c0373uM2787v = this.f2274b.m2787v(fragmentM2763g0);
            if (AbstractC0366n.m2677E0(2)) {
                String str3 = "Retained Fragment " + fragmentM2763g0 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId);
            }
        }
        fragmentM2763g0.f2053H = (ViewGroup) view;
        c0373uM2787v.m2853m();
        c0373uM2787v.m2851j();
        View view2 = fragmentM2763g0.f2054I;
        if (view2 == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            view2.setId(resourceId);
        }
        if (fragmentM2763g0.f2054I.getTag() == null) {
            fragmentM2763g0.f2054I.setTag(string);
        }
        fragmentM2763g0.f2054I.addOnAttachStateChangeListener(new a(c0373uM2787v));
        return fragmentM2763g0.f2054I;
    }
}
