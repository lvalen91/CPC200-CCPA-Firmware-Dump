package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.appcompat.widget.C0160d;
import androidx.appcompat.widget.C0169h0;
import com.google.android.material.internal.C1116e;
import com.google.android.material.internal.C1121j;
import com.google.android.material.theme.p092a.C1147a;
import com.yalantis.ucrop.BuildConfig;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;

/* JADX INFO: renamed from: com.google.android.material.textfield.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1144g extends C0160d {

    /* JADX INFO: renamed from: e */
    private final C0169h0 f7408e;

    /* JADX INFO: renamed from: f */
    private final AccessibilityManager f7409f;

    /* JADX INFO: renamed from: g */
    private final Rect f7410g;

    /* JADX INFO: renamed from: com.google.android.material.textfield.g$a */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            C1144g.this.m8940e(i < 0 ? C1144g.this.f7408e.m1162v() : C1144g.this.getAdapter().getItem(i));
            AdapterView.OnItemClickListener onItemClickListener = C1144g.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i < 0) {
                    view = C1144g.this.f7408e.m1165y();
                    i = C1144g.this.f7408e.m1164x();
                    j = C1144g.this.f7408e.m1163w();
                }
                onItemClickListener.onItemClick(C1144g.this.f7408e.mo698l(), view, i, j);
            }
            C1144g.this.f7408e.dismiss();
        }
    }

    public C1144g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.autoCompleteTextViewStyle);
    }

    /* JADX INFO: renamed from: c */
    private TextInputLayout m8938c() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    private int m8939d() {
        ListAdapter adapter = getAdapter();
        TextInputLayout textInputLayoutM8938c = m8938c();
        int i = 0;
        if (adapter == null || textInputLayoutM8938c == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMin = Math.min(adapter.getCount(), Math.max(0, this.f7408e.m1164x()) + 15);
        View view = null;
        int iMax = 0;
        for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
            int itemViewType = adapter.getItemViewType(iMax2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = adapter.getView(iMax2, view, textInputLayoutM8938c);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        Drawable drawableM1156j = this.f7408e.m1156j();
        if (drawableM1156j != null) {
            drawableM1156j.getPadding(this.f7410g);
            Rect rect = this.f7410g;
            iMax += rect.left + rect.right;
        }
        return iMax + textInputLayoutM8938c.getEndIconView().getMeasuredWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e */
    public <T extends ListAdapter & Filterable> void m8940e(Object obj) {
        if (Build.VERSION.SDK_INT >= 17) {
            setText(convertSelectionToString(obj), false);
            return;
        }
        ListAdapter adapter = getAdapter();
        setAdapter(null);
        setText(convertSelectionToString(obj));
        setAdapter(adapter);
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout textInputLayoutM8938c = m8938c();
        return (textInputLayoutM8938c == null || !textInputLayoutM8938c.m8826O()) ? super.getHint() : textInputLayoutM8938c.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutM8938c = m8938c();
        if (textInputLayoutM8938c != null && textInputLayoutM8938c.m8826O() && super.getHint() == null && C1116e.m8693a()) {
            setHint(BuildConfig.FLAVOR);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m8939d()), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.f7408e.mo1158o(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.f7409f;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f7408e.mo696g();
        }
    }

    public C1144g(Context context, AttributeSet attributeSet, int i) {
        super(C1147a.m8952c(context, attributeSet, i, 0), attributeSet, i);
        this.f7410g = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayM8726h = C1121j.m8726h(context2, attributeSet, C1226k.MaterialAutoCompleteTextView, i, C1225j.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (typedArrayM8726h.hasValue(C1226k.MaterialAutoCompleteTextView_android_inputType) && typedArrayM8726h.getInt(C1226k.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f7409f = (AccessibilityManager) context2.getSystemService("accessibility");
        C0169h0 c0169h0 = new C0169h0(context2);
        this.f7408e = c0169h0;
        c0169h0.m1145J(true);
        this.f7408e.m1139D(this);
        this.f7408e.m1144I(2);
        this.f7408e.mo1158o(getAdapter());
        this.f7408e.m1147L(new a());
        typedArrayM8726h.recycle();
    }
}
