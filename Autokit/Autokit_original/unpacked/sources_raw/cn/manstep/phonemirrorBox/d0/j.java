package cn.manstep.phonemirrorBox.d0;

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
import cn.manstep.phonemirrorBox.d0.i;
import cn.manstep.phonemirrorBox.util.m;
import cn.manstep.phonemirrorBox.util.o;
import cn.manstep.phonemirrorBox.util.s;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class j extends RecyclerView.f<a> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f1609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f1610d;
    private List<o> e;
    private i.b f;
    private b g;

    static class a extends RecyclerView.c0 {
        TextView t;
        CheckBox u;
        RecyclerView v;

        @SuppressLint({"WrongViewCast"})
        a(View view) {
            super(view);
            this.t = (TextView) view.findViewById(2131296504);
            RecyclerView recyclerView = (RecyclerView) view.findViewById(2131296490);
            this.v = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()));
            this.u = (CheckBox) view.findViewById(2131296411);
        }
    }

    public interface b {
        void a(View view, o oVar);
    }

    public j(Context context, List<o> list, i.b bVar, b bVar2) {
        this.f1609c = context;
        this.e = list;
        this.f = bVar;
        this.g = bVar2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public int c() {
        s.i("SHARE", "folder size:" + String.valueOf(this.e.size()));
        return this.e.size();
    }

    public /* synthetic */ void u(o oVar, a aVar, CompoundButton compoundButton, boolean z) {
        oVar.d(z);
        Iterator<m> it = oVar.a().iterator();
        while (it.hasNext()) {
            it.next().d(z);
        }
        aVar.v.post(new Runnable() { // from class: cn.manstep.phonemirrorBox.d0.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f1599b.h();
            }
        });
    }

    public /* synthetic */ void v(o oVar, View view) {
        b bVar = this.g;
        if (bVar != null) {
            bVar.a(view, oVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    @SuppressLint({"NotifyDataSetChanged"})
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void j(final a aVar, int i) {
        final o oVar = this.e.get(i);
        aVar.t.setText(oVar.b());
        aVar.u.setChecked(oVar.c());
        i iVar = new i(this.f1609c, oVar.a(), this.f);
        this.f1610d = iVar;
        aVar.v.setAdapter(iVar);
        aVar.u.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.manstep.phonemirrorBox.d0.c
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.a.u(oVar, aVar, compoundButton, z);
            }
        });
        aVar.a.setOnClickListener(new View.OnClickListener() { // from class: cn.manstep.phonemirrorBox.d0.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1597b.v(oVar, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public a l(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.f1609c).inflate(2131492951, viewGroup, false));
    }
}
