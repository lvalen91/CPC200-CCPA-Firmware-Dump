package cn.manstep.phonemirrorBox.d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.manstep.phonemirrorBox.util.m;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class i extends RecyclerView.f<a> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f1607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<m> f1608d;
    private b e;

    static class a extends RecyclerView.c0 {
        TextView t;
        CheckBox u;

        public a(View view) {
            super(view);
            this.t = (TextView) view.findViewById(2131296491);
            this.u = (CheckBox) view.findViewById(2131296411);
        }
    }

    public interface b {
        void a(View view, m mVar);
    }

    public i(Context context, List<m> list, b bVar) {
        this.f1607c = context;
        this.f1608d = list;
        this.e = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public int c() {
        return this.f1608d.size();
    }

    public /* synthetic */ void v(m mVar, View view) {
        b bVar = this.e;
        if (bVar != null) {
            bVar.a(view, mVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void j(a aVar, int i) {
        final m mVar = this.f1608d.get(i);
        aVar.t.setText(mVar.b());
        aVar.u.setChecked(mVar.c());
        aVar.u.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.manstep.phonemirrorBox.d0.b
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                mVar.d(z);
            }
        });
        aVar.a.setOnClickListener(new View.OnClickListener() { // from class: cn.manstep.phonemirrorBox.d0.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1593b.v(mVar, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public a l(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.f1607c).inflate(2131492950, viewGroup, false));
    }
}
