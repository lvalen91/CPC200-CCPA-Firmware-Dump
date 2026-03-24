package cn.manstep.phonemirrorBox.l0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import cn.manstep.phonemirrorBox.x0.d;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class k extends m {
    private cn.manstep.phonemirrorBox.x0.i c0;
    private cn.manstep.phonemirrorBox.x0.k d0;
    private cn.manstep.phonemirrorBox.x0.d e0;
    private cn.manstep.phonemirrorBox.i0.e f0;
    private final d.InterfaceC0103d g0 = new a();

    class a implements d.InterfaceC0103d {
        a() {
        }

        @Override // cn.manstep.phonemirrorBox.x0.d.InterfaceC0103d
        public void k() {
        }

        @Override // cn.manstep.phonemirrorBox.x0.d.InterfaceC0103d
        public void m(int i) {
            k.this.c0.C(i != 0);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (k.this.K() instanceof s) {
                ((s) k.this.K()).f(k.this);
            } else {
                k.this.g2();
            }
        }
    }

    private k() {
    }

    public static k newInstance() {
        return new k();
    }

    @Override // androidx.fragment.app.Fragment
    public void H0(Bundle bundle) {
        super.H0(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f0 = (cn.manstep.phonemirrorBox.i0.e) androidx.databinding.f.e(layoutInflater, 2131492930, viewGroup, false);
        cn.manstep.phonemirrorBox.x0.k kVar = (cn.manstep.phonemirrorBox.x0.k) new androidx.lifecycle.w(cn.manstep.phonemirrorBox.q.g().h(), this.a0).a(cn.manstep.phonemirrorBox.x0.k.class);
        this.d0 = kVar;
        this.f0.M(kVar);
        cn.manstep.phonemirrorBox.x0.i iVar = (cn.manstep.phonemirrorBox.x0.i) new androidx.lifecycle.w(cn.manstep.phonemirrorBox.q.g().h(), this.a0).a(cn.manstep.phonemirrorBox.x0.i.class);
        this.c0 = iVar;
        iVar.A();
        this.f0.L(this.c0);
        this.f0.G(this);
        cn.manstep.phonemirrorBox.x0.d dVar = (cn.manstep.phonemirrorBox.x0.d) new androidx.lifecycle.w(cn.manstep.phonemirrorBox.q.g().h(), this.a0).a(cn.manstep.phonemirrorBox.x0.d.class);
        this.e0 = dVar;
        dVar.u(this.g0);
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            this.c0.C(true);
        }
        return this.f0.t();
    }

    @Override // androidx.fragment.app.Fragment
    public void O0() {
        this.d0 = null;
        this.c0 = null;
        this.e0.z(this.g0);
        this.e0 = null;
        this.f0 = null;
        super.O0();
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        this.c0.F(D() == null ? null : D().getSupportFragmentManager());
        view.findViewById(2131296370).setOnClickListener(new b());
    }
}
