package cn.manstep.phonemirrorBox.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.widget.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1000a extends Toast {
    /* JADX INFO: renamed from: a */
    public static void m7488a(Context context, int i) {
        if (context != null) {
            makeText(context, context.getResources().getText(i), 0).show();
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m7489b(Context context, CharSequence charSequence) {
        makeText(context, charSequence, 0).show();
    }

    /* JADX INFO: renamed from: c */
    public static void m7490c(Context context, int i) {
        makeText(context, context.getResources().getText(i), 1).show();
    }

    public static Toast makeText(Context context, CharSequence charSequence, int i) {
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        if (layoutInflater == null) {
            return Toast.makeText(context, charSequence, i);
        }
        Toast toast = new Toast(context);
        View viewInflate = layoutInflater.inflate(2131493038, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(2131296631)).setText(charSequence);
        toast.setDuration(i);
        toast.setView(viewInflate);
        return toast;
    }

    public static Toast makeText(Context context, int i, int i2) {
        return makeText(context, context.getResources().getText(i), i2);
    }
}
