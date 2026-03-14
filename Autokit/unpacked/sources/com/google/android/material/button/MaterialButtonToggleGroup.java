package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.core.view.C0258a;
import androidx.core.view.C0278h;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.C1121j;
import com.google.android.material.internal.C1123l;
import com.google.android.material.theme.p092a.C1147a;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1202a;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p102a0.InterfaceC1204c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* JADX INFO: renamed from: l */
    private static final String f6709l = MaterialButtonToggleGroup.class.getSimpleName();

    /* JADX INFO: renamed from: m */
    private static final int f6710m = C1225j.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* JADX INFO: renamed from: b */
    private final List<C1061d> f6711b;

    /* JADX INFO: renamed from: c */
    private final C1060c f6712c;

    /* JADX INFO: renamed from: d */
    private final C1063f f6713d;

    /* JADX INFO: renamed from: e */
    private final LinkedHashSet<InterfaceC1062e> f6714e;

    /* JADX INFO: renamed from: f */
    private final Comparator<MaterialButton> f6715f;

    /* JADX INFO: renamed from: g */
    private Integer[] f6716g;

    /* JADX INFO: renamed from: h */
    private boolean f6717h;

    /* JADX INFO: renamed from: i */
    private boolean f6718i;

    /* JADX INFO: renamed from: j */
    private boolean f6719j;

    /* JADX INFO: renamed from: k */
    private int f6720k;

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButtonToggleGroup$a */
    class C1058a implements Comparator<MaterialButton> {
        C1058a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int iCompareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButtonToggleGroup$b */
    class C1059b extends C0258a {
        C1059b() {
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            super.mo1813g(view, c0269c);
            c0269c.m1922Z(C0269c.c.m1965a(0, 1, MaterialButtonToggleGroup.this.m8099n(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButtonToggleGroup$c */
    private class C1060c implements MaterialButton.InterfaceC1055a {
        private C1060c() {
        }

        @Override // com.google.android.material.button.MaterialButton.InterfaceC1055a
        /* JADX INFO: renamed from: a */
        public void mo8082a(MaterialButton materialButton, boolean z) {
            if (MaterialButtonToggleGroup.this.f6717h) {
                return;
            }
            if (MaterialButtonToggleGroup.this.f6718i) {
                MaterialButtonToggleGroup.this.f6720k = z ? materialButton.getId() : -1;
            }
            if (MaterialButtonToggleGroup.this.m8105u(materialButton.getId(), z)) {
                MaterialButtonToggleGroup.this.m8097l(materialButton.getId(), materialButton.isChecked());
            }
            MaterialButtonToggleGroup.this.invalidate();
        }

        /* synthetic */ C1060c(MaterialButtonToggleGroup materialButtonToggleGroup, C1058a c1058a) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButtonToggleGroup$d */
    private static class C1061d {

        /* JADX INFO: renamed from: e */
        private static final InterfaceC1204c f6724e = new C1202a(CropImageView.DEFAULT_ASPECT_RATIO);

        /* JADX INFO: renamed from: a */
        InterfaceC1204c f6725a;

        /* JADX INFO: renamed from: b */
        InterfaceC1204c f6726b;

        /* JADX INFO: renamed from: c */
        InterfaceC1204c f6727c;

        /* JADX INFO: renamed from: d */
        InterfaceC1204c f6728d;

        C1061d(InterfaceC1204c interfaceC1204c, InterfaceC1204c interfaceC1204c2, InterfaceC1204c interfaceC1204c3, InterfaceC1204c interfaceC1204c4) {
            this.f6725a = interfaceC1204c;
            this.f6726b = interfaceC1204c3;
            this.f6727c = interfaceC1204c4;
            this.f6728d = interfaceC1204c2;
        }

        /* JADX INFO: renamed from: a */
        public static C1061d m8112a(C1061d c1061d) {
            InterfaceC1204c interfaceC1204c = f6724e;
            return new C1061d(interfaceC1204c, c1061d.f6728d, interfaceC1204c, c1061d.f6727c);
        }

        /* JADX INFO: renamed from: b */
        public static C1061d m8113b(C1061d c1061d, View view) {
            return C1123l.m8734d(view) ? m8114c(c1061d) : m8115d(c1061d);
        }

        /* JADX INFO: renamed from: c */
        public static C1061d m8114c(C1061d c1061d) {
            InterfaceC1204c interfaceC1204c = c1061d.f6725a;
            InterfaceC1204c interfaceC1204c2 = c1061d.f6728d;
            InterfaceC1204c interfaceC1204c3 = f6724e;
            return new C1061d(interfaceC1204c, interfaceC1204c2, interfaceC1204c3, interfaceC1204c3);
        }

        /* JADX INFO: renamed from: d */
        public static C1061d m8115d(C1061d c1061d) {
            InterfaceC1204c interfaceC1204c = f6724e;
            return new C1061d(interfaceC1204c, interfaceC1204c, c1061d.f6726b, c1061d.f6727c);
        }

        /* JADX INFO: renamed from: e */
        public static C1061d m8116e(C1061d c1061d, View view) {
            return C1123l.m8734d(view) ? m8115d(c1061d) : m8114c(c1061d);
        }

        /* JADX INFO: renamed from: f */
        public static C1061d m8117f(C1061d c1061d) {
            InterfaceC1204c interfaceC1204c = c1061d.f6725a;
            InterfaceC1204c interfaceC1204c2 = f6724e;
            return new C1061d(interfaceC1204c, interfaceC1204c2, c1061d.f6726b, interfaceC1204c2);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButtonToggleGroup$e */
    public interface InterfaceC1062e {
        /* JADX INFO: renamed from: a */
        void mo8118a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z);
    }

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButtonToggleGroup$f */
    private class C1063f implements MaterialButton.InterfaceC1056b {
        private C1063f() {
        }

        @Override // com.google.android.material.button.MaterialButton.InterfaceC1056b
        /* JADX INFO: renamed from: a */
        public void mo8083a(MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        /* synthetic */ C1063f(MaterialButtonToggleGroup materialButtonToggleGroup, C1058a c1058a) {
            this();
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.materialButtonToggleGroupStyle);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m8101p(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m8101p(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && m8101p(i2)) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: h */
    private void m8094h() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            MaterialButton materialButtonM8098m = m8098m(i);
            int iMin = Math.min(materialButtonM8098m.getStrokeWidth(), m8098m(i - 1).getStrokeWidth());
            LinearLayout.LayoutParams layoutParamsM8095i = m8095i(materialButtonM8098m);
            if (getOrientation() == 0) {
                C0278h.m2007c(layoutParamsM8095i, 0);
                C0278h.m2008d(layoutParamsM8095i, -iMin);
                layoutParamsM8095i.topMargin = 0;
            } else {
                layoutParamsM8095i.bottomMargin = 0;
                layoutParamsM8095i.topMargin = -iMin;
                C0278h.m2008d(layoutParamsM8095i, 0);
            }
            materialButtonM8098m.setLayoutParams(layoutParamsM8095i);
        }
        m8102r(firstVisibleChildIndex);
    }

    /* JADX INFO: renamed from: i */
    private LinearLayout.LayoutParams m8095i(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    /* JADX INFO: renamed from: j */
    private void m8096j(int i, boolean z) {
        MaterialButton materialButton = (MaterialButton) findViewById(i);
        if (materialButton != null) {
            materialButton.setChecked(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l */
    public void m8097l(int i, boolean z) {
        Iterator<InterfaceC1062e> it = this.f6714e.iterator();
        while (it.hasNext()) {
            it.next().mo8118a(this, i, z);
        }
    }

    /* JADX INFO: renamed from: m */
    private MaterialButton m8098m(int i) {
        return (MaterialButton) getChildAt(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n */
    public int m8099n(View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) == view) {
                return i;
            }
            if ((getChildAt(i2) instanceof MaterialButton) && m8101p(i2)) {
                i++;
            }
        }
        return -1;
    }

    /* JADX INFO: renamed from: o */
    private C1061d m8100o(int i, int i2, int i3) {
        C1061d c1061d = this.f6711b.get(i);
        if (i2 == i3) {
            return c1061d;
        }
        boolean z = getOrientation() == 0;
        if (i == i2) {
            return z ? C1061d.m8116e(c1061d, this) : C1061d.m8117f(c1061d);
        }
        if (i == i3) {
            return z ? C1061d.m8113b(c1061d, this) : C1061d.m8112a(c1061d);
        }
        return null;
    }

    /* JADX INFO: renamed from: p */
    private boolean m8101p(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    /* JADX INFO: renamed from: r */
    private void m8102r(int i) {
        if (getChildCount() == 0 || i == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m8098m(i).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            C0278h.m2007c(layoutParams, 0);
            C0278h.m2008d(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    /* JADX INFO: renamed from: s */
    private void m8103s(int i, boolean z) {
        View viewFindViewById = findViewById(i);
        if (viewFindViewById instanceof MaterialButton) {
            this.f6717h = true;
            ((MaterialButton) viewFindViewById).setChecked(z);
            this.f6717h = false;
        }
    }

    private void setCheckedId(int i) {
        this.f6720k = i;
        m8097l(i, true);
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(C0292v.m2096k());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.m8079a(this.f6712c);
        materialButton.setOnPressedChangeListenerInternal(this.f6713d);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    /* JADX INFO: renamed from: t */
    private static void m8104t(C1212k.b bVar, C1061d c1061d) {
        if (c1061d == null) {
            bVar.m9257o(CropImageView.DEFAULT_ASPECT_RATIO);
            return;
        }
        bVar.m9251B(c1061d.f6725a);
        bVar.m9262t(c1061d.f6728d);
        bVar.m9255F(c1061d.f6726b);
        bVar.m9266x(c1061d.f6727c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u */
    public boolean m8105u(int i, boolean z) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.f6719j && checkedButtonIds.isEmpty()) {
            m8103s(i, true);
            this.f6720k = i;
            return false;
        }
        if (z && this.f6718i) {
            checkedButtonIds.remove(Integer.valueOf(i));
            Iterator<Integer> it = checkedButtonIds.iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                m8103s(iIntValue, false);
                m8097l(iIntValue, false);
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: v */
    private void m8106v() {
        TreeMap treeMap = new TreeMap(this.f6715f);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m8098m(i), Integer.valueOf(i));
        }
        this.f6716g = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setGeneratedIdIfNeeded(materialButton);
            setupButtonChild(materialButton);
            if (materialButton.isChecked()) {
                m8105u(materialButton.getId(), true);
                setCheckedId(materialButton.getId());
            }
            C1212k shapeAppearanceModel = materialButton.getShapeAppearanceModel();
            this.f6711b.add(new C1061d(shapeAppearanceModel.m9229r(), shapeAppearanceModel.m9222j(), shapeAppearanceModel.m9231t(), shapeAppearanceModel.m9224l()));
            C0292v.m2105o0(materialButton, new C1059b());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        m8106v();
        super.dispatchDraw(canvas);
    }

    /* JADX INFO: renamed from: g */
    public void m8107g(InterfaceC1062e interfaceC1062e) {
        this.f6714e.add(interfaceC1062e);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    public int getCheckedButtonId() {
        if (this.f6718i) {
            return this.f6720k;
        }
        return -1;
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButtonM8098m = m8098m(i);
            if (materialButtonM8098m.isChecked()) {
                arrayList.add(Integer.valueOf(materialButtonM8098m.getId()));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f6716g;
        return (numArr == null || i2 >= numArr.length) ? i2 : numArr[i2].intValue();
    }

    /* JADX INFO: renamed from: k */
    public void m8108k() {
        this.f6717h = true;
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButtonM8098m = m8098m(i);
            materialButtonM8098m.setChecked(false);
            m8097l(materialButtonM8098m.getId(), false);
        }
        this.f6717h = false;
        setCheckedId(-1);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f6720k;
        if (i != -1) {
            m8096j(i, true);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C0269c.m1899v0(accessibilityNodeInfo).m1921Y(C0269c.b.m1964a(1, getVisibleButtonCount(), false, m8109q() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m8110w();
        m8094h();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.m8081h(this.f6712c);
            materialButton.setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f6711b.remove(iIndexOfChild);
        }
        m8110w();
        m8094h();
    }

    /* JADX INFO: renamed from: q */
    public boolean m8109q() {
        return this.f6718i;
    }

    public void setSelectionRequired(boolean z) {
        this.f6719j = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.f6718i != z) {
            this.f6718i = z;
            m8108k();
        }
    }

    /* JADX INFO: renamed from: w */
    void m8110w() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i = 0; i < childCount; i++) {
            MaterialButton materialButtonM8098m = m8098m(i);
            if (materialButtonM8098m.getVisibility() != 8) {
                C1212k.b bVarM9233v = materialButtonM8098m.getShapeAppearanceModel().m9233v();
                m8104t(bVarM9233v, m8100o(i, firstVisibleChildIndex, lastVisibleChildIndex));
                materialButtonM8098m.setShapeAppearanceModel(bVarM9233v.m9256m());
            }
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i) {
        super(C1147a.m8952c(context, attributeSet, i, f6710m), attributeSet, i);
        this.f6711b = new ArrayList();
        C1058a c1058a = null;
        this.f6712c = new C1060c(this, c1058a);
        this.f6713d = new C1063f(this, c1058a);
        this.f6714e = new LinkedHashSet<>();
        this.f6715f = new C1058a();
        this.f6717h = false;
        TypedArray typedArrayM8726h = C1121j.m8726h(getContext(), attributeSet, C1226k.MaterialButtonToggleGroup, i, f6710m, new int[0]);
        setSingleSelection(typedArrayM8726h.getBoolean(C1226k.MaterialButtonToggleGroup_singleSelection, false));
        this.f6720k = typedArrayM8726h.getResourceId(C1226k.MaterialButtonToggleGroup_checkedButton, -1);
        this.f6719j = typedArrayM8726h.getBoolean(C1226k.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        typedArrayM8726h.recycle();
        C0292v.m2123x0(this, 1);
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}
