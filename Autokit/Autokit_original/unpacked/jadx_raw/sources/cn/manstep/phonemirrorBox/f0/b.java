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
public class b extends cn.manstep.phonemirrorBox.f0.a {
    private static b i;
    private AudioManager.OnAudioFocusChangeListener f;
    private AudioFocusRequest g;
    private int h = 0;

    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            s.d("CallManager", "init->onAudioFocusChange: focusChange=" + i);
            if (!cn.manstep.phonemirrorBox.v0.a.t().x()) {
                s.f("CallManager", "onAudioFocusChange: AudioFocusException focusChange=" + i + this + "," + c.n());
            }
            b.this.h = i;
            if (i == 1 || i == 2) {
                cn.manstep.phonemirrorBox.u0.c.h().c(cn.manstep.phonemirrorBox.v0.e.C());
            } else {
                if (cn.manstep.phonemirrorBox.v0.a.t().x()) {
                    return;
                }
                b.this.m();
            }
        }
    }

    public static b j() {
        if (i == null) {
            synchronized (b.class) {
                if (i == null) {
                    i = new b();
                }
            }
        }
        return i;
    }

    private void o() {
        int iM = b0.i().m("CallAudioVol", 0);
        s.d("CallManager", "setVolume: val=" + iM);
        if (iM > 0) {
            int i2 = iM & 65535;
            int i3 = (iM >> 16) & 65535;
            s.d("CallManager", "setVolume: type=" + i3 + ",vol=" + i2);
            this.e.setStreamVolume(i3, i2, 0);
        }
    }

    public void g() {
        if (this.h != 0) {
            s.d("CallManager", "abandon: focus=" + this.h);
            cn.manstep.phonemirrorBox.v0.a.t().f();
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
        return u.z().i() ? new AudioAttributes.Builder().setUsage(13).setContentType(1).build() : this.g.getAudioAttributes();
    }

    public boolean k() {
        int i2 = this.h;
        return i2 == 1 || i2 == 2;
    }

    public void l(Context context) {
        this.e = (AudioManager) context.getSystemService("audio");
        o();
        this.f1628c = b0.i().o("LowerAudioAPI", false);
        int iM = b0.i().m("CallAudioType", 0);
        this.f1627b = (iM >> 16) & 65535;
        this.a = iM & 65535;
        s.d("CallManager", "init: type=" + iM + ",usage=" + this.a + ",contentType=" + this.f1627b);
        if (this.a == 0) {
            if (Build.VERSION.SDK_INT < 26 || this.f1628c) {
                this.a = 0;
            } else {
                this.a = 2;
                this.f1627b = 1;
            }
        }
        this.f = new a();
        if (Build.VERSION.SDK_INT >= 26) {
            this.g = new AudioFocusRequest.Builder(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(this.a).setContentType(this.f1627b).build()).setOnAudioFocusChangeListener(this.f).build();
        }
        s.d("CallManager", "init: usage=" + this.a + "," + this.f1627b);
    }

    public int m() {
        o();
        s.d("CallManager", "request: usage=" + this.a + "," + this.f1627b);
        if (k()) {
            return this.h;
        }
        int iRequestAudioFocus = (this.f1628c || Build.VERSION.SDK_INT < 26) ? this.e.requestAudioFocus(this.f, this.a, 2) : this.e.requestAudioFocus(this.g);
        if (iRequestAudioFocus == 1) {
            this.h = 2;
            cn.manstep.phonemirrorBox.u0.c.h().c(cn.manstep.phonemirrorBox.v0.e.C());
        } else {
            this.h = -1;
        }
        s.d("CallManager", "request focus= " + this.h + ",ret= " + iRequestAudioFocus);
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
            cn.manstep.phonemirrorBox.u0.c.h().c(cn.manstep.phonemirrorBox.v0.e.C());
        } else {
            this.h = -1;
        }
        return iRequestAudioFocus;
    }
}
