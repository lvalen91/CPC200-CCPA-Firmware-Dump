package cn.manstep.phonemirrorBox.f0;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.util.s;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class e extends cn.manstep.phonemirrorBox.f0.a {
    private static e i;
    private AudioManager.OnAudioFocusChangeListener f;
    private AudioFocusRequest g;
    private int h = 0;

    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            s.d("NavManager", "init->onAudioFocusChange: focusChange=" + i);
            e.this.h = i;
            if (i == 1) {
                cn.manstep.phonemirrorBox.u0.c.h().d(cn.manstep.phonemirrorBox.v0.e.C());
            } else if ((i == -1 || i == -2 || i == -3) && !cn.manstep.phonemirrorBox.v0.a.t().w()) {
                e.this.m();
            }
        }
    }

    public static e j() {
        if (i == null) {
            synchronized (e.class) {
                if (i == null) {
                    i = new e();
                }
            }
        }
        return i;
    }

    private void o(boolean z) {
        if (this.f1629d != null) {
            if (z) {
                cn.manstep.phonemirrorBox.e0.b.a().c(1, this.f1629d.C());
            } else {
                cn.manstep.phonemirrorBox.e0.b.a().c(1, Integer.MIN_VALUE);
            }
        }
    }

    public void g() {
        if (this.h != 0) {
            s.d("NavManager", "abandon: focus=" + this.h);
            o(false);
            AudioManager audioManager = this.e;
            if (audioManager != null) {
                if (this.f1628c || Build.VERSION.SDK_INT < 26) {
                    this.e.abandonAudioFocus(this.f);
                } else {
                    audioManager.abandonAudioFocusRequest(this.g);
                }
            }
            this.h = 0;
        }
    }

    public AudioAttributes i() {
        return this.g.getAudioAttributes();
    }

    public boolean k() {
        return this.h == 1;
    }

    public void l(Context context) {
        this.e = (AudioManager) context.getSystemService("audio");
        int iM = b0.i().m("NVAudioVol", 0);
        s.d("NavManager", "init: val=" + iM);
        if (iM > 0) {
            int i2 = iM & 65535;
            int i3 = (iM >> 16) & 65535;
            s.d("NavManager", "init: streamVolume=" + this.e.getStreamVolume(i3));
            this.e.setStreamVolume(i3, i2, 0);
            s.d("NavManager", "init: volType=" + i3 + ", vol=" + i3);
        }
        this.f1628c = b0.i().o("LowerAudioAPI", false);
        int iM2 = b0.i().m("NVAudioType", 0);
        this.f1627b = (iM2 >> 16) & 65535;
        int i4 = iM2 & 65535;
        this.a = i4;
        if (i4 == 0) {
            if (Build.VERSION.SDK_INT < 26 || this.f1628c) {
                this.a = 3;
            } else {
                this.a = 12;
                this.f1627b = 2;
            }
        }
        s.d("NavManager", "init: usage=" + this.a);
        this.f = new a();
        if (Build.VERSION.SDK_INT >= 26) {
            this.g = new AudioFocusRequest.Builder(3).setAudioAttributes(new AudioAttributes.Builder().setUsage(this.a).setContentType(this.f1627b).build()).setOnAudioFocusChangeListener(this.f).build();
        }
        s.d("NavManager", "init: usage=" + this.a + "," + this.f1627b);
    }

    public int m() {
        int iRequestAudioFocus;
        int iC;
        s.d("NavManager", "request: usage=" + this.a + ",contentType=" + this.f1627b + "，LowerApi=" + this.f1628c + ",focus=" + this.h);
        if (k()) {
            o(true);
            return this.h;
        }
        if (!b0.i().o("IsTurnDownMusic", true)) {
            iRequestAudioFocus = 1;
        } else if (this.f1628c || Build.VERSION.SDK_INT < 26) {
            int i2 = this.a;
            s.d("NavManager", "request: streamType=" + i2);
            try {
                s.d("NavManager", "request: streamVolume=" + this.e.getStreamVolume(i2));
            } catch (Exception unused) {
                d.b.a.b bVar = this.f1629d;
                if (bVar != null && (iC = bVar.C()) >= 0) {
                    i2 = iC;
                }
            }
            s.d("NavManager", "request: type=" + i2);
            iRequestAudioFocus = this.e.requestAudioFocus(this.f, i2, 3);
        } else {
            iRequestAudioFocus = this.e.requestAudioFocus(this.g);
        }
        if (iRequestAudioFocus == 1) {
            o(true);
            this.h = 1;
            cn.manstep.phonemirrorBox.u0.c.h().d(cn.manstep.phonemirrorBox.v0.e.C());
        } else {
            this.h = -1;
        }
        return iRequestAudioFocus;
    }

    public int n(boolean z, AudioAttributes audioAttributes, int i2) {
        int iC;
        int iRequestAudioFocus;
        if (k()) {
            o(true);
            return this.h;
        }
        if (z || Build.VERSION.SDK_INT < 26) {
            s.d("NavManager", "request: streamType=" + i2 + ",usage=" + this.a);
            try {
                s.d("NavManager", "request: streamVolume=" + this.e.getStreamVolume(this.a));
            } catch (Exception unused) {
                d.b.a.b bVar = this.f1629d;
                if (bVar != null && (iC = bVar.C()) >= 0) {
                    i2 = iC;
                }
            }
            s.d("NavManager", "request: type=" + i2);
            iRequestAudioFocus = this.e.requestAudioFocus(this.f, i2, 3);
        } else {
            if (audioAttributes == null) {
                return -1;
            }
            AudioFocusRequest audioFocusRequestBuild = new AudioFocusRequest.Builder(3).setAudioAttributes(audioAttributes).setOnAudioFocusChangeListener(this.f).build();
            this.g = audioFocusRequestBuild;
            iRequestAudioFocus = this.e.requestAudioFocus(audioFocusRequestBuild);
        }
        if (iRequestAudioFocus == 1) {
            o(true);
            this.h = 1;
            cn.manstep.phonemirrorBox.u0.c.h().d(cn.manstep.phonemirrorBox.v0.e.C());
        } else {
            this.h = -1;
        }
        return iRequestAudioFocus;
    }
}
