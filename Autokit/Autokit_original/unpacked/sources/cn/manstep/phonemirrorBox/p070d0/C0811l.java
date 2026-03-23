package cn.manstep.phonemirrorBox.p070d0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.p073g0.C0848c;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0811l extends AbstractC0806g {

    /* JADX INFO: renamed from: c */
    private final List<C0848c> f4860c;

    /* JADX INFO: renamed from: d */
    private final Context f4861d;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.l$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d0.l$b */
    private static class b {

        /* JADX INFO: renamed from: a */
        TextView f4862a;

        /* JADX INFO: renamed from: b */
        ImageView f4863b;

        /* JADX INFO: renamed from: c */
        LinearLayout f4864c;

        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public C0811l(Context context, List<C0848c> list) {
        this.f4860c = list;
        this.f4861d = context;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public C0848c getItem(int i) {
        return this.f4860c.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4860c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.f4861d).inflate(2131493014, (ViewGroup) null);
            bVar = new b(null);
            bVar.f4862a = (TextView) view.findViewById(2131296846);
            bVar.f4863b = (ImageView) view.findViewById(2131296537);
            bVar.f4864c = (LinearLayout) view.findViewById(2131296573);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        if (this.f4837b == i) {
            bVar.f4863b.setVisibility(0);
            bVar.f4864c.setBackgroundResource(2131230956);
        } else {
            bVar.f4863b.setVisibility(4);
            bVar.f4864c.setBackgroundResource(2131230955);
        }
        bVar.f4862a.setText(this.f4860c.get(i).m6328a());
        return view;
    }
}
