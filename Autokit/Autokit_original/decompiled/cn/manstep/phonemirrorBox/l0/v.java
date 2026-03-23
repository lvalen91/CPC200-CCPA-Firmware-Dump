package cn.manstep.phonemirrorBox.l0;

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
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.x0.d;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class v extends m implements d.InterfaceC0103d {
    private cn.manstep.phonemirrorBox.x0.d c0;
    private cn.manstep.phonemirrorBox.i0.q d0;
    private int e0 = 0;
    private List<String> f0 = new ArrayList();
    private boolean g0 = false;
    private Handler h0;
    private Runnable i0;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.manstep.phonemirrorBox.util.s.d("PermissionRequestFragment", "checkPermissionRunnable");
            if (v.this.e0 > 1) {
                v.this.g0 = true;
                v.this.t2();
                v.this.h0.postDelayed(v.this.i0, 2000L);
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (v.this.K() instanceof s) {
                ((s) v.this.K()).f(v.this);
            }
        }
    }

    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z || v.this.g0) {
                return;
            }
            cn.manstep.phonemirrorBox.util.s.d("PermissionRequestFragment", "request mic permission");
            v.this.f0.clear();
            if (androidx.core.content.a.a(v.this.K1(), "android.permission.RECORD_AUDIO") != 0) {
                v.this.f0.add("android.permission.RECORD_AUDIO");
            }
            v.i2(v.this);
            v vVar = v.this;
            vVar.u2(vVar.d0.x, 2);
        }
    }

    class d implements CompoundButton.OnCheckedChangeListener {
        d() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z || v.this.g0) {
                return;
            }
            cn.manstep.phonemirrorBox.util.s.d("PermissionRequestFragment", "request location permission");
            v.this.f0.clear();
            if (androidx.core.content.a.a(v.this.K1(), "android.permission.ACCESS_FINE_LOCATION") != 0) {
                v.this.f0.add("android.permission.ACCESS_FINE_LOCATION");
            }
            if (androidx.core.content.a.a(v.this.K1(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                v.this.f0.add("android.permission.ACCESS_COARSE_LOCATION");
            }
            v.i2(v.this);
            v vVar = v.this;
            vVar.u2(vVar.d0.w, 0);
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String[] f1776b;

        e(String[] strArr) {
            this.f1776b = strArr;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b0.i().o("showRequestPermission", true)) {
                androidx.core.app.a.m(v.this.J1(), this.f1776b, 1000);
            } else {
                v.this.s2();
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SwitchCompat f1778b;

        f(v vVar, SwitchCompat switchCompat) {
            this.f1778b = switchCompat;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1778b.setChecked(false);
        }
    }

    static /* synthetic */ int i2(v vVar) {
        int i = vVar.e0;
        vVar.e0 = i + 1;
        return i;
    }

    public static v newInstance() {
        return new v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s2() {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        int i = Build.VERSION.SDK_INT;
        if (i >= 9) {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", K1().getPackageName(), null));
        } else if (i <= 8) {
            intent.setAction("android.intent.action.VIEW");
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            intent.putExtra("com.android.settings.ApplicationPkgName", K1().getPackageName());
        }
        try {
            K1().startActivity(intent);
        } catch (Exception e2) {
            cn.manstep.phonemirrorBox.util.s.f("PermissionRequestFragment", ",getAppDetailSettingIntent: \n" + Log.getStackTraceString(e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t2() {
        if (androidx.core.content.a.a(K1(), "android.permission.ACCESS_FINE_LOCATION") == 0 || androidx.core.content.a.a(K1(), "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            this.d0.w.setChecked(true);
            this.d0.w.setEnabled(false);
            cn.manstep.phonemirrorBox.util.s.d("PermissionRequestFragment", "request location permission successful");
        } else {
            this.d0.w.setChecked(false);
            cn.manstep.phonemirrorBox.util.s.d("PermissionRequestFragment", "request location permission fail");
        }
        if (androidx.core.content.a.a(K1(), "android.permission.RECORD_AUDIO") == 0) {
            this.d0.x.setChecked(true);
            this.d0.x.setEnabled(false);
            cn.manstep.phonemirrorBox.util.s.d("PermissionRequestFragment", "request mic permission successful");
        } else {
            this.d0.x.setChecked(false);
            cn.manstep.phonemirrorBox.util.s.d("PermissionRequestFragment", "request mic permission fail");
        }
        this.g0 = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u2(SwitchCompat switchCompat, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            cn.manstep.phonemirrorBox.util.s.d("PermissionRequestFragment", "hasCallbacks: " + this.h0.hasCallbacks(this.i0));
            if (!this.h0.hasCallbacks(this.i0)) {
                this.h0.postDelayed(this.i0, 2000L);
            }
        }
        if (i == 0) {
            this.d0.w.setChecked(false);
        }
        if (i == 2) {
            this.d0.x.setChecked(false);
        }
        if (cn.manstep.phonemirrorBox.u0.c.h().y(K(), i) < 0 && this.f0.size() > 0) {
            String[] strArr = (String[]) this.f0.toArray(new String[0]);
            for (String str : strArr) {
                if (!androidx.core.app.a.p(J1(), str)) {
                    b0.i().F("showRequestPermission", Boolean.FALSE);
                }
            }
            if (d0().getBoolean(2131034120)) {
                cn.manstep.phonemirrorBox.k0.a.J2(X(), cn.manstep.phonemirrorBox.util.n.t(K1(), "use_permission_tips", 2131886087), new e(strArr), new f(this, switchCompat));
            } else if (b0.i().o("showRequestPermission", true)) {
                androidx.core.app.a.m(J1(), strArr, 1000);
            } else {
                s2();
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    public void E0(Context context) {
        super.E0(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        cn.manstep.phonemirrorBox.i0.q qVar = (cn.manstep.phonemirrorBox.i0.q) androidx.databinding.f.e(layoutInflater, 2131492943, viewGroup, false);
        this.d0 = qVar;
        qVar.G(this);
        cn.manstep.phonemirrorBox.x0.d dVar = (cn.manstep.phonemirrorBox.x0.d) new androidx.lifecycle.w(J1(), this.a0).a(cn.manstep.phonemirrorBox.x0.d.class);
        this.c0 = dVar;
        dVar.u(this);
        this.h0 = new Handler();
        this.i0 = new a();
        return this.d0.t();
    }

    @Override // androidx.fragment.app.Fragment
    public void O0() {
        super.O0();
        this.h0.removeCallbacks(this.i0);
        this.e0 = 0;
        this.d0 = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void P0() {
        this.c0.z(this);
        super.P0();
    }

    @Override // androidx.fragment.app.Fragment
    public void c1() {
        super.c1();
        this.g0 = true;
        t2();
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        this.d0.v.setOnClickListener(new b());
        this.d0.x.setOnCheckedChangeListener(new c());
        this.d0.w.setOnCheckedChangeListener(new d());
    }

    @Override // cn.manstep.phonemirrorBox.l0.m
    protected void g2() {
        super.g2();
        if (K() instanceof s) {
            ((s) K()).f(this);
        }
    }

    @Override // cn.manstep.phonemirrorBox.x0.d.InterfaceC0103d
    public void k() {
    }

    @Override // cn.manstep.phonemirrorBox.x0.d.InterfaceC0103d
    public void m(int i) {
        cn.manstep.phonemirrorBox.util.s.d("PermissionRequestFragment", "onConnectChanged: " + i);
    }
}
