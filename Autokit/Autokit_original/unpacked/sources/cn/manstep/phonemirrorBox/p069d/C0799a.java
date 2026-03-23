package cn.manstep.phonemirrorBox.p069d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import cn.manstep.phonemirrorBox.C0851h;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0799a {

    /* JADX INFO: renamed from: a */
    public WeakReference<Context> f4812a;

    /* JADX INFO: renamed from: b */
    private BroadcastReceiver f4813b;

    /* JADX INFO: renamed from: c */
    private List<d> f4814c;

    /* JADX INFO: renamed from: d */
    private Runnable f4815d;

    /* JADX INFO: renamed from: e */
    private Runnable f4816e;

    /* JADX INFO: renamed from: f */
    private Thread f4817f;

    /* JADX INFO: renamed from: g */
    private Thread f4818g;

    /* JADX INFO: renamed from: h */
    private TimerTask f4819h;

    /* JADX INFO: renamed from: i */
    private String f4820i;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d.a$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0799a.this.m6169h();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d.a$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0799a.this.m6170i();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d.a$c */
    class c extends Handler {
        c() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C0982s.m7373c("AndroidInterface msg:" + message + " come");
            if (1 == message.what) {
                int i = message.arg1;
                if (i == 0) {
                    C0799a.this.m6173m();
                    Context context = C0799a.this.f4812a.get();
                    if (context != null) {
                        Intent intent = new Intent("cn.manstep.hidetitle");
                        intent.putExtra("WPARAM", true);
                        context.sendBroadcast(intent);
                    }
                } else if (i == 1) {
                    C0799a.this.m6171k();
                    Context context2 = C0799a.this.f4812a.get();
                    if (context2 != null) {
                        Intent intent2 = new Intent("cn.manstep.hidetitle");
                        intent2.putExtra("WPARAM", false);
                        context2.sendBroadcast(intent2);
                    }
                }
                Iterator it = C0799a.this.f4814c.iterator();
                while (it.hasNext()) {
                    ((d) it.next()).mo6174b(message.arg1);
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.d.a$d */
    public interface d {
        /* JADX INFO: renamed from: b */
        void mo6174b(int i);

        /* JADX INFO: renamed from: e */
        void mo6175e(C0799a c0799a);
    }

    public C0799a(Context context) {
        this.f4812a = new WeakReference<>(null);
        new Timer();
        this.f4814c = new ArrayList();
        this.f4815d = new a();
        this.f4816e = new b();
        this.f4820i = BuildConfig.FLAVOR;
        this.f4812a = new WeakReference<>(context);
        this.f4820i = m6162j(context);
        new c();
    }

    /* JADX INFO: renamed from: j */
    private String m6162j(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String str = BuildConfig.FLAVOR + telephonyManager.getDeviceId();
        String str2 = "hwrd_" + new UUID((BuildConfig.FLAVOR + Settings.Secure.getString(context.getContentResolver(), "android_id")).hashCode(), ((long) (BuildConfig.FLAVOR + telephonyManager.getSimSerialNumber()).hashCode()) | (((long) str.hashCode()) << 32)).toString();
        C0982s.m7373c("uuid=" + str2);
        return str2;
    }

    /* JADX INFO: renamed from: a */
    public void m6163a() {
    }

    /* JADX INFO: renamed from: b */
    public void m6164b(String str) {
    }

    /* JADX INFO: renamed from: c */
    public void m6165c() {
    }

    /* JADX INFO: renamed from: e */
    public void m6166e(d dVar) {
        if (this.f4814c.contains(dVar)) {
            return;
        }
        this.f4814c.add(dVar);
        dVar.mo6175e(this);
    }

    /* JADX INFO: renamed from: f */
    public void m6167f(Context context) {
        synchronized (this) {
            this.f4812a = new WeakReference<>(context);
            if (context != null) {
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public void m6168g() {
        this.f4814c.clear();
        m6172l();
        m6173m();
    }

    /* JADX INFO: renamed from: h */
    public void m6169h() {
    }

    /* JADX INFO: renamed from: i */
    public void m6170i() {
    }

    /* JADX INFO: renamed from: k */
    public void m6171k() {
        Context context = this.f4812a.get();
        if (context != null) {
            new C0851h().m6332c(context);
            if (this.f4817f == null && this.f4818g == null) {
                m6164b(this.f4820i);
                this.f4817f = new Thread(this.f4815d, "read");
                this.f4818g = new Thread(this.f4816e, "workflow");
                this.f4817f.start();
                this.f4818g.start();
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public void m6172l() {
        BroadcastReceiver broadcastReceiver;
        TimerTask timerTask = this.f4819h;
        if (timerTask != null) {
            timerTask.cancel();
            this.f4819h = null;
            Context context = this.f4812a.get();
            if (context == null || context == null || (broadcastReceiver = this.f4813b) == null) {
                return;
            }
            try {
                context.unregisterReceiver(broadcastReceiver);
            } catch (Exception e) {
                e.printStackTrace();
                C0982s.m7375e(Log.getStackTraceString(e));
            }
            this.f4813b = null;
        }
    }

    /* JADX INFO: renamed from: m */
    public void m6173m() {
        m6165c();
        Thread thread = this.f4817f;
        if (thread != null) {
            try {
                try {
                    thread.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    C0982s.m7375e(Log.getStackTraceString(e));
                }
            } finally {
                this.f4817f = null;
            }
        }
        Thread thread2 = this.f4818g;
        try {
            if (thread2 != null) {
                try {
                    thread2.join();
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                    C0982s.m7375e(Log.getStackTraceString(e2));
                }
            }
            m6163a();
        } finally {
            this.f4818g = null;
        }
    }
}
