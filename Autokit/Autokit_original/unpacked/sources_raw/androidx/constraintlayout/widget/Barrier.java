package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Barrier extends b {
    private int j;
    private int k;
    private c.e.b.k.a l;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    private void p(c.e.b.k.e eVar, int i, boolean z) {
        this.k = i;
        if (Build.VERSION.SDK_INT < 17) {
            int i2 = this.j;
            if (i2 == 5) {
                this.k = 0;
            } else if (i2 == 6) {
                this.k = 1;
            }
        } else if (z) {
            int i3 = this.j;
            if (i3 == 5) {
                this.k = 1;
            } else if (i3 == 6) {
                this.k = 0;
            }
        } else {
            int i4 = this.j;
            if (i4 == 5) {
                this.k = 0;
            } else if (i4 == 6) {
                this.k = 1;
            }
        }
        if (eVar instanceof c.e.b.k.a) {
            ((c.e.b.k.a) eVar).j1(this.k);
        }
    }

    public int getMargin() {
        return this.l.f1();
    }

    public int getType() {
        return this.j;
    }

    @Override // androidx.constraintlayout.widget.b
    protected void h(AttributeSet attributeSet) {
        super.h(attributeSet);
        this.l = new c.e.b.k.a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, i.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == i.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == i.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.l.i1(typedArrayObtainStyledAttributes.getBoolean(index, true));
                } else if (index == i.ConstraintLayout_Layout_barrierMargin) {
                    this.l.k1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.e = this.l;
        n();
    }

    @Override // androidx.constraintlayout.widget.b
    public void i(c.e.b.k.e eVar, boolean z) {
        p(eVar, this.j, z);
    }

    public boolean o() {
        return this.l.d1();
    }

    public void setAllowsGoneWidget(boolean z) {
        this.l.i1(z);
    }

    public void setDpMargin(int i) {
        this.l.k1((int) ((i * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i) {
        this.l.k1(i);
    }

    public void setType(int i) {
        this.j = i;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }
}
