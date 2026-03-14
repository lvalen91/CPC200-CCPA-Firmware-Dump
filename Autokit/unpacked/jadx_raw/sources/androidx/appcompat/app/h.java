package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.f;
import c.a.o.b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class h extends Dialog implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f.a f144c;

    class a implements f.a {
        a() {
        }

        @Override // androidx.core.view.f.a
        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return h.this.c(keyEvent);
        }
    }

    public h(Context context, int i) {
        super(context, b(context, i));
        this.f144c = new a();
        f fVarA = a();
        fVarA.J(b(context, i));
        fVarA.t(null);
    }

    private static int b(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(c.a.a.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public f a() {
        if (this.f143b == null) {
            this.f143b = f.j(this, this);
        }
        return this.f143b;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().d(view, layoutParams);
    }

    boolean c(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean d(int i) {
        return a().C(i);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        a().u();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return androidx.core.view.f.e(this.f144c, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) a().k(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        a().r();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        a().q();
        super.onCreate(bundle);
        a().t(bundle);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        a().z();
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeFinished(c.a.o.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeStarted(c.a.o.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public c.a.o.b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        a().E(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        a().K(charSequence);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        a().F(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().G(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        a().K(getContext().getString(i));
    }
}
