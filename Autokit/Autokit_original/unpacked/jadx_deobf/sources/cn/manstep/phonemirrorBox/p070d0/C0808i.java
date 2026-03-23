package cn.manstep.phonemirrorBox.p070d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.manstep.phonemirrorBox.util.C0976m;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0808i extends RecyclerView.AbstractC0434f<a> {

    /* JADX INFO: renamed from: c */
    private Context f4842c;

    /* JADX INFO: renamed from: d */
    private List<C0976m> f4843d;

    /* JADX INFO: renamed from: e */
    private b f4844e;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.i$a */
    static class a extends RecyclerView.AbstractC0431c0 {

        /* JADX INFO: renamed from: t */
        TextView f4845t;

        /* JADX INFO: renamed from: u */
        CheckBox f4846u;

        public a(View view) {
            super(view);
            this.f4845t = (TextView) view.findViewById(2131296491);
            this.f4846u = (CheckBox) view.findViewById(2131296411);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.i$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        void mo6181a(View view, C0976m c0976m);
    }

    public C0808i(Context context, List<C0976m> list, b bVar) {
        this.f4842c = context;
        this.f4843d = list;
        this.f4844e = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: c */
    public int mo3407c() {
        return this.f4843d.size();
    }

    /* JADX INFO: renamed from: v */
    public /* synthetic */ void m6178v(C0976m c0976m, View view) {
        b bVar = this.f4844e;
        if (bVar != null) {
            bVar.mo6181a(view, c0976m);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void mo3414j(a aVar, int i) {
        final C0976m c0976m = this.f4843d.get(i);
        aVar.f4845t.setText(c0976m.m7294b());
        aVar.f4846u.setChecked(c0976m.m7295c());
        aVar.f4846u.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.manstep.phonemirrorBox.d0.b
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                c0976m.m7296d(z);
            }
        });
        aVar.f2721a.setOnClickListener(new View.OnClickListener() { // from class: cn.manstep.phonemirrorBox.d0.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4824b.m6178v(c0976m, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public a mo3416l(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.f4842c).inflate(2131492950, viewGroup, false));
    }
}
