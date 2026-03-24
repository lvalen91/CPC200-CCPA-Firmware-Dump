package cn.manstep.phonemirrorBox.l0;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.w;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class m extends Fragment {
    protected w.b a0;
    protected b b0;

    class a implements View.OnKeyListener {
        a() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (i != 4) {
                return false;
            }
            if (keyEvent.getAction() == 1) {
                m.this.g2();
            }
            return true;
        }
    }

    public interface b {
        void a();
    }

    @Override // androidx.fragment.app.Fragment
    public void E0(Context context) {
        super.E0(context);
        this.a0 = new w.a(D() == null ? null : D().getApplication());
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
        view.setOnKeyListener(new a());
    }

    protected void g2() {
        b bVar = this.b0;
        if (bVar != null) {
            bVar.a();
        }
        androidx.fragment.app.w wVarL = X().l();
        wVarL.o(this);
        wVarL.i();
    }
}
