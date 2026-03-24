package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class x extends w {
    private static final ViewDataBinding.g C = null;
    private static final SparseIntArray D;
    private final TextView A;
    private long B;
    private final ConstraintLayout z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        D = sparseIntArray;
        sparseIntArray.put(2131296880, 3);
        D.put(2131296370, 4);
        D.put(2131296380, 5);
    }

    public x(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 6, C, D));
    }

    private boolean N(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.B |= 2;
        }
        return true;
    }

    private boolean O(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.B |= 1;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.i0.w
    public void L(cn.manstep.phonemirrorBox.x0.h hVar) {
        this.y = hVar;
        synchronized (this) {
            this.B |= 4;
        }
        d(8);
        super.D();
    }

    public void M() {
        synchronized (this) {
            this.B = 8L;
        }
        D();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void n() {
        long j;
        String strE;
        synchronized (this) {
            j = this.B;
            this.B = 0L;
        }
        cn.manstep.phonemirrorBox.x0.h hVar = this.y;
        String strE2 = null;
        if ((15 & j) == 0) {
            strE = null;
        } else if ((j & 13) == 0) {
            strE = null;
            if ((j & 14) != 0) {
                androidx.lifecycle.o<String> oVarJ = hVar != null ? hVar.j() : null;
                J(1, oVarJ);
                if (oVarJ != null) {
                    strE2 = oVarJ.e();
                }
            }
        } else {
            androidx.lifecycle.o<String> oVarK = hVar != null ? hVar.k() : null;
            J(0, oVarK);
            if (oVarK != null) {
                strE = oVarK.e();
            }
            if ((j & 14) != 0) {
            }
        }
        if ((14 & j) != 0) {
            androidx.databinding.j.b.b(this.x, strE2);
        }
        if ((j & 13) != 0) {
            androidx.databinding.j.b.b(this.A, strE);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.B != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        if (i == 0) {
            return O((androidx.lifecycle.o) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return N((androidx.lifecycle.o) obj, i2);
    }

    private x(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 2, (Button) objArr[4], (Button) objArr[5], (EditText) objArr[2], (ConstraintLayout) objArr[3]);
        this.B = -1L;
        this.x.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.z = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.A = textView;
        textView.setTag(null);
        H(view);
        M();
    }
}
