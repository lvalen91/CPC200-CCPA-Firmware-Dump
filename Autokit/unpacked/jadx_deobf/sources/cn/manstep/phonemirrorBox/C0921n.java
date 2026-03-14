package cn.manstep.phonemirrorBox;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p072f0.C0826b;
import cn.manstep.phonemirrorBox.p072f0.C0827c;
import cn.manstep.phonemirrorBox.p072f0.C0829e;
import cn.manstep.phonemirrorBox.p072f0.C0830f;
import cn.manstep.phonemirrorBox.p072f0.C0831g;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p088u0.C0957d;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0973j;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0921n {

    /* JADX INFO: renamed from: i */
    private static final String[] f5789i = {"com.nwd.action.ACTION_KEY_VALUE", "com.microntek.irkeyUp", "com.microntek.irkeyDown", "android.media.STREAM_MUTE_CHANGED_ACTION", "android.media.VOLUME_CHANGED_ACTION", "com.winca.service.Setting.KEY_ACTION", "android.intent.action.C3_HARDKEY", "IKeyClick.KEY_CLICK", "com.tencent.qqmusiccar.action.MEDIA_BUTTON_INNER_MUSICMEDIA", "com.tencent.qqmusiccar.action.MEDIA_BUTTON_INNER_ONKEY", "cn.kuwo.player.imcs.action.MUSIC_CONTROL", "kuwo.musichd_car.pre", "kuwo.musichd_car.next", "kuwo.musichd_car.playing", "kuwo.play.playing", "kuwo.play.pre", "kuwo.play.next", "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON", "com.eryanet.action.hk.vr", "com.eryanet.music.prev", "com.eryanet.music.next", "com.eryanet.media.playorpause", "com.eryanet.media.play", "com.eryanet.media.pause", "com.eryanet.link.connected", "com.bz.action.phone.pickup", "com.bz.action.phone.hangup", "android.intent.action.MEDIA_PREVIOUS_DOWN", "android.intent.action.MEDIA_NEXT_DOWN", "android.intent.action.VOICE_ASSIST1_DOWN", "android.intent.action.CALL_DOWN", "android.intent.action.ENDCALL_DOWN", "android.intent.action.VOICE_ASSIST_DOWN"};

    /* JADX INFO: renamed from: a */
    private final WeakReference<Context> f5790a;

    /* JADX INFO: renamed from: b */
    private final C0957d f5791b;

    /* JADX INFO: renamed from: c */
    private final Runnable f5792c;

    /* JADX INFO: renamed from: d */
    private c f5793d;

    /* JADX INFO: renamed from: e */
    private boolean f5794e;

    /* JADX INFO: renamed from: f */
    private boolean f5795f;

    /* JADX INFO: renamed from: g */
    private final BroadcastReceiver f5796g;

    /* JADX INFO: renamed from: h */
    private boolean f5797h;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n$a */
    class a implements Runnable {
        a(C0921n c0921n) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0733d.m5591i()) {
                C0733d.f4428l.m5684J0("mediaVol", C0827c.m6227n().m6210d());
                C0733d.f4428l.m5684J0("callVol", C0826b.m6214j().m6210d());
                C0733d.f4428l.m5684J0("ringVol", C0830f.m6249j().m6210d());
                C0733d.f4428l.m5684J0("navVol", C0829e.m6240j().m6210d());
                C0733d.f4428l.m5684J0("speechVol", C0831g.m6258j().m6210d());
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n$b */
    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int iM6781j;
            String action = intent.getAction();
            C0982s.m7373c("CarButtonListener,onReceive: action = " + action);
            if (action != null) {
                if (isOrderedBroadcast()) {
                    abortBroadcast();
                }
                if ("com.nwd.action.ACTION_KEY_VALUE".equals(action)) {
                    iM6781j = intent.getByteExtra("extra_key_value", (byte) 0);
                    intent.getByteExtra("extra_key_type", (byte) 0);
                } else if ("com.microntek.irkeyDown".equals(action)) {
                    C0921n.this.f5794e = true;
                    iM6781j = intent.getIntExtra("keyCode", 0);
                } else if ("com.microntek.irkeyUp".equals(action)) {
                    if (C0921n.this.f5794e) {
                        C0921n.this.f5794e = false;
                        iM6781j = -1;
                    } else {
                        iM6781j = intent.getIntExtra("keyCode", 0);
                    }
                } else {
                    if ("android.media.VOLUME_CHANGED_ACTION".equals(action)) {
                        C0921n.this.m6783l(intent);
                        return;
                    }
                    if ("android.media.STREAM_MUTE_CHANGED_ACTION".equals(action)) {
                        C0982s.m7374d("CarButtonListener", "onReceive: streamType=" + intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", 3) + ",bMuted=" + intent.getBooleanExtra("android.media.EXTRA_STREAM_VOLUME_MUTED", false));
                        c unused = C0921n.this.f5793d;
                        return;
                    }
                    if ("com.winca.service.Setting.KEY_ACTION".equals(action)) {
                        iM6781j = intent.getIntExtra("com.winca.service.Setting.KEY_ACTION_EXTRA", 0);
                    } else if ("android.intent.action.C3_HARDKEY".equals(action)) {
                        iM6781j = C0921n.this.m6780i(intent);
                    } else if ("IKeyClick.KEY_CLICK".equals(action)) {
                        iM6781j = C0921n.this.m6781j(intent);
                    } else {
                        if ("com.eryanet.action.hk.vr".equals(action) || "com.eryanet.link.connected".equals(action)) {
                            if (C0953u.m7001z().m7033d() && C0733d.m5574G()) {
                                C0995e.m7435H(5);
                                C0995e.m7435H(6);
                                return;
                            }
                        } else if ("com.eryanet.music.prev".equals(action)) {
                            if (C0827c.m6227n().m6231o() || C0733d.m5574G()) {
                                C0995e.m7435H(205);
                                return;
                            }
                        } else if ("com.eryanet.music.next".equals(action)) {
                            if (C0827c.m6227n().m6231o() || C0733d.m5574G()) {
                                C0995e.m7435H(204);
                                return;
                            }
                        } else if ("com.eryanet.media.playorpause".equals(action)) {
                            if (C0827c.m6227n().m6231o() || C0733d.m5574G()) {
                                C0995e.m7435H(203);
                                return;
                            }
                        } else if ("com.eryanet.media.play".equals(action)) {
                            if (C0827c.m6227n().m6231o() || C0733d.m5574G()) {
                                C0995e.m7435H(201);
                                return;
                            }
                        } else if ("com.eryanet.media.pause".equals(action)) {
                            if (C0827c.m6227n().m6231o() || C0733d.m5574G()) {
                                C0995e.m7435H(202);
                                return;
                            }
                        } else if ("com.bz.action.phone.pickup".equals(action)) {
                            if (C0991a.m7412t().m7422v() || C0991a.m7412t().m7423w()) {
                                C0995e.m7435H(300);
                                return;
                            }
                        } else if ("com.bz.action.phone.hangup".equals(action)) {
                            if (C0991a.m7412t().m7423w()) {
                                C0995e.m7435H(301);
                                return;
                            }
                        } else if ("android.intent.action.MEDIA_PREVIOUS_DOWN".equals(action)) {
                            if (C0827c.m6227n().m6231o() || C0733d.m5574G()) {
                                C0995e.m7435H(205);
                                return;
                            }
                        } else if ("android.intent.action.MEDIA_NEXT_DOWN".equals(action)) {
                            if (C0827c.m6227n().m6231o() || C0733d.m5574G()) {
                                C0995e.m7435H(204);
                                return;
                            }
                        } else if ("android.intent.action.VOICE_ASSIST1_DOWN".equals(action)) {
                            if (C0733d.m5574G() && "ecarx-IHU3Q122-IHU3Q122-9(28)".equals(C0953u.m7001z().m7064y())) {
                                C0995e.m7435H(5);
                                C0995e.m7435H(6);
                                return;
                            }
                        } else if ("android.intent.action.VOICE_ASSIST_DOWN".equals(action)) {
                            if (C0733d.m5574G()) {
                                C0995e.m7435H(5);
                                C0995e.m7435H(6);
                                return;
                            }
                        } else if ("android.intent.action.CALL_DOWN".equals(action)) {
                            if (C0991a.m7412t().m7422v()) {
                                C0995e.m7435H(300);
                            }
                            if (!"ecarx-IHU3Q122-IHU3Q122-9(28)".equals(C0953u.m7001z().m7064y()) && C0991a.m7412t().m7423w()) {
                                C0995e.m7435H(301);
                            }
                        } else if ("android.intent.action.ENDCALL_DOWN".equals(action) && (C0991a.m7412t().m7423w() || C0991a.m7412t().m7422v())) {
                            C0995e.m7435H(301);
                        }
                        iM6781j = -1;
                    }
                }
                if (C0921n.this.f5793d != null) {
                    C0982s.m7373c("CarButtonListener,onReceive: value = " + iM6781j + ", mIsLongPress = " + C0921n.this.f5795f);
                    if (iM6781j != -1) {
                        C0921n.this.f5793d.mo5871w(iM6781j, C0921n.this.f5795f);
                        C0921n.this.f5795f = false;
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n$c */
    public interface c {
        /* JADX INFO: renamed from: w */
        void mo5871w(int i, boolean z);
    }

    public C0921n(Context context) {
        this.f5792c = new a(this);
        this.f5795f = false;
        this.f5796g = new b();
        this.f5797h = false;
        this.f5790a = new WeakReference<>(context);
        this.f5791b = new C0957d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i */
    public int m6780i(Intent intent) {
        int intExtra = intent.getIntExtra("android.intent.extra.c3_hardkey_action", -1);
        int intExtra2 = intent.getIntExtra("android.intent.extra.c3_hardkey_keycode", -1);
        if (intExtra == 1) {
            this.f5794e = false;
            if (intExtra2 != -1) {
                return intExtra2;
            }
        } else if (intExtra == 0) {
            if (this.f5794e) {
                this.f5795f = true;
            } else {
                this.f5794e = true;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j */
    public int m6781j(Intent intent) {
        return intent.getIntExtra("CLICK_KEY", -1);
    }

    /* JADX INFO: renamed from: k */
    private void m6782k(int i, int i2) {
        if (i == C0827c.m6227n().m6208b() || i == C0826b.m6214j().m6208b() || i == C0830f.m6249j().m6208b() || i == C0829e.m6240j().m6208b() || i == C0831g.m6258j().m6208b()) {
            C0973j.m7257c().m7259b("VolumeChanged");
            C0973j.m7257c().m7260e("VolumeChanged", 1500L, this.f5792c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l */
    public void m6783l(Intent intent) {
        int intExtra = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", 0);
        int intExtra2 = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", 0);
        m6782k(intExtra, intExtra2);
        C0982s.m7374d("CarButtonListener", "onVolumeChanged: type=" + intExtra + ",value=" + intExtra2);
    }

    /* JADX INFO: renamed from: m */
    public void m6784m() {
        C0982s.m7374d("CarButtonListener", "register: " + this.f5797h);
        if (this.f5797h) {
            return;
        }
        if (this.f5790a.get() != null) {
            try {
                C0956c.m7100h().m7126t(this.f5790a.get());
            } catch (Error | Exception e) {
                C0982s.m7374d("CarButtonListener", "register: " + C0982s.m7377g(e));
            }
            IntentFilter intentFilter = new IntentFilter();
            for (String str : f5789i) {
                intentFilter.addAction(str);
            }
            intentFilter.setPriority(1000);
            this.f5790a.get().registerReceiver(this.f5796g, intentFilter);
            this.f5797h = true;
        }
        this.f5791b.m7134b(this.f5790a.get());
    }

    /* JADX INFO: renamed from: n */
    public void m6785n() {
        if (this.f5797h) {
            if (this.f5790a.get() != null) {
                this.f5790a.get().unregisterReceiver(this.f5796g);
                this.f5797h = false;
            }
            this.f5791b.m7135c(this.f5790a.get());
            C0956c.m7100h().m7132z();
        }
    }

    public C0921n(Context context, c cVar) {
        this(context);
        this.f5793d = cVar;
    }
}
