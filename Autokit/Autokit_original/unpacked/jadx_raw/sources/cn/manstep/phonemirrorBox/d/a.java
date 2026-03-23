package cn.manstep.phonemirrorBox.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import cn.manstep.phonemirrorBox.h;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a {
    public WeakReference<Context> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BroadcastReceiver f1588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<d> f1589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f1590d;
    private Runnable e;
    private Thread f;
    private Thread g;
    private TimerTask h;
    private String i;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d.a$a, reason: collision with other inner class name */
    class RunnableC0083a implements Runnable {
        RunnableC0083a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.h();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.i();
        }
    }

    class c extends Handler {
        c() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            s.c("AndroidInterface msg:" + message + " come");
            if (1 == message.what) {
                int i = message.arg1;
                if (i == 0) {
                    a.this.m();
                    Context context = a.this.a.get();
                    if (context != null) {
                        Intent intent = new Intent("cn.manstep.hidetitle");
                        intent.putExtra("WPARAM", true);
                        context.sendBroadcast(intent);
                    }
                } else if (i == 1) {
                    a.this.k();
                    Context context2 = a.this.a.get();
                    if (context2 != null) {
                        Intent intent2 = new Intent("cn.manstep.hidetitle");
                        intent2.putExtra("WPARAM", false);
                        context2.sendBroadcast(intent2);
                    }
                }
                Iterator it = a.this.f1589c.iterator();
                while (it.hasNext()) {
                    ((d) it.next()).b(message.arg1);
                }
            }
        }
    }

    public interface d {
        void b(int i);

        void e(a aVar);
    }

    public a(Context context) {
        this.a = new WeakReference<>(null);
        new Timer();
        this.f1589c = new ArrayList();
        this.f1590d = new RunnableC0083a();
        this.e = new b();
        this.i = BuildConfig.FLAVOR;
        this.a = new WeakReference<>(context);
        this.i = j(context);
        new c();
    }

    private String j(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String str = BuildConfig.FLAVOR + telephonyManager.getDeviceId();
        String str2 = "hwrd_" + new UUID((BuildConfig.FLAVOR + Settings.Secure.getString(context.getContentResolver(), "android_id")).hashCode(), ((long) (BuildConfig.FLAVOR + telephonyManager.getSimSerialNumber()).hashCode()) | (((long) str.hashCode()) << 32)).toString();
        s.c("uuid=" + str2);
        return str2;
    }

    public void a() {
    }

    public void b(String str) {
    }

    public void c() {
    }

    public void e(d dVar) {
        if (this.f1589c.contains(dVar)) {
            return;
        }
        this.f1589c.add(dVar);
        dVar.e(this);
    }

    public void f(Context context) {
        synchronized (this) {
            this.a = new WeakReference<>(context);
            if (context != null) {
            }
        }
    }

    public void g() {
        this.f1589c.clear();
        l();
        m();
    }

    public void h() {
    }

    public void i() {
    }

    public void k() {
        Context context = this.a.get();
        if (context != null) {
            new h().c(context);
            if (this.f == null && this.g == null) {
                b(this.i);
                this.f = new Thread(this.f1590d, "read");
                this.g = new Thread(this.e, "workflow");
                this.f.start();
                this.g.start();
            }
        }
    }

    public void l() {
        BroadcastReceiver broadcastReceiver;
        TimerTask timerTask = this.h;
        if (timerTask != null) {
            timerTask.cancel();
            this.h = null;
            Context context = this.a.get();
            if (context == null || context == null || (broadcastReceiver = this.f1588b) == null) {
                return;
            }
            try {
                context.unregisterReceiver(broadcastReceiver);
            } catch (Exception e) {
                e.printStackTrace();
                s.e(Log.getStackTraceString(e));
            }
            this.f1588b = null;
        }
    }

    public void m() {
        c();
        Thread thread = this.f;
        if (thread != null) {
            try {
                try {
                    thread.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    s.e(Log.getStackTraceString(e));
                }
            } finally {
                this.f = null;
            }
        }
        Thread thread2 = this.g;
        try {
            if (thread2 != null) {
                try {
                    thread2.join();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                    s.e(Log.getStackTraceString(e2));
                }
            }
            a();
        } finally {
            this.g = null;
        }
    }
}
