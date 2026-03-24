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
import androidx.appcompat.widget.h0;
import com.google.android.material.internal.j;
import com.yalantis.ucrop.BuildConfig;
import d.c.a.a.k;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class g extends androidx.appcompat.widget.d {
    private final h0 e;
    private final AccessibilityManager f;
    private final Rect g;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            g.this.e(i < 0 ? g.this.e.v() : g.this.getAdapter().getItem(i));
            AdapterView.OnItemClickListener onItemClickListener = g.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i < 0) {
                    view = g.this.e.y();
                    i = g.this.e.x();
                    j = g.this.e.w();
                }
                onItemClickListener.onItemClick(g.this.e.l(), view, i, j);
            }
            g.this.e.dismiss();
        }
    }

    public g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.c.a.a.b.autoCompleteTextViewStyle);
    }

    private TextInputLayout c() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    private int d() {
        ListAdapter adapter = getAdapter();
        TextInputLayout textInputLayoutC = c();
        int i = 0;
        if (adapter == null || textInputLayoutC == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMin = Math.min(adapter.getCount(), Math.max(0, this.e.x()) + 15);
        View view = null;
        int iMax = 0;
        for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
            int itemViewType = adapter.getItemViewType(iMax2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = adapter.getView(iMax2, view, textInputLayoutC);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        Drawable drawableJ = this.e.j();
        if (drawableJ != null) {
            drawableJ.getPadding(this.g);
            Rect rect = this.g;
            iMax += rect.left + rect.right;
        }
        return iMax + textInputLayoutC.getEndIconView().getMeasuredWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T extends ListAdapter & Filterable> void e(Object obj) {
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
        TextInputLayout textInputLayoutC = c();
        return (textInputLayoutC == null || !textInputLayoutC.O()) ? super.getHint() : textInputLayoutC.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutC = c();
        if (textInputLayoutC != null && textInputLayoutC.O() && super.getHint() == null && com.google.android.material.internal.e.a()) {
            setHint(BuildConfig.FLAVOR);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), d()), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.e.o(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.f;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.e.g();
        }
    }

    public g(Context context, AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.c(context, attributeSet, i, 0), attributeSet, i);
        this.g = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayH = j.h(context2, attributeSet, k.MaterialAutoCompleteTextView, i, d.c.a.a.j.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (typedArrayH.hasValue(k.MaterialAutoCompleteTextView_android_inputType) && typedArrayH.getInt(k.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.f = (AccessibilityManager) context2.getSystemService("accessibility");
        h0 h0Var = new h0(context2);
        this.e = h0Var;
        h0Var.J(true);
        this.e.D(this);
        this.e.I(2);
        this.e.o(getAdapter());
        this.e.L(new a());
        typedArrayH.recycle();
    }
}
