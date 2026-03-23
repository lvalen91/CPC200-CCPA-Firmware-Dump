package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class j extends i {
    private static final ViewDataBinding.g x = null;
    private static final SparseIntArray y;
    private final ConstraintLayout v;
    private long w;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        y = sparseIntArray;
        sparseIntArray.put(2131296521, 1);
        y.put(2131296524, 2);
        y.put(2131296370, 3);
        y.put(2131296532, 4);
        y.put(2131296870, 5);
    }

    public j(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 6, x, y));
    }

    public void L() {
        synchronized (this) {
            this.w = 1L;
        }
        D();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void n() {
        synchronized (this) {
            this.w = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.w != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        return false;
    }

    private j(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 0, (Button) objArr[3], (Guideline) objArr[1], (Guideline) objArr[2], (ImageView) objArr[4], (TextView) objArr[5]);
        this.w = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.v = constraintLayout;
        constraintLayout.setTag(null);
        H(view);
        L();
    }
}
