package cn.manstep.phonemirrorBox;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.SeekBar;
import android.widget.TextView;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.UCrop;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class AutoKitHideSettingsActivity extends k implements View.OnClickListener, SeekBar.OnSeekBarChangeListener {
    private static String N = "";
    private int A;
    private int B;
    private int C;
    private TextView G;
    private LinearLayout H;
    private LinearLayout I;
    private TextView J;
    private TextView K;
    private int L;
    private TextView w;
    private TextView x;
    private TextView y;
    private AudioManager z;
    private long t = 0;
    private ImageView u = null;
    private int v = 5;
    private int D = 0;
    private int E = 0;
    private Bitmap F = null;
    private int M = 0;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AutoKitHideSettingsActivity.this.startActivity(new Intent(AutoKitHideSettingsActivity.this, (Class<?>) KeyLearnActivity.class));
        }
    }

    class b implements View.OnLongClickListener {
        b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AutoKitHideSettingsActivity.this.M = 0;
            if (AutoKitHideSettingsActivity.this.D != view.getId()) {
                AutoKitHideSettingsActivity.this.D = view.getId();
                AutoKitHideSettingsActivity.this.E = 0;
            }
            AutoKitHideSettingsActivity.s0(AutoKitHideSettingsActivity.this);
            if (AutoKitHideSettingsActivity.this.E != 5) {
                return true;
            }
            AutoKitHideSettingsActivity.this.E = 0;
            Intent intent = new Intent(AutoKitHideSettingsActivity.this, (Class<?>) AdvancedSettingsActivity.class);
            intent.putExtra("page", "echo");
            AutoKitHideSettingsActivity.this.startActivity(intent);
            return true;
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f1391b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f1392c;

        c(String str, ImageView imageView) {
            this.f1391b = str;
            this.f1392c = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f1391b.equals("AutoKit_add")) {
                AutoKitHideSettingsActivity.this.t = 0L;
                AutoKitHideSettingsActivity.this.x0();
            } else {
                if (this.f1391b.equals("Carlinkit")) {
                    return;
                }
                AutoKitHideSettingsActivity.this.t = 0L;
                AutoKitHideSettingsActivity.this.S0(this.f1392c, this.f1391b);
            }
        }
    }

    class d implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f1394b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f1395c;

        d(ImageView imageView, String str) {
            this.f1394b = imageView;
            this.f1395c = str;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (AutoKitHideSettingsActivity.this.t != 0 && motionEvent.getEventTime() - AutoKitHideSettingsActivity.this.t < 300) {
                    AutoKitHideSettingsActivity.this.S0(this.f1394b, this.f1395c);
                    AutoKitHideSettingsActivity.this.t = 0L;
                    return true;
                }
                AutoKitHideSettingsActivity.this.t = motionEvent.getEventTime();
            }
            return true;
        }
    }

    class e implements View.OnClickListener {
        e(AutoKitHideSettingsActivity autoKitHideSettingsActivity) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AlertDialog f1397b;

        f(AutoKitHideSettingsActivity autoKitHideSettingsActivity, AlertDialog alertDialog) {
            this.f1397b = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1397b.dismiss();
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AlertDialog f1398b;

        g(AutoKitHideSettingsActivity autoKitHideSettingsActivity, AlertDialog alertDialog) {
            this.f1398b = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1398b.dismiss();
        }
    }

    static {
        StubApp.interface11(1406);
    }

    private void A0() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689700));
        builder.setMessage(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689577));
        builder.setPositiveButton(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689625), (DialogInterface.OnClickListener) null);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new f(this, alertDialogCreate));
    }

    private boolean B0(int i) {
        cn.manstep.phonemirrorBox.util.s.c("AutoKitHideSettingsActivity,continuousClickEvent: " + i + ", count=" + this.M);
        if (this.L == i) {
            int i2 = this.M + 1;
            this.M = i2;
            if (i2 == 10) {
                if (i == 2131296871) {
                    ((LinearLayout) findViewById(2131296508)).setVisibility(0);
                    ((LinearLayout) findViewById(2131296352)).setVisibility(0);
                    ((LinearLayout) findViewById(2131296948)).setVisibility(0);
                    ((LinearLayout) findViewById(2131296633)).setVisibility(0);
                    P0();
                    I0();
                    N0();
                    return true;
                }
                this.M = 0;
            }
        } else {
            this.L = i;
            this.M = 1;
        }
        return false;
    }

    private void C0(Uri uri, Uri uri2) {
        UCrop.Options options = new UCrop.Options();
        options.setToolbarColor(androidx.core.content.a.b(this, 2131099741));
        options.setStatusBarColor(androidx.core.content.a.b(this, 2131099741));
        options.setCompressionFormat(Bitmap.CompressFormat.PNG);
        options.setCompressionQuality(100);
        options.setHideBottomControls(true);
        options.setToolbarTitle(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689909));
        UCrop.of(uri, uri2).withAspectRatio(1.0f, 1.0f).withMaxResultSize(256, 256).withOptions(options).start(this);
    }

    private void D0(int i) {
        cn.manstep.phonemirrorBox.k0.a.I2(getSupportFragmentManager(), i, new e(this), null);
    }

    private void E0() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689700));
        builder.setMessage(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689955));
        builder.setPositiveButton(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689625), (DialogInterface.OnClickListener) null);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new g(this, alertDialogCreate));
    }

    public static Bitmap F0(Context context, String str) {
        if (str.equals("custom")) {
            try {
                return BitmapFactory.decodeFile(N);
            } catch (Exception e2) {
                cn.manstep.phonemirrorBox.util.s.e("AutoKitHideSettingsActivity " + Log.getStackTraceString(e2));
            }
        }
        try {
            return BitmapFactory.decodeStream(context.getAssets().open("CarLogo/" + str + ".png"));
        } catch (Exception e3) {
            e3.printStackTrace();
            cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e3));
            return null;
        }
    }

    private int G0() {
        return this.f1677b ? cn.manstep.phonemirrorBox.util.c0.b(this, 48.0f) : cn.manstep.phonemirrorBox.util.c0.b(this, 32.0f);
    }

    private int H0() {
        return this.f1677b ? cn.manstep.phonemirrorBox.util.c0.b(this, 64.0f) : cn.manstep.phonemirrorBox.util.c0.b(this, 42.0f);
    }

    private void I0() {
        this.I = (LinearLayout) findViewById(2131296508);
        if (b0.i().o("AudioClassify", false)) {
            this.I.setVisibility(8);
        } else {
            this.I.setVisibility(0);
        }
        ((ImageView) findViewById(2131296675)).setOnClickListener(this);
        ((ImageView) findViewById(2131296943)).setOnClickListener(this);
        SeekBar seekBar = (SeekBar) findViewById(2131296682);
        seekBar.setMax(30);
        this.J = (TextView) findViewById(2131296680);
        int iD = b0.d(this, "NaviGain", 0);
        seekBar.setProgress(iD);
        seekBar.setOnSeekBarChangeListener(this);
        this.J.setText(BuildConfig.FLAVOR + iD + "db");
        SeekBar seekBar2 = (SeekBar) findViewById(2131296946);
        seekBar2.setMax(30);
        this.K = (TextView) findViewById(2131296944);
        int iD2 = b0.d(this, "VoiceCallGain", 0);
        seekBar2.setProgress(iD2);
        seekBar2.setOnSeekBarChangeListener(this);
        this.K.setText(BuildConfig.FLAVOR + iD2 + "db");
    }

    private void J0() {
        boolean zO = b0.i().o("ShowFloatBall", false);
        RadioButton radioButton = (RadioButton) findViewById(2131296730);
        radioButton.setOnClickListener(this);
        RadioButton radioButton2 = (RadioButton) findViewById(2131296729);
        radioButton2.setOnClickListener(this);
        if (zO) {
            radioButton.setChecked(true);
        } else {
            radioButton2.setChecked(true);
        }
    }

    private void K0() {
        View viewFindViewById = findViewById(2131296579);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
            TextView textView = (TextView) findViewById(2131296925);
            textView.setOnClickListener(this);
            int iM = b0.i().m("LanguageID", 0);
            if (iM == 0) {
                textView.setText(cn.manstep.phonemirrorBox.util.c0.m(this, 2131689790));
            } else {
                textView.setText(x.a[iM]);
            }
            ((ImageView) findViewById(2131296556)).setOnClickListener(this);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean L0(ArrayList<String> arrayList) {
        byte b2;
        AssetManager assets = getAssets();
        int i = 0;
        try {
            File file = new File(getCacheDir(), "custom.png");
            if (file.exists() && file.isFile()) {
                arrayList.add("custom");
                N = file.getAbsolutePath();
            }
            arrayList.add("default");
            arrayList.add("AutoKit_siri");
            String[] list = assets.list("CarLogo");
            int length = list.length;
            String str = BuildConfig.FLAVOR;
            int i2 = 0;
            while (i2 < length) {
                String str2 = list[i2];
                cn.manstep.phonemirrorBox.util.s.c("AutoKitHideSettingsActivity,initLogoList: " + str2);
                String strSubstring = str2.substring(i, str2.lastIndexOf("."));
                switch (strSubstring.hashCode()) {
                    case -467894961:
                        b2 = !strSubstring.equals("Skywell") ? (byte) -1 : (byte) 2;
                        break;
                    case -428451095:
                        if (strSubstring.equals("AutoKit_add")) {
                            b2 = 4;
                            break;
                        }
                        break;
                    case -396540475:
                        if (strSubstring.equals("AutoKit_siri")) {
                            b2 = 3;
                            break;
                        }
                        break;
                    case 1544803905:
                        if (strSubstring.equals("default")) {
                            b2 = 1;
                            break;
                        }
                        break;
                    case 1997018969:
                        if (strSubstring.equals("Carlinkit")) {
                            b2 = 0;
                            break;
                        }
                        break;
                    default:
                        break;
                }
                if (b2 == 0) {
                    str = strSubstring;
                } else if (b2 != 1 && b2 != 2 && b2 != 3 && b2 != 4) {
                    arrayList.add(strSubstring);
                }
                i2++;
                i = 0;
            }
            arrayList.add("AutoKit_add");
            if (!str.equals(BuildConfig.FLAVOR)) {
                arrayList.add(str);
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.manstep.phonemirrorBox.util.s.e("AutoKitHideSettingsActivity,initLogoList: " + Log.getStackTraceString(e2));
            return false;
        }
    }

    private void M0() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (L0(arrayList)) {
            cn.manstep.phonemirrorBox.util.s.c("AutoKitHideSettingsActivity, initLogoView: " + arrayList.size());
            if (arrayList.size() < 1) {
                return;
            }
            String strN = b0.i().n("CarPlayOEMIconName", BuildConfig.FLAVOR);
            String strN2 = b0.i().n("CarPlayOEMIconPath", BuildConfig.FLAVOR);
            cn.manstep.phonemirrorBox.util.s.c("AutoKitHideSettingsActivity, initLogoView: name=" + strN + ", path=" + strN2);
            if (b0.i().m("CarPlayLogoType", 1) == 2) {
                strN = "AutoKit_siri";
            }
            LinearLayout linearLayout = (LinearLayout) findViewById(2131296693);
            linearLayout.removeAllViews();
            LinearLayout linearLayout2 = null;
            int i = 0;
            for (String str : arrayList) {
                Bitmap bitmapF0 = F0(this, str);
                if (bitmapF0 != null) {
                    if (i % this.v == 0) {
                        z0(linearLayout2);
                        linearLayout2 = new LinearLayout(this);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams.setMargins(0, cn.manstep.phonemirrorBox.util.c0.b(this, 20.0f), 0, 0);
                        linearLayout2.setLayoutParams(layoutParams);
                        linearLayout.addView(linearLayout2);
                        z0(linearLayout2);
                    }
                    i++;
                    ImageView imageView = new ImageView(this);
                    imageView.setImageBitmap(bitmapF0);
                    if (str.equals("Carlinkit")) {
                        imageView.setWillNotDraw(true);
                    }
                    int iG0 = G0();
                    if (str.equals(strN)) {
                        iG0 = H0();
                        this.u = imageView;
                    }
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iG0, iG0);
                    layoutParams2.gravity = 17;
                    int iB = cn.manstep.phonemirrorBox.util.c0.b(this, 10.0f);
                    layoutParams2.setMargins(iB, 0, iB, 0);
                    imageView.setLayoutParams(layoutParams2);
                    if (linearLayout2 != null) {
                        linearLayout2.addView(imageView);
                        Q0(imageView, str);
                    }
                    if (BuildConfig.FLAVOR.equals(strN2) && str.equals("default")) {
                        S0(imageView, str);
                    }
                }
            }
            y0(linearLayout2, i);
        }
    }

    private void N0() {
        LinearLayout linearLayout = (LinearLayout) findViewById(2131296633);
        if (b0.i().m("MicType", 0) == 1) {
            linearLayout.setVisibility(8);
        } else {
            linearLayout.setVisibility(0);
        }
        ((ImageView) findViewById(2131296632)).setOnClickListener(this);
    }

    private void O0() {
        ((LinearLayout) findViewById(2131296848)).setOnClickListener(this);
        ((ImageView) findViewById(2131296384)).setOnClickListener(this);
    }

    private void P0() {
        ((ImageView) findViewById(2131296351)).setOnClickListener(this);
        RadioButton radioButton = (RadioButton) findViewById(2131296728);
        radioButton.setOnClickListener(this);
        RadioButton radioButton2 = (RadioButton) findViewById(2131296727);
        radioButton2.setOnClickListener(this);
        this.H = (LinearLayout) findViewById(2131296948);
        if (b0.i().o("AudioClassify", false)) {
            radioButton.setChecked(true);
            this.H.setVisibility(0);
        } else {
            radioButton2.setChecked(true);
            this.H.setVisibility(8);
        }
        SeekBar seekBar = (SeekBar) findViewById(2131296636);
        seekBar.setMax(30);
        int iM = b0.i().m("MicGain", 0);
        seekBar.setProgress(iM);
        seekBar.setOnSeekBarChangeListener(this);
        TextView textView = (TextView) findViewById(2131296635);
        this.G = textView;
        textView.setText(BuildConfig.FLAVOR + iM + "db");
        SeekBar seekBar2 = (SeekBar) findViewById(2131296674);
        this.y = (TextView) findViewById(2131296673);
        SeekBar seekBar3 = (SeekBar) findViewById(2131296684);
        this.w = (TextView) findViewById(2131296681);
        SeekBar seekBar4 = (SeekBar) findViewById(2131296947);
        this.x = (TextView) findViewById(2131296945);
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        this.z = audioManager;
        if (audioManager != null) {
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            this.C = streamMaxVolume;
            seekBar2.setMax(streamMaxVolume);
            int streamVolume = this.z.getStreamVolume(3);
            cn.manstep.phonemirrorBox.util.s.e("AutoKitHideSettingsActivity,initVolumeSettings: current navigation volume: " + streamVolume);
            seekBar2.setProgress(streamVolume);
            this.y.setText(BuildConfig.FLAVOR + streamVolume + "/" + this.C);
            int streamMaxVolume2 = this.z.getStreamMaxVolume(2);
            this.A = streamMaxVolume2;
            seekBar3.setMax(streamMaxVolume2);
            int streamVolume2 = this.z.getStreamVolume(2);
            cn.manstep.phonemirrorBox.util.s.e("AutoKitHideSettingsActivity,initVolumeSettings: current navigation volume: " + streamVolume2);
            seekBar3.setProgress(streamVolume2);
            this.w.setText(BuildConfig.FLAVOR + streamVolume2 + "/" + this.A);
            int streamMaxVolume3 = this.z.getStreamMaxVolume(0);
            this.B = streamMaxVolume3;
            seekBar4.setMax(streamMaxVolume3);
            int streamVolume3 = this.z.getStreamVolume(0);
            cn.manstep.phonemirrorBox.util.s.e("AutoKitHideSettingsActivity,initVolumeSettings: current voice_call volume: " + streamVolume3);
            seekBar4.setProgress(streamVolume3);
            this.x.setText(BuildConfig.FLAVOR + streamVolume3 + "/" + this.B);
        }
        seekBar3.setOnSeekBarChangeListener(this);
        seekBar4.setOnSeekBarChangeListener(this);
        seekBar2.setOnSeekBarChangeListener(this);
    }

    private void Q0(ImageView imageView, String str) {
        imageView.setOnClickListener(new c(str, imageView));
        if (str.equals("Carlinkit")) {
            imageView.setOnTouchListener(new d(imageView, str));
        }
    }

    private void R0(String str) {
        if (str.toLowerCase().contains("siri")) {
            b0.i().F("CarPlayLogoType", 2);
        } else if (str.toLowerCase().contains("custom")) {
            b0.i().z(str, N);
            b0.i().F("CarPlayLogoType", 1);
        } else {
            b0.i().z(str, "CarLogo/" + str + ".png");
            b0.i().F("CarPlayLogoType", 1);
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoKitHideSettingsActivity,saveOemConfig: imageName = " + str);
        if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            cn.manstep.phonemirrorBox.BoxInterface.d.l.b();
            cn.manstep.phonemirrorBox.BoxInterface.d.l.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0(ImageView imageView, String str) {
        int iB = cn.manstep.phonemirrorBox.util.c0.b(this, 10.0f);
        if (this.u != null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(G0(), G0());
            layoutParams.gravity = 17;
            layoutParams.setMargins(iB, 0, iB, 0);
            this.u.setLayoutParams(layoutParams);
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(H0(), H0());
        layoutParams2.gravity = 17;
        layoutParams2.setMargins(iB, 0, iB, 0);
        imageView.setLayoutParams(layoutParams2);
        this.u = imageView;
        R0(str);
    }

    private void T0(boolean z) {
        b0.i().F("AudioClassify", Boolean.valueOf(z));
        LinearLayout linearLayout = this.H;
        if (linearLayout != null) {
            if (z) {
                linearLayout.setVisibility(0);
                this.I.setVisibility(8);
            } else {
                linearLayout.setVisibility(8);
                this.I.setVisibility(0);
            }
        }
        if (cn.manstep.phonemirrorBox.BoxInterface.d.l == null || !cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
            return;
        }
        cn.manstep.phonemirrorBox.BoxInterface.d.l.d1(z);
    }

    private void U0() {
        int iB;
        int iB2;
        String strN = cn.manstep.phonemirrorBox.util.c0.n(this);
        int i = getResources().getConfiguration().orientation;
        int iB3 = 0;
        if (i == 2) {
            iB3 = cn.manstep.phonemirrorBox.util.c0.b(this, 120.0f);
            iB = cn.manstep.phonemirrorBox.util.c0.b(this, 120.0f);
            iB2 = cn.manstep.phonemirrorBox.util.c0.b(this, 4.0f);
        } else if (i == 1) {
            iB3 = cn.manstep.phonemirrorBox.util.c0.b(this, 220.0f);
            iB = cn.manstep.phonemirrorBox.util.c0.b(this, 220.0f);
            iB2 = cn.manstep.phonemirrorBox.util.c0.b(this, 8.0f);
        } else {
            iB = 0;
            iB2 = 0;
        }
        if (this.F == null) {
            this.F = cn.manstep.phonemirrorBox.util.v.a(strN, iB3, iB);
        }
        ImageView imageView = new ImageView(this);
        imageView.setPadding(iB2, iB2, iB2, iB2);
        imageView.setBackgroundColor(getResources().getColor(2131100067));
        imageView.setImageBitmap(this.F);
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 2131755275);
        builder.setView(imageView);
        builder.setCancelable(true);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(true);
        alertDialogCreate.show();
    }

    static /* synthetic */ int s0(AutoKitHideSettingsActivity autoKitHideSettingsActivity) {
        int i = autoKitHideSettingsActivity.E;
        autoKitHideSettingsActivity.E = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() {
        if (Build.VERSION.SDK_INT >= 23) {
            ArrayList arrayList = new ArrayList();
            if (androidx.core.content.a.a(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
            }
            if (androidx.core.content.a.a(this, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
            }
            if (!arrayList.isEmpty()) {
                androidx.core.app.a.m(this, (String[]) arrayList.toArray(new String[0]), 1000);
                return;
            }
        }
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("image/*");
        try {
            startActivityForResult(intent, 1);
        } catch (Exception e2) {
            cn.manstep.phonemirrorBox.util.s.e("AutoKitHideSettingsActivity,addCustomLogo: \n" + Log.getStackTraceString(e2));
        }
    }

    private void y0(LinearLayout linearLayout, int i) {
        if (linearLayout == null) {
            return;
        }
        int i2 = this.v;
        int i3 = i2 - (i % i2);
        int iB = cn.manstep.phonemirrorBox.util.c0.b(this, 10.0f);
        cn.manstep.phonemirrorBox.util.s.d("AutoKitHideSettingsActivity", "addOccupyImageView: j = " + i3);
        if (i3 != this.v) {
            for (int i4 = 0; i4 < i3; i4++) {
                ImageView imageView = new ImageView(this);
                int iG0 = G0();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iG0, iG0);
                layoutParams.gravity = 17;
                layoutParams.setMargins(iB, 0, iB, 0);
                imageView.setLayoutParams(layoutParams);
                linearLayout.addView(imageView, (i % this.v) + 1);
            }
        }
        z0(linearLayout);
    }

    private void z0(LinearLayout linearLayout) {
        if (linearLayout != null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.weight = 1.0f;
            View view = new View(this);
            view.setLayoutParams(layoutParams);
            linearLayout.addView(view);
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        cn.manstep.phonemirrorBox.util.s.c("HideSettingsActivity,onActivityResult: requestCode=" + i + ", resultCode=" + i2);
        if (i == 1) {
            if (i2 == -1) {
                C0(intent.getData(), Uri.fromFile(new File(getCacheDir(), "custom.png")));
                return;
            }
            return;
        }
        if (i == 69) {
            if (i2 != -1) {
                if (i2 == 96) {
                    cn.manstep.phonemirrorBox.util.s.e("AutoKitHideSettingsActivity,onActivityResult: " + Log.getStackTraceString(UCrop.getError(intent)));
                    return;
                }
                return;
            }
            Uri output = UCrop.getOutput(intent);
            cn.manstep.phonemirrorBox.util.s.c("AutoKitHideSettingsActivity,onActivityResult: " + output);
            if (output != null) {
                String path = output.getPath();
                cn.manstep.phonemirrorBox.util.s.c("AutoKitHideSettingsActivity,onActivityResult: " + path);
                b0.i().z("custom", path);
                b0.i().F("CarPlayLogoType", 1);
                if (cn.manstep.phonemirrorBox.BoxInterface.d.i()) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.l.b();
                    cn.manstep.phonemirrorBox.BoxInterface.d.l.e();
                }
                M0();
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.E = 0;
        int id = view.getId();
        if (B0(id)) {
        }
        switch (id) {
            case 2131296350:
                D0(2131689576);
                break;
            case 2131296351:
                A0();
                break;
            case 2131296382:
                finish();
                overridePendingTransition(R.anim.slide_in_left, R.anim.slide_out_right);
                break;
            case 2131296384:
            case 2131296848:
                U0();
                break;
            case 2131296556:
            case 2131296579:
            case 2131296925:
                startActivity(new Intent(this, (Class<?>) LanguageSettingsActivity.class));
                break;
            case 2131296632:
            case 2131296675:
            case 2131296943:
                E0();
                break;
            case 2131296727:
                T0(false);
                break;
            case 2131296728:
                T0(true);
                break;
            case 2131296729:
                b0.i().F("ShowFloatBall", Boolean.FALSE);
                stopService(new Intent(this, (Class<?>) cn.manstep.phonemirrorBox.floatwindow.FloatWindowService.class));
                break;
            case 2131296730:
                b0.i().F("ShowFloatBall", Boolean.TRUE);
                startService(new Intent(this, (Class<?>) cn.manstep.phonemirrorBox.floatwindow.FloatWindowService.class));
                break;
            case 2131296737:
                D0(2131689934);
                break;
        }
    }

    @Override // cn.manstep.phonemirrorBox.k, androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        int id = seekBar.getId();
        if (seekBar.getId() == 2131296684) {
            this.z.setStreamVolume(2, i, 4);
            this.w.setText(BuildConfig.FLAVOR + i + "/" + this.A);
            return;
        }
        if (seekBar.getId() == 2131296947) {
            this.z.setStreamVolume(0, i, 4);
            this.x.setText(BuildConfig.FLAVOR + i + "/" + this.B);
            return;
        }
        if (seekBar.getId() == 2131296674) {
            this.z.setStreamVolume(3, i, 4);
            this.y.setText(BuildConfig.FLAVOR + i + "/" + this.C);
            return;
        }
        if (seekBar.getId() == 2131296636) {
            if (i % 2 != 0) {
                i++;
            }
            this.G.setText(BuildConfig.FLAVOR + i + "db");
            b0.i().F("MicGain", Integer.valueOf(i));
            return;
        }
        if (id == 2131296682) {
            if (i % 2 != 0) {
                i++;
            }
            this.J.setText(BuildConfig.FLAVOR + i + "db");
            b0.x(this, "NaviGain", i);
            return;
        }
        if (id == 2131296946) {
            if (i % 2 != 0) {
                i++;
            }
            this.K.setText(BuildConfig.FLAVOR + i + "db");
            b0.x(this, "VoiceCallGain", i);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
