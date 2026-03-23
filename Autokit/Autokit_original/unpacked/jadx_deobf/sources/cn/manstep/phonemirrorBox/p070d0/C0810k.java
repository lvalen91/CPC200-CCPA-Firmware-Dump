package cn.manstep.phonemirrorBox.p070d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0810k extends BaseAdapter {

    /* JADX INFO: renamed from: b */
    private Context f4855b;

    /* JADX INFO: renamed from: c */
    private List<String> f4856c;

    /* JADX INFO: renamed from: d */
    private int f4857d = -1;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.k$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.k$b */
    private class b {

        /* JADX INFO: renamed from: a */
        TextView f4858a;

        /* JADX INFO: renamed from: b */
        ImageView f4859b;

        private b(C0810k c0810k) {
        }

        /* synthetic */ b(C0810k c0810k, a aVar) {
            this(c0810k);
        }
    }

    public C0810k(Context context, List<String> list) {
        this.f4855b = context;
        this.f4856c = list;
    }

    /* JADX INFO: renamed from: a */
    public void m6187a(int i) {
        this.f4857d = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4856c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4856c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f4855b).inflate(2131492952, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.f4858a = (TextView) view.findViewById(2131296582);
            bVar.f4859b = (ImageView) view.findViewById(2131296558);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f4858a.setText(this.f4856c.get(i));
        if (i == this.f4857d) {
            bVar.f4859b.setImageResource(2131230976);
        } else {
            bVar.f4859b.setImageResource(2131230978);
        }
        return view;
    }
}
