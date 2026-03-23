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

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0826b extends AbstractC0825a {

    /* JADX INFO: renamed from: i */
    private static C0826b f4885i;

    /* JADX INFO: renamed from: f */
    private AudioManager.OnAudioFocusChangeListener f4886f;

    /* JADX INFO: renamed from: g */
    private AudioFocusRequest f4887g;

    /* JADX INFO: renamed from: h */
    private int f4888h = 0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.b$a */
    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            C0982s.m7374d("CallManager", "init->onAudioFocusChange: focusChange=" + i);
            if (!C0991a.m7412t().m7424x()) {
                C0982s.m7376f("CallManager", "onAudioFocusChange: AudioFocusException focusChange=" + i + this + "," + C0827c.m6227n());
            }
            C0826b.this.f4888h = i;
            if (i == 1 || i == 2) {
                C0956c.m7100h().m7111c(C0995e.m7430C());
            } else {
                if (C0991a.m7412t().m7424x()) {
                    return;
                }
                C0826b.this.m6220m();
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public static C0826b m6214j() {
        if (f4885i == null) {
            synchronized (C0826b.class) {
                if (f4885i == null) {
                    f4885i = new C0826b();
                }
            }
        }
        return f4885i;
    }

    /* JADX INFO: renamed from: o */
    private void m6215o() {
        int iM6091m = C0795b0.m6071i().m6091m("CallAudioVol", 0);
        C0982s.m7374d("CallManager", "setVolume: val=" + iM6091m);
        if (iM6091m > 0) {
            int i = iM6091m & 65535;
            int i2 = (iM6091m >> 16) & 65535;
            C0982s.m7374d("CallManager", "setVolume: type=" + i2 + ",vol=" + i);
            this.f4884e.setStreamVolume(i2, i, 0);
        }
    }

    /* JADX INFO: renamed from: g */
    public void m6216g() {
        if (this.f4888h != 0) {
            C0982s.m7374d("CallManager", "abandon: focus=" + this.f4888h);
            C0991a.m7412t().mo7142f();
            AudioManager audioManager = this.f4884e;
            if (audioManager != null) {
                if (this.f4882c || Build.VERSION.SDK_INT < 26) {
                    this.f4884e.abandonAudioFocus(this.f4886f);
                } else {
                    audioManager.abandonAudioFocusRequest(this.f4887g);
                }
            }
            this.f4888h = 0;
        }
    }

    /* JADX INFO: renamed from: i */
    public AudioAttributes m6217i() {
        return C0953u.m7001z().m7043i() ? new AudioAttributes.Builder().setUsage(13).setContentType(1).build() : this.f4887g.getAudioAttributes();
    }

    /* JADX INFO: renamed from: k */
    public boolean m6218k() {
        int i = this.f4888h;
        return i == 1 || i == 2;
    }

    /* JADX INFO: renamed from: l */
    public void m6219l(Context context) {
        this.f4884e = (AudioManager) context.getSystemService("audio");
        m6215o();
        this.f4882c = C0795b0.m6071i().m6093o("LowerAudioAPI", false);
        int iM6091m = C0795b0.m6071i().m6091m("CallAudioType", 0);
        this.f4881b = (iM6091m >> 16) & 65535;
        this.f4880a = iM6091m & 65535;
        C0982s.m7374d("CallManager", "init: type=" + iM6091m + ",usage=" + this.f4880a + ",contentType=" + this.f4881b);
        if (this.f4880a == 0) {
            if (Build.VERSION.SDK_INT < 26 || this.f4882c) {
                this.f4880a = 0;
            } else {
                this.f4880a = 2;
                this.f4881b = 1;
            }
        }
        this.f4886f = new a();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4887g = new AudioFocusRequest.Builder(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(this.f4880a).setContentType(this.f4881b).build()).setOnAudioFocusChangeListener(this.f4886f).build();
        }
        C0982s.m7374d("CallManager", "init: usage=" + this.f4880a + "," + this.f4881b);
    }

    /* JADX INFO: renamed from: m */
    public int m6220m() {
        m6215o();
        C0982s.m7374d("CallManager", "request: usage=" + this.f4880a + "," + this.f4881b);
        if (m6218k()) {
            return this.f4888h;
        }
        int iRequestAudioFocus = (this.f4882c || Build.VERSION.SDK_INT < 26) ? this.f4884e.requestAudioFocus(this.f4886f, this.f4880a, 2) : this.f4884e.requestAudioFocus(this.f4887g);
        if (iRequestAudioFocus == 1) {
            this.f4888h = 2;
            C0956c.m7100h().m7111c(C0995e.m7430C());
        } else {
            this.f4888h = -1;
        }
        C0982s.m7374d("CallManager", "request focus= " + this.f4888h + ",ret= " + iRequestAudioFocus);
        return iRequestAudioFocus;
    }

    /* JADX INFO: renamed from: n */
    public int m6221n(boolean z, AudioAttributes audioAttributes, int i) {
        int iRequestAudioFocus;
        if (m6218k()) {
            return this.f4888h;
        }
        if (z || Build.VERSION.SDK_INT < 26) {
            iRequestAudioFocus = this.f4884e.requestAudioFocus(this.f4886f, i, 2);
        } else {
            if (audioAttributes == null) {
                return -1;
            }
            AudioFocusRequest audioFocusRequestBuild = new AudioFocusRequest.Builder(2).setAudioAttributes(audioAttributes).setOnAudioFocusChangeListener(this.f4886f).build();
            this.f4887g = audioFocusRequestBuild;
            iRequestAudioFocus = this.f4884e.requestAudioFocus(audioFocusRequestBuild);
        }
        if (iRequestAudioFocus == 1) {
            this.f4888h = 2;
            C0956c.m7100h().m7111c(C0995e.m7430C());
        } else {
            this.f4888h = -1;
        }
        return iRequestAudioFocus;
    }
}
