package cn.manstep.phonemirrorBox;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import cn.manstep.phonemirrorBox.u0.d;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class n {
    private static final String[] i = {"com.nwd.action.ACTION_KEY_VALUE", "com.microntek.irkeyUp", "com.microntek.irkeyDown", "android.media.STREAM_MUTE_CHANGED_ACTION", "android.media.VOLUME_CHANGED_ACTION", "com.winca.service.Setting.KEY_ACTION", "android.intent.action.C3_HARDKEY", "IKeyClick.KEY_CLICK", "com.tencent.qqmusiccar.action.MEDIA_BUTTON_INNER_MUSICMEDIA", "com.tencent.qqmusiccar.action.MEDIA_BUTTON_INNER_ONKEY", "cn.kuwo.player.imcs.action.MUSIC_CONTROL", "kuwo.musichd_car.pre", "kuwo.musichd_car.next", "kuwo.musichd_car.playing", "kuwo.play.playing", "kuwo.play.pre", "kuwo.play.next", "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON", "com.eryanet.action.hk.vr", "com.eryanet.music.prev", "com.eryanet.music.next", "com.eryanet.media.playorpause", "com.eryanet.media.play", "com.eryanet.media.pause", "com.eryanet.link.connected", "com.bz.action.phone.pickup", "com.bz.action.phone.hangup", "android.intent.action.MEDIA_PREVIOUS_DOWN", "android.intent.action.MEDIA_NEXT_DOWN", "android.intent.action.VOICE_ASSIST1_DOWN", "android.intent.action.CALL_DOWN", "android.intent.action.ENDCALL_DOWN", "android.intent.action.VOICE_ASSIST_DOWN"};
    private final WeakReference<Context> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f1786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f1787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f1788d;
    private boolean e;
    private boolean f;
    private final BroadcastReceiver g;
    private boolean h;

    class a implements Runnable {
        a(n nVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.l.J0("mediaVol", cn.manstep.phonemirrorBox.f0.c.n().d());
                cn.manstep.phonemirrorBox.BoxInterface.d.l.J0("callVol", cn.manstep.phonemirrorBox.f0.b.j().d());
                cn.manstep.phonemirrorBox.BoxInterface.d.l.J0("ringVol", cn.manstep.phonemirrorBox.f0.f.j().d());
                cn.manstep.phonemirrorBox.BoxInterface.d.l.J0("navVol", cn.manstep.phonemirrorBox.f0.e.j().d());
                cn.manstep.phonemirrorBox.BoxInterface.d.l.J0("speechVol", cn.manstep.phonemirrorBox.f0.g.j().d());
            }
        }
    }

    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int iJ;
            String action = intent.getAction();
            cn.manstep.phonemirrorBox.util.s.c("CarButtonListener,onReceive: action = " + action);
            if (action != null) {
                if (isOrderedBroadcast()) {
                    abortBroadcast();
                }
                if ("com.nwd.action.ACTION_KEY_VALUE".equals(action)) {
                    iJ = intent.getByteExtra("extra_key_value", (byte) 0);
                    intent.getByteExtra("extra_key_type", (byte) 0);
                } else if ("com.microntek.irkeyDown".equals(action)) {
                    n.this.e = true;
                    iJ = intent.getIntExtra("keyCode", 0);
                } else if ("com.microntek.irkeyUp".equals(action)) {
                    if (n.this.e) {
                        n.this.e = false;
                        iJ = -1;
                    } else {
                        iJ = intent.getIntExtra("keyCode", 0);
                    }
                } else {
                    if ("android.media.VOLUME_CHANGED_ACTION".equals(action)) {
                        n.this.l(intent);
                        return;
                    }
                    if ("android.media.STREAM_MUTE_CHANGED_ACTION".equals(action)) {
                        cn.manstep.phonemirrorBox.util.s.d("CarButtonListener", "onReceive: streamType=" + intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", 3) + ",bMuted=" + intent.getBooleanExtra("android.media.EXTRA_STREAM_VOLUME_MUTED", false));
                        c unused = n.this.f1788d;
                        return;
                    }
                    if ("com.winca.service.Setting.KEY_ACTION".equals(action)) {
                        iJ = intent.getIntExtra("com.winca.service.Setting.KEY_ACTION_EXTRA", 0);
                    } else if ("android.intent.action.C3_HARDKEY".equals(action)) {
                        iJ = n.this.i(intent);
                    } else if ("IKeyClick.KEY_CLICK".equals(action)) {
                        iJ = n.this.j(intent);
                    } else {
                        if ("com.eryanet.action.hk.vr".equals(action) || "com.eryanet.link.connected".equals(action)) {
                            if (u.z().d() && cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                                cn.manstep.phonemirrorBox.v0.e.H(5);
                                cn.manstep.phonemirrorBox.v0.e.H(6);
                                return;
                            }
                        } else if ("com.eryanet.music.prev".equals(action)) {
                            if (cn.manstep.phonemirrorBox.f0.c.n().o() || cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                                cn.manstep.phonemirrorBox.v0.e.H(205);
                                return;
                            }
                        } else if ("com.eryanet.music.next".equals(action)) {
                            if (cn.manstep.phonemirrorBox.f0.c.n().o() || cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                                cn.manstep.phonemirrorBox.v0.e.H(204);
                                return;
                            }
                        } else if ("com.eryanet.media.playorpause".equals(action)) {
                            if (cn.manstep.phonemirrorBox.f0.c.n().o() || cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                                cn.manstep.phonemirrorBox.v0.e.H(203);
                                return;
                            }
                        } else if ("com.eryanet.media.play".equals(action)) {
                            if (cn.manstep.phonemirrorBox.f0.c.n().o() || cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                                cn.manstep.phonemirrorBox.v0.e.H(201);
                                return;
                            }
                        } else if ("com.eryanet.media.pause".equals(action)) {
                            if (cn.manstep.phonemirrorBox.f0.c.n().o() || cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                                cn.manstep.phonemirrorBox.v0.e.H(202);
                                return;
                            }
                        } else if ("com.bz.action.phone.pickup".equals(action)) {
                            if (cn.manstep.phonemirrorBox.v0.a.t().v() || cn.manstep.phonemirrorBox.v0.a.t().w()) {
                                cn.manstep.phonemirrorBox.v0.e.H(300);
                                return;
                            }
                        } else if ("com.bz.action.phone.hangup".equals(action)) {
                            if (cn.manstep.phonemirrorBox.v0.a.t().w()) {
                                cn.manstep.phonemirrorBox.v0.e.H(301);
                                return;
                            }
                        } else if ("android.intent.action.MEDIA_PREVIOUS_DOWN".equals(action)) {
                            if (cn.manstep.phonemirrorBox.f0.c.n().o() || cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                                cn.manstep.phonemirrorBox.v0.e.H(205);
                                return;
                            }
                        } else if ("android.intent.action.MEDIA_NEXT_DOWN".equals(action)) {
                            if (cn.manstep.phonemirrorBox.f0.c.n().o() || cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                                cn.manstep.phonemirrorBox.v0.e.H(204);
                                return;
                            }
                        } else if ("android.intent.action.VOICE_ASSIST1_DOWN".equals(action)) {
                            if (cn.manstep.phonemirrorBox.BoxInterface.d.G() && "ecarx-IHU3Q122-IHU3Q122-9(28)".equals(u.z().y())) {
                                cn.manstep.phonemirrorBox.v0.e.H(5);
                                cn.manstep.phonemirrorBox.v0.e.H(6);
                                return;
                            }
                        } else if ("android.intent.action.VOICE_ASSIST_DOWN".equals(action)) {
                            if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
                                cn.manstep.phonemirrorBox.v0.e.H(5);
                                cn.manstep.phonemirrorBox.v0.e.H(6);
                                return;
                            }
                        } else if ("android.intent.action.CALL_DOWN".equals(action)) {
                            if (cn.manstep.phonemirrorBox.v0.a.t().v()) {
                                cn.manstep.phonemirrorBox.v0.e.H(300);
                            }
                            if (!"ecarx-IHU3Q122-IHU3Q122-9(28)".equals(u.z().y()) && cn.manstep.phonemirrorBox.v0.a.t().w()) {
                                cn.manstep.phonemirrorBox.v0.e.H(301);
                            }
                        } else if ("android.intent.action.ENDCALL_DOWN".equals(action) && (cn.manstep.phonemirrorBox.v0.a.t().w() || cn.manstep.phonemirrorBox.v0.a.t().v())) {
                            cn.manstep.phonemirrorBox.v0.e.H(301);
                        }
                        iJ = -1;
                    }
                }
                if (n.this.f1788d != null) {
                    cn.manstep.phonemirrorBox.util.s.c("CarButtonListener,onReceive: value = " + iJ + ", mIsLongPress = " + n.this.f);
                    if (iJ != -1) {
                        n.this.f1788d.w(iJ, n.this.f);
                        n.this.f = false;
                    }
                }
            }
        }
    }

    public interface c {
        void w(int i, boolean z);
    }

    public n(Context context) {
        this.f1787c = new a(this);
        this.f = false;
        this.g = new b();
        this.h = false;
        this.a = new WeakReference<>(context);
        this.f1786b = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int i(Intent intent) {
        int intExtra = intent.getIntExtra("android.intent.extra.c3_hardkey_action", -1);
        int intExtra2 = intent.getIntExtra("android.intent.extra.c3_hardkey_keycode", -1);
        if (intExtra == 1) {
            this.e = false;
            if (intExtra2 != -1) {
                return intExtra2;
            }
        } else if (intExtra == 0) {
            if (this.e) {
                this.f = true;
            } else {
                this.e = true;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int j(Intent intent) {
        return intent.getIntExtra("CLICK_KEY", -1);
    }

    private void k(int i2, int i3) {
        if (i2 == cn.manstep.phonemirrorBox.f0.c.n().b() || i2 == cn.manstep.phonemirrorBox.f0.b.j().b() || i2 == cn.manstep.phonemirrorBox.f0.f.j().b() || i2 == cn.manstep.phonemirrorBox.f0.e.j().b() || i2 == cn.manstep.phonemirrorBox.f0.g.j().b()) {
            cn.manstep.phonemirrorBox.util.j.c().b("VolumeChanged");
            cn.manstep.phonemirrorBox.util.j.c().e("VolumeChanged", 1500L, this.f1787c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Intent intent) {
        int intExtra = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", 0);
        int intExtra2 = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", 0);
        k(intExtra, intExtra2);
        cn.manstep.phonemirrorBox.util.s.d("CarButtonListener", "onVolumeChanged: type=" + intExtra + ",value=" + intExtra2);
    }

    public void m() {
        cn.manstep.phonemirrorBox.util.s.d("CarButtonListener", "register: " + this.h);
        if (this.h) {
            return;
        }
        if (this.a.get() != null) {
            try {
                cn.manstep.phonemirrorBox.u0.c.h().t(this.a.get());
            } catch (Error | Exception e) {
                cn.manstep.phonemirrorBox.util.s.d("CarButtonListener", "register: " + cn.manstep.phonemirrorBox.util.s.g(e));
            }
            IntentFilter intentFilter = new IntentFilter();
            for (String str : i) {
                intentFilter.addAction(str);
            }
            intentFilter.setPriority(1000);
            this.a.get().registerReceiver(this.g, intentFilter);
            this.h = true;
        }
        this.f1786b.b(this.a.get());
    }

    public void n() {
        if (this.h) {
            if (this.a.get() != null) {
                this.a.get().unregisterReceiver(this.g);
                this.h = false;
            }
            this.f1786b.c(this.a.get());
            cn.manstep.phonemirrorBox.u0.c.h().z();
        }
    }

    public n(Context context, c cVar) {
        this(context);
        this.f1788d = cVar;
    }
}
