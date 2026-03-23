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
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0939a;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0940b;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0943e;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class BackgroundService extends Service {

    /* JADX INFO: renamed from: b */
    private BinderC0950d f5935b;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.service.BackgroundService$a */
    static /* synthetic */ class C0947a {
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.service.BackgroundService$b */
    public interface InterfaceC0948b {
        /* JADX INFO: renamed from: b */
        void mo6976b(int i);

        /* JADX INFO: renamed from: d */
        int mo6977d();

        /* JADX INFO: renamed from: f */
        boolean mo6978f();

        /* JADX INFO: renamed from: g */
        void mo6979g(int i);

        /* JADX INFO: renamed from: h */
        void mo6980h(InterfaceC0941c interfaceC0941c);

        /* JADX INFO: renamed from: j */
        void mo6981j(InterfaceC0940b interfaceC0940b);

        /* JADX INFO: renamed from: k */
        void mo6982k(String str);

        /* JADX INFO: renamed from: l */
        void mo6983l(InterfaceC0939a interfaceC0939a);

        /* JADX INFO: renamed from: m */
        String mo6984m();

        /* JADX INFO: renamed from: p */
        boolean mo6985p();

        /* JADX INFO: renamed from: q */
        void mo6986q(InterfaceC0943e interfaceC0943e);
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.service.BackgroundService$c */
    public interface InterfaceC0949c {
        /* JADX INFO: renamed from: E0 */
        InterfaceC0943e mo6987E0();

        /* JADX INFO: renamed from: G */
        InterfaceC0939a mo6988G();

        /* JADX INFO: renamed from: O */
        InterfaceC0940b mo6989O();

        /* JADX INFO: renamed from: c0 */
        void mo6990c0(InterfaceC0948b interfaceC0948b);

        /* JADX INFO: renamed from: u */
        InterfaceC0941c mo6991u();
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.service.BackgroundService$d */
    private class BinderC0950d extends InterfaceC0942d.a implements InterfaceC0949c {

        /* JADX INFO: renamed from: a */
        private InterfaceC0948b f5936a;

        /* JADX INFO: renamed from: b */
        private InterfaceC0940b f5937b;

        /* JADX INFO: renamed from: c */
        private InterfaceC0941c f5938c;

        /* JADX INFO: renamed from: d */
        private InterfaceC0939a f5939d;

        /* JADX INFO: renamed from: e */
        private InterfaceC0943e f5940e;

        private BinderC0950d() {
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0949c
        /* JADX INFO: renamed from: E0 */
        public InterfaceC0943e mo6987E0() {
            return this.f5940e;
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0949c
        /* JADX INFO: renamed from: G */
        public InterfaceC0939a mo6988G() {
            return this.f5939d;
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0949c
        /* JADX INFO: renamed from: O */
        public InterfaceC0940b mo6989O() {
            return this.f5937b;
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: O0 */
        public void mo6954O0(String str) {
            C0982s.m7374d("BackgroundService", "RemoteServiceImpl->init: " + str);
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: b */
        public void mo6955b(int i) {
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                interfaceC0948b.mo6976b(i);
            }
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0949c
        /* JADX INFO: renamed from: c0 */
        public void mo6990c0(InterfaceC0948b interfaceC0948b) {
            this.f5936a = interfaceC0948b;
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: d */
        public int mo6956d() {
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                return interfaceC0948b.mo6977d();
            }
            if (C0733d.m5574G()) {
                return 4;
            }
            return C0733d.m5591i() ? 2 : 0;
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: f */
        public boolean mo6957f() {
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                return interfaceC0948b.mo6978f();
            }
            return false;
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: g */
        public void mo6958g(int i) {
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                interfaceC0948b.mo6979g(i);
            }
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: h */
        public void mo6959h(InterfaceC0941c interfaceC0941c) {
            this.f5938c = interfaceC0941c;
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                interfaceC0948b.mo6980h(interfaceC0941c);
            }
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: j */
        public void mo6960j(InterfaceC0940b interfaceC0940b) {
            this.f5937b = interfaceC0940b;
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                interfaceC0948b.mo6981j(interfaceC0940b);
            }
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: k */
        public void mo6961k(String str) {
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                interfaceC0948b.mo6982k(str);
            }
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: l */
        public void mo6962l(InterfaceC0939a interfaceC0939a) {
            this.f5939d = interfaceC0939a;
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                interfaceC0948b.mo6983l(interfaceC0939a);
            }
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: m */
        public String mo6963m() {
            InterfaceC0948b interfaceC0948b = this.f5936a;
            return interfaceC0948b != null ? interfaceC0948b.mo6984m() : C0732c.m5542e().m5548f();
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d.a, android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (BackgroundService.this.m6974b(Binder.getCallingUid())) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            return false;
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: p */
        public boolean mo6964p() {
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                return interfaceC0948b.mo6985p();
            }
            return false;
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: q */
        public void mo6965q(InterfaceC0943e interfaceC0943e) {
            C0982s.m7374d("BackgroundService", "setVaStateChangeListener: =====" + interfaceC0943e);
            this.f5940e = interfaceC0943e;
            InterfaceC0948b interfaceC0948b = this.f5936a;
            if (interfaceC0948b != null) {
                interfaceC0948b.mo6986q(interfaceC0943e);
            }
        }

        @Override // cn.manstep.phonemirrorBox.service.BackgroundService.InterfaceC0949c
        /* JADX INFO: renamed from: u */
        public InterfaceC0941c mo6991u() {
            return this.f5938c;
        }

        @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0942d
        /* JADX INFO: renamed from: v0 */
        public void mo6966v0(int i) {
            if (i == 5000) {
                C0733d.m5578L(5);
                C0733d.m5578L(6);
                return;
            }
            if (i == 5001) {
                C0733d.m5578L(104);
                C0733d.m5578L(105);
                return;
            }
            if (i == 7) {
                if (C0991a.m7412t().m7415C()) {
                    C0733d.m5578L(5);
                    C0733d.m5578L(6);
                    return;
                }
                return;
            }
            if (i != 5002) {
                C0733d.m5578L(i);
            } else if (C0733d.m5574G()) {
                C0733d.m5579O(1, 25);
                C0733d.f4428l.m5713b1();
            }
        }

        /* synthetic */ BinderC0950d(BackgroundService backgroundService, C0947a c0947a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b */
    public boolean m6974b(int i) {
        C0982s.m7379i("BackgroundService", "hasPermission: callingPackageName=" + getPackageManager().getNameForUid(i));
        return true;
    }

    /* JADX INFO: renamed from: c */
    private void m6975c() {
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
            startForeground(1, new Notification.Builder(this, "BackgroundService").setSmallIcon(2131230907).setContentTitle(C0925p.f5864a).setContentText(getResources().getString(2131689573)).setContentIntent(activity).build());
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        BinderC0950d binderC0950d = this.f5935b;
        binderC0950d.asBinder();
        return binderC0950d;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f5935b = new BinderC0950d(this, null);
        m6975c();
    }
}
