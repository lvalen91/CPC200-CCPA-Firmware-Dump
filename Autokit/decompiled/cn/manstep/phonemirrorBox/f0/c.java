package cn.manstep.phonemirrorBox.f0;

import android.content.ComponentName;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import cn.manstep.phonemirrorBox.MediaButtonReceiver;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.util.s;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class c extends cn.manstep.phonemirrorBox.f0.a {
    private static c k;
    private static ComponentName l;
    private AudioManager.OnAudioFocusChangeListener f;
    private AudioFocusRequest g;
    private int h = 0;
    private boolean i = false;
    private d j;

    class a implements AudioManager.OnAudioFocusChangeListener {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.c$a$a, reason: collision with other inner class name */
        class RunnableC0084a implements Runnable {
            RunnableC0084a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (cn.manstep.phonemirrorBox.v0.a.t().y()) {
                    return;
                }
                cn.manstep.phonemirrorBox.v0.e.H(201);
                c.this.i = false;
            }
        }

        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            s.d("MediaManager", "init->onAudioFocusChange: focusChange=" + i);
            c.this.h = i;
            if (i == 1) {
                d.b.a.b bVar = c.this.f1629d;
                if (bVar != null) {
                    bVar.n(1.0f);
                }
                if (c.this.i) {
                    if (c.this.j != null) {
                        c.this.j.E(true);
                    }
                    new Handler().postDelayed(new RunnableC0084a(), 600L);
                    cn.manstep.phonemirrorBox.u0.c.h().d(cn.manstep.phonemirrorBox.v0.e.C());
                    cn.manstep.phonemirrorBox.u0.c.h().n();
                    return;
                }
                return;
            }
            if (i == -1) {
                c.this.r();
                c.this.s();
                cn.manstep.phonemirrorBox.u0.c.h().o();
            } else {
                if (i == -2) {
                    c.this.r();
                    return;
                }
                if (i == -3 && b0.i().o("IsTurnDownMusic", true) && c.this.f1629d != null) {
                    if (cn.manstep.phonemirrorBox.BoxInterface.d.l.U() && cn.manstep.phonemirrorBox.v0.a.t().z()) {
                        c.this.f1629d.n(0.8f);
                    } else {
                        c.this.f1629d.n(0.2f);
                    }
                }
            }
        }
    }

    public static c n() {
        if (k == null) {
            synchronized (c.class) {
                if (k == null) {
                    k = new c();
                }
            }
        }
        return k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (cn.manstep.phonemirrorBox.v0.a.t().y() && !cn.manstep.phonemirrorBox.v0.a.t().C()) {
            cn.manstep.phonemirrorBox.v0.e.H(202);
            this.i = true;
        }
        d dVar = this.j;
        if (dVar != null) {
            dVar.E(false);
        }
    }

    public void g() {
    }

    public AudioAttributes m() {
        return this.g.getAudioAttributes();
    }

    public boolean o() {
        int i = this.h;
        return i == 1 || i == 3;
    }

    public void p(Context context) {
        this.f1628c = b0.i().o("LowerAudioAPI", false);
        this.e = (AudioManager) context.getSystemService("audio");
        l = new ComponentName(context.getPackageName(), MediaButtonReceiver.class.getName());
        this.f = new a();
        if (Build.VERSION.SDK_INT < 26 || this.f1628c) {
            this.a = 3;
        } else {
            this.a = 1;
            this.f1627b = 2;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.g = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(this.a).setContentType(this.f1627b).build()).setOnAudioFocusChangeListener(this.f).build();
        }
        s.d("MediaManager", "init: usage=" + this.a + "," + this.f1627b);
    }

    public void q(Context context) {
        this.j = new d(context);
    }

    public void s() {
        AudioManager audioManager = this.e;
        if (audioManager != null) {
            if (this.f1628c || Build.VERSION.SDK_INT < 26) {
                this.e.abandonAudioFocus(this.f);
            } else {
                audioManager.abandonAudioFocusRequest(this.g);
            }
            this.e.unregisterMediaButtonEventReceiver(l);
        }
        this.h = 0;
        this.i = false;
        d dVar = this.j;
        if (dVar != null) {
            dVar.E(false);
        }
    }

    public void t() {
        d dVar = this.j;
        if (dVar != null) {
            dVar.D();
        }
    }

    public int u() {
        s.d("MediaManager", "request: " + o() + ", focus=" + this.h);
        s.d("MediaManager", "request: usage=" + this.a + "," + this.f1627b);
        try {
            this.e.registerMediaButtonEventReceiver(l);
        } catch (Throwable unused) {
        }
        this.i = false;
        int i = this.h;
        if (i == 1) {
            return i;
        }
        d dVar = this.j;
        if (dVar != null) {
            dVar.E(true);
        }
        int iRequestAudioFocus = (this.f1628c || Build.VERSION.SDK_INT < 26) ? this.e.requestAudioFocus(this.f, this.a, 1) : this.e.requestAudioFocus(this.g);
        if (iRequestAudioFocus == 1) {
            this.h = 1;
            this.e.registerMediaButtonEventReceiver(l);
            cn.manstep.phonemirrorBox.u0.c.h().d(cn.manstep.phonemirrorBox.v0.e.C());
            cn.manstep.phonemirrorBox.u0.c.h().n();
        } else {
            this.h = -1;
            cn.manstep.phonemirrorBox.v0.e.H(202);
            this.i = true;
        }
        s.d("MediaManager", "request: focus=" + this.h + ", ret=" + iRequestAudioFocus);
        return iRequestAudioFocus;
    }
}
