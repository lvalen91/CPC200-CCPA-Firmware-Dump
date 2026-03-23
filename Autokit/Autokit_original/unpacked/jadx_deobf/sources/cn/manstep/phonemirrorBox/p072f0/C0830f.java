package cn.manstep.phonemirrorBox.p072f0;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0830f extends AbstractC0825a {

    /* JADX INFO: renamed from: i */
    private static C0830f f4907i;

    /* JADX INFO: renamed from: f */
    private AudioManager.OnAudioFocusChangeListener f4908f;

    /* JADX INFO: renamed from: g */
    private AudioFocusRequest f4909g;

    /* JADX INFO: renamed from: h */
    private int f4910h = 0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.f$a */
    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            C0982s.m7374d("RingManager", "init->onAudioFocusChange: focusChange=" + i);
            C0830f.this.f4910h = i;
            if (i == 1) {
                C0956c.m7100h().m7111c(C0995e.m7430C());
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public static C0830f m6249j() {
        if (f4907i == null) {
            synchronized (C0830f.class) {
                if (f4907i == null) {
                    f4907i = new C0830f();
                }
            }
        }
        return f4907i;
    }

    /* JADX INFO: renamed from: o */
    private void m6250o() {
        int iM6091m = C0795b0.m6071i().m6091m("RingAudioVol", 0);
        C0982s.m7374d("RingManager", "setVolume: val=" + iM6091m);
        if (iM6091m > 0) {
            int i = iM6091m & 65535;
            int i2 = (iM6091m >> 16) & 65535;
            C0982s.m7374d("RingManager", "setVolume: type=" + i2 + ",vol=" + i);
            this.f4884e.setStreamVolume(i2, i, 0);
        }
    }

    /* JADX INFO: renamed from: g */
    public void m6251g() {
        if (this.f4910h != 0) {
            C0982s.m7374d("RingManager", "abandon: focus=" + this.f4910h);
            AudioManager audioManager = this.f4884e;
            if (audioManager != null) {
                if (this.f4882c || Build.VERSION.SDK_INT < 26) {
                    this.f4884e.abandonAudioFocus(this.f4908f);
                } else {
                    audioManager.abandonAudioFocusRequest(this.f4909g);
                }
            }
            this.f4910h = 0;
        }
    }

    /* JADX INFO: renamed from: i */
    public AudioAttributes m6252i() {
        return this.f4909g.getAudioAttributes();
    }

    /* JADX INFO: renamed from: k */
    public boolean m6253k() {
        return this.f4910h == 1;
    }

    /* JADX INFO: renamed from: l */
    public void m6254l(Context context) {
        this.f4884e = (AudioManager) context.getSystemService("audio");
        m6250o();
        this.f4882c = C0795b0.m6071i().m6093o("LowerAudioAPI", false);
        int iM6091m = C0795b0.m6071i().m6091m("RingAudioType", 0);
        this.f4881b = (iM6091m >> 16) & 65535;
        int i = iM6091m & 65535;
        this.f4880a = i;
        if (i == 0) {
            if (Build.VERSION.SDK_INT < 26 || this.f4882c) {
                this.f4880a = 2;
            } else {
                this.f4880a = 6;
                this.f4881b = 2;
            }
        }
        this.f4908f = new a();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4909g = new AudioFocusRequest.Builder(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(this.f4880a).setContentType(this.f4881b).build()).setOnAudioFocusChangeListener(this.f4908f).build();
        }
        C0982s.m7374d("RingManager", "init: usage=" + this.f4880a + "," + this.f4881b);
    }

    /* JADX INFO: renamed from: m */
    public int m6255m() {
        C0982s.m7374d("RingManager", "request: usage=" + this.f4880a + "," + this.f4881b);
        m6250o();
        if (m6253k()) {
            return this.f4910h;
        }
        int iRequestAudioFocus = (this.f4882c || Build.VERSION.SDK_INT < 26) ? this.f4884e.requestAudioFocus(this.f4908f, this.f4880a, 2) : this.f4884e.requestAudioFocus(this.f4909g);
        if (iRequestAudioFocus == 1) {
            this.f4910h = 1;
            C0956c.m7100h().m7111c(C0995e.m7430C());
        } else {
            this.f4910h = -1;
        }
        return iRequestAudioFocus;
    }

    /* JADX INFO: renamed from: n */
    public int m6256n(boolean z, AudioAttributes audioAttributes, int i) {
        int iRequestAudioFocus;
        if (m6253k()) {
            return this.f4910h;
        }
        if (z || Build.VERSION.SDK_INT < 26) {
            iRequestAudioFocus = this.f4884e.requestAudioFocus(this.f4908f, i, 2);
        } else {
            if (audioAttributes == null) {
                return -1;
            }
            AudioFocusRequest audioFocusRequestBuild = new AudioFocusRequest.Builder(2).setAudioAttributes(audioAttributes).setOnAudioFocusChangeListener(this.f4908f).build();
            this.f4909g = audioFocusRequestBuild;
            iRequestAudioFocus = this.f4884e.requestAudioFocus(audioFocusRequestBuild);
        }
        if (iRequestAudioFocus == 1) {
            this.f4910h = 1;
            C0956c.m7100h().m7111c(C0995e.m7430C());
        } else {
            this.f4910h = -1;
        }
        return iRequestAudioFocus;
    }
}
