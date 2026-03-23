package cn.manstep.phonemirrorBox.l0;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.w;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class t extends Fragment {
    private cn.manstep.phonemirrorBox.x0.h a0;
    private cn.manstep.phonemirrorBox.i0.w b0;
    private String c0;
    private String d0;
    private int e0 = 1;
    private e f0;
    private androidx.fragment.app.n g0;

    class a implements View.OnTouchListener {
        a(t tVar) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            cn.manstep.phonemirrorBox.util.s.e("InputFragment,onTouch: " + motionEvent.toString());
            return motionEvent.getAction() != 1;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            androidx.fragment.app.w wVarL = t.this.g0.l();
            wVarL.o(t.this);
            wVarL.h();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (t.this.f0 != null && !t.this.f0.a(t.this.b0.x.getText().toString())) {
                Toast.makeText(t.this.K(), 2131689754, 0).show();
                return;
            }
            androidx.fragment.app.w wVarL = t.this.g0.l();
            wVarL.o(t.this);
            wVarL.h();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.b0.x.requestFocus();
            try {
                t.this.b0.x.setSelection(t.this.b0.x.length());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public interface e {
        boolean a(String str);
    }

    public static t j2(androidx.fragment.app.n nVar) {
        t tVar = new t();
        tVar.g0 = nVar;
        return tVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void B0(Bundle bundle) {
        super.B0(bundle);
        this.b0.v.setOnClickListener(new b());
        this.b0.w.setOnClickListener(new c());
    }

    @Override // androidx.fragment.app.Fragment
    public void E0(Context context) {
        super.E0(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.b0 = (cn.manstep.phonemirrorBox.i0.w) androidx.databinding.f.e(layoutInflater, 2131492949, viewGroup, false);
        cn.manstep.phonemirrorBox.x0.h hVar = (cn.manstep.phonemirrorBox.x0.h) new androidx.lifecycle.w(this, new w.a(D() == null ? null : D().getApplication())).a(cn.manstep.phonemirrorBox.x0.h.class);
        this.a0 = hVar;
        this.b0.L(hVar);
        this.b0.G(this);
        this.b0.x.setInputType(this.e0);
        this.a0.m(this.c0);
        this.a0.l(this.d0);
        return this.b0.t();
    }

    @Override // androidx.fragment.app.Fragment
    public void e1() {
        super.e1();
        new Handler().postDelayed(new d(), 500L);
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        this.b0.x.setOnTouchListener(new a(this));
    }

    public void k2(e eVar) {
        this.f0 = eVar;
    }

    public void l2(int i) {
        this.e0 = i;
    }

    public void m2(String str, String str2) {
        this.c0 = str;
        this.d0 = str2;
    }
}
