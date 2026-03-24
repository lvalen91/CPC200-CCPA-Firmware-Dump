package cn.manstep.phonemirrorBox.i0;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.customview.CustomImageView;
import cn.manstep.phonemirrorBox.m0.a.a;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class d extends c implements a.InterfaceC0091a {
    private static final ViewDataBinding.g G = null;
    private static final SparseIntArray H;
    private final ConstraintLayout B;
    private final View.OnClickListener C;
    private final View.OnClickListener D;
    private final View.OnClickListener E;
    private long F;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        H = sparseIntArray;
        sparseIntArray.put(2131296871, 6);
        H.put(2131296874, 7);
        H.put(2131296758, 8);
    }

    public d(androidx.databinding.e eVar, View view) {
        this(eVar, view, ViewDataBinding.y(eVar, view, 9, G, H));
    }

    public void L() {
        synchronized (this) {
            this.F = 2L;
        }
        D();
    }

    @Override // cn.manstep.phonemirrorBox.m0.a.a.InterfaceC0091a
    public final void b(int i, View view) {
        if (i == 1) {
            cn.manstep.phonemirrorBox.x0.j jVar = this.A;
            if (jVar != null) {
                jVar.c(view);
                throw null;
            }
            return;
        }
        if (i == 2) {
            cn.manstep.phonemirrorBox.x0.j jVar2 = this.A;
            if (jVar2 != null) {
                jVar2.a(-5);
                throw null;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        cn.manstep.phonemirrorBox.x0.j jVar3 = this.A;
        if (jVar3 != null) {
            jVar3.a(5);
            throw null;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void n() {
        long j;
        synchronized (this) {
            j = this.F;
            this.F = 0L;
        }
        cn.manstep.phonemirrorBox.x0.j jVar = this.A;
        long j2 = 3 & j;
        if (j2 != 0 && jVar != null) {
            jVar.b();
            throw null;
        }
        if (j2 != 0) {
            androidx.databinding.j.b.b(this.v, null);
            androidx.databinding.j.a.a(this.x, false);
            androidx.databinding.j.a.b(this.x, null, null);
        }
        if ((j & 2) != 0) {
            this.w.setOnClickListener(this.E);
            this.y.setOnClickListener(this.C);
            this.z.setOnClickListener(this.D);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean v() {
        synchronized (this) {
            return this.F != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean z(int i, Object obj, int i2) {
        return false;
    }

    private d(androidx.databinding.e eVar, View view, Object[] objArr) {
        super(eVar, view, 0, (EditText) objArr[4], (ImageView) objArr[1], (Switch) objArr[2], (CustomImageView) objArr[3], (CustomImageView) objArr[5], (ScrollView) objArr[8], (TextView) objArr[6], (View) objArr[7]);
        this.F = -1L;
        this.v.setTag(null);
        this.w.setTag(null);
        this.x.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.B = constraintLayout;
        constraintLayout.setTag(null);
        this.y.setTag(null);
        this.z.setTag(null);
        H(view);
        this.C = new cn.manstep.phonemirrorBox.m0.a.a(this, 2);
        this.D = new cn.manstep.phonemirrorBox.m0.a.a(this, 3);
        this.E = new cn.manstep.phonemirrorBox.m0.a.a(this, 1);
        L();
    }
}
