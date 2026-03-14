package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.DialogInterfaceC0080c;
import androidx.appcompat.view.menu.InterfaceC0107m;
import p016c.p017a.C0499g;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class DialogInterfaceOnKeyListenerC0102h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, InterfaceC0107m.a {

    /* JADX INFO: renamed from: b */
    private C0101g f664b;

    /* JADX INFO: renamed from: c */
    private DialogInterfaceC0080c f665c;

    /* JADX INFO: renamed from: d */
    C0099e f666d;

    /* JADX INFO: renamed from: e */
    private InterfaceC0107m.a f667e;

    public DialogInterfaceOnKeyListenerC0102h(C0101g c0101g) {
        this.f664b = c0101g;
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
    /* JADX INFO: renamed from: a */
    public void mo532a(C0101g c0101g, boolean z) {
        if (z || c0101g == this.f664b) {
            m774c();
        }
        InterfaceC0107m.a aVar = this.f667e;
        if (aVar != null) {
            aVar.mo532a(c0101g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
    /* JADX INFO: renamed from: b */
    public boolean mo533b(C0101g c0101g) {
        InterfaceC0107m.a aVar = this.f667e;
        if (aVar != null) {
            return aVar.mo533b(c0101g);
        }
        return false;
    }

    /* JADX INFO: renamed from: c */
    public void m774c() {
        DialogInterfaceC0080c dialogInterfaceC0080c = this.f665c;
        if (dialogInterfaceC0080c != null) {
            dialogInterfaceC0080c.dismiss();
        }
    }

    /* JADX INFO: renamed from: d */
    public void m775d(IBinder iBinder) {
        C0101g c0101g = this.f664b;
        DialogInterfaceC0080c.a aVar = new DialogInterfaceC0080c.a(c0101g.m768u());
        C0099e c0099e = new C0099e(aVar.m422b(), C0499g.abc_list_menu_item_layout);
        this.f666d = c0099e;
        c0099e.mo672h(this);
        this.f664b.m751b(this.f666d);
        aVar.m423c(this.f666d.m710b(), this);
        View viewM772y = c0101g.m772y();
        if (viewM772y != null) {
            aVar.m424d(viewM772y);
        } else {
            aVar.m425e(c0101g.m770w());
            aVar.m428h(c0101g.m771x());
        }
        aVar.m426f(this);
        DialogInterfaceC0080c dialogInterfaceC0080cM421a = aVar.m421a();
        this.f665c = dialogInterfaceC0080cM421a;
        dialogInterfaceC0080cM421a.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f665c.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f665c.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f664b.m736L((C0103i) this.f666d.m710b().getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f666d.mo666a(this.f664b, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f665c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f665c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f664b.m756e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f664b.performShortcut(i, keyEvent, 0);
    }
}
