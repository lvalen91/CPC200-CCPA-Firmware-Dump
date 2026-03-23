package cn.manstep.phonemirrorBox.f0;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends cn.manstep.phonemirrorBox.f0.a {
    private static g i;
    private AudioManager.OnAudioFocusChangeListener f;
    private AudioFocusRequest g;
    private int h = 0;

    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            s.d("VoiceManager", "init->onAudioFocusChange: focusChange=" + i);
            g.this.h = i;
            if (i != 1 && i != 2 && !cn.manstep.phonemirrorBox.v0.a.t().w() && !cn.manstep.phonemirrorBox.v0.a.t().v()) {
                g.this.m();
            }
            if (i == 1) {
                cn.manstep.phonemirrorBox.u0.c.h().e(cn.manstep.phonemirrorBox.v0.e.C());
            }
        }
    }

    public static g j() {
        if (i == null) {
            synchronized (g.class) {
                if (i == null) {
                    i = new g();
                }
            }
        }
        return i;
    }

    public void g() {
        if (u.z().f0()) {
            e.j().g();
            return;
        }
        if (this.h != 0) {
            s.d("VoiceManager", "abandon: focus=" + this.h);
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
        int i2 = this.h;
        return i2 == 1 || i2 == 2;
    }

    public void l(Context context) {
        AudioAttributes audioAttributesBuild;
        this.e = (AudioManager) context.getSystemService("audio");
        int iM = b0.i().m("VAAudioVol", 0);
        s.d("VoiceManager", "init: val=" + iM);
        if (iM > 0) {
            int i2 = iM & 65535;
            int i3 = (iM >> 16) & 65535;
            s.d("VoiceManager", "init: type=" + i3 + ",vol=" + i2);
            this.e.setStreamVolume(i3, i2, 0);
        }
        this.f1628c = b0.i().o("LowerAudioAPI", false);
        int iM2 = b0.i().m("VAAudioType", 0);
        this.f1627b = (iM2 >> 16) & 65535;
        this.a = 65535 & iM2;
        s.d("VoiceManager", "init: type=" + iM2 + ",usage=" + this.a + ",contentType=" + this.f1627b);
        if (this.a == 0) {
            if (Build.VERSION.SDK_INT < 26 || this.f1628c) {
                this.a = 0;
            } else {
                this.a = 16;
                this.f1627b = 1;
            }
        }
        this.f = new a();
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                audioAttributesBuild = new AudioAttributes.Builder().setUsage(this.a).setContentType(this.f1627b).build();
            } catch (IllegalArgumentException unused) {
                this.a = 6;
                this.f1627b = 1;
                audioAttributesBuild = new AudioAttributes.Builder().setUsage(this.a).setContentType(this.f1627b).build();
            }
            this.g = new AudioFocusRequest.Builder(2).setAudioAttributes(audioAttributesBuild).setOnAudioFocusChangeListener(this.f).build();
        }
        s.d("VoiceManager", "init: usage=" + this.a + "," + this.f1627b);
    }

    public int m() {
        s.d("VoiceManager", "request: usage=" + this.a + "," + this.f1627b);
        if (u.z().f0()) {
            return e.j().m();
        }
        int iRequestAudioFocus = (this.f1628c || Build.VERSION.SDK_INT < 26) ? this.e.requestAudioFocus(this.f, 3, 2) : this.e.requestAudioFocus(this.g);
        if (iRequestAudioFocus == 1) {
            this.h = 2;
            cn.manstep.phonemirrorBox.u0.c.h().e(cn.manstep.phonemirrorBox.v0.e.C());
        } else {
            this.h = -1;
        }
        return iRequestAudioFocus;
    }

    public int n(boolean z, AudioAttributes audioAttributes, int i2) {
        int iRequestAudioFocus;
        if (k()) {
            return this.h;
        }
        if (z || Build.VERSION.SDK_INT < 26) {
            iRequestAudioFocus = this.e.requestAudioFocus(this.f, i2, 2);
        } else {
            if (audioAttributes == null) {
                return -1;
            }
            AudioFocusRequest audioFocusRequestBuild = new AudioFocusRequest.Builder(2).setAudioAttributes(audioAttributes).setOnAudioFocusChangeListener(this.f).build();
            this.g = audioFocusRequestBuild;
            iRequestAudioFocus = this.e.requestAudioFocus(audioFocusRequestBuild);
        }
        if (iRequestAudioFocus == 1) {
            this.h = 2;
            cn.manstep.phonemirrorBox.u0.c.h().e(cn.manstep.phonemirrorBox.v0.e.C());
        } else {
            this.h = -1;
        }
        return iRequestAudioFocus;
    }
}
