package androidx.core.view.p005f0;

import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: androidx.core.view.f0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0274a {

    /* JADX INFO: renamed from: a */
    private static final String[] f1879a = new String[0];

    /* JADX INFO: renamed from: androidx.core.view.f0.a$a */
    private static class a {
        /* JADX INFO: renamed from: a */
        static void m1991a(EditorInfo editorInfo, CharSequence charSequence, int i) {
            editorInfo.setInitialSurroundingSubText(charSequence, i);
        }
    }

    /* JADX INFO: renamed from: a */
    public static String[] m1983a(EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : f1879a;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return f1879a;
        }
        String[] stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
        }
        return stringArray != null ? stringArray : f1879a;
    }

    /* JADX INFO: renamed from: b */
    private static boolean m1984b(CharSequence charSequence, int i, int i2) {
        if (i2 == 0) {
            return Character.isLowSurrogate(charSequence.charAt(i));
        }
        if (i2 != 1) {
            return false;
        }
        return Character.isHighSurrogate(charSequence.charAt(i));
    }

    /* JADX INFO: renamed from: c */
    private static boolean m1985c(int i) {
        int i2 = i & 4095;
        return i2 == 129 || i2 == 225 || i2 == 18;
    }

    /* JADX INFO: renamed from: d */
    public static void m1986d(EditorInfo editorInfo, String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
        editorInfo.extras.putStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
    }

    /* JADX INFO: renamed from: e */
    public static void m1987e(EditorInfo editorInfo, CharSequence charSequence, int i) {
        C0626h.m4855e(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            a.m1991a(editorInfo, charSequence, i);
            return;
        }
        int i2 = editorInfo.initialSelStart;
        int i3 = editorInfo.initialSelEnd;
        int i4 = i2 > i3 ? i3 - i : i2 - i;
        int i5 = editorInfo.initialSelStart;
        int i6 = editorInfo.initialSelEnd;
        int i7 = i5 > i6 ? i5 - i : i6 - i;
        int length = charSequence.length();
        if (i < 0 || i4 < 0 || i7 > length) {
            m1989g(editorInfo, null, 0, 0);
            return;
        }
        if (m1985c(editorInfo.inputType)) {
            m1989g(editorInfo, null, 0, 0);
        } else if (length <= 2048) {
            m1989g(editorInfo, charSequence, i4, i7);
        } else {
            m1990h(editorInfo, charSequence, i4, i7);
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m1988f(EditorInfo editorInfo, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            a.m1991a(editorInfo, charSequence, 0);
        } else {
            m1987e(editorInfo, charSequence, 0);
        }
    }

    /* JADX INFO: renamed from: g */
    private static void m1989g(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i2);
    }

    /* JADX INFO: renamed from: h */
    private static void m1990h(EditorInfo editorInfo, CharSequence charSequence, int i, int i2) {
        int i3 = i2 - i;
        int i4 = i3 > 1024 ? 0 : i3;
        int length = charSequence.length() - i2;
        int i5 = 2048 - i4;
        double d2 = i5;
        Double.isNaN(d2);
        int iMin = Math.min(length, i5 - Math.min(i, (int) (d2 * 0.8d)));
        int iMin2 = Math.min(i, i5 - iMin);
        int i6 = i - iMin2;
        if (m1984b(charSequence, i6, 0)) {
            i6++;
            iMin2--;
        }
        if (m1984b(charSequence, (i2 + iMin) - 1, 1)) {
            iMin--;
        }
        CharSequence charSequenceConcat = i4 != i3 ? TextUtils.concat(charSequence.subSequence(i6, i6 + iMin2), charSequence.subSequence(i2, iMin + i2)) : charSequence.subSequence(i6, iMin2 + i4 + iMin + i6);
        int i7 = iMin2 + 0;
        m1989g(editorInfo, charSequenceConcat, i7, i4 + i7);
    }
}
