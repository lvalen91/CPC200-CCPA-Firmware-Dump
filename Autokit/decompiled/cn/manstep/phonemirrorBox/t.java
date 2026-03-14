package cn.manstep.phonemirrorBox;

import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class t {

    static class a implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View.OnLongClickListener f1831b;

        a(View.OnLongClickListener onLongClickListener) {
            this.f1831b = onLongClickListener;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return this.f1831b.onLongClick(view);
        }
    }

    public static void a(ImageView imageView, int i) {
        imageView.setImageResource(i);
    }

    public static void b(View view, View.OnLongClickListener onLongClickListener) {
        view.setOnLongClickListener(new a(onLongClickListener));
    }
}
