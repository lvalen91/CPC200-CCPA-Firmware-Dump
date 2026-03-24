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

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class b extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int[] f456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f457c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Context f458d;
    protected c.e.b.k.h e;
    protected boolean f;
    protected String g;
    protected String h;
    private HashMap<Integer, String> i;

    public b(Context context) {
        super(context);
        this.f456b = new int[32];
        this.f = false;
        this.i = new HashMap<>();
        this.f458d = context;
        h(null);
    }

    private void a(String str) {
        if (str == null || str.length() == 0 || this.f458d == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int iG = g(strTrim);
        if (iG != 0) {
            this.i.put(Integer.valueOf(iG), strTrim);
            b(iG);
            return;
        }
        String str2 = "Could not find id of \"" + strTrim + "\"";
    }

    private void b(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f457c + 1;
        int[] iArr = this.f456b;
        if (i2 > iArr.length) {
            this.f456b = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f456b;
        int i3 = this.f457c;
        iArr2[i3] = i;
        this.f457c = i3 + 1;
    }

    private void c(String str) {
        if (str == null || str.length() == 0 || this.f458d == null) {
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
            if ((layoutParams instanceof ConstraintLayout.b) && strTrim.equals(((ConstraintLayout.b) layoutParams).U)) {
                if (childAt.getId() == -1) {
                    String str2 = "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID";
                } else {
                    b(childAt.getId());
                }
            }
        }
    }

    private int f(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        if (str == null || constraintLayout == null || (resources = this.f458d.getResources()) == null) {
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

    private int g(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int iF = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object objG = constraintLayout.g(0, str);
            if (objG instanceof Integer) {
                iF = ((Integer) objG).intValue();
            }
        }
        if (iF == 0 && constraintLayout != null) {
            iF = f(constraintLayout, str);
        }
        if (iF == 0) {
            try {
                iF = h.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return iF == 0 ? this.f458d.getResources().getIdentifier(str, "id", this.f458d.getPackageName()) : iF;
    }

    protected void d() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        e((ConstraintLayout) parent);
    }

    protected void e(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : CropImageView.DEFAULT_ASPECT_RATIO;
        for (int i = 0; i < this.f457c; i++) {
            View viewI = constraintLayout.i(this.f456b[i]);
            if (viewI != null) {
                viewI.setVisibility(visibility);
                if (elevation > CropImageView.DEFAULT_ASPECT_RATIO && Build.VERSION.SDK_INT >= 21) {
                    viewI.setTranslationZ(viewI.getTranslationZ() + elevation);
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f456b, this.f457c);
    }

    protected void h(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, i.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == i.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.g = string;
                    setIds(string);
                } else if (index == i.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.h = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void i(c.e.b.k.e eVar, boolean z) {
    }

    public void j(ConstraintLayout constraintLayout) {
    }

    public void k(ConstraintLayout constraintLayout) {
    }

    public void l(ConstraintLayout constraintLayout) {
    }

    public void m(ConstraintLayout constraintLayout) {
        String str;
        int iF;
        if (isInEditMode()) {
            setIds(this.g);
        }
        c.e.b.k.h hVar = this.e;
        if (hVar == null) {
            return;
        }
        hVar.c();
        for (int i = 0; i < this.f457c; i++) {
            int i2 = this.f456b[i];
            View viewI = constraintLayout.i(i2);
            if (viewI == null && (iF = f(constraintLayout, (str = this.i.get(Integer.valueOf(i2))))) != 0) {
                this.f456b[i] = iF;
                this.i.put(Integer.valueOf(iF), str);
                viewI = constraintLayout.i(iF);
            }
            if (viewI != null) {
                this.e.a(constraintLayout.j(viewI));
            }
        }
        this.e.b(constraintLayout.f443d);
    }

    public void n() {
        if (this.e == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).m0 = (c.e.b.k.e) this.e;
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.g;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.h;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    protected void setIds(String str) {
        this.g = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f457c = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                a(str.substring(i));
                return;
            } else {
                a(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.h = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f457c = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                c(str.substring(i));
                return;
            } else {
                c(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.g = null;
        this.f457c = 0;
        for (int i : iArr) {
            b(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.g == null) {
            b(i);
        }
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f456b = new int[32];
        this.f = false;
        this.i = new HashMap<>();
        this.f458d = context;
        h(attributeSet);
    }
}
