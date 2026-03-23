package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.LinkedList;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class d extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinkedList<c> f1856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference<Context> f1857c;

    static /* synthetic */ class a {
    }

    private static class b {
        TextView a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f1858b;

        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public d(LinkedList<c> linkedList, Context context) {
        this.f1857c = new WeakReference<>(null);
        this.f1857c = new WeakReference<>(context);
        this.f1856b = linkedList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1856b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        LinkedList<c> linkedList = this.f1856b;
        if (linkedList != null) {
            return linkedList.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f1857c.get()).inflate(2131493020, viewGroup, false);
            bVar = new b(null);
            bVar.a = (TextView) view.findViewById(2131296898);
            bVar.f1858b = (ImageView) view.findViewById(2131296552);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.a.setText(this.f1856b.get(i).b());
        bVar.f1858b.setImageBitmap(this.f1856b.get(i).a());
        return view;
    }
}
