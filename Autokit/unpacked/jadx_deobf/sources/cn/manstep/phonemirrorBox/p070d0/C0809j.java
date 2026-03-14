package cn.manstep.phonemirrorBox.p070d0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.manstep.phonemirrorBox.p070d0.C0808i;
import cn.manstep.phonemirrorBox.util.C0976m;
import cn.manstep.phonemirrorBox.util.C0978o;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0809j extends RecyclerView.AbstractC0434f<a> {

    /* JADX INFO: renamed from: c */
    private Context f4847c;

    /* JADX INFO: renamed from: d */
    private C0808i f4848d;

    /* JADX INFO: renamed from: e */
    private List<C0978o> f4849e;

    /* JADX INFO: renamed from: f */
    private C0808i.b f4850f;

    /* JADX INFO: renamed from: g */
    private b f4851g;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.j$a */
    static class a extends RecyclerView.AbstractC0431c0 {

        /* JADX INFO: renamed from: t */
        TextView f4852t;

        /* JADX INFO: renamed from: u */
        CheckBox f4853u;

        /* JADX INFO: renamed from: v */
        RecyclerView f4854v;

        @SuppressLint({"WrongViewCast"})
        a(View view) {
            super(view);
            this.f4852t = (TextView) view.findViewById(2131296504);
            RecyclerView recyclerView = (RecyclerView) view.findViewById(2131296490);
            this.f4854v = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()));
            this.f4853u = (CheckBox) view.findViewById(2131296411);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.j$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        void mo6186a(View view, C0978o c0978o);
    }

    public C0809j(Context context, List<C0978o> list, C0808i.b bVar, b bVar2) {
        this.f4847c = context;
        this.f4849e = list;
        this.f4850f = bVar;
        this.f4851g = bVar2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: c */
    public int mo3407c() {
        C0982s.m7379i("SHARE", "folder size:" + String.valueOf(this.f4849e.size()));
        return this.f4849e.size();
    }

    /* JADX INFO: renamed from: u */
    public /* synthetic */ void m6182u(C0978o c0978o, a aVar, CompoundButton compoundButton, boolean z) {
        c0978o.m7327d(z);
        Iterator<C0976m> it = c0978o.m7324a().iterator();
        while (it.hasNext()) {
            it.next().m7296d(z);
        }
        aVar.f4854v.post(new Runnable() { // from class: cn.manstep.phonemirrorBox.d0.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f4832b.m3412h();
            }
        });
    }

    /* JADX INFO: renamed from: v */
    public /* synthetic */ void m6183v(C0978o c0978o, View view) {
        b bVar = this.f4851g;
        if (bVar != null) {
            bVar.mo6186a(view, c0978o);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    @SuppressLint({"NotifyDataSetChanged"})
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void mo3414j(final a aVar, int i) {
        final C0978o c0978o = this.f4849e.get(i);
        aVar.f4852t.setText(c0978o.m7325b());
        aVar.f4853u.setChecked(c0978o.m7326c());
        C0808i c0808i = new C0808i(this.f4847c, c0978o.m7324a(), this.f4850f);
        this.f4848d = c0808i;
        aVar.f4854v.setAdapter(c0808i);
        aVar.f4853u.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.manstep.phonemirrorBox.d0.c
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f4827a.m6182u(c0978o, aVar, compoundButton, z);
            }
        });
        aVar.f2721a.setOnClickListener(new View.OnClickListener() { // from class: cn.manstep.phonemirrorBox.d0.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4830b.m6183v(c0978o, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0434f
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public a mo3416l(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.f4847c).inflate(2131492951, viewGroup, false));
    }
}
