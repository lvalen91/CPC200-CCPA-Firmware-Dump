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
import androidx.fragment.app.Fragment;
import androidx.lifecycle.w;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import cn.manstep.phonemirrorBox.BoxInterface.f;
import cn.manstep.phonemirrorBox.c;
import cn.manstep.phonemirrorBox.k0.e;
import cn.manstep.phonemirrorBox.util.g;
import cn.manstep.phonemirrorBox.util.p;
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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class z extends Fragment implements View.OnClickListener, d.g, c.a, e.b, cn.manstep.phonemirrorBox.x0.l {
    public static boolean B0;
    private Button m0;
    private Button n0;
    private Button o0;
    private Button p0;
    private TextView q0;
    private TextView r0;
    private ColorStateList s0;
    private cn.manstep.phonemirrorBox.c t0;
    private ImageView x0;
    public cn.manstep.phonemirrorBox.x0.k y0;
    private cn.manstep.phonemirrorBox.i0.s z0;
    private boolean a0 = false;
    private boolean b0 = true;
    private boolean c0 = false;
    private boolean d0 = false;
    private String e0 = BuildConfig.FLAVOR;
    private String f0 = BuildConfig.FLAVOR;
    private String g0 = BuildConfig.FLAVOR;
    private String h0 = BuildConfig.FLAVOR;
    private String i0 = BuildConfig.FLAVOR;
    private boolean j0 = false;
    private boolean k0 = false;
    private String l0 = BuildConfig.FLAVOR;
    private List<cn.manstep.phonemirrorBox.util.c> u0 = null;
    private cn.manstep.phonemirrorBox.util.d v0 = null;
    private boolean w0 = false;
    LinkedList<cn.manstep.phonemirrorBox.util.p> A0 = new LinkedList<>();

    class a implements DialogInterface.OnClickListener {
        a(z zVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ EditText f1986b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f1987c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ AlertDialog f1988d;

        b(EditText editText, String str, AlertDialog alertDialog) {
            this.f1986b = editText;
            this.f1987c = str;
            this.f1988d = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.manstep.phonemirrorBox.BoxInterface.f fVar;
            String string = this.f1986b.getText().toString();
            if (!string.equals(BuildConfig.FLAVOR)) {
                b0.i().F("CarPlayOEMIconName", string);
                List list = z.this.u0;
                String str = this.f1987c;
                list.set(0, new cn.manstep.phonemirrorBox.util.c(string, str, BitmapFactory.decodeFile(str)));
                z.this.v0.notifyDataSetInvalidated();
                if (cn.manstep.phonemirrorBox.BoxInterface.d.i() && (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) != null) {
                    fVar.b();
                }
            }
            this.f1988d.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.manstep.phonemirrorBox.util.c0.o(z.this.D(), cn.manstep.phonemirrorBox.util.c0.f(z.this.K1()));
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.manstep.phonemirrorBox.util.c0.o(z.this.D(), cn.manstep.phonemirrorBox.util.c0.f(z.this.K1()));
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.manstep.phonemirrorBox.BoxInterface.d.j();
            cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
            if (fVar != null) {
                fVar.Y0();
            }
            z.this.y0.i0(true);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.manstep.phonemirrorBox.util.s.b();
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            cn.manstep.phonemirrorBox.util.s.k(StubApp.getOrigApplicationContext(z.this.K1().getApplicationContext()));
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.A2();
            z.this.m0.setText(cn.manstep.phonemirrorBox.util.c0.m(z.this.D(), 2131689623));
            z.this.m0.setEnabled(false);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.a0 = false;
            z.this.y2();
        }
    }

    class i implements p.e {
        i() {
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            z.this.R2();
            boolean unused = z.this.a0;
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            if (!p.z) {
                z.this.x2(str);
            }
            z.this.m0.setText(cn.manstep.phonemirrorBox.util.c0.m(z.this.D(), 2131689626));
            z.this.m0.setEnabled(true);
        }
    }

    class j implements p.e {
        j() {
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            z.this.R2();
            boolean unused = z.this.a0;
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,checkBoxUpdate->success: " + str);
            z.this.z2(str);
            z.this.m0.setText(cn.manstep.phonemirrorBox.util.c0.m(z.this.D(), 2131689626));
            z.this.m0.setEnabled(true);
        }
    }

    class k implements p.e {
        final /* synthetic */ boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1995b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ cn.manstep.phonemirrorBox.util.p f1996c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ File f1997d;

        class a implements p.e {
            a() {
            }

            @Override // cn.manstep.phonemirrorBox.util.p.e
            public void b(String str) {
                cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,uploadLog:failure: box.log !!!");
                cn.manstep.phonemirrorBox.util.n.f(p.e);
                z.this.R2();
                z.this.n0.setText(cn.manstep.phonemirrorBox.util.c0.m(z.this.D(), 2131689632));
                z.this.n0.setEnabled(true);
            }

            @Override // cn.manstep.phonemirrorBox.util.p.e
            public void c(String str) {
                cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,uploadLog:success: box.log " + str);
                z.this.T2(str, p.e);
            }
        }

        k(boolean z, String str, cn.manstep.phonemirrorBox.util.p pVar, File file) {
            this.a = z;
            this.f1995b = str;
            this.f1996c = pVar;
            this.f1997d = file;
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,uploadLog:failure: app.log !!!");
            z.this.R2();
            z.this.n0.setText(cn.manstep.phonemirrorBox.util.c0.m(z.this.D(), 2131689632));
            z.this.n0.setEnabled(true);
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,uploadLog:success: app.log " + str);
            if (this.a) {
                this.f1996c.o("/a/upload/log", z.this.I2("box.log", this.f1995b), u.z().I().substring(0, 12) + "_box.log", p.e, new a());
            }
            z.this.T2(str, this.f1997d.getAbsolutePath());
            cn.manstep.phonemirrorBox.util.n.b(z.this.K());
        }
    }

    class l implements p.f {
        l() {
        }

        @Override // cn.manstep.phonemirrorBox.util.p.f
        public void a() {
            z.this.t0.a();
            z.this.t0.n(false, BuildConfig.FLAVOR);
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            z.this.R2();
            z.this.t0.a();
            z.this.t0.n(false, BuildConfig.FLAVOR);
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            z.this.t0.a();
            z.this.Y2();
        }

        @Override // cn.manstep.phonemirrorBox.util.p.f
        public void d(long j) {
            z.this.t0.i((int) j);
        }

        @Override // cn.manstep.phonemirrorBox.util.p.f
        public void e(long j) {
            z.this.t0.h((int) j);
        }
    }

    class m implements p.f {
        m() {
        }

        @Override // cn.manstep.phonemirrorBox.util.p.f
        public void a() {
            z.this.t0.a();
            z.this.t0.m(false, BuildConfig.FLAVOR);
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void b(String str) {
            z.this.R2();
            z.this.t0.a();
            z.this.t0.m(false, BuildConfig.FLAVOR);
        }

        @Override // cn.manstep.phonemirrorBox.util.p.e
        public void c(String str) {
            z.this.t0.a();
            z.this.L2();
        }

        @Override // cn.manstep.phonemirrorBox.util.p.f
        public void d(long j) {
            z.this.t0.i((int) j);
        }

        @Override // cn.manstep.phonemirrorBox.util.p.f
        public void e(long j) {
            z.this.t0.h((int) j);
        }
    }

    private void B2() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        cn.manstep.phonemirrorBox.util.s.b();
        this.t0.k(false);
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
            return;
        }
        fVar.U0(2);
    }

    private static boolean C2(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (N2(cCharAt)) {
                cn.manstep.phonemirrorBox.util.s.c("CustomSubmitProblemDialog codePoint=" + cCharAt);
                return true;
            }
        }
        return false;
    }

    private void D2(Uri uri, Uri uri2) {
        UCrop.Options options = new UCrop.Options();
        options.setToolbarColor(androidx.core.content.a.b(D(), 2131099741));
        options.setStatusBarColor(androidx.core.content.a.b(D(), 2131099741));
        options.setCompressionFormat(Bitmap.CompressFormat.PNG);
        options.setCompressionQuality(100);
        options.setHideBottomControls(true);
        options.setToolbarTitle(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689909));
        UCrop.of(uri, uri2).withAspectRatio(1.0f, 1.0f).withMaxResultSize(180, 180).withOptions(options).start(D());
    }

    private void E2() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,cropSuccess: " + ((MainActivity) D()).t);
        String strN = b0.i().n("CarPlayOEMIconPath", BuildConfig.FLAVOR);
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,cropSuccess: " + strN);
        ((MainActivity) D()).t = false;
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i() && (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) != null) {
            fVar.e();
            cn.manstep.phonemirrorBox.BoxInterface.d.l.b();
        }
        List<cn.manstep.phonemirrorBox.util.c> list = this.u0;
        if (list == null) {
            cn.manstep.phonemirrorBox.x0.k kVar = this.y0;
            if (kVar != null) {
                kVar.n0(strN);
                return;
            }
            return;
        }
        if (this.w0) {
            list.set(0, new cn.manstep.phonemirrorBox.util.c(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689684), strN, BitmapFactory.decodeFile(strN)));
        } else {
            list.add(0, new cn.manstep.phonemirrorBox.util.c(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689684), strN, BitmapFactory.decodeFile(strN)));
        }
        this.v0 = new cn.manstep.phonemirrorBox.util.d((LinkedList) this.u0, D());
        this.x0.setImageBitmap(BitmapFactory.decodeFile(strN));
        U2(strN);
    }

    private void F2() {
        G2(this.e0, this.l0);
    }

    private static double H2(String str) {
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
    public Map<String, String> I2(String str, String str2) {
        HashMap map = new HashMap();
        map.put("notes", str2);
        String strC = p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        String strC2 = p.c("ro.board.platform", BuildConfig.FLAVOR);
        map.put("resolution", p.k + "x" + p.l);
        map.put("manufacturer", strC);
        map.put("platform", strC2);
        map.put("huid", u.z().w());
        if ("app.log".equals(str)) {
            map.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
            map.put("mfd", new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault()).format(new Date(Build.TIME)));
            map.put("version", "2025.03.19.1126");
            map.put("uuid", u.z().I());
            map.put("model", Build.MODEL);
        } else {
            map.put("android", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
            map.put("mfd", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
            map.put("ufn", cn.manstep.phonemirrorBox.BoxInterface.c.e().c());
            map.put("version", cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
            map.put("uuid", cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
            map.put("model", cn.manstep.phonemirrorBox.BoxInterface.c.e().i());
        }
        return map;
    }

    private void J2(View view) {
        BufferedReader bufferedReader;
        int iK = cn.manstep.phonemirrorBox.util.c0.k(K(), "CarIconLayout");
        if (iK > 0) {
        }
        int iK2 = cn.manstep.phonemirrorBox.util.c0.k(K(), "imgCurCarLogo");
        if (iK2 > 0) {
            this.x0 = (ImageView) view.findViewById(iK2);
        }
        ImageView imageView = this.x0;
        if (imageView != null) {
            imageView.setOnClickListener(this);
            this.u0 = new LinkedList();
            String strN = b0.i().n("CarPlayOEMIconPath", BuildConfig.FLAVOR);
            cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,initCarLogo: oldPath = " + strN);
            File file = new File(D().getCacheDir(), "custom.png");
            if (file.exists() && file.isFile()) {
                this.w0 = true;
                String absolutePath = file.getAbsolutePath();
                cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,initCarLogo: path = " + absolutePath);
                String strN2 = b0.i().n("CarPlayOEMIconName", BuildConfig.FLAVOR);
                cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,initCarLogo: name = " + strN2);
                if (BuildConfig.FLAVOR.equals(strN2)) {
                    strN2 = cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689684);
                }
                this.u0.add(new cn.manstep.phonemirrorBox.util.c(strN2, absolutePath, BitmapFactory.decodeFile(absolutePath)));
                if (absolutePath.equals(strN)) {
                    this.x0.setImageBitmap(BitmapFactory.decodeFile(absolutePath));
                }
            }
            StringBuilder sb = new StringBuilder();
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(D().getAssets().open("carlogo.json"), "utf-8"));
            } catch (Exception unused) {
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                } else {
                    sb.append(line);
                }
                this.v0 = new cn.manstep.phonemirrorBox.util.d((LinkedList) this.u0, D());
            }
            JSONArray jSONArray = new JSONArray(sb.toString());
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String string = jSONObject.getString("name");
                if (!string.equalsIgnoreCase("riddleAdd") && !string.equalsIgnoreCase("riddleDefault")) {
                    String string2 = jSONObject.getString("path");
                    String string3 = jSONObject.getString("zh-CN");
                    if (string2.equals(strN)) {
                        this.x0.setImageBitmap(cn.manstep.phonemirrorBox.util.c0.g(D(), string2));
                    }
                    if (i2 == 0 && BuildConfig.FLAVOR.equals(strN)) {
                        this.x0.setImageBitmap(cn.manstep.phonemirrorBox.util.c0.g(D(), string2));
                    }
                    try {
                        if (string.equalsIgnoreCase("addCustomLogo")) {
                            this.u0.add(new cn.manstep.phonemirrorBox.util.c(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689560), string2, cn.manstep.phonemirrorBox.util.c0.g(D(), string2)));
                        } else if (x.i()) {
                            this.u0.add(new cn.manstep.phonemirrorBox.util.c(string3, string2, cn.manstep.phonemirrorBox.util.c0.g(D(), string2)));
                        } else {
                            this.u0.add(new cn.manstep.phonemirrorBox.util.c(string, string2, cn.manstep.phonemirrorBox.util.c0.g(D(), string2)));
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
            this.v0 = new cn.manstep.phonemirrorBox.util.d((LinkedList) this.u0, D());
        }
    }

    private void K2(View view) {
        LinearLayout linearLayout = (LinearLayout) view.findViewById(2131296579);
        if (linearLayout != null) {
            linearLayout.setOnClickListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L2() {
        cn.manstep.phonemirrorBox.util.s.d("SettingsFragment", "installApk: ######");
        if (Build.VERSION.SDK_INT < 26) {
            cn.manstep.phonemirrorBox.k0.a.D2(J(), new d(), false);
            return;
        }
        if (J1().getPackageManager().canRequestPackageInstalls()) {
            cn.manstep.phonemirrorBox.k0.a.D2(J(), new c(), false);
            return;
        }
        c2(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + J1().getPackageName())), 3);
    }

    private static boolean N2(int i2) {
        return (i2 >= 9728 && i2 <= 10175) || i2 == 12349 || i2 == 8265 || i2 == 8252 || (i2 >= 8192 && i2 <= 8207) || ((i2 >= 8232 && i2 <= 8239) || i2 == 8287 || ((i2 >= 8293 && i2 <= 8303) || ((i2 >= 8448 && i2 <= 8527) || ((i2 >= 8960 && i2 <= 9215) || ((i2 >= 11008 && i2 <= 11263) || ((i2 >= 10496 && i2 <= 10623) || ((i2 >= 12800 && i2 <= 13055) || ((i2 >= 55296 && i2 <= 57343) || ((i2 >= 57344 && i2 <= 63743) || ((i2 >= 65024 && i2 <= 65039) || i2 >= 65536))))))))));
    }

    private void O2() {
        TextView textView = this.r0;
        if (textView != null) {
            textView.setText(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689478));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 8388613;
            this.r0.setLayoutParams(layoutParams);
        }
        this.y0.j0(0);
    }

    private void P2() {
        e.a aVar = new e.a(K());
        aVar.b(2131689969);
        cn.manstep.phonemirrorBox.k0.e eVarA = aVar.a();
        eVarA.i(this);
        eVarA.show();
        boolean z = cn.manstep.phonemirrorBox.util.s.a;
        this.d0 = true;
        B2();
        this.y0.p();
        if (z) {
            new Thread(new f()).start();
        }
    }

    private void Q2() {
        B0 = true;
        if (this.m0 != null) {
            this.a0 = true;
            new Handler().postDelayed(new g(), 1500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R2() {
        this.m0.setText(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689626));
        this.m0.setEnabled(true);
        this.q0.setVisibility(8);
        this.o0.setVisibility(8);
        this.r0.setVisibility(8);
        this.p0.setVisibility(8);
        this.t0.m(false, cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689876));
        this.t0.n(false, BuildConfig.FLAVOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T2(String str, String str2) {
        int i2;
        try {
            i2 = new JSONObject(str).getInt("err");
        } catch (JSONException e2) {
            cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,onUploadFileSuccess: \n" + Log.getStackTraceString(e2));
            i2 = 0;
        }
        if (i2 == 0) {
            cn.manstep.phonemirrorBox.widget.a.a(D(), 2131689798);
            cn.manstep.phonemirrorBox.util.n.f(str2);
        } else {
            String string = D().getResources().getString(2131689799);
            cn.manstep.phonemirrorBox.widget.a.b(D(), string + "(" + i2 + ")");
            cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,onUploadFileSuccess: " + i2 + " " + BuildConfig.FLAVOR);
        }
        this.n0.setText(2131689632);
        this.n0.setEnabled(true);
    }

    private void U2(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(D());
        builder.setTitle(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689758));
        EditText editText = new EditText(D());
        editText.setTextSize(d0().getDimensionPixelSize(2131165879));
        builder.setView(editText);
        builder.setPositiveButton(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689891), (DialogInterface.OnClickListener) null);
        builder.setNegativeButton(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689638), new a(this));
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new b(editText, str, alertDialogCreate));
    }

    private void V2() {
        boolean z;
        String strN = b0.i().n("AppLatestVer", BuildConfig.FLAVOR);
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,showAppNewVerInfo: " + this.h0);
        if (strN.equals(this.h0)) {
            z = false;
        } else {
            this.h0.equals(BuildConfig.FLAVOR);
            z = true;
        }
        if (!this.a0) {
            z = true;
        }
        if (!z) {
            this.m0.setText(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689622));
            this.q0.setVisibility(8);
            this.o0.setVisibility(8);
            this.t0.m(false, BuildConfig.FLAVOR);
            return;
        }
        this.q0.setVisibility(0);
        if (this.j0) {
            this.o0.setVisibility(0);
            String str = cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689991) + "\n\t\t" + this.i0.replace("\n", "\n\t\t");
            this.q0.setTextColor(this.s0);
            this.q0.setText(str);
            this.t0.m(true, str);
            return;
        }
        this.o0.setVisibility(8);
        String str2 = "AutoKit " + cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689792);
        this.q0.setText(2131689792);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 8388611;
        this.q0.setLayoutParams(layoutParams);
        this.t0.m(false, str2);
    }

    private void W2() {
        boolean z;
        if (b0.i().n("BoxLatestVer", BuildConfig.FLAVOR).equals(this.e0)) {
            z = false;
        } else {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.i() && !this.e0.equals(BuildConfig.FLAVOR)) {
                b0.i().F("BoxLatestVer", this.e0);
            }
            z = true;
        }
        if (!this.a0) {
            z = true;
        }
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,showBoxNewVerInfo: bNeedShow = " + z + ", mIsNewBox = " + this.k0);
        if (!z) {
            this.m0.setText(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689622));
            this.r0.setVisibility(8);
            this.p0.setVisibility(8);
            this.t0.n(false, BuildConfig.FLAVOR);
            return;
        }
        this.r0.setVisibility(0);
        if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            this.p0.setVisibility(8);
            this.t0.n(false, cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689478));
            O2();
            return;
        }
        if (!this.k0) {
            this.p0.setVisibility(8);
            if (p.d(p.f1804b)) {
                this.r0.setText(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689612));
                this.t0.n(false, cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689612));
            } else {
                this.r0.setText(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689478));
                this.t0.n(false, cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689478));
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 8388613;
            this.r0.setLayoutParams(layoutParams);
            return;
        }
        this.p0.setVisibility(0);
        String str = cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689991) + "\n\t\t" + this.f0.replace("\n", "\n\t\t");
        this.r0.setTextColor(this.s0);
        this.r0.setText(str);
        this.t0.n(true, str);
    }

    private void X2() {
        String strF = cn.manstep.phonemirrorBox.util.c0.f(K());
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,upgradeApp: filePath = " + strF);
        File file = new File(strF);
        if (file.exists()) {
            String strJ = cn.manstep.phonemirrorBox.util.c0.j(file);
            cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,upgradeApp: Client: " + strJ + ", Server: " + this.g0);
            if (this.g0.equals(strJ) && w2(K(), this.h0, strF)) {
                L2();
            }
            cn.manstep.phonemirrorBox.util.n.f(strF);
        }
        this.t0.o();
        HashMap map = new HashMap();
        map.put("ver", this.h0);
        map.put("id", this.g0);
        cn.manstep.phonemirrorBox.util.p pVar = new cn.manstep.phonemirrorBox.util.p(30);
        v2(pVar);
        pVar.d("/a/upgrade/down", map, strF, new m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y2() {
        File cacheDir = D().getCacheDir();
        if (cacheDir.exists() && cacheDir.isDirectory()) {
            String str = cacheDir.getAbsolutePath() + "/Auto_Box_Update.img";
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(str);
                    int iAvailable = fileInputStream.available();
                    if (iAvailable > 52428800) {
                        cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,upgradeBox: The upgrade file is too large. size=" + iAvailable);
                        fileInputStream.close();
                        return;
                    }
                    byte[] bArr = new byte[iAvailable];
                    int i2 = fileInputStream.read(bArr, 0, iAvailable);
                    fileInputStream.close();
                    if (i2 != iAvailable || cn.manstep.phonemirrorBox.BoxInterface.d.l == null) {
                        return;
                    }
                    cn.manstep.phonemirrorBox.BoxInterface.d.l.w1("/tmp/Auto_Box_Update.img\u0000", bArr);
                } catch (Exception e2) {
                    cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,upgradeBox: \n" + Log.getStackTraceString(e2));
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void Z2(String str) {
        boolean z;
        cn.manstep.phonemirrorBox.util.s.i("SettingsFragment", "uploadAppLog: ########" + cn.manstep.phonemirrorBox.util.s.a);
        File fileP = cn.manstep.phonemirrorBox.util.n.p(K());
        boolean z2 = fileP != null;
        boolean zEquals = true ^ BuildConfig.FLAVOR.equals(p.e);
        if (zEquals) {
            File file = new File(p.e);
            z = (file.isFile() && file.exists()) ? zEquals : false;
        }
        if (!z2) {
            cn.manstep.phonemirrorBox.widget.a.a(D(), 2131689884);
            return;
        }
        File fileH = cn.manstep.phonemirrorBox.util.n.h(fileP);
        if (fileH == null) {
            cn.manstep.phonemirrorBox.widget.a.a(D(), 2131689884);
            return;
        }
        this.n0.setText(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689633));
        this.n0.setEnabled(false);
        String str2 = "app.xlog";
        if (!fileH.getName().endsWith(".xlog") && !fileH.getName().endsWith(".bs64")) {
            str2 = "app.log";
        }
        String str3 = u.z().I().substring(0, 12) + "_" + str2;
        Map<String, String> mapI2 = I2("app.log", str);
        cn.manstep.phonemirrorBox.util.p pVar = new cn.manstep.phonemirrorBox.util.p(30);
        pVar.o("/a/upload/log", mapI2, str3, fileH.getAbsolutePath(), new k(z, str, pVar, fileH));
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            this.t0.c(cn.manstep.phonemirrorBox.BoxInterface.c.e().o(), str);
        } else {
            this.t0.c(mapI2.get("uuid"), str);
        }
    }

    private boolean w2(Context context, String str, String str2) {
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
                cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,checkApk: " + string2 + "," + str4 + "--" + string + "," + str3);
                if (str3.equals(str) && str3.compareTo(str4) > 0) {
                    if (string.equals(string2)) {
                        return true;
                    }
                }
                return false;
            }
        } catch (Exception e2) {
            cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,checkApk: \n" + Log.getStackTraceString(e2));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x2(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("cku") && jSONObject.getInt("cku") == 0) {
                p.B = false;
            }
            cn.manstep.phonemirrorBox.util.p.f = jSONObject.getString("token");
            String string = jSONObject.getString("ver");
            if (string.compareTo("2025.03.19.1126") > 0) {
                this.g0 = jSONObject.getString("id");
                this.i0 = jSONObject.getString("notes");
                this.h0 = string;
                this.j0 = true;
            } else {
                this.h0 = "2025.03.19.1126";
                this.j0 = false;
            }
        } catch (Exception e2) {
            cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,checkAppVer: " + str + "\n" + Log.getStackTraceString(e2));
        }
        V2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y2() {
        if (K() != null && K().getResources().getBoolean(2131034135)) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                this.p0.setVisibility(8);
                if (this.a0) {
                    this.r0.setVisibility(8);
                    return;
                }
                this.r0.setVisibility(0);
                O2();
                this.t0.n(false, cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689478));
                return;
            }
            new HashMap(7);
            HashMap map = new HashMap(8);
            map.put("lang", BuildConfig.FLAVOR + x.c());
            map.put("code", "37");
            map.put("appVer", "2025.03.19.1126");
            map.put("ver", cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
            map.put("uuid", cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
            map.put("mfd", cn.manstep.phonemirrorBox.BoxInterface.c.e().h());
            map.put("fwn", cn.manstep.phonemirrorBox.BoxInterface.c.e().c());
            map.put("model", cn.manstep.phonemirrorBox.BoxInterface.c.e().i());
            new cn.manstep.phonemirrorBox.util.p().j("/a/upgrade/checkBox", map, new j());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z2(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            cn.manstep.phonemirrorBox.util.p.f = jSONObject.getString("token");
            String string = jSONObject.getString("ver");
            cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,checkBoxVer: new:" + string + ", old:" + cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
            if (string.compareTo(cn.manstep.phonemirrorBox.BoxInterface.c.e().p()) > 0) {
                this.l0 = jSONObject.getString("id");
                this.f0 = jSONObject.getString("notes");
                this.e0 = string;
                this.k0 = true;
            } else {
                this.e0 = cn.manstep.phonemirrorBox.BoxInterface.c.e().p();
                this.k0 = false;
            }
        } catch (Exception e2) {
            cn.manstep.phonemirrorBox.util.s.e("SettingsFragment,checkBoxVer: \n" + Log.getStackTraceString(e2));
        }
        W2();
    }

    public void A2() {
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,checkUpdate: ======");
        if (q0() && d0().getBoolean(2131034135)) {
            HashMap map = new HashMap(7);
            map.put("lang", BuildConfig.FLAVOR + x.c());
            map.put("code", "37");
            map.put("ver", "2025.03.19.1126");
            map.put("uuid", u.z().I());
            map.put("r", BuildConfig.FLAVOR + p.k + "x" + p.l);
            map.put("m", Build.MODEL);
            map.put("pkg", MyApplication.b().getPackageName());
            new cn.manstep.phonemirrorBox.util.p().j("/a/upgrade/checkApp", map, new i());
            y2();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void C0(int i2, int i3, Intent intent) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,onActivityResult: requestCode=" + i2 + ", resultCode=" + i3);
        if (i2 == 1) {
            if (i3 == -1) {
                D2(intent.getData(), Uri.fromFile(new File(D().getCacheDir(), "custom.png")));
                return;
            }
            return;
        }
        if (i2 != 2) {
            if (i2 == 3 && i3 == -1) {
                cn.manstep.phonemirrorBox.util.c0.o(D(), cn.manstep.phonemirrorBox.util.c0.f(K()));
                return;
            }
            return;
        }
        if (i3 == -1) {
            String absolutePath = null;
            String stringExtra = intent.getStringExtra("ImagePath");
            if (stringExtra != null) {
                File file = new File(D().getCacheDir(), "custom.png");
                if (file.exists() && file.isFile()) {
                    absolutePath = file.getAbsolutePath();
                }
                if (stringExtra.equals(absolutePath)) {
                    this.x0.setImageBitmap(BitmapFactory.decodeFile(stringExtra));
                } else {
                    this.x0.setImageBitmap(cn.manstep.phonemirrorBox.util.c0.g(D(), stringExtra));
                }
            }
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
                return;
            }
            fVar.e();
            cn.manstep.phonemirrorBox.BoxInterface.d.l.b();
        }
    }

    public void G2(String str, String str2) {
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,downloadBoxImg: " + str + "," + str2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.t0.o();
        File cacheDir = D().getCacheDir();
        if (cacheDir.exists() && cacheDir.isDirectory()) {
            String str3 = cacheDir.getAbsolutePath() + "/Auto_Box_Update.img";
            File file = new File(str3);
            if (file.exists()) {
                file.delete();
            }
            cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,downloadBoxImg: imgPath=" + str3);
            HashMap map = new HashMap();
            map.put("ver", str);
            map.put("id", str2);
            cn.manstep.phonemirrorBox.util.p pVar = new cn.manstep.phonemirrorBox.util.p(30);
            v2(pVar);
            pVar.d("/a/upgrade/down", map, str3, new l());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LinearLayout linearLayout;
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,onCreateView: ######");
        this.t0 = new a0(this);
        w.a aVar = new w.a(D() == null ? null : D().getApplication());
        cn.manstep.phonemirrorBox.x0.k kVar = (cn.manstep.phonemirrorBox.x0.k) new androidx.lifecycle.w(D(), aVar).a(cn.manstep.phonemirrorBox.x0.k.class);
        this.y0 = kVar;
        kVar.Z();
        cn.manstep.phonemirrorBox.i0.s sVar = (cn.manstep.phonemirrorBox.i0.s) androidx.databinding.f.e(layoutInflater, 2131492944, viewGroup, false);
        this.z0 = sVar;
        View viewT = sVar.t();
        this.z0.M(this.y0);
        cn.manstep.phonemirrorBox.x0.i iVar = (cn.manstep.phonemirrorBox.x0.i) new androidx.lifecycle.w(this, aVar).a(cn.manstep.phonemirrorBox.x0.i.class);
        iVar.F(D().getSupportFragmentManager());
        this.z0.L(iVar);
        this.z0.G(this);
        this.y0.m0(this);
        this.y0.r0(D().getSupportFragmentManager());
        J2(viewT);
        K2(viewT);
        Button button = (Button) viewT.findViewById(2131296386);
        this.n0 = button;
        if (button != null) {
            button.setOnClickListener(this);
        }
        Button button2 = (Button) viewT.findViewById(2131296373);
        this.m0 = button2;
        if (button2 != null) {
            button2.setOnClickListener(this);
        }
        Button button3 = (Button) viewT.findViewById(2131296369);
        this.o0 = button3;
        if (button3 != null) {
            button3.setOnClickListener(this);
            this.o0.setText("AutoKit " + cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689631));
        }
        Button button4 = (Button) viewT.findViewById(2131296371);
        this.p0 = button4;
        if (button4 != null) {
            button4.setOnClickListener(this);
        }
        this.q0 = (TextView) viewT.findViewById(2131296894);
        TextView textView = (TextView) viewT.findViewById(2131296896);
        this.r0 = textView;
        if (textView != null) {
            this.s0 = textView.getTextColors();
        }
        TextView textView2 = (TextView) viewT.findViewById(2131296922);
        if (textView2 != null) {
            textView2.setText(p.a.replace("VER:", BuildConfig.FLAVOR));
        }
        cn.manstep.phonemirrorBox.v0.e.M(this);
        int iK = cn.manstep.phonemirrorBox.util.c0.k(K(), "keyLearnLayout");
        if (iK > 0 && (linearLayout = (LinearLayout) viewT.findViewById(iK)) != null) {
            linearLayout.setOnClickListener(this);
        }
        this.t0.d(viewT);
        R0(false);
        return viewT;
    }

    @Override // androidx.fragment.app.Fragment
    public void M0() {
        List<cn.manstep.phonemirrorBox.util.c> list = this.u0;
        if (list != null) {
            list.clear();
            this.u0 = null;
        }
        cn.manstep.phonemirrorBox.v0.e.S(this);
        cn.manstep.phonemirrorBox.c cVar = this.t0;
        if (cVar != null) {
            cVar.g();
        }
        this.z0 = null;
        super.M0();
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,onDestroy: ######");
    }

    public void M2(boolean z) {
        cn.manstep.phonemirrorBox.x0.k kVar = this.y0;
        if (kVar != null) {
            kVar.I0(!z ? 1 : 0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void R0(boolean z) {
        super.R0(z);
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,onHiddenChanged: ###### " + z);
        B0 = z ^ true;
        if (!z) {
            this.y0.h0(false);
            return;
        }
        int iIntValue = this.y0.E().e().intValue();
        if (iIntValue == 1) {
            iIntValue = 2;
        }
        f.k.c(iIntValue);
        this.y0.h0(true);
    }

    public void S2() {
        this.y0.i0(false);
        new Handler().postDelayed(new e(), 2000L);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i2, Object obj) {
    }

    @Override // cn.manstep.phonemirrorBox.x0.l
    public void b(int i2) {
        if (i2 == 3) {
            this.t0.l(J(), 2131689700, 2131689885, 2);
            return;
        }
        if (i2 == 1 && cn.manstep.phonemirrorBox.BoxInterface.d.i() && !cn.manstep.phonemirrorBox.BoxInterface.f.P) {
            g.c cVar = new g.c(D());
            cVar.c(d0().getString(2131689613));
            cVar.b(true);
            cVar.a(true);
            cVar.d().b(true);
            this.y0.o0();
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i2) {
    }

    @Override // androidx.fragment.app.Fragment
    public void c1() {
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,onResume!");
        super.c1();
        cn.manstep.phonemirrorBox.x0.k kVar = this.y0;
        if (kVar != null) {
            kVar.H0(true);
        }
        if (((MainActivity) D()).t) {
            E2();
        }
    }

    @Override // cn.manstep.phonemirrorBox.c.a
    public void e(int i2) {
        if (i2 == 2) {
            this.y0.o0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void f1() {
        super.f1();
        cn.manstep.phonemirrorBox.x0.k kVar = this.y0;
        if (kVar != null) {
            kVar.H0(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        this.t0.f(K().getResources().getConfiguration().orientation);
    }

    @Override // cn.manstep.phonemirrorBox.x0.l
    public void h(boolean z) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        if (z) {
            this.d0 = false;
            cn.manstep.phonemirrorBox.util.s.k(StubApp.getOrigApplicationContext(K1().getApplicationContext()));
            this.t0.k(true);
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.i() || (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) == null) {
                return;
            }
            fVar.U0(1);
            return;
        }
        B2();
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,closeLogSwitch: mIsUploadLog=" + this.d0);
        if (this.d0) {
            return;
        }
        this.t0.l(J(), 2131689529, 2131689970, 1);
    }

    @Override // cn.manstep.phonemirrorBox.c.a
    public void i(int i2) {
        if (i2 == 1) {
            this.n0.callOnClick();
        }
    }

    @Override // cn.manstep.phonemirrorBox.x0.l
    public void l(boolean z) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(cn.manstep.phonemirrorBox.BoxInterface.d dVar) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i2) {
        cn.manstep.phonemirrorBox.util.s.c("SettingsFragment,on_Box_Phase parse: " + i2);
        if (i2 == 20) {
            Q2();
            return;
        }
        if (i2 == 12) {
            p.f1804b = BuildConfig.FLAVOR;
            this.y0.j0(0);
        }
        if (!B0) {
            if (i2 == 124) {
                this.y0.j0(1);
                return;
            }
            return;
        }
        if (i2 == 4) {
            cn.manstep.phonemirrorBox.BoxInterface.d.l.E0();
            return;
        }
        if (i2 == 124) {
            if (this.c0 && this.b0) {
                this.b0 = false;
            }
            String strN = b0.i().n("BoxLatestVer", BuildConfig.FLAVOR);
            if (this.e0.equals(BuildConfig.FLAVOR) && strN.equals(BuildConfig.FLAVOR)) {
                new Handler().postDelayed(new h(), 3000L);
            } else {
                W2();
            }
            this.y0.j0(1);
            boolean z = cn.manstep.phonemirrorBox.BoxInterface.f.P;
            return;
        }
        if (i2 == 13) {
            this.b0 = true;
            return;
        }
        if (i2 != 12) {
            if (i2 == 123) {
                this.y0.j0(2);
            }
        } else {
            this.b0 = true;
            Button button = this.p0;
            if (button != null) {
                button.setVisibility(8);
            }
            this.t0.n(false, cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689478));
            O2();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296369:
                X2();
                break;
            case 2131296371:
                F2();
                break;
            case 2131296373:
                this.a0 = false;
                A2();
                this.m0.setText(cn.manstep.phonemirrorBox.util.c0.m(D(), 2131689623));
                this.m0.setEnabled(false);
                break;
            case 2131296386:
                P2();
                break;
            case 2131296579:
                this.t0.j(D());
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.t0.e(configuration);
    }

    @Override // cn.manstep.phonemirrorBox.x0.l
    public void r(int i2) {
        if (i2 != 1) {
            if (i2 == 3) {
                cn.manstep.phonemirrorBox.util.c0.u(D(), 2131689566);
            }
        } else if (x.i()) {
            g.c cVar = new g.c(D());
            cVar.c(d0().getString(2131689952));
            cVar.b(true);
            cVar.a(true);
            cVar.d().b(true);
        }
    }

    @Override // cn.manstep.phonemirrorBox.x0.l
    public void t() {
        cn.manstep.phonemirrorBox.c cVar = this.t0;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override // cn.manstep.phonemirrorBox.k0.e.b
    public void u(String str) {
        if (H2(str) > 140 || H2(str) <= 0.0d || C2(str)) {
            return;
        }
        Z2(str);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
    }

    public void v2(cn.manstep.phonemirrorBox.util.p pVar) {
        this.A0.add(pVar);
    }
}
