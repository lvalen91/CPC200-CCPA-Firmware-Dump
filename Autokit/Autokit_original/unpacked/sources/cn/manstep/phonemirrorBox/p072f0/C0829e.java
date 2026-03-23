package cn.manstep.phonemirrorBox.p072f0;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.p071e0.HandlerC0814b;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import p093d.p097b.p098a.C1199b;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0829e extends AbstractC0825a {

    /* JADX INFO: renamed from: i */
    private static C0829e f4902i;

    /* JADX INFO: renamed from: f */
    private AudioManager.OnAudioFocusChangeListener f4903f;

    /* JADX INFO: renamed from: g */
    private AudioFocusRequest f4904g;

    /* JADX INFO: renamed from: h */
    private int f4905h = 0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.f0.e$a */
    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            C0982s.m7374d("NavManager", "init->onAudioFocusChange: focusChange=" + i);
            C0829e.this.f4905h = i;
            if (i == 1) {
                C0956c.m7100h().m7112d(C0995e.m7430C());
            } else if ((i == -1 || i == -2 || i == -3) && !C0991a.m7412t().m7423w()) {
                C0829e.this.m6246m();
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public static C0829e m6240j() {
        if (f4902i == null) {
            synchronized (C0829e.class) {
                if (f4902i == null) {
                    f4902i = new C0829e();
                }
            }
        }
        return f4902i;
    }

    /* JADX INFO: renamed from: o */
    private void m6241o(boolean z) {
        if (this.f4883d != null) {
            if (z) {
                HandlerC0814b.m6192a().m6194c(1, this.f4883d.m9105C());
            } else {
                HandlerC0814b.m6192a().m6194c(1, Integer.MIN_VALUE);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public void m6242g() {
        if (this.f4905h != 0) {
            C0982s.m7374d("NavManager", "abandon: focus=" + this.f4905h);
            m6241o(false);
            AudioManager audioManager = this.f4884e;
            if (audioManager != null) {
                if (this.f4882c || Build.VERSION.SDK_INT < 26) {
                    this.f4884e.abandonAudioFocus(this.f4903f);
                } else {
                    audioManager.abandonAudioFocusRequest(this.f4904g);
                }
            }
            this.f4905h = 0;
        }
    }

    /* JADX INFO: renamed from: i */
    public AudioAttributes m6243i() {
        return this.f4904g.getAudioAttributes();
    }

    /* JADX INFO: renamed from: k */
    public boolean m6244k() {
        return this.f4905h == 1;
    }

    /* JADX INFO: renamed from: l */
    public void m6245l(Context context) {
        this.f4884e = (AudioManager) context.getSystemService("audio");
        int iM6091m = C0795b0.m6071i().m6091m("NVAudioVol", 0);
        C0982s.m7374d("NavManager", "init: val=" + iM6091m);
        if (iM6091m > 0) {
            int i = iM6091m & 65535;
            int i2 = (iM6091m >> 16) & 65535;
            C0982s.m7374d("NavManager", "init: streamVolume=" + this.f4884e.getStreamVolume(i2));
            this.f4884e.setStreamVolume(i2, i, 0);
            C0982s.m7374d("NavManager", "init: volType=" + i2 + ", vol=" + i2);
        }
        this.f4882c = C0795b0.m6071i().m6093o("LowerAudioAPI", false);
        int iM6091m2 = C0795b0.m6071i().m6091m("NVAudioType", 0);
        this.f4881b = (iM6091m2 >> 16) & 65535;
        int i3 = iM6091m2 & 65535;
        this.f4880a = i3;
        if (i3 == 0) {
            if (Build.VERSION.SDK_INT < 26 || this.f4882c) {
                this.f4880a = 3;
            } else {
                this.f4880a = 12;
                this.f4881b = 2;
            }
        }
        C0982s.m7374d("NavManager", "init: usage=" + this.f4880a);
        this.f4903f = new a();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4904g = new AudioFocusRequest.Builder(3).setAudioAttributes(new AudioAttributes.Builder().setUsage(this.f4880a).setContentType(this.f4881b).build()).setOnAudioFocusChangeListener(this.f4903f).build();
        }
        C0982s.m7374d("NavManager", "init: usage=" + this.f4880a + "," + this.f4881b);
    }

    /* JADX INFO: renamed from: m */
    public int m6246m() {
        int iRequestAudioFocus;
        int iM9105C;
        C0982s.m7374d("NavManager", "request: usage=" + this.f4880a + ",contentType=" + this.f4881b + "，LowerApi=" + this.f4882c + ",focus=" + this.f4905h);
        if (m6244k()) {
            m6241o(true);
            return this.f4905h;
        }
        if (!C0795b0.m6071i().m6093o("IsTurnDownMusic", true)) {
            iRequestAudioFocus = 1;
        } else if (this.f4882c || Build.VERSION.SDK_INT < 26) {
            int i = this.f4880a;
            C0982s.m7374d("NavManager", "request: streamType=" + i);
            try {
                C0982s.m7374d("NavManager", "request: streamVolume=" + this.f4884e.getStreamVolume(i));
            } catch (Exception unused) {
                C1199b c1199b = this.f4883d;
                if (c1199b != null && (iM9105C = c1199b.m9105C()) >= 0) {
                    i = iM9105C;
                }
            }
            C0982s.m7374d("NavManager", "request: type=" + i);
            iRequestAudioFocus = this.f4884e.requestAudioFocus(this.f4903f, i, 3);
        } else {
            iRequestAudioFocus = this.f4884e.requestAudioFocus(this.f4904g);
        }
        if (iRequestAudioFocus == 1) {
            m6241o(true);
            this.f4905h = 1;
            C0956c.m7100h().m7112d(C0995e.m7430C());
        } else {
            this.f4905h = -1;
        }
        return iRequestAudioFocus;
    }

    /* JADX INFO: renamed from: n */
    public int m6247n(boolean z, AudioAttributes audioAttributes, int i) {
        int iM9105C;
        int iRequestAudioFocus;
        if (m6244k()) {
            m6241o(true);
            return this.f4905h;
        }
        if (z || Build.VERSION.SDK_INT < 26) {
            C0982s.m7374d("NavManager", "request: streamType=" + i + ",usage=" + this.f4880a);
            try {
                C0982s.m7374d("NavManager", "request: streamVolume=" + this.f4884e.getStreamVolume(this.f4880a));
            } catch (Exception unused) {
                C1199b c1199b = this.f4883d;
                if (c1199b != null && (iM9105C = c1199b.m9105C()) >= 0) {
                    i = iM9105C;
                }
            }
            C0982s.m7374d("NavManager", "request: type=" + i);
            iRequestAudioFocus = this.f4884e.requestAudioFocus(this.f4903f, i, 3);
        } else {
            if (audioAttributes == null) {
                return -1;
            }
            AudioFocusRequest audioFocusRequestBuild = new AudioFocusRequest.Builder(3).setAudioAttributes(audioAttributes).setOnAudioFocusChangeListener(this.f4903f).build();
            this.f4904g = audioFocusRequestBuild;
            iRequestAudioFocus = this.f4884e.requestAudioFocus(audioFocusRequestBuild);
        }
        if (iRequestAudioFocus == 1) {
            m6241o(true);
            this.f4905h = 1;
            C0956c.m7100h().m7112d(C0995e.m7430C());
        } else {
            this.f4905h = -1;
        }
        return iRequestAudioFocus;
    }
}
