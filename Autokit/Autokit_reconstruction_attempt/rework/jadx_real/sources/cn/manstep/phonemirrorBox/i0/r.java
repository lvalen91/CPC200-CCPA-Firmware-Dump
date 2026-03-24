package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class r extends q {
    private static final ViewDataBinding.g A = null;
    private static final SparseIntArray B;
    private final ConstraintLayout y;
    private long z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        B = sparseIntArray;
        sparseIntArray.put(2131296880, 1);
        B.put(2131296564, 2);
        B.put(2131296601, 3);
        B.put(2131296637, 4);
        B.put(2131296600, 5);
        B.put(2131296598, 6);
    }

    public r(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 7, A, B));
    }

    public void L() {
        synchronized (this) {
            this.z = 1L;
        }
        D();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void n() {
        synchronized (this) {
            this.z = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.z != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        return false;
    }

    private r(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 0, (ImageView) objArr[2], (SwitchCompat) objArr[6], (LinearLayout) objArr[5], (LinearLayout) objArr[3], (SwitchCompat) objArr[4], (ConstraintLayout) objArr[1]);
        this.z = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.y = constraintLayout;
        constraintLayout.setTag(null);
        H(view);
        L();
    }
}
