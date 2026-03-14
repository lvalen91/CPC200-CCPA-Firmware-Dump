package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: androidx.appcompat.widget.v */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0196v {

    /* JADX INFO: renamed from: a */
    private TextView f1314a;

    /* JADX INFO: renamed from: b */
    private TextClassifier f1315b;

    C0196v(TextView textView) {
        C0626h.m4855e(textView);
        this.f1314a = textView;
    }

    /* JADX INFO: renamed from: a */
    public TextClassifier m1342a() {
        TextClassifier textClassifier = this.f1315b;
        if (textClassifier != null) {
            return textClassifier;
        }
        TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1314a.getContext().getSystemService(TextClassificationManager.class);
        return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
    }

    /* JADX INFO: renamed from: b */
    public void m1343b(TextClassifier textClassifier) {
        this.f1315b = textClassifier;
    }
}
