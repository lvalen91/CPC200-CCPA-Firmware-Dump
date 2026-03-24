package cn.manstep.phonemirrorBox.x0;

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
import androidx.fragment.app.n;
import androidx.fragment.app.w;
import androidx.lifecycle.o;
import cn.manstep.phonemirrorBox.AutoKitHideSettingsActivity;
import cn.manstep.phonemirrorBox.AutoStartService;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.c0;
import cn.manstep.phonemirrorBox.customview.SelectTextSettingsItem;
import cn.manstep.phonemirrorBox.k0.h;
import cn.manstep.phonemirrorBox.k0.i;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.util.JniTools;
import cn.manstep.phonemirrorBox.util.q;
import cn.manstep.phonemirrorBox.util.s;
import cn.manstep.phonemirrorBox.util.u;
import cn.manstep.phonemirrorBox.x;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class k extends cn.manstep.phonemirrorBox.x0.c {
    public static boolean S = true;
    public static boolean T = true;
    private o<String> A;
    private o<String> B;
    private WeakReference<View> C;
    private o<Integer> D;
    private o<String> E;
    private final BroadcastReceiver F;
    private o<String> G;
    private o<Integer> H;
    private o<String> I;
    private o<Integer> J;
    private AutoStartService.g K;
    private ServiceConnection L;
    private WeakReference<n> M;
    private int N;
    private o<Integer> O;
    private o<Boolean> P;
    private final o<Integer> Q;
    private o<Drawable> R;
    private final o<Integer> e;
    private final o<Boolean> f;
    private final o<Boolean> g;
    private final o<Boolean> h;
    private final o<Boolean> i;
    private final u j;
    private final o<Boolean> k;
    private o<Boolean> l;
    private o<Integer> m;
    private o<Integer> n;
    private o<Integer> o;
    private o<Boolean> p;
    private o<Boolean> q;
    private o<Boolean> r;
    private o<Integer> s;
    private o<Integer> t;
    private o<Integer> u;
    private o<Integer> v;
    private o<Integer> w;
    private o<Boolean> x;
    private l y;
    private o<Boolean> z;

    class a implements Runnable {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$a$a, reason: collision with other inner class name */
        class C0105a implements h.c {
            C0105a() {
            }

            @Override // cn.manstep.phonemirrorBox.k0.h.c
            public boolean a(String str) {
                if (!JniTools.open(str)) {
                    return false;
                }
                cn.manstep.phonemirrorBox.l0.o oVar = new cn.manstep.phonemirrorBox.l0.o();
                w wVarL = ((n) k.this.M.get()).l();
                wVarL.b(2131296606, oVar);
                wVarL.g("DebugFragment");
                wVarL.i();
                return true;
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.manstep.phonemirrorBox.k0.h.z2((n) k.this.M.get(), new C0105a());
        }
    }

    class b implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SelectTextSettingsItem f1978b;

        b(SelectTextSettingsItem selectTextSettingsItem) {
            this.f1978b = selectTextSettingsItem;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            cn.manstep.phonemirrorBox.g0.c cVar = (cn.manstep.phonemirrorBox.g0.c) adapterView.getAdapter().getItem(i);
            this.f1978b.setCurIndex(i);
            k.this.G0(cVar.a());
        }
    }

    class c implements q.d {
        c() {
        }

        @Override // cn.manstep.phonemirrorBox.util.q.d
        public void a(boolean z) {
            if (k.this.y != null) {
                k.this.y.l(z);
            }
        }
    }

    class d implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SelectTextSettingsItem f1981b;

        d(SelectTextSettingsItem selectTextSettingsItem) {
            this.f1981b = selectTextSettingsItem;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            k.this.J.k(Integer.valueOf(cn.manstep.phonemirrorBox.util.e.a[i]));
            this.f1981b.setCurIndex(i);
            b0.i().F("fps", Integer.valueOf(cn.manstep.phonemirrorBox.util.e.a[i]));
            p.C = cn.manstep.phonemirrorBox.util.e.a[i];
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.l.c0(cn.manstep.phonemirrorBox.util.e.a[i]);
            }
        }
    }

    class e implements q.d {
        e() {
        }

        @Override // cn.manstep.phonemirrorBox.util.q.d
        public void a(boolean z) {
            if (k.this.y != null) {
                k.this.y.l(z);
            }
        }
    }

    class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.LOCALE_CHANGED")) {
                k.this.z();
                k.this.Y();
                k.this.v();
            }
        }
    }

    class g implements i.e {
        g() {
        }

        @Override // cn.manstep.phonemirrorBox.k0.i.e
        public void a(String str, String str2) {
            String str3 = str + "~" + str2;
            b0.i().F("nightTime", str3);
            k.this.B.k(str3);
        }
    }

    class h implements ServiceConnection {
        h() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            s.d("SettingsViewModel", "onServiceConnected: " + iBinder);
            k.this.K = (AutoStartService.g) iBinder;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    static class i implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InterfaceC0106k f1984b;

        i(InterfaceC0106k interfaceC0106k) {
            this.f1984b = interfaceC0106k;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            this.f1984b.a(view);
            return true;
        }
    }

    class j implements androidx.lifecycle.p<Integer> {
        j(k kVar) {
        }

        @Override // androidx.lifecycle.p
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void c(Integer num) {
            if (num.intValue() == 0) {
                b0.i().q("DPI");
                if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.l.O0();
                    return;
                }
                return;
            }
            b0.i().F("DPI", num);
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                cn.manstep.phonemirrorBox.BoxInterface.d.l.P0(num.intValue());
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x0.k$k, reason: collision with other inner class name */
    public interface InterfaceC0106k {
        void a(View view);
    }

    public k(Application application) {
        super(application);
        this.j = new u();
        this.F = new f();
        this.K = null;
        this.L = new h();
        new o(0);
        this.N = 0;
        new Handler(Looper.myLooper());
        new o(Integer.valueOf(b0.i().m("linkFullMode", 0)));
        Z();
        int iM = b0.i().m("LanguageID", 0);
        this.e = new o<>(Integer.valueOf(iM));
        boolean zJ = x.j(iM);
        this.h = new o<>(Boolean.valueOf(zJ));
        this.g = new o<>(Boolean.valueOf(!zJ));
        this.f = new o<>(Boolean.valueOf("A15HW".equals(cn.manstep.phonemirrorBox.BoxInterface.c.e().i())));
        int iM2 = b0.i().m("iPhoneMode", 2);
        o<Integer> oVar = new o<>();
        this.m = oVar;
        oVar.k(Integer.valueOf(iM2));
        int i2 = (zJ && i().getResources().getBoolean(2131034132)) ? 4 : 1;
        new o(Boolean.FALSE);
        this.i = new o<>(Boolean.FALSE);
        new o(Boolean.FALSE);
        int iM3 = b0.i().m("AndroidMode", i2);
        o<Integer> oVar2 = new o<>();
        this.n = oVar2;
        oVar2.k(Integer.valueOf(iM3));
        if (zJ && iM3 == 1) {
            this.h.k(Boolean.FALSE);
        }
        if (!zJ && iM3 == 4) {
            this.g.k(Boolean.FALSE);
        }
        cn.manstep.phonemirrorBox.BoxInterface.d.k(iM3);
        int iD = cn.manstep.phonemirrorBox.BoxInterface.g.d(this.m.e().intValue(), this.n.e().intValue());
        this.Q = new o<>(Integer.valueOf(iD));
        new o(cn.manstep.phonemirrorBox.BoxInterface.g.e(iD));
        int iM4 = b0.i().m("MicType", 0);
        o<Integer> oVar3 = new o<>();
        this.o = oVar3;
        oVar3.k(Integer.valueOf(iM4));
        boolean zO = b0.i().o("BgKeyValid", true);
        o<Boolean> oVar4 = new o<>();
        this.p = oVar4;
        oVar4.k(Boolean.valueOf(zO));
        boolean zO2 = b0.i().o("ShowFloatBall", false);
        o<Boolean> oVar5 = new o<>();
        this.q = oVar5;
        oVar5.k(Boolean.valueOf(zO2));
        boolean zO3 = b0.i().o("IsLeftDrive", true);
        o<Boolean> oVar6 = new o<>();
        this.r = oVar6;
        oVar6.k(Boolean.valueOf(zO3));
        this.s = new o<>(Integer.valueOf(b0.i().m("NightMode", 2)));
        this.x = new o<>(Boolean.valueOf(s.a));
        this.k = new o<>(Boolean.valueOf(b0.i().o("InsertPhoneAutoStart", true)));
        new o(Boolean.valueOf(b0.i().o("InsertBoxAutoStart", false)));
        new o(Boolean.valueOf(b0.i().o("BootAutoStart", false)));
        int iM5 = b0.i().m("ImageScale", 0);
        o<Integer> oVar7 = new o<>();
        this.t = oVar7;
        oVar7.k(Integer.valueOf(iM5));
        int iM6 = b0.i().m("CarPlayLogoType", 1);
        o<Integer> oVar8 = new o<>();
        this.u = oVar8;
        oVar8.k(Integer.valueOf(iM6));
        o<Boolean> oVar9 = new o<>();
        this.z = oVar9;
        if (p.l > p.k) {
            oVar9.k(Boolean.TRUE);
        } else {
            oVar9.k(Boolean.FALSE);
        }
        new o(Boolean.valueOf(application.getResources().getBoolean(2131034133)));
        new o(Boolean.valueOf(application.getResources().getBoolean(2131034120)));
        new o(Boolean.FALSE);
        new o(Boolean.valueOf((b0.i().m("AndroidMode", -1) == -1 && b0.i().m("AndroidMode", -1) == -1) ? false : true));
    }

    public static void D0(View view, InterfaceC0106k interfaceC0106k) {
        view.setOnLongClickListener(new i(interfaceC0106k));
    }

    private String U() {
        String strP = cn.manstep.phonemirrorBox.BoxInterface.c.e().p();
        TextUtils.isEmpty(strP);
        return strP;
    }

    private int W(List<cn.manstep.phonemirrorBox.g0.c> list) {
        List<String> listL = c0.l();
        int i2 = 0;
        for (int i3 = 0; i3 < listL.size(); i3++) {
            if (listL.get(i3).equals(this.I.e())) {
                i2 = i3;
            }
            list.add(new cn.manstep.phonemirrorBox.g0.c(i3, listL.get(i3)));
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        if (this.E == null) {
            this.E = new o<>();
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            this.E.k(U());
            return;
        }
        int iM = b0.i().m("LanguageID", 0);
        if (iM == 0) {
            this.E.k(cn.manstep.phonemirrorBox.util.c0.m(this.f1964d.get(), 2131689478));
        } else if (Build.VERSION.SDK_INT < 17) {
            this.E.k(cn.manstep.phonemirrorBox.util.c0.m(this.f1964d.get(), 2131689478));
        } else {
            this.E.k(cn.manstep.phonemirrorBox.util.c0.m(x.b(this.f1964d.get(), iM), 2131689478));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b0() {
        byte b2;
        k0(cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
        boolean zJ = x.j(this.e.e().intValue());
        int iM = b0.i().m("AndroidMode", 255);
        String strI = cn.manstep.phonemirrorBox.BoxInterface.c.e().i();
        int iHashCode = strI.hashCode();
        if (iHashCode != 1985234) {
            if (iHashCode != 61541876) {
                b2 = (iHashCode == 1503659835 && strI.equals("Auto_Box")) ? (byte) 2 : (byte) -1;
            } else if (strI.equals("A15HW")) {
                b2 = 0;
            }
        } else if (strI.equals("A15W")) {
            b2 = 1;
        }
        if (b2 == 0) {
            this.f.k(Boolean.TRUE);
            this.h.k(Boolean.TRUE);
            if (zJ) {
                return;
            }
            if (iM == 4) {
                this.g.k(Boolean.FALSE);
                return;
            } else {
                this.i.k(Boolean.TRUE);
                return;
            }
        }
        if (b2 != 2) {
            return;
        }
        this.g.k(Boolean.TRUE);
        if (iM == 1 || iM == 3) {
            return;
        }
        if (zJ) {
            g0(3);
        } else {
            g0(1);
        }
    }

    private void c0() {
        boolean zJ = x.j(this.e.e().intValue());
        this.i.k(Boolean.FALSE);
        this.f.k(Boolean.FALSE);
        if (zJ) {
            this.g.k(Boolean.FALSE);
        } else {
            this.h.k(Boolean.FALSE);
        }
        k0(BuildConfig.FLAVOR);
    }

    private void l0(String str) {
        if (this.E == null) {
            this.E = new o<>();
        }
        this.E.k(str);
    }

    private void q(int i2) {
    }

    public o<String> A() {
        if (this.B == null) {
            String strN = b0.i().n("nightTime", BuildConfig.FLAVOR);
            if (TextUtils.isEmpty(strN)) {
                this.B = new o<>();
                int iM = b0.i().m("LanguageID", 0);
                if (iM == 0 || Build.VERSION.SDK_INT < 17) {
                    this.B.k(cn.manstep.phonemirrorBox.util.c0.m(this.f1964d.get(), 2131689693));
                } else {
                    this.B.k(cn.manstep.phonemirrorBox.util.c0.m(x.b(this.f1964d.get(), iM), 2131689693));
                }
            } else {
                this.B = new o<>(strN);
            }
        }
        return this.B;
    }

    public void A0(int i2) {
        b0.i().F("NightMode", Integer.valueOf(i2));
        this.s.k(Integer.valueOf(i2));
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
        if (fVar != null) {
            fVar.N0(i2);
        }
        if (this.f1964d.get().getResources().getBoolean(2131034125)) {
            if (i2 == 1) {
                androidx.appcompat.app.f.H(2);
            } else if (i2 == 0) {
                androidx.appcompat.app.f.H(1);
            } else {
                androidx.appcompat.app.f.H(-1);
            }
            cn.manstep.phonemirrorBox.q.g().h().h0(i2);
        }
    }

    public o<Integer> B() {
        if (this.H == null) {
            this.H = new o<>();
            this.H.k(Integer.valueOf(b0.i().m("DecodeMethod", !p.g ? 1 : 0)));
        }
        return this.H;
    }

    public void B0() {
        new cn.manstep.phonemirrorBox.k0.i(this.B.e(), new g()).u2(this.M.get(), "NightTimeDialog");
    }

    public o<Integer> C() {
        if (this.D == null) {
            this.D = new o<>();
            int iM = b0.i().m("DPI", 0);
            this.D.k(Integer.valueOf(iM));
            this.D.g(new j(this));
            this.D.k(Integer.valueOf(iM));
        }
        return this.D;
    }

    public void C0(int i2) {
        b0.i().F("CarPlayLogoType", Integer.valueOf(i2));
        this.u.k(Integer.valueOf(i2));
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
        if (fVar != null) {
            fVar.e();
            if (i2 == 2) {
                cn.manstep.phonemirrorBox.BoxInterface.d.l.b();
            }
        }
    }

    public o<Integer> D() {
        if (this.J == null) {
            o<Integer> oVar = new o<>();
            this.J = oVar;
            oVar.k(Integer.valueOf(b0.i().m("fps", 30)));
        }
        return this.J;
    }

    public o<Integer> E() {
        return this.m;
    }

    public void E0(int i2) {
        cn.manstep.phonemirrorBox.BoxInterface.g.f(i2);
        b0.i().F("iPhoneMode", Integer.valueOf(cn.manstep.phonemirrorBox.BoxInterface.g.b()));
        b0.i().F("AndroidMode", Integer.valueOf(cn.manstep.phonemirrorBox.BoxInterface.g.a()));
        this.m.k(Integer.valueOf(cn.manstep.phonemirrorBox.BoxInterface.g.b()));
        this.n.k(Integer.valueOf(cn.manstep.phonemirrorBox.BoxInterface.g.a()));
        this.Q.k(Integer.valueOf(i2));
    }

    public o<Integer> F() {
        if (this.w == null) {
            this.w = new o<>();
            int i2 = 1;
            if (cn.manstep.phonemirrorBox.util.c0.p()) {
                i2 = 3;
            } else if (cn.manstep.phonemirrorBox.BoxInterface.b.a()) {
                i2 = 2;
            }
            int iM = b0.i().m("ImageQuality", i2);
            this.w.k(Integer.valueOf(iM));
            q(iM);
        }
        return this.w;
    }

    public void F0(View view) {
        SelectTextSettingsItem selectTextSettingsItem = (SelectTextSettingsItem) view;
        LinkedList linkedList = new LinkedList();
        int iW = W(linkedList);
        cn.manstep.phonemirrorBox.d0.l lVar = new cn.manstep.phonemirrorBox.d0.l(view.getContext(), linkedList);
        selectTextSettingsItem.setCurIndex(iW);
        q.c cVar = new q.c(view, lVar);
        cVar.q((int) selectTextSettingsItem.f1579d);
        cVar.r(cn.manstep.phonemirrorBox.util.c0.b(view.getContext(), 200.0f));
        cVar.n(cn.manstep.phonemirrorBox.util.c0.b(view.getContext(), 150.0f));
        cVar.m(view.getContext().getResources().getDrawable(2131230906));
        cVar.p(new c());
        cVar.o(new b(selectTextSettingsItem));
        selectTextSettingsItem.setListPopupWindowUtil(cVar.l());
        selectTextSettingsItem.getListPopupWindowUtil().d((int) selectTextSettingsItem.f1579d, selectTextSettingsItem.getCurIndex());
    }

    public o<Integer> G() {
        return this.t;
    }

    public void G0(String str) {
        this.I.k(str);
        b0.i().F("vwh", str);
        cn.manstep.phonemirrorBox.util.x xVarL = cn.manstep.phonemirrorBox.util.x.l(str);
        s.d("SettingsViewModel", "setVideoSize: " + xVarL.toString());
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            cn.manstep.phonemirrorBox.BoxInterface.d.l.d0(xVarL.f1934b, xVarL.f1935c);
        }
        c0.i().r(xVarL.f1934b, xVarL.f1935c);
    }

    public o<Boolean> H() {
        return this.k;
    }

    public void H0(boolean z) {
        AutoStartService.g gVar;
        if (this.L == null || (gVar = this.K) == null) {
            return;
        }
        gVar.c(z);
    }

    public o<Boolean> I() {
        return this.i;
    }

    public void I0(int i2) {
        if (this.v == null) {
            this.v = new o<>();
        }
        this.v.k(Integer.valueOf(i2));
        b0.i().F("WirelessConnectMode", Integer.valueOf(i2));
        b0.i().F("UsedWirelessMode", Boolean.TRUE);
        if (i2 == 0) {
            this.K.b(true);
        } else if (i2 == 1) {
            this.K.b(false);
        }
    }

    public o<Boolean> J() {
        return this.h;
    }

    public void J0(View view) {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            l0(cn.manstep.phonemirrorBox.BoxInterface.c.e().p() + "." + cn.manstep.phonemirrorBox.BoxInterface.c.e().m());
        }
    }

    public o<Boolean> K() {
        return this.g;
    }

    public void K0() {
        if (this.f1964d.get() == null || this.L == null || this.K == null) {
            return;
        }
        this.f1964d.get().unbindService(this.L);
        this.K = null;
    }

    public o<Boolean> L() {
        return this.f;
    }

    public o<Boolean> M() {
        return this.z;
    }

    public o<Boolean> N() {
        return this.x;
    }

    public o<Integer> O() {
        return this.e;
    }

    public o<Boolean> P() {
        return this.r;
    }

    public o<Integer> Q() {
        return this.o;
    }

    public o<Integer> R() {
        return this.s;
    }

    public o<Integer> S() {
        return this.u;
    }

    public o<Integer> T() {
        return this.Q;
    }

    public o<String> V() {
        if (this.I == null) {
            this.I = new o<>();
            this.I.k(b0.i().n("vwh", c0.t().toString()));
        }
        return this.I;
    }

    public o<Integer> X() {
        if (this.v == null) {
            o<Integer> oVar = new o<>();
            this.v = oVar;
            oVar.k(Integer.valueOf(b0.i().m("WirelessConnectMode", 0)));
        }
        return this.v;
    }

    public void Z() {
        if (this.L == null || this.K != null) {
            return;
        }
        Intent intent = new Intent(this.f1964d.get(), (Class<?>) AutoStartService.class);
        this.f1964d.get().bindService(intent, this.L, 1);
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                i().startForegroundService(intent);
            } else {
                i().startService(intent);
            }
        } catch (Exception unused) {
        }
        this.f1964d.get().registerReceiver(this.F, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
    }

    public boolean a0() {
        AutoStartService.g gVar = this.K;
        if (gVar != null) {
            return gVar.a();
        }
        return false;
    }

    public void d0() {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 21)) {
            return;
        }
        s.e("SettingsViewModel,onClickBackFirstPage: sendMsg failed!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void e0(View view) {
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(false);
            Toast.makeText(view.getContext(), 2131689613, 1).show();
        }
    }

    public void f0(int i2) {
        this.O.k(Integer.valueOf(i2));
        cn.manstep.phonemirrorBox.util.x xVarB = c0.b(i2);
        b0.i().F("vandroidautoh", Integer.valueOf(i2));
        if (cn.manstep.phonemirrorBox.BoxInterface.d.E()) {
            cn.manstep.phonemirrorBox.BoxInterface.d.l.g0(xVarB.f1934b, xVarB.f1935c);
        }
    }

    @Override // androidx.lifecycle.v
    protected void g() {
        super.g();
        this.y = null;
    }

    public void g0(int i2) {
        b0.i().F("AndroidMode", Integer.valueOf(i2));
        cn.manstep.phonemirrorBox.BoxInterface.d.k(i2);
        this.n.k(Integer.valueOf(i2));
        l lVar = this.y;
        if (lVar != null) {
            lVar.r(i2);
        }
    }

    public void h0(boolean z) {
        AutoStartService.g gVar = this.K;
        if (gVar != null) {
            gVar.b(z);
        }
    }

    public void i0(boolean z) {
        o<Boolean> oVar = this.l;
        if (oVar == null) {
            this.l = new o<>(Boolean.valueOf(z));
        } else {
            oVar.k(Boolean.valueOf(z));
        }
    }

    public void j0(int i2) {
        if (i2 == 1) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || TextUtils.isEmpty(p.f1804b) || "BOX:unknown".equals(p.f1804b)) {
                i2 = 0;
            } else if (!p.d(p.f1804b)) {
                i2 = 2;
            }
        }
        if (i2 == 2) {
            l0(cn.manstep.phonemirrorBox.util.c0.m(this.f1964d.get(), 2131689478));
            return;
        }
        if (i2 == 0) {
            l0(cn.manstep.phonemirrorBox.util.c0.m(this.f1964d.get(), 2131689478));
            c0();
        } else if (i2 == 1) {
            l0(U());
            b0();
        }
    }

    public void k0(String str) {
        if (this.G == null) {
            this.G = new o<>(str);
        }
        this.G.k(str);
    }

    public void m0(l lVar) {
        this.y = lVar;
    }

    public void n0(String str) {
        Drawable drawableI = cn.manstep.phonemirrorBox.util.c0.i(i(), str);
        o<Drawable> oVar = this.R;
        if (oVar != null) {
            oVar.k(drawableI);
        }
    }

    public void o0() {
        t0(2);
    }

    public void p() {
        this.x.k(Boolean.FALSE);
        s.b();
        WeakReference<View> weakReference = this.C;
        if (weakReference == null || weakReference.get() == null || !(this.C.get() instanceof Checkable)) {
            return;
        }
        ((Checkable) this.C.get()).setChecked(false);
    }

    public void p0(int i2) {
        b0.i().F("DecodeMethod", Integer.valueOf(i2));
        this.H.k(Integer.valueOf(i2));
        if (i2 == 0) {
            p.g = true;
            return;
        }
        p.g = false;
        int iM = b0.i().m("fps", 30);
        p.C = iM;
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            cn.manstep.phonemirrorBox.BoxInterface.d.l.c0(iM);
        }
    }

    public void q0(int i2) {
        this.D.k(Integer.valueOf(i2));
    }

    public void r() {
        int i2 = this.N;
        if (i2 >= 4) {
            this.j.b(new a(), 1000L);
        } else {
            this.N = i2 + 1;
        }
    }

    public void r0(n nVar) {
        this.M = new WeakReference<>(nVar);
    }

    public void s() {
        l lVar = this.y;
        if (lVar != null) {
            lVar.t();
        }
    }

    public void s0(View view) {
        SelectTextSettingsItem selectTextSettingsItem = (SelectTextSettingsItem) view;
        if (selectTextSettingsItem.getListPopupWindowUtil() == null) {
            LinkedList linkedList = new LinkedList();
            int i2 = 0;
            for (int i3 = 0; i3 < cn.manstep.phonemirrorBox.util.e.a.length; i3++) {
                if (this.J.e().intValue() == cn.manstep.phonemirrorBox.util.e.a[i3]) {
                    i2 = i3;
                }
                linkedList.add(new cn.manstep.phonemirrorBox.g0.c(i3, cn.manstep.phonemirrorBox.util.e.a[i3] + " fps"));
            }
            cn.manstep.phonemirrorBox.d0.l lVar = new cn.manstep.phonemirrorBox.d0.l(view.getContext(), linkedList);
            selectTextSettingsItem.setCurIndex(i2);
            q.c cVar = new q.c(view, lVar);
            cVar.q((int) selectTextSettingsItem.f1579d);
            cVar.r(cn.manstep.phonemirrorBox.util.c0.b(view.getContext(), 200.0f));
            cVar.n(cn.manstep.phonemirrorBox.util.c0.b(view.getContext(), 150.0f));
            cVar.m(view.getContext().getResources().getDrawable(2131230906));
            cVar.p(new e());
            cVar.o(new d(selectTextSettingsItem));
            selectTextSettingsItem.setListPopupWindowUtil(cVar.l());
        }
        selectTextSettingsItem.getListPopupWindowUtil().d((int) selectTextSettingsItem.f1579d, selectTextSettingsItem.getCurIndex());
    }

    public void t() {
        Intent intent = new Intent(this.f1964d.get(), (Class<?>) AutoKitHideSettingsActivity.class);
        intent.addFlags(268435456);
        this.f1964d.get().startActivity(intent);
    }

    public void t0(int i2) {
        this.m.k(Integer.valueOf(i2));
        b0.i().F("iPhoneMode", Integer.valueOf(i2));
        cn.manstep.phonemirrorBox.BoxInterface.d.m(i2);
        l lVar = this.y;
        if (lVar != null) {
            lVar.b(i2);
        }
    }

    public o<Integer> u() {
        if (this.O == null) {
            this.O = new o<>(Integer.valueOf(b0.i().m("vandroidautoh", 720)));
        }
        return this.O;
    }

    public void u0(int i2) {
        this.w.k(Integer.valueOf(i2));
        b0.i().F("ImageQuality", Integer.valueOf(i2));
        q(i2);
    }

    public o<Boolean> v() {
        if (this.P == null) {
            this.P = new o<>();
        }
        this.P.k(Boolean.valueOf((x.i() && i().getResources().getBoolean(2131034132)) ? false : true));
        return this.P;
    }

    public void v0(int i2) {
        this.t.k(Integer.valueOf(i2));
        b0.i().F("ImageScale", Integer.valueOf(i2));
    }

    public o<Integer> w() {
        return this.n;
    }

    public void w0(boolean z) {
        b0.i().F("InsertPhoneAutoStart", Boolean.valueOf(z));
        Intent intent = new Intent(this.f1964d.get(), (Class<?>) AutoStartService.class);
        if (z) {
            this.f1964d.get().startService(intent);
        } else {
            this.f1964d.get().stopService(intent);
        }
    }

    public o<String> x() {
        if (this.G == null) {
            this.G = new o<>(BuildConfig.FLAVOR);
        }
        return this.G;
    }

    public void x0(boolean z, View view) {
        this.x.k(Boolean.valueOf(z));
        if (z) {
            s.k(this.f1964d.get());
        } else {
            s.b();
        }
        this.y.h(z);
        if (z && this.C == null) {
            this.C = new WeakReference<>(view);
        }
        b0.i().F("CloseLog", Boolean.valueOf(!z));
    }

    public o<String> y() {
        if (this.E == null) {
            this.E = new o<>();
            Y();
        }
        return this.E;
    }

    public void y0(boolean z) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        this.r.k(Boolean.valueOf(z));
        b0.i().F("IsLeftDrive", Boolean.valueOf(z));
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
            return;
        }
        fVar.s0("drivePosition", Integer.valueOf(!z ? 1 : 0));
    }

    public o<String> z() {
        if (this.A == null) {
            this.A = new o<>();
        }
        int iM = b0.i().m("LanguageID", 0);
        if (iM == 0) {
            this.A.k(cn.manstep.phonemirrorBox.util.c0.m(this.f1964d.get(), 2131689790));
        } else {
            this.A.k(x.a[iM]);
        }
        return this.A;
    }

    public void z0(int i2, View view) {
        if (i2 == 1) {
            View childAt = ((RadioGroup) view.getParent()).getChildAt(0);
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                cn.manstep.phonemirrorBox.widget.a.a(this.f1964d.get(), 2131689615);
                childAt.performClick();
                return;
            } else {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.h()) {
                    cn.manstep.phonemirrorBox.widget.a.a(this.f1964d.get(), 2131689616);
                    childAt.performClick();
                    return;
                }
                p.s = true;
            }
        }
        cn.manstep.phonemirrorBox.BoxInterface.a.g = i2 == 0;
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
        if (fVar != null) {
            fVar.F0(i2);
        }
        b0.i().F("MicType", Integer.valueOf(i2));
        this.o.k(Integer.valueOf(i2));
    }
}
