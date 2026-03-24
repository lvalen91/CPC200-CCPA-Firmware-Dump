package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class v extends u {
    private static final ViewDataBinding.g y = null;
    private static final SparseIntArray z;
    private final ConstraintLayout w;
    private long x;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        z = sparseIntArray;
        sparseIntArray.put(2131296880, 1);
        z.put(2131296564, 2);
        z.put(2131296509, 3);
        z.put(2131296776, 4);
        z.put(2131296265, 5);
        z.put(2131296883, 6);
        z.put(2131296266, 7);
        z.put(2131296493, 8);
    }

    public v(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 9, y, z));
    }

    @Override // cn.manstep.phonemirrorBox.i0.u
    public void L(cn.manstep.phonemirrorBox.x0.k kVar) {
    }

    public void M() {
        synchronized (this) {
            this.x = 2L;
        }
        D();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void n() {
        synchronized (this) {
            this.x = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.x != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        return false;
    }

    private v(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 0, (RelativeLayout) objArr[5], (RelativeLayout) objArr[7], (RecyclerView) objArr[8], (Button) objArr[3], (ImageView) objArr[2], (Button) objArr[4], (RelativeLayout) objArr[1], (CheckBox) objArr[6]);
        this.x = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.w = constraintLayout;
        constraintLayout.setTag(null);
        H(view);
        M();
    }
}
