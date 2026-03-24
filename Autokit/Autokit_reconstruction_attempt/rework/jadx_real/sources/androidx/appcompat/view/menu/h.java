package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.c;
import androidx.appcompat.view.menu.m;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class h implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, m.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.appcompat.app.c f212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e f213d;
    private m.a e;

    public h(g gVar) {
        this.f211b = gVar;
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void a(g gVar, boolean z) {
        if (z || gVar == this.f211b) {
            c();
        }
        m.a aVar = this.e;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean b(g gVar) {
        m.a aVar = this.e;
        if (aVar != null) {
            return aVar.b(gVar);
        }
        return false;
    }

    public void c() {
        androidx.appcompat.app.c cVar = this.f212c;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    public void d(IBinder iBinder) {
        g gVar = this.f211b;
        c.a aVar = new c.a(gVar.u());
        e eVar = new e(aVar.b(), c.a.g.abc_list_menu_item_layout);
        this.f213d = eVar;
        eVar.h(this);
        this.f211b.b(this.f213d);
        aVar.c(this.f213d.b(), this);
        View viewY = gVar.y();
        if (viewY != null) {
            aVar.d(viewY);
        } else {
            aVar.e(gVar.w());
            aVar.h(gVar.x());
        }
        aVar.f(this);
        androidx.appcompat.app.c cVarA = aVar.a();
        this.f212c = cVarA;
        cVarA.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f212c.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f212c.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f211b.L((i) this.f213d.b().getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f213d.a(this.f211b, true);
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
                Window window2 = this.f212c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f212c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f211b.e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f211b.performShortcut(i, keyEvent, 0);
    }
}
