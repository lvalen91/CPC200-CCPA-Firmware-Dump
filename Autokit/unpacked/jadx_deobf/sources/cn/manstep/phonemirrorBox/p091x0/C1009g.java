package cn.manstep.phonemirrorBox.p091x0;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d;
import androidx.lifecycle.C0384a;
import androidx.lifecycle.C0401o;
import androidx.lifecycle.InterfaceC0402p;
import cn.manstep.phonemirrorBox.AdjustSizeActivity;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.DialogC0893l;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.p077k0.C0883b;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0974k;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0984u;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1009g extends C0384a implements DialogC0893l.c {

    /* JADX INFO: renamed from: A */
    private final C0401o<Integer> f6313A;

    /* JADX INFO: renamed from: B */
    private final C0401o<Integer> f6314B;

    /* JADX INFO: renamed from: d */
    public final C0401o<Boolean> f6315d;

    /* JADX INFO: renamed from: e */
    private final C0401o<Boolean> f6316e;

    /* JADX INFO: renamed from: f */
    private final WeakReference<Application> f6317f;

    /* JADX INFO: renamed from: g */
    private final C0401o<String> f6318g;

    /* JADX INFO: renamed from: h */
    private final C0984u f6319h;

    /* JADX INFO: renamed from: i */
    private final C0401o<Integer> f6320i;

    /* JADX INFO: renamed from: j */
    private final C0974k f6321j;

    /* JADX INFO: renamed from: k */
    private final C0401o<Integer> f6322k;

    /* JADX INFO: renamed from: l */
    private final C0401o<Boolean> f6323l;

    /* JADX INFO: renamed from: m */
    private final C0401o<Boolean> f6324m;

    /* JADX INFO: renamed from: n */
    private final C0401o<Boolean> f6325n;

    /* JADX INFO: renamed from: o */
    private final C0401o<Boolean> f6326o;

    /* JADX INFO: renamed from: p */
    private final C0401o<Boolean> f6327p;

    /* JADX INFO: renamed from: q */
    private final C0401o<Boolean> f6328q;

    /* JADX INFO: renamed from: r */
    private final C0401o<Boolean> f6329r;

    /* JADX INFO: renamed from: s */
    public C0401o<String> f6330s;

    /* JADX INFO: renamed from: t */
    private C0401o<String> f6331t;

    /* JADX INFO: renamed from: u */
    private C0401o<Integer> f6332u;

    /* JADX INFO: renamed from: v */
    private C0401o<Integer> f6333v;

    /* JADX INFO: renamed from: w */
    private DialogC0893l f6334w;

    /* JADX INFO: renamed from: x */
    private WeakReference<AbstractC0366n> f6335x;

    /* JADX INFO: renamed from: y */
    private C0401o<Boolean> f6336y;

    /* JADX INFO: renamed from: z */
    private WeakReference<Activity> f6337z;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.g$a */
    class a implements View.OnClickListener {
        a(C1009g c1009g) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.g$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1009g.this.f6316e.mo2965k(Boolean.FALSE);
            C1009g.this.f6323l.mo2965k(Boolean.FALSE);
            C1009g.this.f6324m.mo2965k(Boolean.FALSE);
            C1009g.this.f6325n.mo2965k(Boolean.FALSE);
            C1009g.this.f6326o.mo2965k(Boolean.FALSE);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.g$c */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(C1009g.this.m2977i(), (Class<?>) AdjustSizeActivity.class);
            intent.addFlags(268435456);
            C1009g.this.m2977i().startActivity(intent);
            C1009g.this.f6320i.mo2965k(0);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.g$d */
    class d implements InterfaceC0402p<Integer> {
        d() {
        }

        @Override // androidx.lifecycle.InterfaceC0402p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo2340c(Integer num) {
            C1009g.this.f6314B.mo2965k(num);
            C1009g.this.m7626K(num.intValue());
        }
    }

    public C1009g(Application application) {
        super(application);
        this.f6319h = new C0984u();
        this.f6313A = new C0401o<>(0);
        this.f6314B = new C0401o<>(0);
        new C0401o(Boolean.TRUE);
        this.f6317f = new WeakReference<>(application);
        this.f6315d = new C0401o<>(Boolean.valueOf(C0733d.m5591i()));
        this.f6316e = new C0401o<>(Boolean.FALSE);
        this.f6318g = new C0401o<>(BuildConfig.FLAVOR);
        this.f6320i = new C0401o<>(0);
        this.f6322k = new C0401o<>(0);
        this.f6321j = new C0974k(new Handler(Looper.myLooper()));
        this.f6324m = new C0401o<>(Boolean.FALSE);
        this.f6323l = new C0401o<>(Boolean.FALSE);
        this.f6325n = new C0401o<>(Boolean.FALSE);
        this.f6326o = new C0401o<>(Boolean.FALSE);
        this.f6328q = new C0401o<>(Boolean.FALSE);
        this.f6327p = new C0401o<>(Boolean.FALSE);
        this.f6329r = new C0401o<>(Boolean.FALSE);
        m7626K(this.f6314B.m2959e().intValue());
    }

    /* JADX INFO: renamed from: A */
    public void m7616A(int i) {
        C0401o<Integer> c0401o = this.f6332u;
        if (c0401o != null) {
            if (i == 1) {
                c0401o.mo2965k(2131230841);
            } else {
                if (i != 2) {
                    return;
                }
                this.f6333v.mo2965k(2131231031);
            }
        }
    }

    /* JADX INFO: renamed from: B */
    public void m7617B(boolean z) {
        DialogInterfaceOnCancelListenerC0354d dialogInterfaceOnCancelListenerC0354d;
        if (this.f6335x.get() != null && (dialogInterfaceOnCancelListenerC0354d = (DialogInterfaceOnCancelListenerC0354d) this.f6335x.get().m2766h0("AlertDialogX")) != null) {
            dialogInterfaceOnCancelListenerC0354d.mo2606j2();
        }
        if (!z) {
            this.f6321j.m7262b("NoPhoneConnecting", 1500L, new b());
            return;
        }
        this.f6321j.m7261a("NoPhoneConnecting");
        this.f6316e.mo2965k(Boolean.TRUE);
        String strM5548f = C0732c.m5542e().m5548f();
        if ("CarPlay".equals(strM5548f)) {
            this.f6323l.mo2965k(Boolean.TRUE);
            return;
        }
        if ("AndroidAuto".equals(strM5548f)) {
            this.f6324m.mo2965k(Boolean.TRUE);
            return;
        }
        if ("HiCar".equals(strM5548f)) {
            this.f6325n.mo2965k(Boolean.TRUE);
        } else if ("ICCOA".equals(strM5548f) || "Carlink".equals(strM5548f)) {
            this.f6326o.mo2965k(Boolean.TRUE);
        }
    }

    /* JADX INFO: renamed from: C */
    public void m7618C() {
        C0735f c0735f;
        if (C0733d.m5591i()) {
            if (!C0735f.f4459P) {
                Toast toastMakeText = Toast.makeText(this.f6317f.get(), 2131689613, 0);
                toastMakeText.setGravity(17, 0, 0);
                toastMakeText.show();
            } else {
                if (!C0735f.f4460Q || (c0735f = C0733d.f4428l) == null) {
                    return;
                }
                c0735f.m5734m0();
            }
        }
    }

    /* JADX INFO: renamed from: D */
    public void m7619D(Activity activity) {
        this.f6337z = new WeakReference<>(activity);
    }

    /* JADX INFO: renamed from: E */
    public void m7620E(boolean z) {
        if (this.f6336y == null) {
            this.f6336y = new C0401o<>();
        }
        if (z) {
            this.f6336y.mo2965k(Boolean.TRUE);
            String strM5548f = C0732c.m5542e().m5548f();
            if ("CarPlay".equals(strM5548f)) {
                this.f6327p.mo2965k(Boolean.TRUE);
            } else if ("AndroidAuto".equals(strM5548f)) {
                this.f6328q.mo2965k(Boolean.TRUE);
            } else if ("HiCar".equals(strM5548f)) {
                this.f6329r.mo2965k(Boolean.TRUE);
            }
        } else {
            this.f6336y.mo2965k(Boolean.FALSE);
            this.f6327p.mo2965k(Boolean.FALSE);
            this.f6328q.mo2965k(Boolean.FALSE);
            this.f6329r.mo2965k(Boolean.FALSE);
        }
        C0401o<Integer> c0401o = this.f6332u;
        if (c0401o == null) {
            return;
        }
        if (!z) {
            c0401o.mo2965k(2131230840);
            return;
        }
        DialogC0893l dialogC0893l = this.f6334w;
        if (dialogC0893l != null && dialogC0893l.isShowing()) {
            this.f6334w.hide();
        }
        this.f6332u.mo2965k(2131230839);
    }

    /* JADX INFO: renamed from: F */
    public void m7621F(String str) {
        if (this.f6331t == null) {
            this.f6331t = new C0401o<>();
        }
        this.f6331t.mo2965k(str);
        m7624I(str);
    }

    /* JADX INFO: renamed from: G */
    public void m7622G(int i) {
        int iM7178b = C0964c0.m7178b(m2977i(), 300.0f) / 100;
        if (i > 0) {
            m7623H(i);
            this.f6318g.mo2965k(BuildConfig.FLAVOR + i + "%");
        }
    }

    /* JADX INFO: renamed from: H */
    public void m7623H(int i) {
        this.f6322k.mo2965k(Integer.valueOf(i));
    }

    /* JADX INFO: renamed from: I */
    public void m7624I(String str) {
        if (this.f6330s == null) {
            this.f6330s = new C0401o<>();
        }
        if ("TOUR".equals(m2977i().getResources().getString(2131689495))) {
            this.f6330s.mo2965k(TextUtils.isEmpty(str) ? "Instruction: Switch on your Phone's Wi-Fi and connect your phone's \nbluetooth with the device (AutoKit-*****)\nAttention: Make sure only one phone is connected with the device.\nIf the connection is failed, please switch off/on your phone's Wi-Fi, \nreconnect the bluetooth or unplug and plug in the box again." : "Instruction: Switch on your Phone's Wi-Fi and connect your phone's \nbluetooth with the device (AutoKit-*****)\nAttention: Make sure only one phone is connected with the device.\nIf the connection is failed, please switch off/on your phone's Wi-Fi, \nreconnect the bluetooth or unplug and plug in the box again.".replace("AutoKit-*****", str));
        }
    }

    /* JADX INFO: renamed from: J */
    public void m7625J(AbstractC0366n abstractC0366n) {
        this.f6335x = new WeakReference<>(abstractC0366n);
    }

    /* JADX INFO: renamed from: K */
    public void m7626K(int i) {
        C0982s.m7374d("FirstPageViewModel", "setLinkConnectMode: " + i);
        if (i == 3 || i == 4) {
            this.f6313A.mo2965k(1);
            return;
        }
        if (i == 6 || i == 7) {
            this.f6313A.mo2965k(3);
        } else if (C0733d.m5603x() && C0733d.m5601v()) {
            this.f6313A.mo2965k(1);
        } else {
            this.f6313A.mo2965k(3);
        }
    }

    /* JADX INFO: renamed from: L */
    public void m7627L(C1013k c1013k) {
        if (this.f6314B.m2959e().intValue() != 0) {
            c1013k.m7714E0(this.f6314B.m2959e().intValue());
        }
        c1013k.m7735T().m2961g(new d());
    }

    /* JADX INFO: renamed from: M */
    public void m7628M(boolean z) {
        C0401o<Integer> c0401o = this.f6333v;
        if (c0401o == null) {
            return;
        }
        if (z) {
            c0401o.mo2965k(2131231029);
        } else {
            c0401o.mo2965k(2131231030);
        }
    }

    /* JADX INFO: renamed from: N */
    public void m7629N(View view) {
        if (C0733d.m5591i()) {
            C0883b c0883bM6538c = C0883b.m6538c();
            c0883bM6538c.m6541e(view.getContext());
            c0883bM6538c.m6545j(C0733d.f4428l.m5687L(), C0925p.f5877n, C0925p.f5878o);
        }
    }

    /* JADX INFO: renamed from: O */
    public void m7630O(View view) {
        if (C0735f.f4459P && C0733d.m5591i()) {
            DialogC0893l dialogC0893l = new DialogC0893l(view.getContext());
            this.f6334w = dialogC0893l;
            dialogC0893l.m6639g(this);
            this.f6334w.show();
        }
    }

    /* JADX INFO: renamed from: P */
    public void m7631P(View view) {
    }

    /* JADX INFO: renamed from: Q */
    public void m7632Q(boolean z) {
        DialogC0893l dialogC0893l = this.f6334w;
        if (dialogC0893l == null) {
            return;
        }
        if (z) {
            dialogC0893l.m6640h(C0733d.f4428l.m5673E());
        } else {
            dialogC0893l.m6641i();
        }
    }

    @Override // cn.manstep.phonemirrorBox.DialogC0893l.c
    /* JADX INFO: renamed from: a */
    public void mo6642a(String str) {
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            c0735f.m5738o0(str.getBytes(), str.getBytes().length);
        }
    }

    @Override // cn.manstep.phonemirrorBox.DialogC0893l.c
    /* JADX INFO: renamed from: b */
    public void mo6643b(String str) {
        if (C0733d.f4428l != null) {
            C0982s.m7373c("FirstPageViewModel,autoConnByBtAddress: " + str);
            C0733d.f4428l.m5732l0(str.getBytes());
        }
    }

    @Override // cn.manstep.phonemirrorBox.DialogC0893l.c
    /* JADX INFO: renamed from: c */
    public void mo6644c() {
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            c0735f.m5668A();
        }
    }

    /* JADX INFO: renamed from: q */
    public void m7633q(boolean z) {
        this.f6318g.mo2965k(BuildConfig.FLAVOR);
        if (C0735f.f4459P) {
            if (z && C0733d.f4428l.m5704W()) {
                z = false;
            }
            C0982s.m7374d("FirstPageViewModel", "boxConnectChanged: boxConnected=" + z);
            this.f6315d.mo2965k(Boolean.valueOf(z));
            this.f6316e.mo2965k(Boolean.FALSE);
        }
    }

    /* JADX INFO: renamed from: r */
    public void m7634r(View view) {
        if (C0733d.m5591i()) {
            if (C0733d.f4428l.m5704W()) {
                C0882a.m6520B2(this.f6335x.get(), "产品信息", C0732c.m5542e().m5544a(), new a(this), null);
            } else {
                m7631P(view);
            }
        }
    }

    /* JADX INFO: renamed from: s */
    public boolean m7635s(View view) {
        if (this.f6320i.m2959e() != null) {
            if (this.f6320i.m2959e().intValue() >= 3) {
                this.f6319h.m7391b(new c(), 1000L);
            } else {
                C0401o<Integer> c0401o = this.f6320i;
                c0401o.mo2965k(Integer.valueOf(c0401o.m2959e().intValue() + 1));
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: t */
    public void m7636t() {
        MainActivity mainActivity = (MainActivity) this.f6337z.get();
        if (mainActivity != null) {
            mainActivity.m5938U0();
        }
    }

    /* JADX INFO: renamed from: u */
    public C0401o<Integer> m7637u() {
        if (this.f6332u == null) {
            C0401o<Integer> c0401o = new C0401o<>();
            this.f6332u = c0401o;
            c0401o.mo2965k(2131230840);
        }
        return this.f6332u;
    }

    /* JADX INFO: renamed from: v */
    public C0401o<String> m7638v() {
        if (this.f6331t == null) {
            C0401o<String> c0401o = new C0401o<>();
            this.f6331t = c0401o;
            c0401o.mo2965k(BuildConfig.FLAVOR);
            if (C0733d.f4428l != null) {
                this.f6331t.mo2965k(C0733d.m5597r());
            }
        }
        return this.f6331t;
    }

    /* JADX INFO: renamed from: w */
    public C0401o<String> m7639w() {
        return this.f6318g;
    }

    /* JADX INFO: renamed from: x */
    public C0401o<String> m7640x() {
        if (this.f6330s == null) {
            this.f6330s = new C0401o<>();
            if ("TOUR".equals(m2977i().getResources().getString(2131689495))) {
                this.f6330s.mo2965k("Instruction: Switch on your Phone's Wi-Fi and connect your phone's \nbluetooth with the device (AutoKit-*****)\nAttention: Make sure only one phone is connected with the device.\nIf the connection is failed, please switch off/on your phone's Wi-Fi, \nreconnect the bluetooth or unplug and plug in the box again.");
            }
        }
        return this.f6330s;
    }

    /* JADX INFO: renamed from: y */
    public C0401o<Integer> m7641y() {
        if (this.f6333v == null) {
            C0401o<Integer> c0401o = new C0401o<>();
            this.f6333v = c0401o;
            c0401o.mo2965k(2131231030);
        }
        return this.f6333v;
    }

    /* JADX INFO: renamed from: z */
    public void m7642z() {
        m7621F(BuildConfig.FLAVOR);
        m7628M(false);
        m7620E(false);
        DialogC0893l dialogC0893l = this.f6334w;
        if (dialogC0893l != null && dialogC0893l.isShowing()) {
            this.f6334w.hide();
        }
        C0982s.m7376f("FirstPageViewModel", "onBoxPlugOut: boxConnected=false");
        this.f6315d.mo2965k(Boolean.FALSE);
    }
}
