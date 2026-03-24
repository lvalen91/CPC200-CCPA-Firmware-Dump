package cn.manstep.phonemirrorBox;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.w;
import cn.manstep.phonemirrorBox.v0.e;
import cn.manstep.phonemirrorBox.x0.d;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class FirstPage extends Fragment implements e.d {
    private cn.manstep.phonemirrorBox.x0.g a0;
    private d b0;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f1485b;

        a(FirstPage firstPage, View view) {
            this.f1485b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.manstep.phonemirrorBox.util.s.c("FirstPage,onViewCreated: " + this.f1485b.getWidth() + "x" + this.f1485b.getHeight());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492941, viewGroup, false);
        w.a aVar = new w.a(D() == null ? null : D().getApplication());
        cn.manstep.phonemirrorBox.x0.k kVar = (cn.manstep.phonemirrorBox.x0.k) new androidx.lifecycle.w(J1(), aVar).a(cn.manstep.phonemirrorBox.x0.k.class);
        this.a0 = (cn.manstep.phonemirrorBox.x0.g) new androidx.lifecycle.w(J1(), aVar).a(cn.manstep.phonemirrorBox.x0.g.class);
        this.b0 = (d) new androidx.lifecycle.w(J1(), aVar).a(d.class);
        this.a0.J(J());
        this.a0.D(D());
        this.a0.L(kVar);
        cn.manstep.phonemirrorBox.i0.o oVarL = cn.manstep.phonemirrorBox.i0.o.L(viewInflate);
        oVarL.N(this.a0);
        oVarL.G(this);
        cn.manstep.phonemirrorBox.v0.e.O(this);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void M0() {
        super.M0();
        cn.manstep.phonemirrorBox.v0.e.T(this);
    }

    @Override // cn.manstep.phonemirrorBox.v0.e.d
    public void g(int i, int i2, int i3) {
        cn.manstep.phonemirrorBox.util.s.d("FirstPage", "onListenMsg: " + i + ", " + i2 + ", " + i3);
        if (i != 4) {
            if (i == 1) {
                cn.manstep.phonemirrorBox.util.s.d("FirstPage", "onListenMsg: page=" + i2 + "," + cn.manstep.phonemirrorBox.v0.e.E(i2));
                if (i2 == 5) {
                    this.a0.B(true);
                    this.b0.E(3);
                    return;
                } else if (i2 != 4) {
                    this.a0.B(false);
                    return;
                } else {
                    if (4 != this.b0.v().e().intValue()) {
                        this.b0.E(4);
                        this.a0.B(false);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 == 53) {
            cn.manstep.phonemirrorBox.x0.g gVar = this.a0;
            if (gVar == null || cn.manstep.phonemirrorBox.BoxInterface.d.l == null) {
                return;
            }
            gVar.F(cn.manstep.phonemirrorBox.BoxInterface.d.r());
            return;
        }
        if (i2 == 52 || i2 == 8) {
            this.a0.z();
            cn.manstep.phonemirrorBox.util.s.f("FirstPage", "onListenMsg: wParam=" + i2);
            this.a0.q(false);
            cn.manstep.phonemirrorBox.BoxInterface.c.e().u();
            this.b0.E(0);
            return;
        }
        if (i2 == 1) {
            this.a0.q(true);
            this.b0.E(2);
            return;
        }
        if (i2 == 15) {
            this.b0.E(2);
            return;
        }
        if (i2 == 24) {
            this.a0.E(true);
            return;
        }
        if (i2 == 25) {
            this.a0.E(false);
            return;
        }
        if (i2 == 26) {
            this.a0.M(true);
            return;
        }
        if (i2 == 27) {
            this.a0.M(false);
            return;
        }
        if (i2 == 29) {
            this.a0.Q(false);
            return;
        }
        if (i2 == 30) {
            this.a0.Q(true);
            return;
        }
        if (i2 == 50) {
            this.a0.A(1);
            return;
        }
        if (i2 == 51) {
            this.a0.A(2);
        } else if (i2 == 70) {
            this.a0.G(i3);
        } else if (i2 == 56) {
            this.b0.y();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        View viewL0 = l0();
        if (viewL0 != null) {
            viewL0.post(new a(this, viewL0));
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.e.d
    public void s(int i, int i2, Bundle bundle) {
        if (i == 4 && i2 == 62 && this.b0 != null) {
            this.b0.A(bundle.getByteArray("COVER"));
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.e.d
    public void x(int i, int i2, String str) {
        d dVar;
        if (i == 4) {
            if (i2 == 60) {
                d dVar2 = this.b0;
                if (dVar2 != null) {
                    dVar2.C(str);
                    return;
                }
                return;
            }
            if (i2 == 61) {
                d dVar3 = this.b0;
                if (dVar3 != null) {
                    dVar3.B(str);
                    return;
                }
                return;
            }
            if (i2 != 63 || (dVar = this.b0) == null) {
                return;
            }
            dVar.D(str);
        }
    }
}
