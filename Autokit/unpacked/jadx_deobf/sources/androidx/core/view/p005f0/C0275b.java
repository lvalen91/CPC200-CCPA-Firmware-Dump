package androidx.core.view.p005f0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: renamed from: androidx.core.view.f0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0275b {

    /* JADX INFO: renamed from: androidx.core.view.f0.b$a */
    class a extends InputConnectionWrapper {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ c f1880a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(InputConnection inputConnection, boolean z, c cVar) {
            super(inputConnection, z);
            this.f1880a = cVar;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
            if (this.f1880a.mo1291a(C0276c.m1994f(inputContentInfo), i, bundle)) {
                return true;
            }
            return super.commitContent(inputContentInfo, i, bundle);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.f0.b$b */
    class b extends InputConnectionWrapper {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ c f1881a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(InputConnection inputConnection, boolean z, c cVar) {
            super(inputConnection, z);
            this.f1881a = cVar;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean performPrivateCommand(String str, Bundle bundle) {
            if (C0275b.m1993b(str, bundle, this.f1881a)) {
                return true;
            }
            return super.performPrivateCommand(str, bundle);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.f0.b$c */
    public interface c {
        /* JADX INFO: renamed from: a */
        boolean mo1291a(C0276c c0276c, int i, Bundle bundle);
    }

    /* JADX INFO: renamed from: a */
    public static InputConnection m1992a(InputConnection inputConnection, EditorInfo editorInfo, c cVar) {
        if (inputConnection == null) {
            throw new IllegalArgumentException("inputConnection must be non-null");
        }
        if (editorInfo == null) {
            throw new IllegalArgumentException("editorInfo must be non-null");
        }
        if (cVar != null) {
            return Build.VERSION.SDK_INT >= 25 ? new a(inputConnection, false, cVar) : C0274a.m1983a(editorInfo).length == 0 ? inputConnection : new b(inputConnection, false, cVar);
        }
        throw new IllegalArgumentException("onCommitContentListener must be non-null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX INFO: renamed from: b */
    static boolean m1993b(String str, Bundle bundle, c cVar) throws Throwable {
        boolean z;
        ResultReceiver resultReceiver;
        ?? Mo1291a = 0;
        Mo1291a = 0;
        if (bundle == null) {
            return false;
        }
        if (TextUtils.equals("androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
            z = false;
        } else {
            if (!TextUtils.equals("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                return false;
            }
            z = true;
        }
        try {
            resultReceiver = (ResultReceiver) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER");
            try {
                Uri uri = (Uri) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI");
                ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION");
                Uri uri2 = (Uri) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI");
                int i = bundle.getInt(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS");
                Bundle bundle2 = (Bundle) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS");
                if (uri != null && clipDescription != null) {
                    Mo1291a = cVar.mo1291a(new C0276c(uri, clipDescription, uri2), i, bundle2);
                }
                if (resultReceiver != 0) {
                    resultReceiver.send(Mo1291a, null);
                }
                return Mo1291a;
            } catch (Throwable th) {
                th = th;
                if (resultReceiver != 0) {
                    resultReceiver.send(0, null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = 0;
        }
    }
}
