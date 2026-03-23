package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import p016c.p033e.p037b.p038k.C0554a;
import p016c.p033e.p037b.p038k.C0558e;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Barrier extends AbstractC0210b {

    /* JADX INFO: renamed from: j */
    private int f1401j;

    /* JADX INFO: renamed from: k */
    private int f1402k;

    /* JADX INFO: renamed from: l */
    private C0554a f1403l;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    /* JADX INFO: renamed from: p */
    private void m1440p(C0558e c0558e, int i, boolean z) {
        this.f1402k = i;
        if (Build.VERSION.SDK_INT < 17) {
            int i2 = this.f1401j;
            if (i2 == 5) {
                this.f1402k = 0;
            } else if (i2 == 6) {
                this.f1402k = 1;
            }
        } else if (z) {
            int i3 = this.f1401j;
            if (i3 == 5) {
                this.f1402k = 1;
            } else if (i3 == 6) {
                this.f1402k = 0;
            }
        } else {
            int i4 = this.f1401j;
            if (i4 == 5) {
                this.f1402k = 0;
            } else if (i4 == 6) {
                this.f1402k = 1;
            }
        }
        if (c0558e instanceof C0554a) {
            ((C0554a) c0558e).m4418j1(this.f1402k);
        }
    }

    public int getMargin() {
        return this.f1403l.m4412f1();
    }

    public int getType() {
        return this.f1401j;
    }

    @Override // androidx.constraintlayout.widget.AbstractC0210b
    /* JADX INFO: renamed from: h */
    protected void mo1441h(AttributeSet attributeSet) {
        super.mo1441h(attributeSet);
        this.f1403l = new C0554a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0217i.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == C0217i.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == C0217i.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f1403l.m4417i1(typedArrayObtainStyledAttributes.getBoolean(index, true));
                } else if (index == C0217i.ConstraintLayout_Layout_barrierMargin) {
                    this.f1403l.m4419k1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1518e = this.f1403l;
        m1483n();
    }

    @Override // androidx.constraintlayout.widget.AbstractC0210b
    /* JADX INFO: renamed from: i */
    public void mo1442i(C0558e c0558e, boolean z) {
        m1440p(c0558e, this.f1401j, z);
    }

    /* JADX INFO: renamed from: o */
    public boolean m1443o() {
        return this.f1403l.m4408d1();
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f1403l.m4417i1(z);
    }

    public void setDpMargin(int i) {
        this.f1403l.m4419k1((int) ((i * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i) {
        this.f1403l.m4419k1(i);
    }

    public void setType(int i) {
        this.f1401j = i;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }
}
