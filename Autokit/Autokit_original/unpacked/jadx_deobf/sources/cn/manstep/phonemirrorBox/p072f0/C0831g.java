package cn.manstep.phonemirrorBox.p072f0;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0831g extends AbstractC0825a {

    /* JADX INFO: renamed from: i */
    private static C0831g f4912i;

    /* JADX INFO: renamed from: f */
    private AudioManager.OnAudioFocusChangeListener f4913f;

    /* JADX INFO: renamed from: g */
    private AudioFocusRequest f4914g;

    /* JADX INFO: renamed from: h */
    private int f4915h = 0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.g$a */
    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            C0982s.m7374d("VoiceManager", "init->onAudioFocusChange: focusChange=" + i);
            C0831g.this.f4915h = i;
            if (i != 1 && i != 2 && !C0991a.m7412t().m7423w() && !C0991a.m7412t().m7422v()) {
                C0831g.this.m6263m();
            }
            if (i == 1) {
                C0956c.m7100h().m7113e(C0995e.m7430C());
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public static C0831g m6258j() {
        if (f4912i == null) {
            synchronized (C0831g.class) {
                if (f4912i == null) {
                    f4912i = new C0831g();
                }
            }
        }
        return f4912i;
    }

    /* JADX INFO: renamed from: g */
    public void m6259g() {
        if (C0953u.m7001z().m7038f0()) {
            C0829e.m6240j().m6242g();
            return;
        }
        if (this.f4915h != 0) {
            C0982s.m7374d("VoiceManager", "abandon: focus=" + this.f4915h);
            AudioManager audioManager = this.f4884e;
            if (audioManager != null) {
                if (this.f4882c || Build.VERSION.SDK_INT < 26) {
                    this.f4884e.abandonAudioFocus(this.f4913f);
                } else {
                    audioManager.abandonAudioFocusRequest(this.f4914g);
                }
            }
            this.f4915h = 0;
        }
    }

    /* JADX INFO: renamed from: i */
    public AudioAttributes m6260i() {
        return this.f4914g.getAudioAttributes();
    }

    /* JADX INFO: renamed from: k */
    public boolean m6261k() {
        int i = this.f4915h;
        return i == 1 || i == 2;
    }

    /* JADX INFO: renamed from: l */
    public void m6262l(Context context) {
        AudioAttributes audioAttributesBuild;
        this.f4884e = (AudioManager) context.getSystemService("audio");
        int iM6091m = C0795b0.m6071i().m6091m("VAAudioVol", 0);
        C0982s.m7374d("VoiceManager", "init: val=" + iM6091m);
        if (iM6091m > 0) {
            int i = iM6091m & 65535;
            int i2 = (iM6091m >> 16) & 65535;
            C0982s.m7374d("VoiceManager", "init: type=" + i2 + ",vol=" + i);
            this.f4884e.setStreamVolume(i2, i, 0);
        }
        this.f4882c = C0795b0.m6071i().m6093o("LowerAudioAPI", false);
        int iM6091m2 = C0795b0.m6071i().m6091m("VAAudioType", 0);
        this.f4881b = (iM6091m2 >> 16) & 65535;
        this.f4880a = 65535 & iM6091m2;
        C0982s.m7374d("VoiceManager", "init: type=" + iM6091m2 + ",usage=" + this.f4880a + ",contentType=" + this.f4881b);
        if (this.f4880a == 0) {
            if (Build.VERSION.SDK_INT < 26 || this.f4882c) {
                this.f4880a = 0;
            } else {
                this.f4880a = 16;
                this.f4881b = 1;
            }
        }
        this.f4913f = new a();
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                audioAttributesBuild = new AudioAttributes.Builder().setUsage(this.f4880a).setContentType(this.f4881b).build();
            } catch (IllegalArgumentException unused) {
                this.f4880a = 6;
                this.f4881b = 1;
                audioAttributesBuild = new AudioAttributes.Builder().setUsage(this.f4880a).setContentType(this.f4881b).build();
            }
            this.f4914g = new AudioFocusRequest.Builder(2).setAudioAttributes(audioAttributesBuild).setOnAudioFocusChangeListener(this.f4913f).build();
        }
        C0982s.m7374d("VoiceManager", "init: usage=" + this.f4880a + "," + this.f4881b);
    }

    /* JADX INFO: renamed from: m */
    public int m6263m() {
        C0982s.m7374d("VoiceManager", "request: usage=" + this.f4880a + "," + this.f4881b);
        if (C0953u.m7001z().m7038f0()) {
            return C0829e.m6240j().m6246m();
        }
        int iRequestAudioFocus = (this.f4882c || Build.VERSION.SDK_INT < 26) ? this.f4884e.requestAudioFocus(this.f4913f, 3, 2) : this.f4884e.requestAudioFocus(this.f4914g);
        if (iRequestAudioFocus == 1) {
            this.f4915h = 2;
            C0956c.m7100h().m7113e(C0995e.m7430C());
        } else {
            this.f4915h = -1;
        }
        return iRequestAudioFocus;
    }

    /* JADX INFO: renamed from: n */
    public int m6264n(boolean z, AudioAttributes audioAttributes, int i) {
        int iRequestAudioFocus;
        if (m6261k()) {
            return this.f4915h;
        }
        if (z || Build.VERSION.SDK_INT < 26) {
            iRequestAudioFocus = this.f4884e.requestAudioFocus(this.f4913f, i, 2);
        } else {
            if (audioAttributes == null) {
                return -1;
            }
            AudioFocusRequest audioFocusRequestBuild = new AudioFocusRequest.Builder(2).setAudioAttributes(audioAttributes).setOnAudioFocusChangeListener(this.f4913f).build();
            this.f4914g = audioFocusRequestBuild;
            iRequestAudioFocus = this.f4884e.requestAudioFocus(audioFocusRequestBuild);
        }
        if (iRequestAudioFocus == 1) {
            this.f4915h = 2;
            C0956c.m7100h().m7113e(C0995e.m7430C());
        } else {
            this.f4915h = -1;
        }
        return iRequestAudioFocus;
    }
}
