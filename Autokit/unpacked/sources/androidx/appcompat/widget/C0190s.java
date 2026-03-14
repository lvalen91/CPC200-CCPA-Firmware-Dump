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
import androidx.core.view.C0262c;
import androidx.core.view.C0292v;
import androidx.core.view.p005f0.C0275b;
import androidx.core.view.p005f0.C0276c;

/* JADX INFO: renamed from: androidx.appcompat.widget.s */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0190s {

    /* JADX INFO: renamed from: androidx.appcompat.widget.s$a */
    class a implements C0275b.c {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f1271a;

        a(View view) {
            this.f1271a = view;
        }

        @Override // androidx.core.view.p005f0.C0275b.c
        /* JADX INFO: renamed from: a */
        public boolean mo1291a(C0276c c0276c, int i, Bundle bundle) {
            if (Build.VERSION.SDK_INT >= 25 && (i & 1) != 0) {
                try {
                    c0276c.m1998d();
                    InputContentInfo inputContentInfo = (InputContentInfo) c0276c.m1999e();
                    bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                    bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo);
                } catch (Exception unused) {
                    return false;
                }
            }
            C0262c.a aVar = new C0262c.a(new ClipData(c0276c.m1996b(), new ClipData.Item(c0276c.m1995a())), 2);
            aVar.m1829d(c0276c.m1997c());
            aVar.m1827b(bundle);
            return C0292v.m2085e0(this.f1271a, aVar.m1826a()) == null;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.s$b */
    private static final class b {
        /* JADX INFO: renamed from: a */
        static boolean m1292a(DragEvent dragEvent, TextView textView, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
            textView.beginBatchEdit();
            try {
                Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
                C0292v.m2085e0(textView, new C0262c.a(dragEvent.getClipData(), 3).m1826a());
                textView.endBatchEdit();
                return true;
            } catch (Throwable th) {
                textView.endBatchEdit();
                throw th;
            }
        }

        /* JADX INFO: renamed from: b */
        static boolean m1293b(DragEvent dragEvent, View view, Activity activity) {
            activity.requestDragAndDropPermissions(dragEvent);
            C0292v.m2085e0(view, new C0262c.a(dragEvent.getClipData(), 3).m1826a());
            return true;
        }
    }

    /* JADX INFO: renamed from: a */
    static C0275b.c m1287a(View view) {
        return new a(view);
    }

    /* JADX INFO: renamed from: b */
    static boolean m1288b(View view, DragEvent dragEvent) {
        if (Build.VERSION.SDK_INT >= 24 && dragEvent.getLocalState() == null && C0292v.m2052F(view) != null) {
            Activity activityM1290d = m1290d(view);
            if (activityM1290d == null) {
                String str = "Can't handle drop: no activity: view=" + view;
                return false;
            }
            if (dragEvent.getAction() == 1) {
                return !(view instanceof TextView);
            }
            if (dragEvent.getAction() == 3) {
                return view instanceof TextView ? b.m1292a(dragEvent, (TextView) view, activityM1290d) : b.m1293b(dragEvent, view, activityM1290d);
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: c */
    static boolean m1289c(TextView textView, int i) {
        if ((i != 16908322 && i != 16908337) || C0292v.m2052F(textView) == null) {
            return false;
        }
        ClipboardManager clipboardManager = (ClipboardManager) textView.getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            C0262c.a aVar = new C0262c.a(primaryClip, 1);
            aVar.m1828c(i != 16908322 ? 1 : 0);
            C0292v.m2085e0(textView, aVar.m1826a());
        }
        return true;
    }

    /* JADX INFO: renamed from: d */
    static Activity m1290d(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }
}
