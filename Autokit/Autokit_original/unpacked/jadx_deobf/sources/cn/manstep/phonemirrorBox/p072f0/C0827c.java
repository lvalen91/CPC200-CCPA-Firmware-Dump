package cn.manstep.phonemirrorBox.p072f0;

import android.content.ComponentName;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.MediaButtonReceiver;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import p093d.p097b.p098a.C1199b;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0827c extends AbstractC0825a {

    /* JADX INFO: renamed from: k */
    private static C0827c f4890k;

    /* JADX INFO: renamed from: l */
    private static ComponentName f4891l;

    /* JADX INFO: renamed from: f */
    private AudioManager.OnAudioFocusChangeListener f4892f;

    /* JADX INFO: renamed from: g */
    private AudioFocusRequest f4893g;

    /* JADX INFO: renamed from: h */
    private int f4894h = 0;

    /* JADX INFO: renamed from: i */
    private boolean f4895i = false;

    /* JADX INFO: renamed from: j */
    private C0828d f4896j;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.c$a */
    class a implements AudioManager.OnAudioFocusChangeListener {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.c$a$a, reason: collision with other inner class name */
        class RunnableC1353a implements Runnable {
            RunnableC1353a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C0991a.m7412t().m7425y()) {
                    return;
                }
                C0995e.m7435H(201);
                C0827c.this.f4895i = false;
            }
        }

        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            C0982s.m7374d("MediaManager", "init->onAudioFocusChange: focusChange=" + i);
            C0827c.this.f4894h = i;
            if (i == 1) {
                C1199b c1199b = C0827c.this.f4883d;
                if (c1199b != null) {
                    c1199b.m9117n(1.0f);
                }
                if (C0827c.this.f4895i) {
                    if (C0827c.this.f4896j != null) {
                        C0827c.this.f4896j.m6238E(true);
                    }
                    new Handler().postDelayed(new RunnableC1353a(), 600L);
                    C0956c.m7100h().m7112d(C0995e.m7430C());
                    C0956c.m7100h().m7120n();
                    return;
                }
                return;
            }
            if (i == -1) {
                C0827c.this.m6228r();
                C0827c.this.m6234s();
                C0956c.m7100h().m7121o();
            } else {
                if (i == -2) {
                    C0827c.this.m6228r();
                    return;
                }
                if (i == -3 && C0795b0.m6071i().m6093o("IsTurnDownMusic", true) && C0827c.this.f4883d != null) {
                    if (C0733d.f4428l.m5700U() && C0991a.m7412t().m7426z()) {
                        C0827c.this.f4883d.m9117n(0.8f);
                    } else {
                        C0827c.this.f4883d.m9117n(0.2f);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public static C0827c m6227n() {
        if (f4890k == null) {
            synchronized (C0827c.class) {
                if (f4890k == null) {
                    f4890k = new C0827c();
                }
            }
        }
        return f4890k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r */
    public void m6228r() {
        if (C0991a.m7412t().m7425y() && !C0991a.m7412t().m7415C()) {
            C0995e.m7435H(202);
            this.f4895i = true;
        }
        C0828d c0828d = this.f4896j;
        if (c0828d != null) {
            c0828d.m6238E(false);
        }
    }

    /* JADX INFO: renamed from: g */
    public void m6229g() {
    }

    /* JADX INFO: renamed from: m */
    public AudioAttributes m6230m() {
        return this.f4893g.getAudioAttributes();
    }

    /* JADX INFO: renamed from: o */
    public boolean m6231o() {
        int i = this.f4894h;
        return i == 1 || i == 3;
    }

    /* JADX INFO: renamed from: p */
    public void m6232p(Context context) {
        this.f4882c = C0795b0.m6071i().m6093o("LowerAudioAPI", false);
        this.f4884e = (AudioManager) context.getSystemService("audio");
        f4891l = new ComponentName(context.getPackageName(), MediaButtonReceiver.class.getName());
        this.f4892f = new a();
        if (Build.VERSION.SDK_INT < 26 || this.f4882c) {
            this.f4880a = 3;
        } else {
            this.f4880a = 1;
            this.f4881b = 2;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4893g = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(this.f4880a).setContentType(this.f4881b).build()).setOnAudioFocusChangeListener(this.f4892f).build();
        }
        C0982s.m7374d("MediaManager", "init: usage=" + this.f4880a + "," + this.f4881b);
    }

    /* JADX INFO: renamed from: q */
    public void m6233q(Context context) {
        this.f4896j = new C0828d(context);
    }

    /* JADX INFO: renamed from: s */
    public void m6234s() {
        AudioManager audioManager = this.f4884e;
        if (audioManager != null) {
            if (this.f4882c || Build.VERSION.SDK_INT < 26) {
                this.f4884e.abandonAudioFocus(this.f4892f);
            } else {
                audioManager.abandonAudioFocusRequest(this.f4893g);
            }
            this.f4884e.unregisterMediaButtonEventReceiver(f4891l);
        }
        this.f4894h = 0;
        this.f4895i = false;
        C0828d c0828d = this.f4896j;
        if (c0828d != null) {
            c0828d.m6238E(false);
        }
    }

    /* JADX INFO: renamed from: t */
    public void m6235t() {
        C0828d c0828d = this.f4896j;
        if (c0828d != null) {
            c0828d.m6237D();
        }
    }

    /* JADX INFO: renamed from: u */
    public int m6236u() {
        C0982s.m7374d("MediaManager", "request: " + m6231o() + ", focus=" + this.f4894h);
        C0982s.m7374d("MediaManager", "request: usage=" + this.f4880a + "," + this.f4881b);
        try {
            this.f4884e.registerMediaButtonEventReceiver(f4891l);
        } catch (Throwable unused) {
        }
        this.f4895i = false;
        int i = this.f4894h;
        if (i == 1) {
            return i;
        }
        C0828d c0828d = this.f4896j;
        if (c0828d != null) {
            c0828d.m6238E(true);
        }
        int iRequestAudioFocus = (this.f4882c || Build.VERSION.SDK_INT < 26) ? this.f4884e.requestAudioFocus(this.f4892f, this.f4880a, 1) : this.f4884e.requestAudioFocus(this.f4893g);
        if (iRequestAudioFocus == 1) {
            this.f4894h = 1;
            this.f4884e.registerMediaButtonEventReceiver(f4891l);
            C0956c.m7100h().m7112d(C0995e.m7430C());
            C0956c.m7100h().m7120n();
        } else {
            this.f4894h = -1;
            C0995e.m7435H(202);
            this.f4895i = true;
        }
        C0982s.m7374d("MediaManager", "request: focus=" + this.f4894h + ", ret=" + iRequestAudioFocus);
        return iRequestAudioFocus;
    }
}
