package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class l extends k {
    private static final SparseIntArray A;
    private static final ViewDataBinding.g z = null;
    private final ConstraintLayout w;
    private final TextView x;
    private long y;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        A = sparseIntArray;
        sparseIntArray.put(2131296952, 2);
        A.put(2131296870, 3);
        A.put(2131296565, 4);
        A.put(2131296525, 5);
        A.put(d.c.a.a.f.guideline, 6);
    }

    public l(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 7, z, A));
    }

    private boolean N(androidx.lifecycle.o<String> oVar, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.y |= 1;
        }
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.i0.k
    public void L(cn.manstep.phonemirrorBox.x0.g gVar) {
        this.v = gVar;
        synchronized (this) {
            this.y |= 2;
        }
        d(8);
        super.D();
    }

    public void M() {
        synchronized (this) {
            this.y = 4L;
        }
        D();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void n() {
        long j;
        synchronized (this) {
            j = this.y;
            this.y = 0L;
        }
        cn.manstep.phonemirrorBox.x0.g gVar = this.v;
        long j2 = j & 7;
        String strE = null;
        if (j2 != 0) {
            androidx.lifecycle.o<String> oVarW = gVar != null ? gVar.w() : null;
            J(0, oVarW);
            if (oVarW != null) {
                strE = oVarW.e();
            }
        }
        if (j2 != 0) {
            androidx.databinding.j.b.b(this.x, strE);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.y != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return N((androidx.lifecycle.o) obj, i2);
    }

    private l(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 1, (Guideline) objArr[6], (Guideline) objArr[5], (ImageView) objArr[4], (TextView) objArr[3], (ImageView) objArr[2]);
        this.y = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.w = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.x = textView;
        textView.setTag(null);
        H(view);
        M();
    }
}
