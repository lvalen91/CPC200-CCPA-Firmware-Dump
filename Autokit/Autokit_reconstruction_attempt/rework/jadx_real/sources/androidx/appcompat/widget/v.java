package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class v {
    private TextView a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextClassifier f407b;

    v(TextView textView) {
        c.g.j.h.e(textView);
        this.a = textView;
    }

    public TextClassifier a() {
        TextClassifier textClassifier = this.f407b;
        if (textClassifier != null) {
            return textClassifier;
        }
        TextClassificationManager textClassificationManager = (TextClassificationManager) this.a.getContext().getSystemService(TextClassificationManager.class);
        return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
    }

    public void b(TextClassifier textClassifier) {
        this.f407b = textClassifier;
    }
}
