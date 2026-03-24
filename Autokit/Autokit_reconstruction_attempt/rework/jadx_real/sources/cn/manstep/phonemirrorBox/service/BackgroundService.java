package cn.manstep.phonemirrorBox.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.r0.d;
import cn.manstep.phonemirrorBox.r0.e;
import cn.manstep.phonemirrorBox.util.s;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class BackgroundService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f1827b;

    static /* synthetic */ class a {
    }

    public interface b {
        void b(int i);

        int d();

        boolean f();

        void g(int i);

        void h(cn.manstep.phonemirrorBox.r0.c cVar);

        void j(cn.manstep.phonemirrorBox.r0.b bVar);

        void k(String str);

        void l(cn.manstep.phonemirrorBox.r0.a aVar);

        String m();

        boolean p();

        void q(e eVar);
    }

    public interface c {
        e E0();

        cn.manstep.phonemirrorBox.r0.a G();

        cn.manstep.phonemirrorBox.r0.b O();

        void c0(b bVar);

        cn.manstep.phonemirrorBox.r0.c u();
    }

    private class d extends d.a implements c {
        private b a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private cn.manstep.phonemirrorBox.r0.b f1828b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private cn.manstep.phonemirrorBox.r0.c f1829c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private cn.manstep.phonemirrorBox.r0.a f1830d;
        private e e;

        private d() {
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.c
        public e E0() {
            return this.e;
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.c
        public cn.manstep.phonemirrorBox.r0.a G() {
            return this.f1830d;
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.c
        public cn.manstep.phonemirrorBox.r0.b O() {
            return this.f1828b;
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public void O0(String str) {
            s.d("BackgroundService", "RemoteServiceImpl->init: " + str);
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public void b(int i) {
            b bVar = this.a;
            if (bVar != null) {
                bVar.b(i);
            }
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.c
        public void c0(b bVar) {
            this.a = bVar;
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public int d() {
            b bVar = this.a;
            if (bVar != null) {
                return bVar.d();
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                return 4;
            }
            return cn.manstep.phonemirrorBox.BoxInterface.d.i() ? 2 : 0;
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public boolean f() {
            b bVar = this.a;
            if (bVar != null) {
                return bVar.f();
            }
            return false;
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public void g(int i) {
            b bVar = this.a;
            if (bVar != null) {
                bVar.g(i);
            }
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public void h(cn.manstep.phonemirrorBox.r0.c cVar) {
            this.f1829c = cVar;
            b bVar = this.a;
            if (bVar != null) {
                bVar.h(cVar);
            }
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public void j(cn.manstep.phonemirrorBox.r0.b bVar) {
            this.f1828b = bVar;
            b bVar2 = this.a;
            if (bVar2 != null) {
                bVar2.j(bVar);
            }
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public void k(String str) {
            b bVar = this.a;
            if (bVar != null) {
                bVar.k(str);
            }
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public void l(cn.manstep.phonemirrorBox.r0.a aVar) {
            this.f1830d = aVar;
            b bVar = this.a;
            if (bVar != null) {
                bVar.l(aVar);
            }
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public String m() {
            b bVar = this.a;
            return bVar != null ? bVar.m() : cn.manstep.phonemirrorBox.BoxInterface.c.e().f();
        }

        @Override // cn.manstep.phonemirrorBox.r0.d.a, android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (BackgroundService.this.b(Binder.getCallingUid())) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return false;
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public boolean p() {
            b bVar = this.a;
            if (bVar != null) {
                return bVar.p();
            }
            return false;
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public void q(e eVar) {
            s.d("BackgroundService", "setVaStateChangeListener: =====" + eVar);
            this.e = eVar;
            b bVar = this.a;
            if (bVar != null) {
                bVar.q(eVar);
            }
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.c
        public cn.manstep.phonemirrorBox.r0.c u() {
            return this.f1829c;
        }

        @Override // cn.manstep.phonemirrorBox.r0.d
        public void v0(int i) {
            if (i == 5000) {
                cn.manstep.phonemirrorBox.BoxInterface.d.L(5);
                cn.manstep.phonemirrorBox.BoxInterface.d.L(6);
                return;
            }
            if (i == 5001) {
                cn.manstep.phonemirrorBox.BoxInterface.d.L(104);
                cn.manstep.phonemirrorBox.BoxInterface.d.L(105);
                return;
            }
            if (i == 7) {
                if (cn.manstep.phonemirrorBox.v0.a.t().C()) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(5);
                    cn.manstep.phonemirrorBox.BoxInterface.d.L(6);
                    return;
                }
                return;
            }
            if (i != 5002) {
                cn.manstep.phonemirrorBox.BoxInterface.d.L(i);
            } else if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 25);
                cn.manstep.phonemirrorBox.BoxInterface.d.l.b1();
            }
        }

        /* synthetic */ d(BackgroundService backgroundService, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(int i) {
        s.i("BackgroundService", "hasPermission: callingPackageName=" + getPackageManager().getNameForUid(i));
        return true;
    }

    private void c() {
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.addFlags(268435456);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 0);
        if (Build.VERSION.SDK_INT < 26) {
            Notification notification = new Notification();
            notification.contentIntent = activity;
            notification.priority = -2;
            startForeground(1, notification);
            return;
        }
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        NotificationChannel notificationChannel = new NotificationChannel("BackgroundService", "AutoKit", 1);
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(notificationChannel);
            startForeground(1, new Notification.Builder(this, "BackgroundService").setSmallIcon(2131230907).setContentTitle(p.a).setContentText(getResources().getString(2131689573)).setContentIntent(activity).build());
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        d dVar = this.f1827b;
        dVar.asBinder();
        return dVar;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f1827b = new d(this, null);
        c();
    }
}
