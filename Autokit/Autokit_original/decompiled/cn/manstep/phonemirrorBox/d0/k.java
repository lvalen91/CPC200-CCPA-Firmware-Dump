package cn.manstep.phonemirrorBox.d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class k extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f1611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<String> f1612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1613d = -1;

    static /* synthetic */ class a {
    }

    private class b {
        TextView a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f1614b;

        private b(k kVar) {
        }

        /* synthetic */ b(k kVar, a aVar) {
            this(kVar);
        }
    }

    public k(Context context, List<String> list) {
        this.f1611b = context;
        this.f1612c = list;
    }

    public void a(int i) {
        this.f1613d = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1612c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f1612c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f1611b).inflate(2131492952, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.a = (TextView) view.findViewById(2131296582);
            bVar.f1614b = (ImageView) view.findViewById(2131296558);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.a.setText(this.f1612c.get(i));
        if (i == this.f1613d) {
            bVar.f1614b.setImageResource(2131230976);
        } else {
            bVar.f1614b.setImageResource(2131230978);
        }
        return view;
    }
}
