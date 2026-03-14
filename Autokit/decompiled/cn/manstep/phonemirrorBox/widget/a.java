package cn.manstep.phonemirrorBox.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class a extends Toast {
    public static void a(Context context, int i) {
        if (context != null) {
            makeText(context, context.getResources().getText(i), 0).show();
        }
    }

    public static void b(Context context, CharSequence charSequence) {
        makeText(context, charSequence, 0).show();
    }

    public static void c(Context context, int i) {
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
