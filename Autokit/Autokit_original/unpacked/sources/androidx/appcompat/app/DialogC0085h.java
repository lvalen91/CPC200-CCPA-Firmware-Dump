package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.C0273f;
import p016c.p017a.C0493a;
import p016c.p017a.p024o.AbstractC0512b;

/* JADX INFO: renamed from: androidx.appcompat.app.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class DialogC0085h extends Dialog implements InterfaceC0082e {

    /* JADX INFO: renamed from: b */
    private AbstractC0083f f435b;

    /* JADX INFO: renamed from: c */
    private final C0273f.a f436c;

    /* JADX INFO: renamed from: androidx.appcompat.app.h$a */
    class a implements C0273f.a {
        a() {
        }

        @Override // androidx.core.view.C0273f.a
        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return DialogC0085h.this.m557c(keyEvent);
        }
    }

    public DialogC0085h(Context context, int i) {
        super(context, m555b(context, i));
        this.f436c = new a();
        AbstractC0083f abstractC0083fM556a = m556a();
        abstractC0083fM556a.mo444J(m555b(context, i));
        abstractC0083fM556a.mo459t(null);
    }

    /* JADX INFO: renamed from: b */
    private static int m555b(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0493a.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX INFO: renamed from: a */
    public AbstractC0083f m556a() {
        if (this.f435b == null) {
            this.f435b = AbstractC0083f.m437j(this, this);
        }
        return this.f435b;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m556a().mo447d(view, layoutParams);
    }

    /* JADX INFO: renamed from: c */
    boolean m557c(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX INFO: renamed from: d */
    public boolean m558d(int i) {
        return m556a().mo439C(i);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m556a().mo460u();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C0273f.m1981e(this.f436c, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) m556a().mo451k(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        m556a().mo457r();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        m556a().mo456q();
        super.onCreate(bundle);
        m556a().mo459t(bundle);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        m556a().mo465z();
    }

    @Override // androidx.appcompat.app.InterfaceC0082e
    public void onSupportActionModeFinished(AbstractC0512b abstractC0512b) {
    }

    @Override // androidx.appcompat.app.InterfaceC0082e
    public void onSupportActionModeStarted(AbstractC0512b abstractC0512b) {
    }

    @Override // androidx.appcompat.app.InterfaceC0082e
    public AbstractC0512b onWindowStartingSupportActionMode(AbstractC0512b.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m556a().mo440E(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m556a().mo445K(charSequence);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m556a().mo441F(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m556a().mo442G(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m556a().mo445K(getContext().getString(i));
    }
}
