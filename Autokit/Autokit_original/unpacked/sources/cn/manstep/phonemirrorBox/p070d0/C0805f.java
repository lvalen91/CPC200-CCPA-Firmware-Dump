package cn.manstep.phonemirrorBox.p070d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.p073g0.C0846a;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0805f extends BaseAdapter {

    /* JADX INFO: renamed from: b */
    private Context f4833b;

    /* JADX INFO: renamed from: c */
    private List<C0846a> f4834c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.f$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.f$b */
    private class b {

        /* JADX INFO: renamed from: a */
        TextView f4835a;

        /* JADX INFO: renamed from: b */
        ImageView f4836b;

        private b(C0805f c0805f) {
        }

        /* synthetic */ b(C0805f c0805f, a aVar) {
            this(c0805f);
        }
    }

    public C0805f(Context context, List<C0846a> list) {
        this.f4833b = context;
        this.f4834c = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4834c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4834c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f4833b).inflate(2131492899, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.f4835a = (TextView) view.findViewById(2131296893);
            bVar.f4836b = (ImageView) view.findViewById(2131296550);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f4835a.setText(this.f4834c.get(i).m6322b());
        bVar.f4836b.setImageDrawable(this.f4834c.get(i).m6321a());
        return view;
    }
}
