package cn.manstep.phonemirrorBox.d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class l extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<cn.manstep.phonemirrorBox.g0.c> f1615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f1616d;

    static /* synthetic */ class a {
    }

    private static class b {
        TextView a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f1617b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        LinearLayout f1618c;

        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public l(Context context, List<cn.manstep.phonemirrorBox.g0.c> list) {
        this.f1615c = list;
        this.f1616d = context;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public cn.manstep.phonemirrorBox.g0.c getItem(int i) {
        return this.f1615c.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1615c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f1616d).inflate(2131493014, (ViewGroup) null);
            bVar = new b(null);
            bVar.a = (TextView) view.findViewById(2131296846);
            bVar.f1617b = (ImageView) view.findViewById(2131296537);
            bVar.f1618c = (LinearLayout) view.findViewById(2131296573);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        if (this.f1603b == i) {
            bVar.f1617b.setVisibility(0);
            bVar.f1618c.setBackgroundResource(2131230956);
        } else {
            bVar.f1617b.setVisibility(4);
            bVar.f1618c.setBackgroundResource(2131230955);
        }
        bVar.a.setText(this.f1615c.get(i).a());
        return view;
    }
}
