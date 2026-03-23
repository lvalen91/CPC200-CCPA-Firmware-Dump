package cn.manstep.phonemirrorBox;

import android.view.View;
import android.widget.ImageView;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.t */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0951t {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.t$a */
    static class a implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View.OnLongClickListener f5942b;

        a(View.OnLongClickListener onLongClickListener) {
            this.f5942b = onLongClickListener;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return this.f5942b.onLongClick(view);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m6992a(ImageView imageView, int i) {
        imageView.setImageResource(i);
    }

    /* JADX INFO: renamed from: b */
    public static void m6993b(View view, View.OnLongClickListener onLongClickListener) {
        view.setOnLongClickListener(new a(onLongClickListener));
    }
}
