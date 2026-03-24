package cn.manstep.phonemirrorBox.d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f1604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<cn.manstep.phonemirrorBox.g0.b> f1605c;

    static /* synthetic */ class a {
    }

    private class b {
        TextView a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CheckBox f1606b;

        private b(h hVar) {
        }

        /* synthetic */ b(h hVar, a aVar) {
            this(hVar);
        }
    }

    public h(Context context, List<cn.manstep.phonemirrorBox.g0.b> list) {
        this.f1604b = context;
        this.f1605c = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1605c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f1605c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f1604b).inflate(2131492901, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.a = (TextView) view.findViewById(2131296895);
            bVar.f1606b = (CheckBox) view.findViewById(2131296404);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.a.setText(this.f1605c.get(i).b());
        if (this.f1605c.get(i).c()) {
            bVar.f1606b.setChecked(true);
        } else {
            bVar.f1606b.setChecked(false);
        }
        return view;
    }
}
