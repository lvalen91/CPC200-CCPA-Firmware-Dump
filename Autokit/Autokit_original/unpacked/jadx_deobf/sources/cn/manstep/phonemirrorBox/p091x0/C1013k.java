package cn.manstep.phonemirrorBox.p091x0;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Checkable;
import android.widget.RadioGroup;
import android.widget.Toast;
import androidx.appcompat.app.AbstractC0083f;
import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.lifecycle.C0401o;
import androidx.lifecycle.InterfaceC0402p;
import cn.manstep.phonemirrorBox.AutoKitHideSettingsActivity;
import cn.manstep.phonemirrorBox.AutoStartService;
import cn.manstep.phonemirrorBox.BoxInterface.C0730a;
import cn.manstep.phonemirrorBox.BoxInterface.C0731b;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.BoxInterface.C0736g;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0797c0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0930q;
import cn.manstep.phonemirrorBox.C1002x;
import cn.manstep.phonemirrorBox.customview.SelectTextSettingsItem;
import cn.manstep.phonemirrorBox.p070d0.C0811l;
import cn.manstep.phonemirrorBox.p073g0.C0848c;
import cn.manstep.phonemirrorBox.p077k0.C0889h;
import cn.manstep.phonemirrorBox.p077k0.C0890i;
import cn.manstep.phonemirrorBox.p078l0.C0908o;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0967e;
import cn.manstep.phonemirrorBox.util.C0980q;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0984u;
import cn.manstep.phonemirrorBox.util.C0987x;
import cn.manstep.phonemirrorBox.util.JniTools;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1013k extends C1005c {

    /* JADX INFO: renamed from: S */
    public static boolean f6370S = true;

    /* JADX INFO: renamed from: T */
    public static boolean f6371T = true;

    /* JADX INFO: renamed from: A */
    private C0401o<String> f6372A;

    /* JADX INFO: renamed from: B */
    private C0401o<String> f6373B;

    /* JADX INFO: renamed from: C */
    private WeakReference<View> f6374C;

    /* JADX INFO: renamed from: D */
    private C0401o<Integer> f6375D;

    /* JADX INFO: renamed from: E */
    private C0401o<String> f6376E;

    /* JADX INFO: renamed from: F */
    private final BroadcastReceiver f6377F;

    /* JADX INFO: renamed from: G */
    private C0401o<String> f6378G;

    /* JADX INFO: renamed from: H */
    private C0401o<Integer> f6379H;

    /* JADX INFO: renamed from: I */
    private C0401o<String> f6380I;

    /* JADX INFO: renamed from: J */
    private C0401o<Integer> f6381J;

    /* JADX INFO: renamed from: K */
    private AutoStartService.InterfaceC0728g f6382K;

    /* JADX INFO: renamed from: L */
    private ServiceConnection f6383L;

    /* JADX INFO: renamed from: M */
    private WeakReference<AbstractC0366n> f6384M;

    /* JADX INFO: renamed from: N */
    private int f6385N;

    /* JADX INFO: renamed from: O */
    private C0401o<Integer> f6386O;

    /* JADX INFO: renamed from: P */
    private C0401o<Boolean> f6387P;

    /* JADX INFO: renamed from: Q */
    private final C0401o<Integer> f6388Q;

    /* JADX INFO: renamed from: R */
    private C0401o<Drawable> f6389R;

    /* JADX INFO: renamed from: e */
    private final C0401o<Integer> f6390e;

    /* JADX INFO: renamed from: f */
    private final C0401o<Boolean> f6391f;

    /* JADX INFO: renamed from: g */
    private final C0401o<Boolean> f6392g;

    /* JADX INFO: renamed from: h */
    private final C0401o<Boolean> f6393h;

    /* JADX INFO: renamed from: i */
    private final C0401o<Boolean> f6394i;

    /* JADX INFO: renamed from: j */
    private final C0984u f6395j;

    /* JADX INFO: renamed from: k */
    private final C0401o<Boolean> f6396k;

    /* JADX INFO: renamed from: l */
    private C0401o<Boolean> f6397l;

    /* JADX INFO: renamed from: m */
    private C0401o<Integer> f6398m;

    /* JADX INFO: renamed from: n */
    private C0401o<Integer> f6399n;

    /* JADX INFO: renamed from: o */
    private C0401o<Integer> f6400o;

    /* JADX INFO: renamed from: p */
    private C0401o<Boolean> f6401p;

    /* JADX INFO: renamed from: q */
    private C0401o<Boolean> f6402q;

    /* JADX INFO: renamed from: r */
    private C0401o<Boolean> f6403r;

    /* JADX INFO: renamed from: s */
    private C0401o<Integer> f6404s;

    /* JADX INFO: renamed from: t */
    private C0401o<Integer> f6405t;

    /* JADX INFO: renamed from: u */
    private C0401o<Integer> f6406u;

    /* JADX INFO: renamed from: v */
    private C0401o<Integer> f6407v;

    /* JADX INFO: renamed from: w */
    private C0401o<Integer> f6408w;

    /* JADX INFO: renamed from: x */
    private C0401o<Boolean> f6409x;

    /* JADX INFO: renamed from: y */
    private InterfaceC1014l f6410y;

    /* JADX INFO: renamed from: z */
    private C0401o<Boolean> f6411z;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$a$a, reason: collision with other inner class name */
        class C1362a implements C0889h.c {
            C1362a() {
            }

            @Override // cn.manstep.phonemirrorBox.p077k0.C0889h.c
            /* JADX INFO: renamed from: a */
            public boolean mo6605a(String str) {
                if (!JniTools.open(str)) {
                    return false;
                }
                C0908o c0908o = new C0908o();
                AbstractC0375w abstractC0375wM2774l = ((AbstractC0366n) C1013k.this.f6384M.get()).m2774l();
                abstractC0375wM2774l.m2886b(2131296606, c0908o);
                abstractC0375wM2774l.m2891g("DebugFragment");
                abstractC0375wM2774l.mo2527i();
                return true;
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0889h.m6603z2((AbstractC0366n) C1013k.this.f6384M.get(), new C1362a());
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$b */
    class b implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ SelectTextSettingsItem f6414b;

        b(SelectTextSettingsItem selectTextSettingsItem) {
            this.f6414b = selectTextSettingsItem;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            C0848c c0848c = (C0848c) adapterView.getAdapter().getItem(i);
            this.f6414b.setCurIndex(i);
            C1013k.this.m7718G0(c0848c.m6328a());
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$c */
    class c implements C0980q.d {
        c() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0980q.d
        /* JADX INFO: renamed from: a */
        public void mo6148a(boolean z) {
            if (C1013k.this.f6410y != null) {
                C1013k.this.f6410y.mo7775l(z);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$d */
    class d implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ SelectTextSettingsItem f6417b;

        d(SelectTextSettingsItem selectTextSettingsItem) {
            this.f6417b = selectTextSettingsItem;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            C1013k.this.f6381J.mo2965k(Integer.valueOf(C0967e.f6034a[i]));
            this.f6417b.setCurIndex(i);
            C0795b0.m6071i().m6085F("fps", Integer.valueOf(C0967e.f6034a[i]));
            C0925p.f5856C = C0967e.f6034a[i];
            if (C0733d.m5591i()) {
                C0733d.f4428l.m5715c0(C0967e.f6034a[i]);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$e */
    class e implements C0980q.d {
        e() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0980q.d
        /* JADX INFO: renamed from: a */
        public void mo6148a(boolean z) {
            if (C1013k.this.f6410y != null) {
                C1013k.this.f6410y.mo7775l(z);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$f */
    class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.LOCALE_CHANGED")) {
                C1013k.this.m7770z();
                C1013k.this.m7695Y();
                C1013k.this.m7762v();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$g */
    class g implements C0890i.e {
        g() {
        }

        @Override // cn.manstep.phonemirrorBox.p077k0.C0890i.e
        /* JADX INFO: renamed from: a */
        public void mo6618a(String str, String str2) {
            String str3 = str + "~" + str2;
            C0795b0.m6071i().m6085F("nightTime", str3);
            C1013k.this.f6373B.mo2965k(str3);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$h */
    class h implements ServiceConnection {
        h() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C0982s.m7374d("SettingsViewModel", "onServiceConnected: " + iBinder);
            C1013k.this.f6382K = (AutoStartService.InterfaceC0728g) iBinder;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$i */
    static class i implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ k f6423b;

        i(k kVar) {
            this.f6423b = kVar;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            this.f6423b.mo6771a(view);
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$j */
    class j implements InterfaceC0402p<Integer> {
        j(C1013k c1013k) {
        }

        @Override // androidx.lifecycle.InterfaceC0402p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo2340c(Integer num) {
            if (num.intValue() == 0) {
                C0795b0.m6071i().m6095q("DPI");
                if (C0733d.m5591i()) {
                    C0733d.f4428l.m5691O0();
                    return;
                }
                return;
            }
            C0795b0.m6071i().m6085F("DPI", num);
            if (C0733d.m5591i()) {
                C0733d.f4428l.m5692P0(num.intValue());
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$k */
    public interface k {
        /* JADX INFO: renamed from: a */
        void mo6771a(View view);
    }

    public C1013k(Application application) {
        super(application);
        this.f6395j = new C0984u();
        this.f6377F = new f();
        this.f6382K = null;
        this.f6383L = new h();
        new C0401o(0);
        this.f6385N = 0;
        new Handler(Looper.myLooper());
        new C0401o(Integer.valueOf(C0795b0.m6071i().m6091m("linkFullMode", 0)));
        m7738Z();
        int iM6091m = C0795b0.m6071i().m6091m("LanguageID", 0);
        this.f6390e = new C0401o<>(Integer.valueOf(iM6091m));
        boolean zM7502j = C1002x.m7502j(iM6091m);
        this.f6393h = new C0401o<>(Boolean.valueOf(zM7502j));
        this.f6392g = new C0401o<>(Boolean.valueOf(!zM7502j));
        this.f6391f = new C0401o<>(Boolean.valueOf("A15HW".equals(C0732c.m5542e().m5551i())));
        int iM6091m2 = C0795b0.m6071i().m6091m("iPhoneMode", 2);
        C0401o<Integer> c0401o = new C0401o<>();
        this.f6398m = c0401o;
        c0401o.mo2965k(Integer.valueOf(iM6091m2));
        int i2 = (zM7502j && m2977i().getResources().getBoolean(2131034132)) ? 4 : 1;
        new C0401o(Boolean.FALSE);
        this.f6394i = new C0401o<>(Boolean.FALSE);
        new C0401o(Boolean.FALSE);
        int iM6091m3 = C0795b0.m6071i().m6091m("AndroidMode", i2);
        C0401o<Integer> c0401o2 = new C0401o<>();
        this.f6399n = c0401o2;
        c0401o2.mo2965k(Integer.valueOf(iM6091m3));
        if (zM7502j && iM6091m3 == 1) {
            this.f6393h.mo2965k(Boolean.FALSE);
        }
        if (!zM7502j && iM6091m3 == 4) {
            this.f6392g.mo2965k(Boolean.FALSE);
        }
        C0733d.m5593k(iM6091m3);
        int iM5797d = C0736g.m5797d(this.f6398m.m2959e().intValue(), this.f6399n.m2959e().intValue());
        this.f6388Q = new C0401o<>(Integer.valueOf(iM5797d));
        new C0401o(C0736g.m5798e(iM5797d));
        int iM6091m4 = C0795b0.m6071i().m6091m("MicType", 0);
        C0401o<Integer> c0401o3 = new C0401o<>();
        this.f6400o = c0401o3;
        c0401o3.mo2965k(Integer.valueOf(iM6091m4));
        boolean zM6093o = C0795b0.m6071i().m6093o("BgKeyValid", true);
        C0401o<Boolean> c0401o4 = new C0401o<>();
        this.f6401p = c0401o4;
        c0401o4.mo2965k(Boolean.valueOf(zM6093o));
        boolean zM6093o2 = C0795b0.m6071i().m6093o("ShowFloatBall", false);
        C0401o<Boolean> c0401o5 = new C0401o<>();
        this.f6402q = c0401o5;
        c0401o5.mo2965k(Boolean.valueOf(zM6093o2));
        boolean zM6093o3 = C0795b0.m6071i().m6093o("IsLeftDrive", true);
        C0401o<Boolean> c0401o6 = new C0401o<>();
        this.f6403r = c0401o6;
        c0401o6.mo2965k(Boolean.valueOf(zM6093o3));
        this.f6404s = new C0401o<>(Integer.valueOf(C0795b0.m6071i().m6091m("NightMode", 2)));
        this.f6409x = new C0401o<>(Boolean.valueOf(C0982s.f6143a));
        this.f6396k = new C0401o<>(Boolean.valueOf(C0795b0.m6071i().m6093o("InsertPhoneAutoStart", true)));
        new C0401o(Boolean.valueOf(C0795b0.m6071i().m6093o("InsertBoxAutoStart", false)));
        new C0401o(Boolean.valueOf(C0795b0.m6071i().m6093o("BootAutoStart", false)));
        int iM6091m5 = C0795b0.m6071i().m6091m("ImageScale", 0);
        C0401o<Integer> c0401o7 = new C0401o<>();
        this.f6405t = c0401o7;
        c0401o7.mo2965k(Integer.valueOf(iM6091m5));
        int iM6091m6 = C0795b0.m6071i().m6091m("CarPlayLogoType", 1);
        C0401o<Integer> c0401o8 = new C0401o<>();
        this.f6406u = c0401o8;
        c0401o8.mo2965k(Integer.valueOf(iM6091m6));
        C0401o<Boolean> c0401o9 = new C0401o<>();
        this.f6411z = c0401o9;
        if (C0925p.f5875l > C0925p.f5874k) {
            c0401o9.mo2965k(Boolean.TRUE);
        } else {
            c0401o9.mo2965k(Boolean.FALSE);
        }
        new C0401o(Boolean.valueOf(application.getResources().getBoolean(2131034133)));
        new C0401o(Boolean.valueOf(application.getResources().getBoolean(2131034120)));
        new C0401o(Boolean.FALSE);
        new C0401o(Boolean.valueOf((C0795b0.m6071i().m6091m("AndroidMode", -1) == -1 && C0795b0.m6071i().m6091m("AndroidMode", -1) == -1) ? false : true));
    }

    /* JADX INFO: renamed from: D0 */
    public static void m7692D0(View view, k kVar) {
        view.setOnLongClickListener(new i(kVar));
    }

    /* JADX INFO: renamed from: U */
    private String m7693U() {
        String strM5558p = C0732c.m5542e().m5558p();
        TextUtils.isEmpty(strM5558p);
        return strM5558p;
    }

    /* JADX INFO: renamed from: W */
    private int m7694W(List<C0848c> list) {
        List<String> listM6112l = C0797c0.m6112l();
        int i2 = 0;
        for (int i3 = 0; i3 < listM6112l.size(); i3++) {
            if (listM6112l.get(i3).equals(this.f6380I.m2959e())) {
                i2 = i3;
            }
            list.add(new C0848c(i3, listM6112l.get(i3)));
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Y */
    public void m7695Y() {
        if (this.f6376E == null) {
            this.f6376E = new C0401o<>();
        }
        if (C0733d.m5591i()) {
            this.f6376E.mo2965k(m7693U());
            return;
        }
        int iM6091m = C0795b0.m6071i().m6091m("LanguageID", 0);
        if (iM6091m == 0) {
            this.f6376E.mo2965k(C0964c0.m7189m(this.f6272d.get(), 2131689478));
        } else if (Build.VERSION.SDK_INT < 17) {
            this.f6376E.mo2965k(C0964c0.m7189m(this.f6272d.get(), 2131689478));
        } else {
            this.f6376E.mo2965k(C0964c0.m7189m(C1002x.m7494b(this.f6272d.get(), iM6091m), 2131689478));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0063  */
    /* JADX INFO: renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m7696b0() {
        byte b2;
        m7747k0(C0732c.m5542e().m5557o());
        boolean zM7502j = C1002x.m7502j(this.f6390e.m2959e().intValue());
        int iM6091m = C0795b0.m6071i().m6091m("AndroidMode", 255);
        String strM5551i = C0732c.m5542e().m5551i();
        int iHashCode = strM5551i.hashCode();
        if (iHashCode != 1985234) {
            if (iHashCode != 61541876) {
                b2 = (iHashCode == 1503659835 && strM5551i.equals("Auto_Box")) ? (byte) 2 : (byte) -1;
            } else if (strM5551i.equals("A15HW")) {
                b2 = 0;
            }
        } else if (strM5551i.equals("A15W")) {
            b2 = 1;
        }
        if (b2 == 0) {
            this.f6391f.mo2965k(Boolean.TRUE);
            this.f6393h.mo2965k(Boolean.TRUE);
            if (zM7502j) {
                return;
            }
            if (iM6091m == 4) {
                this.f6392g.mo2965k(Boolean.FALSE);
                return;
            } else {
                this.f6394i.mo2965k(Boolean.TRUE);
                return;
            }
        }
        if (b2 != 2) {
            return;
        }
        this.f6392g.mo2965k(Boolean.TRUE);
        if (iM6091m == 1 || iM6091m == 3) {
            return;
        }
        if (zM7502j) {
            m7743g0(3);
        } else {
            m7743g0(1);
        }
    }

    /* JADX INFO: renamed from: c0 */
    private void m7697c0() {
        boolean zM7502j = C1002x.m7502j(this.f6390e.m2959e().intValue());
        this.f6394i.mo2965k(Boolean.FALSE);
        this.f6391f.mo2965k(Boolean.FALSE);
        if (zM7502j) {
            this.f6392g.mo2965k(Boolean.FALSE);
        } else {
            this.f6393h.mo2965k(Boolean.FALSE);
        }
        m7747k0(BuildConfig.FLAVOR);
    }

    /* JADX INFO: renamed from: l0 */
    private void m7701l0(String str) {
        if (this.f6376E == null) {
            this.f6376E = new C0401o<>();
        }
        this.f6376E.mo2965k(str);
    }

    /* JADX INFO: renamed from: q */
    private void m7705q(int i2) {
    }

    /* JADX INFO: renamed from: A */
    public C0401o<String> m7706A() {
        if (this.f6373B == null) {
            String strM6092n = C0795b0.m6071i().m6092n("nightTime", BuildConfig.FLAVOR);
            if (TextUtils.isEmpty(strM6092n)) {
                this.f6373B = new C0401o<>();
                int iM6091m = C0795b0.m6071i().m6091m("LanguageID", 0);
                if (iM6091m == 0 || Build.VERSION.SDK_INT < 17) {
                    this.f6373B.mo2965k(C0964c0.m7189m(this.f6272d.get(), 2131689693));
                } else {
                    this.f6373B.mo2965k(C0964c0.m7189m(C1002x.m7494b(this.f6272d.get(), iM6091m), 2131689693));
                }
            } else {
                this.f6373B = new C0401o<>(strM6092n);
            }
        }
        return this.f6373B;
    }

    /* JADX INFO: renamed from: A0 */
    public void m7707A0(int i2) {
        C0795b0.m6071i().m6085F("NightMode", Integer.valueOf(i2));
        this.f6404s.mo2965k(Integer.valueOf(i2));
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            c0735f.m5690N0(i2);
        }
        if (this.f6272d.get().getResources().getBoolean(2131034125)) {
            if (i2 == 1) {
                AbstractC0083f.m433H(2);
            } else if (i2 == 0) {
                AbstractC0083f.m433H(1);
            } else {
                AbstractC0083f.m433H(-1);
            }
            C0930q.m6906g().m6913h().m6517h0(i2);
        }
    }

    /* JADX INFO: renamed from: B */
    public C0401o<Integer> m7708B() {
        if (this.f6379H == null) {
            this.f6379H = new C0401o<>();
            this.f6379H.mo2965k(Integer.valueOf(C0795b0.m6071i().m6091m("DecodeMethod", !C0925p.f5870g ? 1 : 0)));
        }
        return this.f6379H;
    }

    /* JADX INFO: renamed from: B0 */
    public void m7709B0() {
        new C0890i(this.f6373B.m2959e(), new g()).m2615u2(this.f6384M.get(), "NightTimeDialog");
    }

    /* JADX INFO: renamed from: C */
    public C0401o<Integer> m7710C() {
        if (this.f6375D == null) {
            this.f6375D = new C0401o<>();
            int iM6091m = C0795b0.m6071i().m6091m("DPI", 0);
            this.f6375D.mo2965k(Integer.valueOf(iM6091m));
            this.f6375D.m2961g(new j(this));
            this.f6375D.mo2965k(Integer.valueOf(iM6091m));
        }
        return this.f6375D;
    }

    /* JADX INFO: renamed from: C0 */
    public void m7711C0(int i2) {
        C0795b0.m6071i().m6085F("CarPlayLogoType", Integer.valueOf(i2));
        this.f6406u.mo2965k(Integer.valueOf(i2));
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            c0735f.m5720e();
            if (i2 == 2) {
                C0733d.f4428l.m5711b();
            }
        }
    }

    /* JADX INFO: renamed from: D */
    public C0401o<Integer> m7712D() {
        if (this.f6381J == null) {
            C0401o<Integer> c0401o = new C0401o<>();
            this.f6381J = c0401o;
            c0401o.mo2965k(Integer.valueOf(C0795b0.m6071i().m6091m("fps", 30)));
        }
        return this.f6381J;
    }

    /* JADX INFO: renamed from: E */
    public C0401o<Integer> m7713E() {
        return this.f6398m;
    }

    /* JADX INFO: renamed from: E0 */
    public void m7714E0(int i2) {
        C0736g.m5799f(i2);
        C0795b0.m6071i().m6085F("iPhoneMode", Integer.valueOf(C0736g.m5795b()));
        C0795b0.m6071i().m6085F("AndroidMode", Integer.valueOf(C0736g.m5794a()));
        this.f6398m.mo2965k(Integer.valueOf(C0736g.m5795b()));
        this.f6399n.mo2965k(Integer.valueOf(C0736g.m5794a()));
        this.f6388Q.mo2965k(Integer.valueOf(i2));
    }

    /* JADX INFO: renamed from: F */
    public C0401o<Integer> m7715F() {
        if (this.f6408w == null) {
            this.f6408w = new C0401o<>();
            int i2 = 1;
            if (C0964c0.m7192p()) {
                i2 = 3;
            } else if (C0731b.m5459a()) {
                i2 = 2;
            }
            int iM6091m = C0795b0.m6071i().m6091m("ImageQuality", i2);
            this.f6408w.mo2965k(Integer.valueOf(iM6091m));
            m7705q(iM6091m);
        }
        return this.f6408w;
    }

    /* JADX INFO: renamed from: F0 */
    public void m7716F0(View view) {
        SelectTextSettingsItem selectTextSettingsItem = (SelectTextSettingsItem) view;
        LinkedList linkedList = new LinkedList();
        int iM7694W = m7694W(linkedList);
        C0811l c0811l = new C0811l(view.getContext(), linkedList);
        selectTextSettingsItem.setCurIndex(iM7694W);
        C0980q.c cVar = new C0980q.c(view, c0811l);
        cVar.m7364q((int) selectTextSettingsItem.f4792d);
        cVar.m7365r(C0964c0.m7178b(view.getContext(), 200.0f));
        cVar.m7361n(C0964c0.m7178b(view.getContext(), 150.0f));
        cVar.m7360m(view.getContext().getResources().getDrawable(2131230906));
        cVar.m7363p(new c());
        cVar.m7362o(new b(selectTextSettingsItem));
        selectTextSettingsItem.setListPopupWindowUtil(cVar.m7359l());
        selectTextSettingsItem.getListPopupWindowUtil().m7347d((int) selectTextSettingsItem.f4792d, selectTextSettingsItem.getCurIndex());
    }

    /* JADX INFO: renamed from: G */
    public C0401o<Integer> m7717G() {
        return this.f6405t;
    }

    /* JADX INFO: renamed from: G0 */
    public void m7718G0(String str) {
        this.f6380I.mo2965k(str);
        C0795b0.m6071i().m6085F("vwh", str);
        C0987x c0987xM7397l = C0987x.m7397l(str);
        C0982s.m7374d("SettingsViewModel", "setVideoSize: " + c0987xM7397l.toString());
        if (C0733d.m5591i()) {
            C0733d.f4428l.m5718d0(c0987xM7397l.f6158b, c0987xM7397l.f6159c);
        }
        C0797c0.m6109i().m6122r(c0987xM7397l.f6158b, c0987xM7397l.f6159c);
    }

    /* JADX INFO: renamed from: H */
    public C0401o<Boolean> m7719H() {
        return this.f6396k;
    }

    /* JADX INFO: renamed from: H0 */
    public void m7720H0(boolean z) {
        AutoStartService.InterfaceC0728g interfaceC0728g;
        if (this.f6383L == null || (interfaceC0728g = this.f6382K) == null) {
            return;
        }
        interfaceC0728g.mo5416c(z);
    }

    /* JADX INFO: renamed from: I */
    public C0401o<Boolean> m7721I() {
        return this.f6394i;
    }

    /* JADX INFO: renamed from: I0 */
    public void m7722I0(int i2) {
        if (this.f6407v == null) {
            this.f6407v = new C0401o<>();
        }
        this.f6407v.mo2965k(Integer.valueOf(i2));
        C0795b0.m6071i().m6085F("WirelessConnectMode", Integer.valueOf(i2));
        C0795b0.m6071i().m6085F("UsedWirelessMode", Boolean.TRUE);
        if (i2 == 0) {
            this.f6382K.mo5415b(true);
        } else if (i2 == 1) {
            this.f6382K.mo5415b(false);
        }
    }

    /* JADX INFO: renamed from: J */
    public C0401o<Boolean> m7723J() {
        return this.f6393h;
    }

    /* JADX INFO: renamed from: J0 */
    public void m7724J0(View view) {
        if (C0733d.m5591i()) {
            m7701l0(C0732c.m5542e().m5558p() + "." + C0732c.m5542e().m5555m());
        }
    }

    /* JADX INFO: renamed from: K */
    public C0401o<Boolean> m7725K() {
        return this.f6392g;
    }

    /* JADX INFO: renamed from: K0 */
    public void m7726K0() {
        if (this.f6272d.get() == null || this.f6383L == null || this.f6382K == null) {
            return;
        }
        this.f6272d.get().unbindService(this.f6383L);
        this.f6382K = null;
    }

    /* JADX INFO: renamed from: L */
    public C0401o<Boolean> m7727L() {
        return this.f6391f;
    }

    /* JADX INFO: renamed from: M */
    public C0401o<Boolean> m7728M() {
        return this.f6411z;
    }

    /* JADX INFO: renamed from: N */
    public C0401o<Boolean> m7729N() {
        return this.f6409x;
    }

    /* JADX INFO: renamed from: O */
    public C0401o<Integer> m7730O() {
        return this.f6390e;
    }

    /* JADX INFO: renamed from: P */
    public C0401o<Boolean> m7731P() {
        return this.f6403r;
    }

    /* JADX INFO: renamed from: Q */
    public C0401o<Integer> m7732Q() {
        return this.f6400o;
    }

    /* JADX INFO: renamed from: R */
    public C0401o<Integer> m7733R() {
        return this.f6404s;
    }

    /* JADX INFO: renamed from: S */
    public C0401o<Integer> m7734S() {
        return this.f6406u;
    }

    /* JADX INFO: renamed from: T */
    public C0401o<Integer> m7735T() {
        return this.f6388Q;
    }

    /* JADX INFO: renamed from: V */
    public C0401o<String> m7736V() {
        if (this.f6380I == null) {
            this.f6380I = new C0401o<>();
            this.f6380I.mo2965k(C0795b0.m6071i().m6092n("vwh", C0797c0.m6116t().toString()));
        }
        return this.f6380I;
    }

    /* JADX INFO: renamed from: X */
    public C0401o<Integer> m7737X() {
        if (this.f6407v == null) {
            C0401o<Integer> c0401o = new C0401o<>();
            this.f6407v = c0401o;
            c0401o.mo2965k(Integer.valueOf(C0795b0.m6071i().m6091m("WirelessConnectMode", 0)));
        }
        return this.f6407v;
    }

    /* JADX INFO: renamed from: Z */
    public void m7738Z() {
        if (this.f6383L == null || this.f6382K != null) {
            return;
        }
        Intent intent = new Intent(this.f6272d.get(), (Class<?>) AutoStartService.class);
        this.f6272d.get().bindService(intent, this.f6383L, 1);
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                m2977i().startForegroundService(intent);
            } else {
                m2977i().startService(intent);
            }
        } catch (Exception unused) {
        }
        this.f6272d.get().registerReceiver(this.f6377F, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
    }

    /* JADX INFO: renamed from: a0 */
    public boolean m7739a0() {
        AutoStartService.InterfaceC0728g interfaceC0728g = this.f6382K;
        if (interfaceC0728g != null) {
            return interfaceC0728g.mo5414a();
        }
        return false;
    }

    /* JADX INFO: renamed from: d0 */
    public void m7740d0() {
        if (C0733d.m5579O(1, 21)) {
            return;
        }
        C0982s.m7375e("SettingsViewModel,onClickBackFirstPage: sendMsg failed!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: e0 */
    public void m7741e0(View view) {
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(false);
            Toast.makeText(view.getContext(), 2131689613, 1).show();
        }
    }

    /* JADX INFO: renamed from: f0 */
    public void m7742f0(int i2) {
        this.f6386O.mo2965k(Integer.valueOf(i2));
        C0987x c0987xM6105b = C0797c0.m6105b(i2);
        C0795b0.m6071i().m6085F("vandroidautoh", Integer.valueOf(i2));
        if (C0733d.m5572E()) {
            C0733d.f4428l.m5724g0(c0987xM6105b.f6158b, c0987xM6105b.f6159c);
        }
    }

    @Override // androidx.lifecycle.AbstractC0408v
    /* JADX INFO: renamed from: g */
    protected void mo2825g() {
        super.mo2825g();
        this.f6410y = null;
    }

    /* JADX INFO: renamed from: g0 */
    public void m7743g0(int i2) {
        C0795b0.m6071i().m6085F("AndroidMode", Integer.valueOf(i2));
        C0733d.m5593k(i2);
        this.f6399n.mo2965k(Integer.valueOf(i2));
        InterfaceC1014l interfaceC1014l = this.f6410y;
        if (interfaceC1014l != null) {
            interfaceC1014l.mo7776r(i2);
        }
    }

    /* JADX INFO: renamed from: h0 */
    public void m7744h0(boolean z) {
        AutoStartService.InterfaceC0728g interfaceC0728g = this.f6382K;
        if (interfaceC0728g != null) {
            interfaceC0728g.mo5415b(z);
        }
    }

    /* JADX INFO: renamed from: i0 */
    public void m7745i0(boolean z) {
        C0401o<Boolean> c0401o = this.f6397l;
        if (c0401o == null) {
            this.f6397l = new C0401o<>(Boolean.valueOf(z));
        } else {
            c0401o.mo2965k(Boolean.valueOf(z));
        }
    }

    /* JADX INFO: renamed from: j0 */
    public void m7746j0(int i2) {
        if (i2 == 1) {
            if (!C0733d.m5591i() || TextUtils.isEmpty(C0925p.f5865b) || "BOX:unknown".equals(C0925p.f5865b)) {
                i2 = 0;
            } else if (!C0925p.m6860d(C0925p.f5865b)) {
                i2 = 2;
            }
        }
        if (i2 == 2) {
            m7701l0(C0964c0.m7189m(this.f6272d.get(), 2131689478));
            return;
        }
        if (i2 == 0) {
            m7701l0(C0964c0.m7189m(this.f6272d.get(), 2131689478));
            m7697c0();
        } else if (i2 == 1) {
            m7701l0(m7693U());
            m7696b0();
        }
    }

    /* JADX INFO: renamed from: k0 */
    public void m7747k0(String str) {
        if (this.f6378G == null) {
            this.f6378G = new C0401o<>(str);
        }
        this.f6378G.mo2965k(str);
    }

    /* JADX INFO: renamed from: m0 */
    public void m7748m0(InterfaceC1014l interfaceC1014l) {
        this.f6410y = interfaceC1014l;
    }

    /* JADX INFO: renamed from: n0 */
    public void m7749n0(String str) {
        Drawable drawableM7185i = C0964c0.m7185i(m2977i(), str);
        C0401o<Drawable> c0401o = this.f6389R;
        if (c0401o != null) {
            c0401o.mo2965k(drawableM7185i);
        }
    }

    /* JADX INFO: renamed from: o0 */
    public void m7750o0() {
        m7759t0(2);
    }

    /* JADX INFO: renamed from: p */
    public void m7751p() {
        this.f6409x.mo2965k(Boolean.FALSE);
        C0982s.m7372b();
        WeakReference<View> weakReference = this.f6374C;
        if (weakReference == null || weakReference.get() == null || !(this.f6374C.get() instanceof Checkable)) {
            return;
        }
        ((Checkable) this.f6374C.get()).setChecked(false);
    }

    /* JADX INFO: renamed from: p0 */
    public void m7752p0(int i2) {
        C0795b0.m6071i().m6085F("DecodeMethod", Integer.valueOf(i2));
        this.f6379H.mo2965k(Integer.valueOf(i2));
        if (i2 == 0) {
            C0925p.f5870g = true;
            return;
        }
        C0925p.f5870g = false;
        int iM6091m = C0795b0.m6071i().m6091m("fps", 30);
        C0925p.f5856C = iM6091m;
        if (C0733d.m5591i()) {
            C0733d.f4428l.m5715c0(iM6091m);
        }
    }

    /* JADX INFO: renamed from: q0 */
    public void m7753q0(int i2) {
        this.f6375D.mo2965k(Integer.valueOf(i2));
    }

    /* JADX INFO: renamed from: r */
    public void m7754r() {
        int i2 = this.f6385N;
        if (i2 >= 4) {
            this.f6395j.m7391b(new a(), 1000L);
        } else {
            this.f6385N = i2 + 1;
        }
    }

    /* JADX INFO: renamed from: r0 */
    public void m7755r0(AbstractC0366n abstractC0366n) {
        this.f6384M = new WeakReference<>(abstractC0366n);
    }

    /* JADX INFO: renamed from: s */
    public void m7756s() {
        InterfaceC1014l interfaceC1014l = this.f6410y;
        if (interfaceC1014l != null) {
            interfaceC1014l.mo7777t();
        }
    }

    /* JADX INFO: renamed from: s0 */
    public void m7757s0(View view) {
        SelectTextSettingsItem selectTextSettingsItem = (SelectTextSettingsItem) view;
        if (selectTextSettingsItem.getListPopupWindowUtil() == null) {
            LinkedList linkedList = new LinkedList();
            int i2 = 0;
            for (int i3 = 0; i3 < C0967e.f6034a.length; i3++) {
                if (this.f6381J.m2959e().intValue() == C0967e.f6034a[i3]) {
                    i2 = i3;
                }
                linkedList.add(new C0848c(i3, C0967e.f6034a[i3] + " fps"));
            }
            C0811l c0811l = new C0811l(view.getContext(), linkedList);
            selectTextSettingsItem.setCurIndex(i2);
            C0980q.c cVar = new C0980q.c(view, c0811l);
            cVar.m7364q((int) selectTextSettingsItem.f4792d);
            cVar.m7365r(C0964c0.m7178b(view.getContext(), 200.0f));
            cVar.m7361n(C0964c0.m7178b(view.getContext(), 150.0f));
            cVar.m7360m(view.getContext().getResources().getDrawable(2131230906));
            cVar.m7363p(new e());
            cVar.m7362o(new d(selectTextSettingsItem));
            selectTextSettingsItem.setListPopupWindowUtil(cVar.m7359l());
        }
        selectTextSettingsItem.getListPopupWindowUtil().m7347d((int) selectTextSettingsItem.f4792d, selectTextSettingsItem.getCurIndex());
    }

    /* JADX INFO: renamed from: t */
    public void m7758t() {
        Intent intent = new Intent(this.f6272d.get(), (Class<?>) AutoKitHideSettingsActivity.class);
        intent.addFlags(268435456);
        this.f6272d.get().startActivity(intent);
    }

    /* JADX INFO: renamed from: t0 */
    public void m7759t0(int i2) {
        this.f6398m.mo2965k(Integer.valueOf(i2));
        C0795b0.m6071i().m6085F("iPhoneMode", Integer.valueOf(i2));
        C0733d.m5594m(i2);
        InterfaceC1014l interfaceC1014l = this.f6410y;
        if (interfaceC1014l != null) {
            interfaceC1014l.mo7773b(i2);
        }
    }

    /* JADX INFO: renamed from: u */
    public C0401o<Integer> m7760u() {
        if (this.f6386O == null) {
            this.f6386O = new C0401o<>(Integer.valueOf(C0795b0.m6071i().m6091m("vandroidautoh", 720)));
        }
        return this.f6386O;
    }

    /* JADX INFO: renamed from: u0 */
    public void m7761u0(int i2) {
        this.f6408w.mo2965k(Integer.valueOf(i2));
        C0795b0.m6071i().m6085F("ImageQuality", Integer.valueOf(i2));
        m7705q(i2);
    }

    /* JADX INFO: renamed from: v */
    public C0401o<Boolean> m7762v() {
        if (this.f6387P == null) {
            this.f6387P = new C0401o<>();
        }
        this.f6387P.mo2965k(Boolean.valueOf((C1002x.m7501i() && m2977i().getResources().getBoolean(2131034132)) ? false : true));
        return this.f6387P;
    }

    /* JADX INFO: renamed from: v0 */
    public void m7763v0(int i2) {
        this.f6405t.mo2965k(Integer.valueOf(i2));
        C0795b0.m6071i().m6085F("ImageScale", Integer.valueOf(i2));
    }

    /* JADX INFO: renamed from: w */
    public C0401o<Integer> m7764w() {
        return this.f6399n;
    }

    /* JADX INFO: renamed from: w0 */
    public void m7765w0(boolean z) {
        C0795b0.m6071i().m6085F("InsertPhoneAutoStart", Boolean.valueOf(z));
        Intent intent = new Intent(this.f6272d.get(), (Class<?>) AutoStartService.class);
        if (z) {
            this.f6272d.get().startService(intent);
        } else {
            this.f6272d.get().stopService(intent);
        }
    }

    /* JADX INFO: renamed from: x */
    public C0401o<String> m7766x() {
        if (this.f6378G == null) {
            this.f6378G = new C0401o<>(BuildConfig.FLAVOR);
        }
        return this.f6378G;
    }

    /* JADX INFO: renamed from: x0 */
    public void m7767x0(boolean z, View view) {
        this.f6409x.mo2965k(Boolean.valueOf(z));
        if (z) {
            C0982s.m7381k(this.f6272d.get());
        } else {
            C0982s.m7372b();
        }
        this.f6410y.mo7774h(z);
        if (z && this.f6374C == null) {
            this.f6374C = new WeakReference<>(view);
        }
        C0795b0.m6071i().m6085F("CloseLog", Boolean.valueOf(!z));
    }

    /* JADX INFO: renamed from: y */
    public C0401o<String> m7768y() {
        if (this.f6376E == null) {
            this.f6376E = new C0401o<>();
            m7695Y();
        }
        return this.f6376E;
    }

    /* JADX INFO: renamed from: y0 */
    public void m7769y0(boolean z) {
        C0735f c0735f;
        this.f6403r.mo2965k(Boolean.valueOf(z));
        C0795b0.m6071i().m6085F("IsLeftDrive", Boolean.valueOf(z));
        if (!C0733d.m5591i() || (c0735f = C0733d.f4428l) == null) {
            return;
        }
        c0735f.m5745s0("drivePosition", Integer.valueOf(!z ? 1 : 0));
    }

    /* JADX INFO: renamed from: z */
    public C0401o<String> m7770z() {
        if (this.f6372A == null) {
            this.f6372A = new C0401o<>();
        }
        int iM6091m = C0795b0.m6071i().m6091m("LanguageID", 0);
        if (iM6091m == 0) {
            this.f6372A.mo2965k(C0964c0.m7189m(this.f6272d.get(), 2131689790));
        } else {
            this.f6372A.mo2965k(C1002x.f6235a[iM6091m]);
        }
        return this.f6372A;
    }

    /* JADX INFO: renamed from: z0 */
    public void m7771z0(int i2, View view) {
        if (i2 == 1) {
            View childAt = ((RadioGroup) view.getParent()).getChildAt(0);
            if (!C0733d.m5591i()) {
                C1000a.m7488a(this.f6272d.get(), 2131689615);
                childAt.performClick();
                return;
            } else {
                if (!C0733d.m5590h()) {
                    C1000a.m7488a(this.f6272d.get(), 2131689616);
                    childAt.performClick();
                    return;
                }
                C0925p.f5882s = true;
            }
        }
        C0730a.f4321g = i2 == 0;
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            c0735f.m5676F0(i2);
        }
        C0795b0.m6071i().m6085F("MicType", Integer.valueOf(i2));
        this.f6400o.mo2965k(Integer.valueOf(i2));
    }
}
