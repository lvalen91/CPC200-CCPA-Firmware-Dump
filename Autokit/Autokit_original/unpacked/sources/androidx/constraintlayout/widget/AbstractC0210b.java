package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;
import java.util.HashMap;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.InterfaceC0561h;

/* JADX INFO: renamed from: androidx.constraintlayout.widget.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0210b extends View {

    /* JADX INFO: renamed from: b */
    protected int[] f1515b;

    /* JADX INFO: renamed from: c */
    protected int f1516c;

    /* JADX INFO: renamed from: d */
    protected Context f1517d;

    /* JADX INFO: renamed from: e */
    protected InterfaceC0561h f1518e;

    /* JADX INFO: renamed from: f */
    protected boolean f1519f;

    /* JADX INFO: renamed from: g */
    protected String f1520g;

    /* JADX INFO: renamed from: h */
    protected String f1521h;

    /* JADX INFO: renamed from: i */
    private HashMap<Integer, String> f1522i;

    public AbstractC0210b(Context context) {
        super(context);
        this.f1515b = new int[32];
        this.f1519f = false;
        this.f1522i = new HashMap<>();
        this.f1517d = context;
        mo1441h(null);
    }

    /* JADX INFO: renamed from: a */
    private void m1472a(String str) {
        if (str == null || str.length() == 0 || this.f1517d == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int iM1476g = m1476g(strTrim);
        if (iM1476g != 0) {
            this.f1522i.put(Integer.valueOf(iM1476g), strTrim);
            m1473b(iM1476g);
            return;
        }
        String str2 = "Could not find id of \"" + strTrim + "\"";
    }

    /* JADX INFO: renamed from: b */
    private void m1473b(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f1516c + 1;
        int[] iArr = this.f1515b;
        if (i2 > iArr.length) {
            this.f1515b = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1515b;
        int i3 = this.f1516c;
        iArr2[i3] = i;
        this.f1516c = i3 + 1;
    }

    /* JADX INFO: renamed from: c */
    private void m1474c(String str) {
        if (str == null || str.length() == 0 || this.f1517d == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.C0207b) && strTrim.equals(((ConstraintLayout.C0207b) layoutParams).f1444U)) {
                if (childAt.getId() == -1) {
                    String str2 = "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID";
                } else {
                    m1473b(childAt.getId());
                }
            }
        }
    }

    /* JADX INFO: renamed from: f */
    private int m1475f(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f1517d.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            if (childAt.getId() != -1) {
                String resourceEntryName = null;
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: g */
    private int m1476g(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int iM1475f = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object objM1454g = constraintLayout.m1454g(0, str);
            if (objM1454g instanceof Integer) {
                iM1475f = ((Integer) objM1454g).intValue();
            }
        }
        if (iM1475f == 0 && constraintLayout != null) {
            iM1475f = m1475f(constraintLayout, str);
        }
        if (iM1475f == 0) {
            try {
                iM1475f = C0216h.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return iM1475f == 0 ? this.f1517d.getResources().getIdentifier(str, "id", this.f1517d.getPackageName()) : iM1475f;
    }

    /* JADX INFO: renamed from: d */
    protected void m1477d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        m1478e((ConstraintLayout) parent);
    }

    /* JADX INFO: renamed from: e */
    protected void m1478e(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : CropImageView.DEFAULT_ASPECT_RATIO;
        for (int i = 0; i < this.f1516c; i++) {
            View viewM1455i = constraintLayout.m1455i(this.f1515b[i]);
            if (viewM1455i != null) {
                viewM1455i.setVisibility(visibility);
                if (elevation > CropImageView.DEFAULT_ASPECT_RATIO && Build.VERSION.SDK_INT >= 21) {
                    viewM1455i.setTranslationZ(viewM1455i.getTranslationZ() + elevation);
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f1515b, this.f1516c);
    }

    /* JADX INFO: renamed from: h */
    protected void mo1441h(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0217i.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == C0217i.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f1520g = string;
                    setIds(string);
                } else if (index == C0217i.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f1521h = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: i */
    public void mo1442i(C0558e c0558e, boolean z) {
    }

    /* JADX INFO: renamed from: j */
    public void m1479j(ConstraintLayout constraintLayout) {
    }

    /* JADX INFO: renamed from: k */
    public void m1480k(ConstraintLayout constraintLayout) {
    }

    /* JADX INFO: renamed from: l */
    public void m1481l(ConstraintLayout constraintLayout) {
    }

    /* JADX INFO: renamed from: m */
    public void m1482m(ConstraintLayout constraintLayout) {
        String str;
        int iM1475f;
        if (isInEditMode()) {
            setIds(this.f1520g);
        }
        InterfaceC0561h interfaceC0561h = this.f1518e;
        if (interfaceC0561h == null) {
            return;
        }
        interfaceC0561h.mo4584c();
        for (int i = 0; i < this.f1516c; i++) {
            int i2 = this.f1515b[i];
            View viewM1455i = constraintLayout.m1455i(i2);
            if (viewM1455i == null && (iM1475f = m1475f(constraintLayout, (str = this.f1522i.get(Integer.valueOf(i2))))) != 0) {
                this.f1515b[i] = iM1475f;
                this.f1522i.put(Integer.valueOf(iM1475f), str);
                viewM1455i = constraintLayout.m1455i(iM1475f);
            }
            if (viewM1455i != null) {
                this.f1518e.mo4582a(constraintLayout.m1456j(viewM1455i));
            }
        }
        this.f1518e.mo4583b(constraintLayout.f1406d);
    }

    /* JADX INFO: renamed from: n */
    public void m1483n() {
        if (this.f1518e == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.C0207b) {
            ((ConstraintLayout.C0207b) layoutParams).f1475m0 = (C0558e) this.f1518e;
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f1520g;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f1521h;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f1519f) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    protected void setIds(String str) {
        this.f1520g = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f1516c = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                m1472a(str.substring(i));
                return;
            } else {
                m1472a(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.f1521h = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f1516c = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                m1474c(str.substring(i));
                return;
            } else {
                m1474c(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f1520g = null;
        this.f1516c = 0;
        for (int i : iArr) {
            m1473b(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f1520g == null) {
            m1473b(i);
        }
    }

    public AbstractC0210b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1515b = new int[32];
        this.f1519f = false;
        this.f1522i = new HashMap<>();
        this.f1517d = context;
        mo1441h(attributeSet);
    }
}
