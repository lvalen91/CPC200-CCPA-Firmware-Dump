package androidx.core.widget;

import android.content.ClipData;
import android.content.Context;
import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.C0262c;
import androidx.core.view.InterfaceC0288r;

/* JADX INFO: renamed from: androidx.core.widget.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0309j implements InterfaceC0288r {

    /* JADX INFO: renamed from: androidx.core.widget.j$a */
    private static final class a {
        /* JADX INFO: renamed from: a */
        static CharSequence m2302a(Context context, ClipData.Item item, int i) {
            if ((i & 1) == 0) {
                return item.coerceToStyledText(context);
            }
            CharSequence charSequenceCoerceToText = item.coerceToText(context);
            return charSequenceCoerceToText instanceof Spanned ? charSequenceCoerceToText.toString() : charSequenceCoerceToText;
        }
    }

    /* JADX INFO: renamed from: androidx.core.widget.j$b */
    private static final class b {
        /* JADX INFO: renamed from: a */
        static CharSequence m2303a(Context context, ClipData.Item item, int i) {
            CharSequence charSequenceCoerceToText = item.coerceToText(context);
            return ((i & 1) == 0 || !(charSequenceCoerceToText instanceof Spanned)) ? charSequenceCoerceToText : charSequenceCoerceToText.toString();
        }
    }

    /* JADX INFO: renamed from: b */
    private static CharSequence m2298b(ClipData clipData, Context context, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (int i2 = 0; i2 < clipData.getItemCount(); i2++) {
            CharSequence charSequenceM2299c = m2299c(context, clipData.getItemAt(i2), i);
            if (charSequenceM2299c != null) {
                spannableStringBuilder.append(charSequenceM2299c);
            }
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: renamed from: c */
    private static CharSequence m2299c(Context context, ClipData.Item item, int i) {
        return Build.VERSION.SDK_INT >= 16 ? a.m2302a(context, item, i) : b.m2303a(context, item, i);
    }

    /* JADX INFO: renamed from: d */
    private static void m2300d(TextView textView, C0262c c0262c) {
        m2301e((Editable) textView.getText(), m2298b(c0262c.m1823b(), textView.getContext(), c0262c.m1824c()));
    }

    /* JADX INFO: renamed from: e */
    private static void m2301e(Editable editable, CharSequence charSequence) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int iMax = Math.max(0, Math.min(selectionStart, selectionEnd));
        int iMax2 = Math.max(0, Math.max(selectionStart, selectionEnd));
        Selection.setSelection(editable, iMax2);
        editable.replace(iMax, iMax2, charSequence);
    }

    @Override // androidx.core.view.InterfaceC0288r
    /* JADX INFO: renamed from: a */
    public C0262c mo2039a(View view, C0262c c0262c) {
        if (Log.isLoggable("ReceiveContent", 3)) {
            String str = "onReceive: " + c0262c;
        }
        int iM1825d = c0262c.m1825d();
        if (iM1825d == 2) {
            return c0262c;
        }
        if (iM1825d == 3) {
            m2300d((TextView) view, c0262c);
            return null;
        }
        ClipData clipDataM1823b = c0262c.m1823b();
        int iM1824c = c0262c.m1824c();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z = false;
        for (int i = 0; i < clipDataM1823b.getItemCount(); i++) {
            CharSequence charSequenceM2299c = m2299c(context, clipDataM1823b.getItemAt(i), iM1824c);
            if (charSequenceM2299c != null) {
                if (z) {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), charSequenceM2299c);
                } else {
                    m2301e(editable, charSequenceM2299c);
                    z = true;
                }
            }
        }
        return null;
    }
}
