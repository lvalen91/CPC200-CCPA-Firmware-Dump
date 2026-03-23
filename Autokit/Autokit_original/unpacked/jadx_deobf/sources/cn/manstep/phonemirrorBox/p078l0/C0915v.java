package cn.manstep.phonemirrorBox.p078l0;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.app.C0231a;
import androidx.core.content.C0242a;
import androidx.databinding.C0328f;
import androidx.lifecycle.C0409w;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.p075i0.AbstractC0871q;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.p091x0.C1006d;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.v */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0915v extends C0906m implements C1006d.d {

    /* JADX INFO: renamed from: c0 */
    private C1006d f5766c0;

    /* JADX INFO: renamed from: d0 */
    private AbstractC0871q f5767d0;

    /* JADX INFO: renamed from: e0 */
    private int f5768e0 = 0;

    /* JADX INFO: renamed from: f0 */
    private List<String> f5769f0 = new ArrayList();

    /* JADX INFO: renamed from: g0 */
    private boolean f5770g0 = false;

    /* JADX INFO: renamed from: h0 */
    private Handler f5771h0;

    /* JADX INFO: renamed from: i0 */
    private Runnable f5772i0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.v$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0982s.m7374d("PermissionRequestFragment", "checkPermissionRunnable");
            if (C0915v.this.f5768e0 > 1) {
                C0915v.this.f5770g0 = true;
                C0915v.this.m6769t2();
                C0915v.this.f5771h0.postDelayed(C0915v.this.f5772i0, 2000L);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.v$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0915v.this.m2404K() instanceof InterfaceC0912s) {
                ((InterfaceC0912s) C0915v.this.m2404K()).mo5267f(C0915v.this);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.v$c */
    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z || C0915v.this.f5770g0) {
                return;
            }
            C0982s.m7374d("PermissionRequestFragment", "request mic permission");
            C0915v.this.f5769f0.clear();
            if (C0242a.m1696a(C0915v.this.m2406K1(), "android.permission.RECORD_AUDIO") != 0) {
                C0915v.this.f5769f0.add("android.permission.RECORD_AUDIO");
            }
            C0915v.m6758i2(C0915v.this);
            C0915v c0915v = C0915v.this;
            c0915v.m6770u2(c0915v.f5767d0.f5355x, 2);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.v$d */
    class d implements CompoundButton.OnCheckedChangeListener {
        d() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z || C0915v.this.f5770g0) {
                return;
            }
            C0982s.m7374d("PermissionRequestFragment", "request location permission");
            C0915v.this.f5769f0.clear();
            if (C0242a.m1696a(C0915v.this.m2406K1(), "android.permission.ACCESS_FINE_LOCATION") != 0) {
                C0915v.this.f5769f0.add("android.permission.ACCESS_FINE_LOCATION");
            }
            if (C0242a.m1696a(C0915v.this.m2406K1(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                C0915v.this.f5769f0.add("android.permission.ACCESS_COARSE_LOCATION");
            }
            C0915v.m6758i2(C0915v.this);
            C0915v c0915v = C0915v.this;
            c0915v.m6770u2(c0915v.f5767d0.f5354w, 0);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.v$e */
    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String[] f5777b;

        e(String[] strArr) {
            this.f5777b = strArr;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0795b0.m6071i().m6093o("showRequestPermission", true)) {
                C0231a.m1643m(C0915v.this.m2403J1(), this.f5777b, 1000);
            } else {
                C0915v.this.m6768s2();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.v$f */
    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ SwitchCompat f5779b;

        f(C0915v c0915v, SwitchCompat switchCompat) {
            this.f5779b = switchCompat;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f5779b.setChecked(false);
        }
    }

    /* JADX INFO: renamed from: i2 */
    static /* synthetic */ int m6758i2(C0915v c0915v) {
        int i = c0915v.f5768e0;
        c0915v.f5768e0 = i + 1;
        return i;
    }

    public static C0915v newInstance() {
        return new C0915v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s2 */
    public void m6768s2() {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        int i = Build.VERSION.SDK_INT;
        if (i >= 9) {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", m2406K1().getPackageName(), null));
        } else if (i <= 8) {
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra("com.android.settings.ApplicationPkgName", m2406K1().getPackageName());
        }
        try {
            m2406K1().startActivity(intent);
        } catch (Exception e2) {
            C0982s.m7376f("PermissionRequestFragment", ",getAppDetailSettingIntent: \n" + Log.getStackTraceString(e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t2 */
    public void m6769t2() {
        if (C0242a.m1696a(m2406K1(), "android.permission.ACCESS_FINE_LOCATION") == 0 || C0242a.m1696a(m2406K1(), "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            this.f5767d0.f5354w.setChecked(true);
            this.f5767d0.f5354w.setEnabled(false);
            C0982s.m7374d("PermissionRequestFragment", "request location permission successful");
        } else {
            this.f5767d0.f5354w.setChecked(false);
            C0982s.m7374d("PermissionRequestFragment", "request location permission fail");
        }
        if (C0242a.m1696a(m2406K1(), "android.permission.RECORD_AUDIO") == 0) {
            this.f5767d0.f5355x.setChecked(true);
            this.f5767d0.f5355x.setEnabled(false);
            C0982s.m7374d("PermissionRequestFragment", "request mic permission successful");
        } else {
            this.f5767d0.f5355x.setChecked(false);
            C0982s.m7374d("PermissionRequestFragment", "request mic permission fail");
        }
        this.f5770g0 = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u2 */
    public void m6770u2(SwitchCompat switchCompat, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            C0982s.m7374d("PermissionRequestFragment", "hasCallbacks: " + this.f5771h0.hasCallbacks(this.f5772i0));
            if (!this.f5771h0.hasCallbacks(this.f5772i0)) {
                this.f5771h0.postDelayed(this.f5772i0, 2000L);
            }
        }
        if (i == 0) {
            this.f5767d0.f5354w.setChecked(false);
        }
        if (i == 2) {
            this.f5767d0.f5355x.setChecked(false);
        }
        if (C0956c.m7100h().m7131y(m2404K(), i) < 0 && this.f5769f0.size() > 0) {
            String[] strArr = (String[]) this.f5769f0.toArray(new String[0]);
            for (String str : strArr) {
                if (!C0231a.m1646p(m2403J1(), str)) {
                    C0795b0.m6071i().m6085F("showRequestPermission", Boolean.FALSE);
                }
            }
            if (m2459d0().getBoolean(2131034120)) {
                C0882a.m6528J2(m2441X(), C0977n.m7317t(m2406K1(), "use_permission_tips", 2131886087), new e(strArr), new f(this, switchCompat));
            } else if (C0795b0.m6071i().m6093o("showRequestPermission", true)) {
                C0231a.m1643m(m2403J1(), strArr, 1000);
            } else {
                m6768s2();
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: E0 */
    public void mo2389E0(Context context) {
        super.mo2389E0(context);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        AbstractC0871q abstractC0871q = (AbstractC0871q) C0328f.m2359e(layoutInflater, 2131492943, viewGroup, false);
        this.f5767d0 = abstractC0871q;
        abstractC0871q.m2328G(this);
        C1006d c1006d = (C1006d) new C0409w(m2403J1(), this.f5690a0).m3053a(C1006d.class);
        this.f5766c0 = c1006d;
        c1006d.m7576u(this);
        this.f5771h0 = new Handler();
        this.f5772i0 = new a();
        return this.f5767d0.m2334t();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: O0 */
    public void mo2416O0() {
        super.mo2416O0();
        this.f5771h0.removeCallbacks(this.f5772i0);
        this.f5768e0 = 0;
        this.f5767d0 = null;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: P0 */
    public void mo2419P0() {
        this.f5766c0.m7579z(this);
        super.mo2419P0();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: c1 */
    public void mo2457c1() {
        super.mo2457c1();
        this.f5770g0 = true;
        m6769t2();
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        this.f5767d0.f5353v.setOnClickListener(new b());
        this.f5767d0.f5355x.setOnCheckedChangeListener(new c());
        this.f5767d0.f5354w.setOnCheckedChangeListener(new d());
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m
    /* JADX INFO: renamed from: g2 */
    protected void mo6691g2() {
        super.mo6691g2();
        if (m2404K() instanceof InterfaceC0912s) {
            ((InterfaceC0912s) m2404K()).mo5267f(this);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p091x0.C1006d.d
    /* JADX INFO: renamed from: k */
    public void mo5321k() {
    }

    @Override // cn.manstep.phonemirrorBox.p091x0.C1006d.d
    /* JADX INFO: renamed from: m */
    public void mo5322m(int i) {
        C0982s.m7374d("PermissionRequestFragment", "onConnectChanged: " + i);
    }
}
