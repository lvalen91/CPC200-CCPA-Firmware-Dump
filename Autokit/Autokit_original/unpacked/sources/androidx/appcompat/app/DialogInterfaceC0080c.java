package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AlertController;
import p016c.p017a.C0493a;

/* JADX INFO: renamed from: androidx.appcompat.app.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class DialogInterfaceC0080c extends DialogC0085h implements DialogInterface {

    /* JADX INFO: renamed from: d */
    final AlertController f330d;

    /* JADX INFO: renamed from: androidx.appcompat.app.c$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        private final AlertController.C0075f f331a;

        /* JADX INFO: renamed from: b */
        private final int f332b;

        public a(Context context) {
            this(context, DialogInterfaceC0080c.m419f(context, 0));
        }

        /* JADX INFO: renamed from: a */
        public DialogInterfaceC0080c m421a() {
            DialogInterfaceC0080c dialogInterfaceC0080c = new DialogInterfaceC0080c(this.f331a.f290a, this.f332b);
            this.f331a.m394a(dialogInterfaceC0080c.f330d);
            dialogInterfaceC0080c.setCancelable(this.f331a.f307r);
            if (this.f331a.f307r) {
                dialogInterfaceC0080c.setCanceledOnTouchOutside(true);
            }
            dialogInterfaceC0080c.setOnCancelListener(this.f331a.f308s);
            dialogInterfaceC0080c.setOnDismissListener(this.f331a.f309t);
            DialogInterface.OnKeyListener onKeyListener = this.f331a.f310u;
            if (onKeyListener != null) {
                dialogInterfaceC0080c.setOnKeyListener(onKeyListener);
            }
            return dialogInterfaceC0080c;
        }

        /* JADX INFO: renamed from: b */
        public Context m422b() {
            return this.f331a.f290a;
        }

        /* JADX INFO: renamed from: c */
        public a m423c(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0075f c0075f = this.f331a;
            c0075f.f312w = listAdapter;
            c0075f.f313x = onClickListener;
            return this;
        }

        /* JADX INFO: renamed from: d */
        public a m424d(View view) {
            this.f331a.f296g = view;
            return this;
        }

        /* JADX INFO: renamed from: e */
        public a m425e(Drawable drawable) {
            this.f331a.f293d = drawable;
            return this;
        }

        /* JADX INFO: renamed from: f */
        public a m426f(DialogInterface.OnKeyListener onKeyListener) {
            this.f331a.f310u = onKeyListener;
            return this;
        }

        /* JADX INFO: renamed from: g */
        public a m427g(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0075f c0075f = this.f331a;
            c0075f.f312w = listAdapter;
            c0075f.f313x = onClickListener;
            c0075f.f283I = i;
            c0075f.f282H = true;
            return this;
        }

        /* JADX INFO: renamed from: h */
        public a m428h(CharSequence charSequence) {
            this.f331a.f295f = charSequence;
            return this;
        }

        public a(Context context, int i) {
            this.f331a = new AlertController.C0075f(new ContextThemeWrapper(context, DialogInterfaceC0080c.m419f(context, i)));
            this.f332b = i;
        }
    }

    protected DialogInterfaceC0080c(Context context, int i) {
        super(context, m419f(context, i));
        this.f330d = new AlertController(getContext(), this, getWindow());
    }

    /* JADX INFO: renamed from: f */
    static int m419f(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0493a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX INFO: renamed from: e */
    public ListView m420e() {
        return this.f330d.m378d();
    }

    @Override // androidx.appcompat.app.DialogC0085h, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f330d.m379e();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f330d.m380g(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f330d.m381h(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.DialogC0085h, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f330d.m387q(charSequence);
    }
}
