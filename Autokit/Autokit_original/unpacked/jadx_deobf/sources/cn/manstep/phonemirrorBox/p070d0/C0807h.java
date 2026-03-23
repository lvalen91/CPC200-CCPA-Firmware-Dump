package cn.manstep.phonemirrorBox.p070d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.p073g0.C0847b;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0807h extends BaseAdapter {

    /* JADX INFO: renamed from: b */
    private Context f4838b;

    /* JADX INFO: renamed from: c */
    private List<C0847b> f4839c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.h$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.h$b */
    private class b {

        /* JADX INFO: renamed from: a */
        TextView f4840a;

        /* JADX INFO: renamed from: b */
        CheckBox f4841b;

        private b(C0807h c0807h) {
        }

        /* synthetic */ b(C0807h c0807h, a aVar) {
            this(c0807h);
        }
    }

    public C0807h(Context context, List<C0847b> list) {
        this.f4838b = context;
        this.f4839c = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4839c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4839c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f4838b).inflate(2131492901, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.f4840a = (TextView) view.findViewById(2131296895);
            bVar.f4841b = (CheckBox) view.findViewById(2131296404);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        bVar.f4840a.setText(this.f4839c.get(i).m6325b());
        if (this.f4839c.get(i).m6326c()) {
            bVar.f4841b.setChecked(true);
        } else {
            bVar.f4841b.setChecked(false);
        }
        return view;
    }
}
