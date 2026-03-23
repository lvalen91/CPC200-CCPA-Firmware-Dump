package cn.manstep.phonemirrorBox;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.C0242a;
import androidx.databinding.C0328f;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.C0409w;
import cn.manstep.phonemirrorBox.AbstractC0796c;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.p075i0.AbstractC0873s;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.p077k0.DialogC0886e;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.p091x0.C1011i;
import cn.manstep.phonemirrorBox.p091x0.C1013k;
import cn.manstep.phonemirrorBox.p091x0.InterfaceC1014l;
import cn.manstep.phonemirrorBox.util.C0963c;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0965d;
import cn.manstep.phonemirrorBox.util.C0977n;
import cn.manstep.phonemirrorBox.util.C0979p;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.DialogC0970g;
import cn.manstep.phonemirrorBox.widget.C1000a;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.UCrop;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ViewOnClickListenerC1017z extends Fragment implements View.OnClickListener, C0733d.g, AbstractC0796c.a, DialogC0886e.b, InterfaceC1014l {

    /* JADX INFO: renamed from: B0 */
    public static boolean f6436B0;

    /* JADX INFO: renamed from: m0 */
    private Button f6450m0;

    /* JADX INFO: renamed from: n0 */
    private Button f6451n0;

    /* JADX INFO: renamed from: o0 */
    private Button f6452o0;

    /* JADX INFO: renamed from: p0 */
    private Button f6453p0;

    /* JADX INFO: renamed from: q0 */
    private TextView f6454q0;

    /* JADX INFO: renamed from: r0 */
    private TextView f6455r0;

    /* JADX INFO: renamed from: s0 */
    private ColorStateList f6456s0;

    /* JADX INFO: renamed from: t0 */
    private AbstractC0796c f6457t0;

    /* JADX INFO: renamed from: x0 */
    private ImageView f6461x0;

    /* JADX INFO: renamed from: y0 */
    public C1013k f6462y0;

    /* JADX INFO: renamed from: z0 */
    private AbstractC0873s f6463z0;

    /* JADX INFO: renamed from: a0 */
    private boolean f6438a0 = false;

    /* JADX INFO: renamed from: b0 */
    private boolean f6439b0 = true;

    /* JADX INFO: renamed from: c0 */
    private boolean f6440c0 = false;

    /* JADX INFO: renamed from: d0 */
    private boolean f6441d0 = false;

    /* JADX INFO: renamed from: e0 */
    private String f6442e0 = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: f0 */
    private String f6443f0 = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: g0 */
    private String f6444g0 = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: h0 */
    private String f6445h0 = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: i0 */
    private String f6446i0 = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: j0 */
    private boolean f6447j0 = false;

    /* JADX INFO: renamed from: k0 */
    private boolean f6448k0 = false;

    /* JADX INFO: renamed from: l0 */
    private String f6449l0 = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: u0 */
    private List<C0963c> f6458u0 = null;

    /* JADX INFO: renamed from: v0 */
    private C0965d f6459v0 = null;

    /* JADX INFO: renamed from: w0 */
    private boolean f6460w0 = false;

    /* JADX INFO: renamed from: A0 */
    LinkedList<C0979p> f6437A0 = new LinkedList<>();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$a */
    class a implements DialogInterface.OnClickListener {
        a(ViewOnClickListenerC1017z viewOnClickListenerC1017z) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$b */
    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ EditText f6464b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ String f6465c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ AlertDialog f6466d;

        b(EditText editText, String str, AlertDialog alertDialog) {
            this.f6464b = editText;
            this.f6465c = str;
            this.f6466d = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0735f c0735f;
            String string = this.f6464b.getText().toString();
            if (!string.equals(BuildConfig.FLAVOR)) {
                C0795b0.m6071i().m6085F("CarPlayOEMIconName", string);
                List list = ViewOnClickListenerC1017z.this.f6458u0;
                String str = this.f6465c;
                list.set(0, new C0963c(string, str, BitmapFactory.decodeFile(str)));
                ViewOnClickListenerC1017z.this.f6459v0.notifyDataSetInvalidated();
                if (C0733d.m5591i() && (c0735f = C0733d.f4428l) != null) {
                    c0735f.m5711b();
                }
            }
            this.f6466d.dismiss();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$c */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0964c0.m7191o(ViewOnClickListenerC1017z.this.m2385D(), C0964c0.m7182f(ViewOnClickListenerC1017z.this.m2406K1()));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$d */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0964c0.m7191o(ViewOnClickListenerC1017z.this.m2385D(), C0964c0.m7182f(ViewOnClickListenerC1017z.this.m2406K1()));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$e */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0733d.m5592j();
            C0735f c0735f = C0733d.f4428l;
            if (c0735f != null) {
                c0735f.m5707Y0();
            }
            ViewOnClickListenerC1017z.this.f6462y0.m7745i0(true);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$f */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0982s.m7372b();
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            C0982s.m7381k(StubApp.getOrigApplicationContext(ViewOnClickListenerC1017z.this.m2406K1().getApplicationContext()));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$g */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewOnClickListenerC1017z.this.m7833A2();
            ViewOnClickListenerC1017z.this.f6450m0.setText(C0964c0.m7189m(ViewOnClickListenerC1017z.this.m2385D(), 2131689623));
            ViewOnClickListenerC1017z.this.f6450m0.setEnabled(false);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$h */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewOnClickListenerC1017z.this.f6438a0 = false;
            ViewOnClickListenerC1017z.this.m7831y2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$i */
    class i implements C0979p.e {
        i() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            ViewOnClickListenerC1017z.this.m7806R2();
            boolean unused = ViewOnClickListenerC1017z.this.f6438a0;
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            if (!C0925p.f5889z) {
                ViewOnClickListenerC1017z.this.m7830x2(str);
            }
            ViewOnClickListenerC1017z.this.f6450m0.setText(C0964c0.m7189m(ViewOnClickListenerC1017z.this.m2385D(), 2131689626));
            ViewOnClickListenerC1017z.this.f6450m0.setEnabled(true);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$j */
    class j implements C0979p.e {
        j() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            ViewOnClickListenerC1017z.this.m7806R2();
            boolean unused = ViewOnClickListenerC1017z.this.f6438a0;
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7373c("SettingsFragment,checkBoxUpdate->success: " + str);
            ViewOnClickListenerC1017z.this.m7832z2(str);
            ViewOnClickListenerC1017z.this.f6450m0.setText(C0964c0.m7189m(ViewOnClickListenerC1017z.this.m2385D(), 2131689626));
            ViewOnClickListenerC1017z.this.f6450m0.setEnabled(true);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$k */
    class k implements C0979p.e {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ boolean f6476a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f6477b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ C0979p f6478c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ File f6479d;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$k$a */
        class a implements C0979p.e {
            a() {
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.e
            /* JADX INFO: renamed from: b */
            public void mo5972b(String str) {
                C0982s.m7375e("SettingsFragment,uploadLog:failure: box.log !!!");
                C0977n.m7303f(C0925p.f5868e);
                ViewOnClickListenerC1017z.this.m7806R2();
                ViewOnClickListenerC1017z.this.f6451n0.setText(C0964c0.m7189m(ViewOnClickListenerC1017z.this.m2385D(), 2131689632));
                ViewOnClickListenerC1017z.this.f6451n0.setEnabled(true);
            }

            @Override // cn.manstep.phonemirrorBox.util.C0979p.e
            /* JADX INFO: renamed from: c */
            public void mo5973c(String str) {
                C0982s.m7375e("SettingsFragment,uploadLog:success: box.log " + str);
                ViewOnClickListenerC1017z.this.m7807T2(str, C0925p.f5868e);
            }
        }

        k(boolean z, String str, C0979p c0979p, File file) {
            this.f6476a = z;
            this.f6477b = str;
            this.f6478c = c0979p;
            this.f6479d = file;
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            C0982s.m7375e("SettingsFragment,uploadLog:failure: app.log !!!");
            ViewOnClickListenerC1017z.this.m7806R2();
            ViewOnClickListenerC1017z.this.f6451n0.setText(C0964c0.m7189m(ViewOnClickListenerC1017z.this.m2385D(), 2131689632));
            ViewOnClickListenerC1017z.this.f6451n0.setEnabled(true);
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            C0982s.m7375e("SettingsFragment,uploadLog:success: app.log " + str);
            if (this.f6476a) {
                this.f6478c.m7343o("/a/upload/log", ViewOnClickListenerC1017z.this.m7798I2("box.log", this.f6477b), C0953u.m7001z().m7010I().substring(0, 12) + "_box.log", C0925p.f5868e, new a());
            }
            ViewOnClickListenerC1017z.this.m7807T2(str, this.f6479d.getAbsolutePath());
            C0977n.m7299b(ViewOnClickListenerC1017z.this.m2404K());
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$l */
    class l implements C0979p.f {
        l() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.f
        /* JADX INFO: renamed from: a */
        public void mo5971a() {
            ViewOnClickListenerC1017z.this.f6457t0.mo6049a();
            ViewOnClickListenerC1017z.this.f6457t0.m6101n(false, BuildConfig.FLAVOR);
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            ViewOnClickListenerC1017z.this.m7806R2();
            ViewOnClickListenerC1017z.this.f6457t0.mo6049a();
            ViewOnClickListenerC1017z.this.f6457t0.m6101n(false, BuildConfig.FLAVOR);
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            ViewOnClickListenerC1017z.this.f6457t0.mo6049a();
            ViewOnClickListenerC1017z.this.m7812Y2();
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.f
        /* JADX INFO: renamed from: d */
        public void mo5974d(long j) {
            ViewOnClickListenerC1017z.this.f6457t0.mo6054i((int) j);
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.f
        /* JADX INFO: renamed from: e */
        public void mo5975e(long j) {
            ViewOnClickListenerC1017z.this.f6457t0.mo6053h((int) j);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.z$m */
    class m implements C0979p.f {
        m() {
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.f
        /* JADX INFO: renamed from: a */
        public void mo5971a() {
            ViewOnClickListenerC1017z.this.f6457t0.mo6049a();
            ViewOnClickListenerC1017z.this.f6457t0.m6100m(false, BuildConfig.FLAVOR);
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: b */
        public void mo5972b(String str) {
            ViewOnClickListenerC1017z.this.m7806R2();
            ViewOnClickListenerC1017z.this.f6457t0.mo6049a();
            ViewOnClickListenerC1017z.this.f6457t0.m6100m(false, BuildConfig.FLAVOR);
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.e
        /* JADX INFO: renamed from: c */
        public void mo5973c(String str) {
            ViewOnClickListenerC1017z.this.f6457t0.mo6049a();
            ViewOnClickListenerC1017z.this.m7801L2();
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.f
        /* JADX INFO: renamed from: d */
        public void mo5974d(long j) {
            ViewOnClickListenerC1017z.this.f6457t0.mo6054i((int) j);
        }

        @Override // cn.manstep.phonemirrorBox.util.C0979p.f
        /* JADX INFO: renamed from: e */
        public void mo5975e(long j) {
            ViewOnClickListenerC1017z.this.f6457t0.mo6053h((int) j);
        }
    }

    /* JADX INFO: renamed from: B2 */
    private void m7792B2() {
        C0735f c0735f;
        C0982s.m7372b();
        this.f6457t0.mo6056k(false);
        if (!C0733d.m5591i() || (c0735f = C0733d.f4428l) == null) {
            return;
        }
        c0735f.m5701U0(2);
    }

    /* JADX INFO: renamed from: C2 */
    private static boolean m7793C2(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (m7802N2(cCharAt)) {
                C0982s.m7373c("CustomSubmitProblemDialog codePoint=" + cCharAt);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: D2 */
    private void m7794D2(Uri uri, Uri uri2) {
        UCrop.Options options = new UCrop.Options();
        options.setToolbarColor(C0242a.m1697b(m2385D(), 2131099741));
        options.setStatusBarColor(C0242a.m1697b(m2385D(), 2131099741));
        options.setCompressionFormat(Bitmap.CompressFormat.PNG);
        options.setCompressionQuality(100);
        options.setHideBottomControls(true);
        options.setToolbarTitle(C0964c0.m7189m(m2385D(), 2131689909));
        UCrop.m9048of(uri, uri2).withAspectRatio(1.0f, 1.0f).withMaxResultSize(180, 180).withOptions(options).start(m2385D());
    }

    /* JADX INFO: renamed from: E2 */
    private void m7795E2() {
        C0735f c0735f;
        C0982s.m7373c("SettingsFragment,cropSuccess: " + ((MainActivity) m2385D()).f4636t);
        String strM6092n = C0795b0.m6071i().m6092n("CarPlayOEMIconPath", BuildConfig.FLAVOR);
        C0982s.m7373c("SettingsFragment,cropSuccess: " + strM6092n);
        ((MainActivity) m2385D()).f4636t = false;
        if (C0733d.m5591i() && (c0735f = C0733d.f4428l) != null) {
            c0735f.m5720e();
            C0733d.f4428l.m5711b();
        }
        List<C0963c> list = this.f6458u0;
        if (list == null) {
            C1013k c1013k = this.f6462y0;
            if (c1013k != null) {
                c1013k.m7749n0(strM6092n);
                return;
            }
            return;
        }
        if (this.f6460w0) {
            list.set(0, new C0963c(C0964c0.m7189m(m2385D(), 2131689684), strM6092n, BitmapFactory.decodeFile(strM6092n)));
        } else {
            list.add(0, new C0963c(C0964c0.m7189m(m2385D(), 2131689684), strM6092n, BitmapFactory.decodeFile(strM6092n)));
        }
        this.f6459v0 = new C0965d((LinkedList) this.f6458u0, m2385D());
        this.f6461x0.setImageBitmap(BitmapFactory.decodeFile(strM6092n));
        m7808U2(strM6092n);
    }

    /* JADX INFO: renamed from: F2 */
    private void m7796F2() {
        m7834G2(this.f6442e0, this.f6449l0);
    }

    /* JADX INFO: renamed from: H2 */
    private static double m7797H2(String str) {
        double d2 = 0.0d;
        int i2 = 0;
        while (i2 < str.length()) {
            int i3 = i2 + 1;
            d2 += str.substring(i2, i3).matches("[一-龥]") ? 1.0d : 0.5d;
            i2 = i3;
        }
        return Math.ceil(d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: I2 */
    public Map<String, String> m7798I2(String str, String str2) {
        HashMap map = new HashMap();
        map.put("notes", str2);
        String strM6859c = C0925p.m6859c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strM6859c2 = C0925p.m6859c("ro.board.platform", BuildConfig.FLAVOR);
        map.put("resolution", C0925p.f5874k + "x" + C0925p.f5875l);
        map.put("manufacturer", strM6859c);
        map.put("platform", strM6859c2);
        map.put("huid", C0953u.m7001z().m7062w());
        if ("app.log".equals(str)) {
            map.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
            map.put("mfd", new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault()).format(new Date(Build.TIME)));
            map.put("version", "2025.03.19.1126");
            map.put("uuid", C0953u.m7001z().m7010I());
            map.put("model", Build.MODEL);
        } else {
            map.put("android", C0732c.m5542e().m5550h());
            map.put("mfd", C0732c.m5542e().m5550h());
            map.put("ufn", C0732c.m5542e().m5546c());
            map.put("version", C0732c.m5542e().m5558p());
            map.put("uuid", C0732c.m5542e().m5557o());
            map.put("model", C0732c.m5542e().m5551i());
        }
        return map;
    }

    /* JADX INFO: renamed from: J2 */
    private void m7799J2(View view) {
        BufferedReader bufferedReader;
        int iM7187k = C0964c0.m7187k(m2404K(), "CarIconLayout");
        if (iM7187k > 0) {
        }
        int iM7187k2 = C0964c0.m7187k(m2404K(), "imgCurCarLogo");
        if (iM7187k2 > 0) {
            this.f6461x0 = (ImageView) view.findViewById(iM7187k2);
        }
        ImageView imageView = this.f6461x0;
        if (imageView != null) {
            imageView.setOnClickListener(this);
            this.f6458u0 = new LinkedList();
            String strM6092n = C0795b0.m6071i().m6092n("CarPlayOEMIconPath", BuildConfig.FLAVOR);
            C0982s.m7373c("SettingsFragment,initCarLogo: oldPath = " + strM6092n);
            File file = new File(m2385D().getCacheDir(), "custom.png");
            if (file.exists() && file.isFile()) {
                this.f6460w0 = true;
                String absolutePath = file.getAbsolutePath();
                C0982s.m7373c("SettingsFragment,initCarLogo: path = " + absolutePath);
                String strM6092n2 = C0795b0.m6071i().m6092n("CarPlayOEMIconName", BuildConfig.FLAVOR);
                C0982s.m7373c("SettingsFragment,initCarLogo: name = " + strM6092n2);
                if (BuildConfig.FLAVOR.equals(strM6092n2)) {
                    strM6092n2 = C0964c0.m7189m(m2385D(), 2131689684);
                }
                this.f6458u0.add(new C0963c(strM6092n2, absolutePath, BitmapFactory.decodeFile(absolutePath)));
                if (absolutePath.equals(strM6092n)) {
                    this.f6461x0.setImageBitmap(BitmapFactory.decodeFile(absolutePath));
                }
            }
            StringBuilder sb = new StringBuilder();
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(m2385D().getAssets().open("carlogo.json"), "utf-8"));
            } catch (Exception unused) {
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                } else {
                    sb.append(line);
                }
                this.f6459v0 = new C0965d((LinkedList) this.f6458u0, m2385D());
            }
            JSONArray jSONArray = new JSONArray(sb.toString());
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String string = jSONObject.getString("name");
                if (!string.equalsIgnoreCase("riddleAdd") && !string.equalsIgnoreCase("riddleDefault")) {
                    String string2 = jSONObject.getString("path");
                    String string3 = jSONObject.getString("zh-CN");
                    if (string2.equals(strM6092n)) {
                        this.f6461x0.setImageBitmap(C0964c0.m7183g(m2385D(), string2));
                    }
                    if (i2 == 0 && BuildConfig.FLAVOR.equals(strM6092n)) {
                        this.f6461x0.setImageBitmap(C0964c0.m7183g(m2385D(), string2));
                    }
                    try {
                        if (string.equalsIgnoreCase("addCustomLogo")) {
                            this.f6458u0.add(new C0963c(C0964c0.m7189m(m2385D(), 2131689560), string2, C0964c0.m7183g(m2385D(), string2)));
                        } else if (C1002x.m7501i()) {
                            this.f6458u0.add(new C0963c(string3, string2, C0964c0.m7183g(m2385D(), string2)));
                        } else {
                            this.f6458u0.add(new C0963c(string, string2, C0964c0.m7183g(m2385D(), string2)));
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
            this.f6459v0 = new C0965d((LinkedList) this.f6458u0, m2385D());
        }
    }

    /* JADX INFO: renamed from: K2 */
    private void m7800K2(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(2131296579);
        if (linearLayout != null) {
            linearLayout.setOnClickListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: L2 */
    public void m7801L2() {
        C0982s.m7374d("SettingsFragment", "installApk: ######");
        if (Build.VERSION.SDK_INT < 26) {
            C0882a.m6522D2(m2401J(), new d(), false);
            return;
        }
        if (m2403J1().getPackageManager().canRequestPackageInstalls()) {
            C0882a.m6522D2(m2401J(), new c(), false);
            return;
        }
        m2458c2(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + m2403J1().getPackageName())), 3);
    }

    /* JADX INFO: renamed from: N2 */
    private static boolean m7802N2(int i2) {
        return (i2 >= 9728 && i2 <= 10175) || i2 == 12349 || i2 == 8265 || i2 == 8252 || (i2 >= 8192 && i2 <= 8207) || ((i2 >= 8232 && i2 <= 8239) || i2 == 8287 || ((i2 >= 8293 && i2 <= 8303) || ((i2 >= 8448 && i2 <= 8527) || ((i2 >= 8960 && i2 <= 9215) || ((i2 >= 11008 && i2 <= 11263) || ((i2 >= 10496 && i2 <= 10623) || ((i2 >= 12800 && i2 <= 13055) || ((i2 >= 55296 && i2 <= 57343) || ((i2 >= 57344 && i2 <= 63743) || ((i2 >= 65024 && i2 <= 65039) || i2 >= 65536))))))))));
    }

    /* JADX INFO: renamed from: O2 */
    private void m7803O2() {
        TextView textView = this.f6455r0;
        if (textView != null) {
            textView.setText(C0964c0.m7189m(m2385D(), 2131689478));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 8388613;
            this.f6455r0.setLayoutParams(layoutParams);
        }
        this.f6462y0.m7746j0(0);
    }

    /* JADX INFO: renamed from: P2 */
    private void m7804P2() {
        DialogC0886e.a aVar = new DialogC0886e.a(m2404K());
        aVar.m6574b(2131689969);
        DialogC0886e dialogC0886eM6573a = aVar.m6573a();
        dialogC0886eM6573a.m6572i(this);
        dialogC0886eM6573a.show();
        boolean z = C0982s.f6143a;
        this.f6441d0 = true;
        m7792B2();
        this.f6462y0.m7751p();
        if (z) {
            new Thread(new f()).start();
        }
    }

    /* JADX INFO: renamed from: Q2 */
    private void m7805Q2() {
        f6436B0 = true;
        if (this.f6450m0 != null) {
            this.f6438a0 = true;
            new Handler().postDelayed(new g(), 1500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: R2 */
    public void m7806R2() {
        this.f6450m0.setText(C0964c0.m7189m(m2385D(), 2131689626));
        this.f6450m0.setEnabled(true);
        this.f6454q0.setVisibility(8);
        this.f6452o0.setVisibility(8);
        this.f6455r0.setVisibility(8);
        this.f6453p0.setVisibility(8);
        this.f6457t0.m6100m(false, C0964c0.m7189m(m2385D(), 2131689876));
        this.f6457t0.m6101n(false, BuildConfig.FLAVOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: T2 */
    public void m7807T2(String str, String str2) {
        int i2;
        try {
            i2 = new JSONObject(str).getInt("err");
        } catch (JSONException e2) {
            C0982s.m7375e("SettingsFragment,onUploadFileSuccess: \n" + Log.getStackTraceString(e2));
            i2 = 0;
        }
        if (i2 == 0) {
            C1000a.m7488a(m2385D(), 2131689798);
            C0977n.m7303f(str2);
        } else {
            String string = m2385D().getResources().getString(2131689799);
            C1000a.m7489b(m2385D(), string + "(" + i2 + ")");
            C0982s.m7375e("SettingsFragment,onUploadFileSuccess: " + i2 + " " + BuildConfig.FLAVOR);
        }
        this.f6451n0.setText(2131689632);
        this.f6451n0.setEnabled(true);
    }

    /* JADX INFO: renamed from: U2 */
    private void m7808U2(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(m2385D());
        builder.setTitle(C0964c0.m7189m(m2385D(), 2131689758));
        EditText editText = new EditText(m2385D());
        editText.setTextSize(m2459d0().getDimensionPixelSize(2131165879));
        builder.setView(editText);
        builder.setPositiveButton(C0964c0.m7189m(m2385D(), 2131689891), (DialogInterface.OnClickListener) null);
        builder.setNegativeButton(C0964c0.m7189m(m2385D(), 2131689638), new a(this));
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new b(editText, str, alertDialogCreate));
    }

    /* JADX INFO: renamed from: V2 */
    private void m7809V2() {
        boolean z;
        String strM6092n = C0795b0.m6071i().m6092n("AppLatestVer", BuildConfig.FLAVOR);
        C0982s.m7373c("SettingsFragment,showAppNewVerInfo: " + this.f6445h0);
        if (strM6092n.equals(this.f6445h0)) {
            z = false;
        } else {
            this.f6445h0.equals(BuildConfig.FLAVOR);
            z = true;
        }
        if (!this.f6438a0) {
            z = true;
        }
        if (!z) {
            this.f6450m0.setText(C0964c0.m7189m(m2385D(), 2131689622));
            this.f6454q0.setVisibility(8);
            this.f6452o0.setVisibility(8);
            this.f6457t0.m6100m(false, BuildConfig.FLAVOR);
            return;
        }
        this.f6454q0.setVisibility(0);
        if (this.f6447j0) {
            this.f6452o0.setVisibility(0);
            String str = C0964c0.m7189m(m2385D(), 2131689991) + "\n\t\t" + this.f6446i0.replace("\n", "\n\t\t");
            this.f6454q0.setTextColor(this.f6456s0);
            this.f6454q0.setText(str);
            this.f6457t0.m6100m(true, str);
            return;
        }
        this.f6452o0.setVisibility(8);
        String str2 = "AutoKit " + C0964c0.m7189m(m2385D(), 2131689792);
        this.f6454q0.setText(2131689792);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 8388611;
        this.f6454q0.setLayoutParams(layoutParams);
        this.f6457t0.m6100m(false, str2);
    }

    /* JADX INFO: renamed from: W2 */
    private void m7810W2() {
        boolean z;
        if (C0795b0.m6071i().m6092n("BoxLatestVer", BuildConfig.FLAVOR).equals(this.f6442e0)) {
            z = false;
        } else {
            if (C0733d.m5591i() && !this.f6442e0.equals(BuildConfig.FLAVOR)) {
                C0795b0.m6071i().m6085F("BoxLatestVer", this.f6442e0);
            }
            z = true;
        }
        if (!this.f6438a0) {
            z = true;
        }
        C0982s.m7373c("SettingsFragment,showBoxNewVerInfo: bNeedShow = " + z + ", mIsNewBox = " + this.f6448k0);
        if (!z) {
            this.f6450m0.setText(C0964c0.m7189m(m2385D(), 2131689622));
            this.f6455r0.setVisibility(8);
            this.f6453p0.setVisibility(8);
            this.f6457t0.m6101n(false, BuildConfig.FLAVOR);
            return;
        }
        this.f6455r0.setVisibility(0);
        if (!C0733d.m5591i()) {
            this.f6453p0.setVisibility(8);
            this.f6457t0.m6101n(false, C0964c0.m7189m(m2385D(), 2131689478));
            m7803O2();
            return;
        }
        if (!this.f6448k0) {
            this.f6453p0.setVisibility(8);
            if (C0925p.m6860d(C0925p.f5865b)) {
                this.f6455r0.setText(C0964c0.m7189m(m2385D(), 2131689612));
                this.f6457t0.m6101n(false, C0964c0.m7189m(m2385D(), 2131689612));
            } else {
                this.f6455r0.setText(C0964c0.m7189m(m2385D(), 2131689478));
                this.f6457t0.m6101n(false, C0964c0.m7189m(m2385D(), 2131689478));
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 8388613;
            this.f6455r0.setLayoutParams(layoutParams);
            return;
        }
        this.f6453p0.setVisibility(0);
        String str = C0964c0.m7189m(m2385D(), 2131689991) + "\n\t\t" + this.f6443f0.replace("\n", "\n\t\t");
        this.f6455r0.setTextColor(this.f6456s0);
        this.f6455r0.setText(str);
        this.f6457t0.m6101n(true, str);
    }

    /* JADX INFO: renamed from: X2 */
    private void m7811X2() {
        String strM7182f = C0964c0.m7182f(m2404K());
        C0982s.m7373c("SettingsFragment,upgradeApp: filePath = " + strM7182f);
        File file = new File(strM7182f);
        if (file.exists()) {
            String strM7186j = C0964c0.m7186j(file);
            C0982s.m7373c("SettingsFragment,upgradeApp: Client: " + strM7186j + ", Server: " + this.f6444g0);
            if (this.f6444g0.equals(strM7186j) && m7829w2(m2404K(), this.f6445h0, strM7182f)) {
                m7801L2();
            }
            C0977n.m7303f(strM7182f);
        }
        this.f6457t0.mo6058o();
        HashMap map = new HashMap();
        map.put("ver", this.f6445h0);
        map.put("id", this.f6444g0);
        C0979p c0979p = new C0979p(30);
        m7837v2(c0979p);
        c0979p.m7340d("/a/upgrade/down", map, strM7182f, new m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Y2 */
    public void m7812Y2() {
        File cacheDir = m2385D().getCacheDir();
        if (cacheDir.exists() && cacheDir.isDirectory()) {
            String str = cacheDir.getAbsolutePath() + "/Auto_Box_Update.img";
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(str);
                    int iAvailable = fileInputStream.available();
                    if (iAvailable > 52428800) {
                        C0982s.m7375e("SettingsFragment,upgradeBox: The upgrade file is too large. size=" + iAvailable);
                        fileInputStream.close();
                        return;
                    }
                    byte[] bArr = new byte[iAvailable];
                    int i2 = fileInputStream.read(bArr, 0, iAvailable);
                    fileInputStream.close();
                    if (i2 != iAvailable || C0733d.f4428l == null) {
                        return;
                    }
                    C0733d.f4428l.m5750w1("/tmp/Auto_Box_Update.img\u0000", bArr);
                } catch (Exception e2) {
                    C0982s.m7375e("SettingsFragment,upgradeBox: \n" + Log.getStackTraceString(e2));
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /* JADX INFO: renamed from: Z2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m7813Z2(String str) {
        boolean z;
        C0982s.m7379i("SettingsFragment", "uploadAppLog: ########" + C0982s.f6143a);
        File fileM7313p = C0977n.m7313p(m2404K());
        boolean z2 = fileM7313p != null;
        boolean zEquals = true ^ BuildConfig.FLAVOR.equals(C0925p.f5868e);
        if (zEquals) {
            File file = new File(C0925p.f5868e);
            z = (file.isFile() && file.exists()) ? zEquals : false;
        }
        if (!z2) {
            C1000a.m7488a(m2385D(), 2131689884);
            return;
        }
        File fileM7305h = C0977n.m7305h(fileM7313p);
        if (fileM7305h == null) {
            C1000a.m7488a(m2385D(), 2131689884);
            return;
        }
        this.f6451n0.setText(C0964c0.m7189m(m2385D(), 2131689633));
        this.f6451n0.setEnabled(false);
        String str2 = "app.xlog";
        if (!fileM7305h.getName().endsWith(".xlog") && !fileM7305h.getName().endsWith(".bs64")) {
            str2 = "app.log";
        }
        String str3 = C0953u.m7001z().m7010I().substring(0, 12) + "_" + str2;
        Map<String, String> mapM7798I2 = m7798I2("app.log", str);
        C0979p c0979p = new C0979p(30);
        c0979p.m7343o("/a/upload/log", mapM7798I2, str3, fileM7305h.getAbsolutePath(), new k(z, str, c0979p, fileM7305h));
        if (C0733d.m5591i()) {
            this.f6457t0.mo6051c(C0732c.m5542e().m5557o(), str);
        } else {
            this.f6457t0.mo6051c(mapM7798I2.get("uuid"), str);
        }
    }

    /* JADX INFO: renamed from: w2 */
    private boolean m7829w2(Context context, String str, String str2) {
        if (context == null) {
            return true;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(str2, 1);
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            if (packageArchiveInfo != null && packageInfo != null) {
                String str3 = packageArchiveInfo.versionName;
                String string = packageManager.getApplicationLabel(packageArchiveInfo.applicationInfo).toString();
                String str4 = packageInfo.versionName;
                String string2 = packageManager.getApplicationLabel(context.getApplicationInfo()).toString();
                C0982s.m7373c("SettingsFragment,checkApk: " + string2 + "," + str4 + "--" + string + "," + str3);
                if (str3.equals(str) && str3.compareTo(str4) > 0) {
                    if (string.equals(string2)) {
                        return true;
                    }
                }
                return false;
            }
        } catch (Exception e2) {
            C0982s.m7375e("SettingsFragment,checkApk: \n" + Log.getStackTraceString(e2));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x2 */
    public void m7830x2(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("cku") && jSONObject.getInt("cku") == 0) {
                C0925p.f5855B = false;
            }
            C0979p.f6104f = jSONObject.getString("token");
            String string = jSONObject.getString("ver");
            if (string.compareTo("2025.03.19.1126") > 0) {
                this.f6444g0 = jSONObject.getString("id");
                this.f6446i0 = jSONObject.getString("notes");
                this.f6445h0 = string;
                this.f6447j0 = true;
            } else {
                this.f6445h0 = "2025.03.19.1126";
                this.f6447j0 = false;
            }
        } catch (Exception e2) {
            C0982s.m7375e("SettingsFragment,checkAppVer: " + str + "\n" + Log.getStackTraceString(e2));
        }
        m7809V2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y2 */
    public void m7831y2() {
        if (m2404K() != null && m2404K().getResources().getBoolean(2131034135)) {
            if (!C0733d.m5591i()) {
                this.f6453p0.setVisibility(8);
                if (this.f6438a0) {
                    this.f6455r0.setVisibility(8);
                    return;
                }
                this.f6455r0.setVisibility(0);
                m7803O2();
                this.f6457t0.m6101n(false, C0964c0.m7189m(m2385D(), 2131689478));
                return;
            }
            new HashMap(7);
            HashMap map = new HashMap(8);
            map.put("lang", BuildConfig.FLAVOR + C1002x.m7495c());
            map.put("code", "37");
            map.put("appVer", "2025.03.19.1126");
            map.put("ver", C0732c.m5542e().m5558p());
            map.put("uuid", C0732c.m5542e().m5557o());
            map.put("mfd", C0732c.m5542e().m5550h());
            map.put("fwn", C0732c.m5542e().m5546c());
            map.put("model", C0732c.m5542e().m5551i());
            new C0979p().m7342j("/a/upgrade/checkBox", map, new j());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: z2 */
    public void m7832z2(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            C0979p.f6104f = jSONObject.getString("token");
            String string = jSONObject.getString("ver");
            C0982s.m7373c("SettingsFragment,checkBoxVer: new:" + string + ", old:" + C0732c.m5542e().m5558p());
            if (string.compareTo(C0732c.m5542e().m5558p()) > 0) {
                this.f6449l0 = jSONObject.getString("id");
                this.f6443f0 = jSONObject.getString("notes");
                this.f6442e0 = string;
                this.f6448k0 = true;
            } else {
                this.f6442e0 = C0732c.m5542e().m5558p();
                this.f6448k0 = false;
            }
        } catch (Exception e2) {
            C0982s.m7375e("SettingsFragment,checkBoxVer: \n" + Log.getStackTraceString(e2));
        }
        m7810W2();
    }

    /* JADX INFO: renamed from: A2 */
    public void m7833A2() {
        C0982s.m7373c("SettingsFragment,checkUpdate: ======");
        if (m2486q0() && m2459d0().getBoolean(2131034135)) {
            HashMap map = new HashMap(7);
            map.put("lang", BuildConfig.FLAVOR + C1002x.m7495c());
            map.put("code", "37");
            map.put("ver", "2025.03.19.1126");
            map.put("uuid", C0953u.m7001z().m7010I());
            map.put("r", BuildConfig.FLAVOR + C0925p.f5874k + "x" + C0925p.f5875l);
            map.put("m", Build.MODEL);
            map.put("pkg", MyApplication.m5997b().getPackageName());
            new C0979p().m7342j("/a/upgrade/checkApp", map, new i());
            m7831y2();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: C0 */
    public void mo2383C0(int i2, int i3, Intent intent) {
        C0735f c0735f;
        C0982s.m7373c("SettingsFragment,onActivityResult: requestCode=" + i2 + ", resultCode=" + i3);
        if (i2 == 1) {
            if (i3 == -1) {
                m7794D2(intent.getData(), Uri.fromFile(new File(m2385D().getCacheDir(), "custom.png")));
                return;
            }
            return;
        }
        if (i2 != 2) {
            if (i2 == 3 && i3 == -1) {
                C0964c0.m7191o(m2385D(), C0964c0.m7182f(m2404K()));
                return;
            }
            return;
        }
        if (i3 == -1) {
            String absolutePath = null;
            String stringExtra = intent.getStringExtra("ImagePath");
            if (stringExtra != null) {
                File file = new File(m2385D().getCacheDir(), "custom.png");
                if (file.exists() && file.isFile()) {
                    absolutePath = file.getAbsolutePath();
                }
                if (stringExtra.equals(absolutePath)) {
                    this.f6461x0.setImageBitmap(BitmapFactory.decodeFile(stringExtra));
                } else {
                    this.f6461x0.setImageBitmap(C0964c0.m7183g(m2385D(), stringExtra));
                }
            }
            if (!C0733d.m5591i() || (c0735f = C0733d.f4428l) == null) {
                return;
            }
            c0735f.m5720e();
            C0733d.f4428l.m5711b();
        }
    }

    /* JADX INFO: renamed from: G2 */
    public void m7834G2(String str, String str2) {
        C0982s.m7373c("SettingsFragment,downloadBoxImg: " + str + "," + str2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.f6457t0.mo6058o();
        File cacheDir = m2385D().getCacheDir();
        if (cacheDir.exists() && cacheDir.isDirectory()) {
            String str3 = cacheDir.getAbsolutePath() + "/Auto_Box_Update.img";
            File file = new File(str3);
            if (file.exists()) {
                file.delete();
            }
            C0982s.m7373c("SettingsFragment,downloadBoxImg: imgPath=" + str3);
            HashMap map = new HashMap();
            map.put("ver", str);
            map.put("id", str2);
            C0979p c0979p = new C0979p(30);
            m7837v2(c0979p);
            c0979p.m7340d("/a/upgrade/down", map, str3, new l());
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LinearLayout linearLayout;
        C0982s.m7373c("SettingsFragment,onCreateView: ######");
        this.f6457t0 = new C0792a0(this);
        C0409w.a aVar = new C0409w.a(m2385D() == null ? null : m2385D().getApplication());
        C1013k c1013k = (C1013k) new C0409w(m2385D(), aVar).m3053a(C1013k.class);
        this.f6462y0 = c1013k;
        c1013k.m7738Z();
        AbstractC0873s abstractC0873s = (AbstractC0873s) C0328f.m2359e(layoutInflater, 2131492944, viewGroup, false);
        this.f6463z0 = abstractC0873s;
        View viewM2334t = abstractC0873s.m2334t();
        this.f6463z0.mo6450M(this.f6462y0);
        C1011i c1011i = (C1011i) new C0409w(this, aVar).m3053a(C1011i.class);
        c1011i.m7655F(m2385D().getSupportFragmentManager());
        this.f6463z0.mo6449L(c1011i);
        this.f6463z0.m2328G(this);
        this.f6462y0.m7748m0(this);
        this.f6462y0.m7755r0(m2385D().getSupportFragmentManager());
        m7799J2(viewM2334t);
        m7800K2(viewM2334t);
        Button button = (Button) viewM2334t.findViewById(2131296386);
        this.f6451n0 = button;
        if (button != null) {
            button.setOnClickListener(this);
        }
        Button button2 = (Button) viewM2334t.findViewById(2131296373);
        this.f6450m0 = button2;
        if (button2 != null) {
            button2.setOnClickListener(this);
        }
        Button button3 = (Button) viewM2334t.findViewById(2131296369);
        this.f6452o0 = button3;
        if (button3 != null) {
            button3.setOnClickListener(this);
            this.f6452o0.setText("AutoKit " + C0964c0.m7189m(m2385D(), 2131689631));
        }
        Button button4 = (Button) viewM2334t.findViewById(2131296371);
        this.f6453p0 = button4;
        if (button4 != null) {
            button4.setOnClickListener(this);
        }
        this.f6454q0 = (TextView) viewM2334t.findViewById(2131296894);
        TextView textView = (TextView) viewM2334t.findViewById(2131296896);
        this.f6455r0 = textView;
        if (textView != null) {
            this.f6456s0 = textView.getTextColors();
        }
        TextView textView2 = (TextView) viewM2334t.findViewById(2131296922);
        if (textView2 != null) {
            textView2.setText(C0925p.f5864a.replace("VER:", BuildConfig.FLAVOR));
        }
        C0995e.m7440M(this);
        int iM7187k = C0964c0.m7187k(m2404K(), "keyLearnLayout");
        if (iM7187k > 0 && (linearLayout = (LinearLayout) viewM2334t.findViewById(iM7187k)) != null) {
            linearLayout.setOnClickListener(this);
        }
        this.f6457t0.mo6052d(viewM2334t);
        mo2425R0(false);
        return viewM2334t;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: M0 */
    public void mo2411M0() {
        List<C0963c> list = this.f6458u0;
        if (list != null) {
            list.clear();
            this.f6458u0 = null;
        }
        C0995e.m7446S(this);
        AbstractC0796c abstractC0796c = this.f6457t0;
        if (abstractC0796c != null) {
            abstractC0796c.m6099g();
        }
        this.f6463z0 = null;
        super.mo2411M0();
        C0982s.m7373c("SettingsFragment,onDestroy: ######");
    }

    /* JADX INFO: renamed from: M2 */
    public void m7835M2(boolean z) {
        C1013k c1013k = this.f6462y0;
        if (c1013k != null) {
            c1013k.m7722I0(!z ? 1 : 0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: R0 */
    public void mo2425R0(boolean z) {
        super.mo2425R0(z);
        C0982s.m7373c("SettingsFragment,onHiddenChanged: ###### " + z);
        f6436B0 = z ^ true;
        if (!z) {
            this.f6462y0.m7744h0(false);
            return;
        }
        int iIntValue = this.f6462y0.m7713E().m2959e().intValue();
        if (iIntValue == 1) {
            iIntValue = 2;
        }
        C0735f.k.m5774c(iIntValue);
        this.f6462y0.m7744h0(true);
    }

    /* JADX INFO: renamed from: S2 */
    public void m7836S2() {
        this.f6462y0.m7745i0(false);
        new Handler().postDelayed(new e(), 2000L);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i2, Object obj) {
    }

    @Override // cn.manstep.phonemirrorBox.p091x0.InterfaceC1014l
    /* JADX INFO: renamed from: b */
    public void mo7773b(int i2) {
        if (i2 == 3) {
            this.f6457t0.mo6057l(m2401J(), 2131689700, 2131689885, 2);
            return;
        }
        if (i2 == 1 && C0733d.m5591i() && !C0735f.f4459P) {
            DialogC0970g.c cVar = new DialogC0970g.c(m2385D());
            cVar.m7247c(m2459d0().getString(2131689613));
            cVar.m7246b(true);
            cVar.m7245a(true);
            cVar.m7248d().m7243b(true);
            this.f6462y0.m7750o0();
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i2) {
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: c1 */
    public void mo2457c1() {
        C0982s.m7373c("SettingsFragment,onResume!");
        super.mo2457c1();
        C1013k c1013k = this.f6462y0;
        if (c1013k != null) {
            c1013k.m7720H0(true);
        }
        if (((MainActivity) m2385D()).f4636t) {
            m7795E2();
        }
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c.a
    /* JADX INFO: renamed from: e */
    public void mo6102e(int i2) {
        if (i2 == 2) {
            this.f6462y0.m7750o0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: f1 */
    public void mo2466f1() {
        super.mo2466f1();
        C1013k c1013k = this.f6462y0;
        if (c1013k != null) {
            c1013k.m7720H0(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        this.f6457t0.m6098f(m2404K().getResources().getConfiguration().orientation);
    }

    @Override // cn.manstep.phonemirrorBox.p091x0.InterfaceC1014l
    /* JADX INFO: renamed from: h */
    public void mo7774h(boolean z) {
        C0735f c0735f;
        if (z) {
            this.f6441d0 = false;
            C0982s.m7381k(StubApp.getOrigApplicationContext(m2406K1().getApplicationContext()));
            this.f6457t0.mo6056k(true);
            if (!C0733d.m5591i() || (c0735f = C0733d.f4428l) == null) {
                return;
            }
            c0735f.m5701U0(1);
            return;
        }
        m7792B2();
        C0982s.m7373c("SettingsFragment,closeLogSwitch: mIsUploadLog=" + this.f6441d0);
        if (this.f6441d0) {
            return;
        }
        this.f6457t0.mo6057l(m2401J(), 2131689529, 2131689970, 1);
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0796c.a
    /* JADX INFO: renamed from: i */
    public void mo6103i(int i2) {
        if (i2 == 1) {
            this.f6451n0.callOnClick();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p091x0.InterfaceC1014l
    /* JADX INFO: renamed from: l */
    public void mo7775l(boolean z) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i2) {
        C0982s.m7373c("SettingsFragment,on_Box_Phase parse: " + i2);
        if (i2 == 20) {
            m7805Q2();
            return;
        }
        if (i2 == 12) {
            C0925p.f5865b = BuildConfig.FLAVOR;
            this.f6462y0.m7746j0(0);
        }
        if (!f6436B0) {
            if (i2 == 124) {
                this.f6462y0.m7746j0(1);
                return;
            }
            return;
        }
        if (i2 == 4) {
            C0733d.f4428l.m5674E0();
            return;
        }
        if (i2 == 124) {
            if (this.f6440c0 && this.f6439b0) {
                this.f6439b0 = false;
            }
            String strM6092n = C0795b0.m6071i().m6092n("BoxLatestVer", BuildConfig.FLAVOR);
            if (this.f6442e0.equals(BuildConfig.FLAVOR) && strM6092n.equals(BuildConfig.FLAVOR)) {
                new Handler().postDelayed(new h(), 3000L);
            } else {
                m7810W2();
            }
            this.f6462y0.m7746j0(1);
            boolean z = C0735f.f4459P;
            return;
        }
        if (i2 == 13) {
            this.f6439b0 = true;
            return;
        }
        if (i2 != 12) {
            if (i2 == 123) {
                this.f6462y0.m7746j0(2);
            }
        } else {
            this.f6439b0 = true;
            Button button = this.f6453p0;
            if (button != null) {
                button.setVisibility(8);
            }
            this.f6457t0.m6101n(false, C0964c0.m7189m(m2385D(), 2131689478));
            m7803O2();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296369:
                m7811X2();
                break;
            case 2131296371:
                m7796F2();
                break;
            case 2131296373:
                this.f6438a0 = false;
                m7833A2();
                this.f6450m0.setText(C0964c0.m7189m(m2385D(), 2131689623));
                this.f6450m0.setEnabled(false);
                break;
            case 2131296386:
                m7804P2();
                break;
            case 2131296579:
                this.f6457t0.mo6055j(m2385D());
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f6457t0.m6097e(configuration);
    }

    @Override // cn.manstep.phonemirrorBox.p091x0.InterfaceC1014l
    /* JADX INFO: renamed from: r */
    public void mo7776r(int i2) {
        if (i2 != 1) {
            if (i2 == 3) {
                C0964c0.m7197u(m2385D(), 2131689566);
            }
        } else if (C1002x.m7501i()) {
            DialogC0970g.c cVar = new DialogC0970g.c(m2385D());
            cVar.m7247c(m2459d0().getString(2131689952));
            cVar.m7246b(true);
            cVar.m7245a(true);
            cVar.m7248d().m7243b(true);
        }
    }

    @Override // cn.manstep.phonemirrorBox.p091x0.InterfaceC1014l
    /* JADX INFO: renamed from: t */
    public void mo7777t() {
        AbstractC0796c abstractC0796c = this.f6457t0;
        if (abstractC0796c != null) {
            abstractC0796c.mo6050b();
        }
    }

    @Override // cn.manstep.phonemirrorBox.p077k0.DialogC0886e.b
    /* JADX INFO: renamed from: u */
    public void mo6575u(String str) {
        if (m7797H2(str) > 140 || m7797H2(str) <= 0.0d || m7793C2(str)) {
            return;
        }
        m7813Z2(str);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
    }

    /* JADX INFO: renamed from: v2 */
    public void m7837v2(C0979p c0979p) {
        this.f6437A0.add(c0979p);
    }
}
