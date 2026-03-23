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

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0965d extends BaseAdapter {

    /* JADX INFO: renamed from: b */
    private LinkedList<C0963c> f6013b;

    /* JADX INFO: renamed from: c */
    private WeakReference<Context> f6014c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.d$b */
    private static class b {

        /* JADX INFO: renamed from: a */
        TextView f6015a;

        /* JADX INFO: renamed from: b */
        ImageView f6016b;

        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public C0965d(LinkedList<C0963c> linkedList, Context context) {
        this.f6014c = new WeakReference<>(null);
        this.f6014c = new WeakReference<>(context);
        this.f6013b = linkedList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f6013b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        LinkedList<C0963c> linkedList = this.f6013b;
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
            view = LayoutInflater.from(this.f6014c.get()).inflate(2131493020, viewGroup, false);
            bVar = new b(null);
            bVar.f6015a = (TextView) view.findViewById(2131296898);
            bVar.f6016b = (ImageView) view.findViewById(2131296552);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f6015a.setText(this.f6013b.get(i).m7176b());
        bVar.f6016b.setImageBitmap(this.f6013b.get(i).m7175a());
        return view;
    }
}
