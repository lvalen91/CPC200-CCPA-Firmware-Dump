package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import com.google.android.material.internal.C1114c;
import com.google.android.material.internal.C1121j;
import com.google.android.material.theme.p092a.C1147a;
import java.util.ArrayList;
import java.util.List;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ChipGroup extends C1114c {

    /* JADX INFO: renamed from: o */
    private static final int f6773o = C1225j.Widget_MaterialComponents_ChipGroup;

    /* JADX INFO: renamed from: f */
    private int f6774f;

    /* JADX INFO: renamed from: g */
    private int f6775g;

    /* JADX INFO: renamed from: h */
    private boolean f6776h;

    /* JADX INFO: renamed from: i */
    private boolean f6777i;

    /* JADX INFO: renamed from: j */
    private InterfaceC1071d f6778j;

    /* JADX INFO: renamed from: k */
    private final C1069b f6779k;

    /* JADX INFO: renamed from: l */
    private ViewGroupOnHierarchyChangeListenerC1072e f6780l;

    /* JADX INFO: renamed from: m */
    private int f6781m;

    /* JADX INFO: renamed from: n */
    private boolean f6782n;

    /* JADX INFO: renamed from: com.google.android.material.chip.ChipGroup$a */
    static /* synthetic */ class C1068a {
    }

    /* JADX INFO: renamed from: com.google.android.material.chip.ChipGroup$b */
    private class C1069b implements CompoundButton.OnCheckedChangeListener {
        private C1069b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (ChipGroup.this.f6782n) {
                return;
            }
            if (ChipGroup.this.getCheckedChipIds().isEmpty() && ChipGroup.this.f6777i) {
                ChipGroup.this.m8195r(compoundButton.getId(), true);
                ChipGroup.this.m8194q(compoundButton.getId(), false);
                return;
            }
            int id = compoundButton.getId();
            if (!z) {
                if (ChipGroup.this.f6781m == id) {
                    ChipGroup.this.setCheckedId(-1);
                }
            } else {
                if (ChipGroup.this.f6781m != -1 && ChipGroup.this.f6781m != id && ChipGroup.this.f6776h) {
                    ChipGroup chipGroup = ChipGroup.this;
                    chipGroup.m8195r(chipGroup.f6781m, false);
                }
                ChipGroup.this.setCheckedId(id);
            }
        }

        /* synthetic */ C1069b(ChipGroup chipGroup, C1068a c1068a) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.chip.ChipGroup$c */
    public static class C1070c extends ViewGroup.MarginLayoutParams {
        public C1070c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C1070c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C1070c(int i, int i2) {
            super(i, i2);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.chip.ChipGroup$d */
    public interface InterfaceC1071d {
        /* JADX INFO: renamed from: a */
        void m8201a(ChipGroup chipGroup, int i);
    }

    /* JADX INFO: renamed from: com.google.android.material.chip.ChipGroup$e */
    private class ViewGroupOnHierarchyChangeListenerC1072e implements ViewGroup.OnHierarchyChangeListener {

        /* JADX INFO: renamed from: b */
        private ViewGroup.OnHierarchyChangeListener f6784b;

        private ViewGroupOnHierarchyChangeListenerC1072e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(C0292v.m2096k());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ((ChipGroup) view).m8197m(chip.getId());
                }
                chip.setOnCheckedChangeListenerInternal(ChipGroup.this.f6779k);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f6784b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f6784b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }

        /* synthetic */ ViewGroupOnHierarchyChangeListenerC1072e(ChipGroup chipGroup, C1068a c1068a) {
            this();
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.chipGroupStyle);
    }

    private int getChipCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof Chip) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q */
    public void m8194q(int i, boolean z) {
        this.f6781m = i;
        InterfaceC1071d interfaceC1071d = this.f6778j;
        if (interfaceC1071d != null && this.f6776h && z) {
            interfaceC1071d.m8201a(this, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r */
    public void m8195r(int i, boolean z) {
        View viewFindViewById = findViewById(i);
        if (viewFindViewById instanceof Chip) {
            this.f6782n = true;
            ((Chip) viewFindViewById).setChecked(z);
            this.f6782n = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i) {
        m8194q(i, true);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.f6781m;
                if (i2 != -1 && this.f6776h) {
                    m8195r(i2, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // com.google.android.material.internal.C1114c
    /* JADX INFO: renamed from: c */
    public boolean mo8196c() {
        return super.mo8196c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C1070c);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1070c(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1070c(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        if (this.f6776h) {
            return this.f6781m;
        }
        return -1;
    }

    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.f6776h) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    public int getChipSpacingHorizontal() {
        return this.f6774f;
    }

    public int getChipSpacingVertical() {
        return this.f6775g;
    }

    /* JADX INFO: renamed from: m */
    public void m8197m(int i) {
        int i2 = this.f6781m;
        if (i == i2) {
            return;
        }
        if (i2 != -1 && this.f6776h) {
            m8195r(i2, false);
        }
        if (i != -1) {
            m8195r(i, true);
        }
        setCheckedId(i);
    }

    /* JADX INFO: renamed from: n */
    public void m8198n() {
        this.f6782n = true;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.f6782n = false;
        setCheckedId(-1);
    }

    /* JADX INFO: renamed from: o */
    int m8199o(View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof Chip) {
                if (((Chip) getChildAt(i2)) == view) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f6781m;
        if (i != -1) {
            m8195r(i, true);
            setCheckedId(this.f6781m);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C0269c.m1899v0(accessibilityNodeInfo).m1921Y(C0269c.b.m1964a(getRowCount(), mo8196c() ? getChipCount() : -1, false, m8200p() ? 1 : 2));
    }

    /* JADX INFO: renamed from: p */
    public boolean m8200p() {
        return this.f6776h;
    }

    public void setChipSpacing(int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(int i) {
        if (this.f6774f != i) {
            this.f6774f = i;
            setItemSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingResource(int i) {
        setChipSpacing(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingVertical(int i) {
        if (this.f6775g != i) {
            this.f6775g = i;
            setLineSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(InterfaceC1071d interfaceC1071d) {
        this.f6778j = interfaceC1071d;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f6780l.f6784b = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.f6777i = z;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // com.google.android.material.internal.C1114c
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
    }

    public void setSingleSelection(boolean z) {
        if (this.f6776h != z) {
            this.f6776h = z;
            m8198n();
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(C1147a.m8952c(context, attributeSet, i, f6773o), attributeSet, i);
        C1068a c1068a = null;
        this.f6779k = new C1069b(this, c1068a);
        this.f6780l = new ViewGroupOnHierarchyChangeListenerC1072e(this, c1068a);
        this.f6781m = -1;
        this.f6782n = false;
        TypedArray typedArrayM8726h = C1121j.m8726h(getContext(), attributeSet, C1226k.ChipGroup, i, f6773o, new int[0]);
        int dimensionPixelOffset = typedArrayM8726h.getDimensionPixelOffset(C1226k.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(typedArrayM8726h.getDimensionPixelOffset(C1226k.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayM8726h.getDimensionPixelOffset(C1226k.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(typedArrayM8726h.getBoolean(C1226k.ChipGroup_singleLine, false));
        setSingleSelection(typedArrayM8726h.getBoolean(C1226k.ChipGroup_singleSelection, false));
        setSelectionRequired(typedArrayM8726h.getBoolean(C1226k.ChipGroup_selectionRequired, false));
        int resourceId = typedArrayM8726h.getResourceId(C1226k.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.f6781m = resourceId;
        }
        typedArrayM8726h.recycle();
        super.setOnHierarchyChangeListener(this.f6780l);
        C0292v.m2123x0(this, 1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C1070c(layoutParams);
    }

    public void setSingleLine(int i) {
        setSingleLine(getResources().getBoolean(i));
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}
