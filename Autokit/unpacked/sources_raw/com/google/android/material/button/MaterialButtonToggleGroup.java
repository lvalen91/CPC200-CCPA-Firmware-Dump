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
import androidx.core.view.e0.c;
import androidx.core.view.h;
import androidx.core.view.v;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.l;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.k;
import d.c.a.a.j;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MaterialButtonToggleGroup extends LinearLayout {
    private static final String l = MaterialButtonToggleGroup.class.getSimpleName();
    private static final int m = j.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<d> f2057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f2058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f2059d;
    private final LinkedHashSet<e> e;
    private final Comparator<MaterialButton> f;
    private Integer[] g;
    private boolean h;
    private boolean i;
    private boolean j;
    private int k;

    class a implements Comparator<MaterialButton> {
        a() {
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

    class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.e0.c cVar) {
            super.g(view, cVar);
            cVar.Z(c.C0024c.a(0, 1, MaterialButtonToggleGroup.this.n(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    private class c implements MaterialButton.a {
        private c() {
        }

        @Override // com.google.android.material.button.MaterialButton.a
        public void a(MaterialButton materialButton, boolean z) {
            if (MaterialButtonToggleGroup.this.h) {
                return;
            }
            if (MaterialButtonToggleGroup.this.i) {
                MaterialButtonToggleGroup.this.k = z ? materialButton.getId() : -1;
            }
            if (MaterialButtonToggleGroup.this.u(materialButton.getId(), z)) {
                MaterialButtonToggleGroup.this.l(materialButton.getId(), materialButton.isChecked());
            }
            MaterialButtonToggleGroup.this.invalidate();
        }

        /* synthetic */ c(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    private static class d {
        private static final d.c.a.a.a0.c e = new d.c.a.a.a0.a(CropImageView.DEFAULT_ASPECT_RATIO);
        d.c.a.a.a0.c a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d.c.a.a.a0.c f2062b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d.c.a.a.a0.c f2063c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        d.c.a.a.a0.c f2064d;

        d(d.c.a.a.a0.c cVar, d.c.a.a.a0.c cVar2, d.c.a.a.a0.c cVar3, d.c.a.a.a0.c cVar4) {
            this.a = cVar;
            this.f2062b = cVar3;
            this.f2063c = cVar4;
            this.f2064d = cVar2;
        }

        public static d a(d dVar) {
            d.c.a.a.a0.c cVar = e;
            return new d(cVar, dVar.f2064d, cVar, dVar.f2063c);
        }

        public static d b(d dVar, View view) {
            return l.d(view) ? c(dVar) : d(dVar);
        }

        public static d c(d dVar) {
            d.c.a.a.a0.c cVar = dVar.a;
            d.c.a.a.a0.c cVar2 = dVar.f2064d;
            d.c.a.a.a0.c cVar3 = e;
            return new d(cVar, cVar2, cVar3, cVar3);
        }

        public static d d(d dVar) {
            d.c.a.a.a0.c cVar = e;
            return new d(cVar, cVar, dVar.f2062b, dVar.f2063c);
        }

        public static d e(d dVar, View view) {
            return l.d(view) ? d(dVar) : c(dVar);
        }

        public static d f(d dVar) {
            d.c.a.a.a0.c cVar = dVar.a;
            d.c.a.a.a0.c cVar2 = e;
            return new d(cVar, cVar2, dVar.f2062b, cVar2);
        }
    }

    public interface e {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z);
    }

    private class f implements MaterialButton.b {
        private f() {
        }

        @Override // com.google.android.material.button.MaterialButton.b
        public void a(MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        /* synthetic */ f(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.c.a.a.b.materialButtonToggleGroupStyle);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (p(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (p(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && p(i2)) {
                i++;
            }
        }
        return i;
    }

    private void h() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            MaterialButton materialButtonM = m(i);
            int iMin = Math.min(materialButtonM.getStrokeWidth(), m(i - 1).getStrokeWidth());
            LinearLayout.LayoutParams layoutParamsI = i(materialButtonM);
            if (getOrientation() == 0) {
                h.c(layoutParamsI, 0);
                h.d(layoutParamsI, -iMin);
                layoutParamsI.topMargin = 0;
            } else {
                layoutParamsI.bottomMargin = 0;
                layoutParamsI.topMargin = -iMin;
                h.d(layoutParamsI, 0);
            }
            materialButtonM.setLayoutParams(layoutParamsI);
        }
        r(firstVisibleChildIndex);
    }

    private LinearLayout.LayoutParams i(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    private void j(int i, boolean z) {
        MaterialButton materialButton = (MaterialButton) findViewById(i);
        if (materialButton != null) {
            materialButton.setChecked(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i, boolean z) {
        Iterator<e> it = this.e.iterator();
        while (it.hasNext()) {
            it.next().a(this, i, z);
        }
    }

    private MaterialButton m(int i) {
        return (MaterialButton) getChildAt(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int n(View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) == view) {
                return i;
            }
            if ((getChildAt(i2) instanceof MaterialButton) && p(i2)) {
                i++;
            }
        }
        return -1;
    }

    private d o(int i, int i2, int i3) {
        d dVar = this.f2057b.get(i);
        if (i2 == i3) {
            return dVar;
        }
        boolean z = getOrientation() == 0;
        if (i == i2) {
            return z ? d.e(dVar, this) : d.f(dVar);
        }
        if (i == i3) {
            return z ? d.b(dVar, this) : d.a(dVar);
        }
        return null;
    }

    private boolean p(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    private void r(int i) {
        if (getChildCount() == 0 || i == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m(i).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            h.c(layoutParams, 0);
            h.d(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    private void s(int i, boolean z) {
        View viewFindViewById = findViewById(i);
        if (viewFindViewById instanceof MaterialButton) {
            this.h = true;
            ((MaterialButton) viewFindViewById).setChecked(z);
            this.h = false;
        }
    }

    private void setCheckedId(int i) {
        this.k = i;
        l(i, true);
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(v.k());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.a(this.f2058c);
        materialButton.setOnPressedChangeListenerInternal(this.f2059d);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    private static void t(k.b bVar, d dVar) {
        if (dVar == null) {
            bVar.o(CropImageView.DEFAULT_ASPECT_RATIO);
            return;
        }
        bVar.B(dVar.a);
        bVar.t(dVar.f2064d);
        bVar.F(dVar.f2062b);
        bVar.x(dVar.f2063c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u(int i, boolean z) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.j && checkedButtonIds.isEmpty()) {
            s(i, true);
            this.k = i;
            return false;
        }
        if (z && this.i) {
            checkedButtonIds.remove(Integer.valueOf(i));
            Iterator<Integer> it = checkedButtonIds.iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                s(iIntValue, false);
                l(iIntValue, false);
            }
        }
        return true;
    }

    private void v() {
        TreeMap treeMap = new TreeMap(this.f);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m(i), Integer.valueOf(i));
        }
        this.g = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setGeneratedIdIfNeeded(materialButton);
            setupButtonChild(materialButton);
            if (materialButton.isChecked()) {
                u(materialButton.getId(), true);
                setCheckedId(materialButton.getId());
            }
            k shapeAppearanceModel = materialButton.getShapeAppearanceModel();
            this.f2057b.add(new d(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
            v.o0(materialButton, new b());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        v();
        super.dispatchDraw(canvas);
    }

    public void g(e eVar) {
        this.e.add(eVar);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    public int getCheckedButtonId() {
        if (this.i) {
            return this.k;
        }
        return -1;
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButtonM = m(i);
            if (materialButtonM.isChecked()) {
                arrayList.add(Integer.valueOf(materialButtonM.getId()));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.g;
        return (numArr == null || i2 >= numArr.length) ? i2 : numArr[i2].intValue();
    }

    public void k() {
        this.h = true;
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButtonM = m(i);
            materialButtonM.setChecked(false);
            l(materialButtonM.getId(), false);
        }
        this.h = false;
        setCheckedId(-1);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i = this.k;
        if (i != -1) {
            j(i, true);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.view.e0.c.v0(accessibilityNodeInfo).Y(c.b.a(1, getVisibleButtonCount(), false, q() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        w();
        h();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.h(this.f2058c);
            materialButton.setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f2057b.remove(iIndexOfChild);
        }
        w();
        h();
    }

    public boolean q() {
        return this.i;
    }

    public void setSelectionRequired(boolean z) {
        this.j = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.i != z) {
            this.i = z;
            k();
        }
    }

    void w() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i = 0; i < childCount; i++) {
            MaterialButton materialButtonM = m(i);
            if (materialButtonM.getVisibility() != 8) {
                k.b bVarV = materialButtonM.getShapeAppearanceModel().v();
                t(bVarV, o(i, firstVisibleChildIndex, lastVisibleChildIndex));
                materialButtonM.setShapeAppearanceModel(bVarV.m());
            }
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.c(context, attributeSet, i, m), attributeSet, i);
        this.f2057b = new ArrayList();
        a aVar = null;
        this.f2058c = new c(this, aVar);
        this.f2059d = new f(this, aVar);
        this.e = new LinkedHashSet<>();
        this.f = new a();
        this.h = false;
        TypedArray typedArrayH = com.google.android.material.internal.j.h(getContext(), attributeSet, d.c.a.a.k.MaterialButtonToggleGroup, i, m, new int[0]);
        setSingleSelection(typedArrayH.getBoolean(d.c.a.a.k.MaterialButtonToggleGroup_singleSelection, false));
        this.k = typedArrayH.getResourceId(d.c.a.a.k.MaterialButtonToggleGroup_checkedButton, -1);
        this.j = typedArrayH.getBoolean(d.c.a.a.k.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        typedArrayH.recycle();
        v.x0(this, 1);
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}
