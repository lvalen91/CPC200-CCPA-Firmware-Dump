package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.view.inputmethod.InputContentInfo;
import android.widget.TextView;
import androidx.core.view.c;
import androidx.core.view.f0.b;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class s {

    class a implements b.c {
        final /* synthetic */ View a;

        a(View view) {
            this.a = view;
        }

        @Override // androidx.core.view.f0.b.c
        public boolean a(androidx.core.view.f0.c cVar, int i, Bundle bundle) {
            if (Build.VERSION.SDK_INT >= 25 && (i & 1) != 0) {
                try {
                    cVar.d();
                    InputContentInfo inputContentInfo = (InputContentInfo) cVar.e();
                    bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                    bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo);
                } catch (Exception unused) {
                    return false;
                }
            }
            c.a aVar = new c.a(new ClipData(cVar.b(), new ClipData.Item(cVar.a())), 2);
            aVar.d(cVar.c());
            aVar.b(bundle);
            return androidx.core.view.v.e0(this.a, aVar.a()) == null;
        }
    }

    private static final class b {
        static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
            textView.beginBatchEdit();
            try {
                Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
                androidx.core.view.v.e0(textView, new c.a(dragEvent.getClipData(), 3).a());
                textView.endBatchEdit();
                return true;
            } catch (Throwable th) {
                textView.endBatchEdit();
                throw th;
            }
        }

        static boolean b(DragEvent dragEvent, View view, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            androidx.core.view.v.e0(view, new c.a(dragEvent.getClipData(), 3).a());
            return true;
        }
    }

    static b.c a(View view) {
        return new a(view);
    }

    static boolean b(View view, DragEvent dragEvent) {
        if (Build.VERSION.SDK_INT >= 24 && dragEvent.getLocalState() == null && androidx.core.view.v.F(view) != null) {
            Activity activityD = d(view);
            if (activityD == null) {
                String str = "Can't handle drop: no activity: view=" + view;
                return false;
            }
            if (dragEvent.getAction() == 1) {
                return !(view instanceof TextView);
            }
            if (dragEvent.getAction() == 3) {
                return view instanceof TextView ? b.a(dragEvent, (TextView) view, activityD) : b.b(dragEvent, view, activityD);
            }
        }
        return false;
    }

    static boolean c(TextView textView, int i) {
        if ((i != 16908322 && i != 16908337) || androidx.core.view.v.F(textView) == null) {
            return false;
        }
        ClipboardManager clipboardManager = (ClipboardManager) textView.getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            c.a aVar = new c.a(primaryClip, 1);
            aVar.c(i != 16908322 ? 1 : 0);
            androidx.core.view.v.e0(textView, aVar.a());
        }
        return true;
    }

    static Activity d(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }
}
