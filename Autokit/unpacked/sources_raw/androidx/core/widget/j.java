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
import androidx.core.view.r;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class j implements r {

    private static final class a {
        static CharSequence a(Context context, ClipData.Item item, int i) {
            if ((i & 1) == 0) {
                return item.coerceToStyledText(context);
            }
            CharSequence charSequenceCoerceToText = item.coerceToText(context);
            return charSequenceCoerceToText instanceof Spanned ? charSequenceCoerceToText.toString() : charSequenceCoerceToText;
        }
    }

    private static final class b {
        static CharSequence a(Context context, ClipData.Item item, int i) {
            CharSequence charSequenceCoerceToText = item.coerceToText(context);
            return ((i & 1) == 0 || !(charSequenceCoerceToText instanceof Spanned)) ? charSequenceCoerceToText : charSequenceCoerceToText.toString();
        }
    }

    private static CharSequence b(ClipData clipData, Context context, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (int i2 = 0; i2 < clipData.getItemCount(); i2++) {
            CharSequence charSequenceC = c(context, clipData.getItemAt(i2), i);
            if (charSequenceC != null) {
                spannableStringBuilder.append(charSequenceC);
            }
        }
        return spannableStringBuilder;
    }

    private static CharSequence c(Context context, ClipData.Item item, int i) {
        return Build.VERSION.SDK_INT >= 16 ? a.a(context, item, i) : b.a(context, item, i);
    }

    private static void d(TextView textView, androidx.core.view.c cVar) {
        e((Editable) textView.getText(), b(cVar.b(), textView.getContext(), cVar.c()));
    }

    private static void e(Editable editable, CharSequence charSequence) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int iMax = Math.max(0, Math.min(selectionStart, selectionEnd));
        int iMax2 = Math.max(0, Math.max(selectionStart, selectionEnd));
        Selection.setSelection(editable, iMax2);
        editable.replace(iMax, iMax2, charSequence);
    }

    @Override // androidx.core.view.r
    public androidx.core.view.c a(View view, androidx.core.view.c cVar) {
        if (Log.isLoggable("ReceiveContent", 3)) {
            String str = "onReceive: " + cVar;
        }
        int iD = cVar.d();
        if (iD == 2) {
            return cVar;
        }
        if (iD == 3) {
            d((TextView) view, cVar);
            return null;
        }
        ClipData clipDataB = cVar.b();
        int iC = cVar.c();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z = false;
        for (int i = 0; i < clipDataB.getItemCount(); i++) {
            CharSequence charSequenceC = c(context, clipDataB.getItemAt(i), iC);
            if (charSequenceC != null) {
                if (z) {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), charSequenceC);
                } else {
                    e(editable, charSequenceC);
                    z = true;
                }
            }
        }
        return null;
    }
}
