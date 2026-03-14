package cn.manstep.phonemirrorBox.d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f1600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<cn.manstep.phonemirrorBox.g0.a> f1601c;

    static /* synthetic */ class a {
    }

    private class b {
        TextView a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f1602b;

        private b(f fVar) {
        }

        /* synthetic */ b(f fVar, a aVar) {
            this(fVar);
        }
    }

    public f(Context context, List<cn.manstep.phonemirrorBox.g0.a> list) {
        this.f1600b = context;
        this.f1601c = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1601c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f1601c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f1600b).inflate(2131492899, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.a = (TextView) view.findViewById(2131296893);
            bVar.f1602b = (ImageView) view.findViewById(2131296550);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.a.setText(this.f1601c.get(i).b());
        bVar.f1602b.setImageDrawable(this.f1601c.get(i).a());
        return view;
    }
}
