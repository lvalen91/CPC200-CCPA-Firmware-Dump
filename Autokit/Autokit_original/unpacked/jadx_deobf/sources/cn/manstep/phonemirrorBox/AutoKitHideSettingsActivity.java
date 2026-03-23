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
import androidx.core.app.C0231a;
import androidx.core.content.C0242a;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p077k0.C0882a;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0985v;
import com.stub.StubApp;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.UCrop;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoKitHideSettingsActivity extends ActivityC0881k implements View.OnClickListener, SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: N */
    private static String f4262N = "";

    /* JADX INFO: renamed from: A */
    private int f4263A;

    /* JADX INFO: renamed from: B */
    private int f4264B;

    /* JADX INFO: renamed from: C */
    private int f4265C;

    /* JADX INFO: renamed from: G */
    private TextView f4269G;

    /* JADX INFO: renamed from: H */
    private LinearLayout f4270H;

    /* JADX INFO: renamed from: I */
    private LinearLayout f4271I;

    /* JADX INFO: renamed from: J */
    private TextView f4272J;

    /* JADX INFO: renamed from: K */
    private TextView f4273K;

    /* JADX INFO: renamed from: L */
    private int f4274L;

    /* JADX INFO: renamed from: w */
    private TextView f4279w;

    /* JADX INFO: renamed from: x */
    private TextView f4280x;

    /* JADX INFO: renamed from: y */
    private TextView f4281y;

    /* JADX INFO: renamed from: z */
    private AudioManager f4282z;

    /* JADX INFO: renamed from: t */
    private long f4276t = 0;

    /* JADX INFO: renamed from: u */
    private ImageView f4277u = null;

    /* JADX INFO: renamed from: v */
    private int f4278v = 5;

    /* JADX INFO: renamed from: D */
    private int f4266D = 0;

    /* JADX INFO: renamed from: E */
    private int f4267E = 0;

    /* JADX INFO: renamed from: F */
    private Bitmap f4268F = null;

    /* JADX INFO: renamed from: M */
    private int f4275M = 0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoKitHideSettingsActivity$a */
    class ViewOnClickListenerC0715a implements View.OnClickListener {
        ViewOnClickListenerC0715a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AutoKitHideSettingsActivity.this.startActivity(new Intent(AutoKitHideSettingsActivity.this, (Class<?>) KeyLearnActivity.class));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoKitHideSettingsActivity$b */
    class ViewOnLongClickListenerC0716b implements View.OnLongClickListener {
        ViewOnLongClickListenerC0716b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AutoKitHideSettingsActivity.this.f4275M = 0;
            if (AutoKitHideSettingsActivity.this.f4266D != view.getId()) {
                AutoKitHideSettingsActivity.this.f4266D = view.getId();
                AutoKitHideSettingsActivity.this.f4267E = 0;
            }
            AutoKitHideSettingsActivity.m5375s0(AutoKitHideSettingsActivity.this);
            if (AutoKitHideSettingsActivity.this.f4267E != 5) {
                return true;
            }
            AutoKitHideSettingsActivity.this.f4267E = 0;
            Intent intent = new Intent(AutoKitHideSettingsActivity.this, (Class<?>) AdvancedSettingsActivity.class);
            intent.putExtra("page", "echo");
            AutoKitHideSettingsActivity.this.startActivity(intent);
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoKitHideSettingsActivity$c */
    class ViewOnClickListenerC0717c implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f4285b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ ImageView f4286c;

        ViewOnClickListenerC0717c(String str, ImageView imageView) {
            this.f4285b = str;
            this.f4286c = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f4285b.equals("AutoKit_add")) {
                AutoKitHideSettingsActivity.this.f4276t = 0L;
                AutoKitHideSettingsActivity.this.m5380x0();
            } else {
                if (this.f4285b.equals("Carlinkit")) {
                    return;
                }
                AutoKitHideSettingsActivity.this.f4276t = 0L;
                AutoKitHideSettingsActivity.this.m5367S0(this.f4286c, this.f4285b);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoKitHideSettingsActivity$d */
    class ViewOnTouchListenerC0718d implements View.OnTouchListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ImageView f4288b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ String f4289c;

        ViewOnTouchListenerC0718d(ImageView imageView, String str) {
            this.f4288b = imageView;
            this.f4289c = str;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (AutoKitHideSettingsActivity.this.f4276t != 0 && motionEvent.getEventTime() - AutoKitHideSettingsActivity.this.f4276t < 300) {
                    AutoKitHideSettingsActivity.this.m5367S0(this.f4288b, this.f4289c);
                    AutoKitHideSettingsActivity.this.f4276t = 0L;
                    return true;
                }
                AutoKitHideSettingsActivity.this.f4276t = motionEvent.getEventTime();
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoKitHideSettingsActivity$e */
    class ViewOnClickListenerC0719e implements View.OnClickListener {
        ViewOnClickListenerC0719e(AutoKitHideSettingsActivity autoKitHideSettingsActivity) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoKitHideSettingsActivity$f */
    class ViewOnClickListenerC0720f implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AlertDialog f4291b;

        ViewOnClickListenerC0720f(AutoKitHideSettingsActivity autoKitHideSettingsActivity, AlertDialog alertDialog) {
            this.f4291b = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f4291b.dismiss();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AutoKitHideSettingsActivity$g */
    class ViewOnClickListenerC0721g implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AlertDialog f4292b;

        ViewOnClickListenerC0721g(AutoKitHideSettingsActivity autoKitHideSettingsActivity, AlertDialog alertDialog) {
            this.f4292b = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f4292b.dismiss();
        }
    }

    static {
        StubApp.interface11(1406);
    }

    /* JADX INFO: renamed from: A0 */
    private void m5349A0() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(C0964c0.m7189m(this, 2131689700));
        builder.setMessage(C0964c0.m7189m(this, 2131689577));
        builder.setPositiveButton(C0964c0.m7189m(this, 2131689625), (DialogInterface.OnClickListener) null);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new ViewOnClickListenerC0720f(this, alertDialogCreate));
    }

    /* JADX INFO: renamed from: B0 */
    private boolean m5350B0(int i) {
        C0982s.m7373c("AutoKitHideSettingsActivity,continuousClickEvent: " + i + ", count=" + this.f4275M);
        if (this.f4274L == i) {
            int i2 = this.f4275M + 1;
            this.f4275M = i2;
            if (i2 == 10) {
                if (i == 2131296871) {
                    ((LinearLayout) findViewById(2131296508)).setVisibility(0);
                    ((LinearLayout) findViewById(2131296352)).setVisibility(0);
                    ((LinearLayout) findViewById(2131296948)).setVisibility(0);
                    ((LinearLayout) findViewById(2131296633)).setVisibility(0);
                    m5364P0();
                    m5357I0();
                    m5362N0();
                    return true;
                }
                this.f4275M = 0;
            }
        } else {
            this.f4274L = i;
            this.f4275M = 1;
        }
        return false;
    }

    /* JADX INFO: renamed from: C0 */
    private void m5351C0(Uri uri, Uri uri2) {
        UCrop.Options options = new UCrop.Options();
        options.setToolbarColor(C0242a.m1697b(this, 2131099741));
        options.setStatusBarColor(C0242a.m1697b(this, 2131099741));
        options.setCompressionFormat(Bitmap.CompressFormat.PNG);
        options.setCompressionQuality(100);
        options.setHideBottomControls(true);
        options.setToolbarTitle(C0964c0.m7189m(this, 2131689909));
        UCrop.m9048of(uri, uri2).withAspectRatio(1.0f, 1.0f).withMaxResultSize(256, 256).withOptions(options).start(this);
    }

    /* JADX INFO: renamed from: D0 */
    private void m5352D0(int i) {
        C0882a.m6527I2(getSupportFragmentManager(), i, new ViewOnClickListenerC0719e(this), null);
    }

    /* JADX INFO: renamed from: E0 */
    private void m5353E0() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(C0964c0.m7189m(this, 2131689700));
        builder.setMessage(C0964c0.m7189m(this, 2131689955));
        builder.setPositiveButton(C0964c0.m7189m(this, 2131689625), (DialogInterface.OnClickListener) null);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
        alertDialogCreate.getButton(-1).setOnClickListener(new ViewOnClickListenerC0721g(this, alertDialogCreate));
    }

    /* JADX INFO: renamed from: F0 */
    public static Bitmap m5354F0(Context context, String str) {
        if (str.equals("custom")) {
            try {
                return BitmapFactory.decodeFile(f4262N);
            } catch (Exception e) {
                C0982s.m7375e("AutoKitHideSettingsActivity " + Log.getStackTraceString(e));
            }
        }
        try {
            return BitmapFactory.decodeStream(context.getAssets().open("CarLogo/" + str + ".png"));
        } catch (Exception e2) {
            e2.printStackTrace();
            C0982s.m7375e(Log.getStackTraceString(e2));
            return null;
        }
    }

    /* JADX INFO: renamed from: G0 */
    private int m5355G0() {
        return this.f5488b ? C0964c0.m7178b(this, 48.0f) : C0964c0.m7178b(this, 32.0f);
    }

    /* JADX INFO: renamed from: H0 */
    private int m5356H0() {
        return this.f5488b ? C0964c0.m7178b(this, 64.0f) : C0964c0.m7178b(this, 42.0f);
    }

    /* JADX INFO: renamed from: I0 */
    private void m5357I0() {
        this.f4271I = (LinearLayout) findViewById(2131296508);
        if (C0795b0.m6071i().m6093o("AudioClassify", false)) {
            this.f4271I.setVisibility(8);
        } else {
            this.f4271I.setVisibility(0);
        }
        ((ImageView) findViewById(2131296675)).setOnClickListener(this);
        ((ImageView) findViewById(2131296943)).setOnClickListener(this);
        SeekBar seekBar = (SeekBar) findViewById(2131296682);
        seekBar.setMax(30);
        this.f4272J = (TextView) findViewById(2131296680);
        int iM6066d = C0795b0.m6066d(this, "NaviGain", 0);
        seekBar.setProgress(iM6066d);
        seekBar.setOnSeekBarChangeListener(this);
        this.f4272J.setText(BuildConfig.FLAVOR + iM6066d + "db");
        SeekBar seekBar2 = (SeekBar) findViewById(2131296946);
        seekBar2.setMax(30);
        this.f4273K = (TextView) findViewById(2131296944);
        int iM6066d2 = C0795b0.m6066d(this, "VoiceCallGain", 0);
        seekBar2.setProgress(iM6066d2);
        seekBar2.setOnSeekBarChangeListener(this);
        this.f4273K.setText(BuildConfig.FLAVOR + iM6066d2 + "db");
    }

    /* JADX INFO: renamed from: J0 */
    private void m5358J0() {
        boolean zM6093o = C0795b0.m6071i().m6093o("ShowFloatBall", false);
        RadioButton radioButton = (RadioButton) findViewById(2131296730);
        radioButton.setOnClickListener(this);
        RadioButton radioButton2 = (RadioButton) findViewById(2131296729);
        radioButton2.setOnClickListener(this);
        if (zM6093o) {
            radioButton.setChecked(true);
        } else {
            radioButton2.setChecked(true);
        }
    }

    /* JADX INFO: renamed from: K0 */
    private void m5359K0() {
        View viewFindViewById = findViewById(2131296579);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
            TextView textView = (TextView) findViewById(2131296925);
            textView.setOnClickListener(this);
            int iM6091m = C0795b0.m6071i().m6091m("LanguageID", 0);
            if (iM6091m == 0) {
                textView.setText(C0964c0.m7189m(this, 2131689790));
            } else {
                textView.setText(C1002x.f6235a[iM6091m]);
            }
            ((ImageView) findViewById(2131296556)).setOnClickListener(this);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009a  */
    /* JADX INFO: renamed from: L0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m5360L0(ArrayList<String> arrayList) {
        byte b2;
        AssetManager assets = getAssets();
        int i = 0;
        try {
            File file = new File(getCacheDir(), "custom.png");
            if (file.exists() && file.isFile()) {
                arrayList.add("custom");
                f4262N = file.getAbsolutePath();
            }
            arrayList.add("default");
            arrayList.add("AutoKit_siri");
            String[] list = assets.list("CarLogo");
            int length = list.length;
            String str = BuildConfig.FLAVOR;
            int i2 = 0;
            while (i2 < length) {
                String str2 = list[i2];
                C0982s.m7373c("AutoKitHideSettingsActivity,initLogoList: " + str2);
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
        } catch (Exception e) {
            e.printStackTrace();
            C0982s.m7375e("AutoKitHideSettingsActivity,initLogoList: " + Log.getStackTraceString(e));
            return false;
        }
    }

    /* JADX INFO: renamed from: M0 */
    private void m5361M0() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (m5360L0(arrayList)) {
            C0982s.m7373c("AutoKitHideSettingsActivity, initLogoView: " + arrayList.size());
            if (arrayList.size() < 1) {
                return;
            }
            String strM6092n = C0795b0.m6071i().m6092n("CarPlayOEMIconName", BuildConfig.FLAVOR);
            String strM6092n2 = C0795b0.m6071i().m6092n("CarPlayOEMIconPath", BuildConfig.FLAVOR);
            C0982s.m7373c("AutoKitHideSettingsActivity, initLogoView: name=" + strM6092n + ", path=" + strM6092n2);
            if (C0795b0.m6071i().m6091m("CarPlayLogoType", 1) == 2) {
                strM6092n = "AutoKit_siri";
            }
            LinearLayout linearLayout = (LinearLayout) findViewById(2131296693);
            linearLayout.removeAllViews();
            LinearLayout linearLayout2 = null;
            int i = 0;
            for (String str : arrayList) {
                Bitmap bitmapM5354F0 = m5354F0(this, str);
                if (bitmapM5354F0 != null) {
                    if (i % this.f4278v == 0) {
                        m5382z0(linearLayout2);
                        linearLayout2 = new LinearLayout(this);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams.setMargins(0, C0964c0.m7178b(this, 20.0f), 0, 0);
                        linearLayout2.setLayoutParams(layoutParams);
                        linearLayout.addView(linearLayout2);
                        m5382z0(linearLayout2);
                    }
                    i++;
                    ImageView imageView = new ImageView(this);
                    imageView.setImageBitmap(bitmapM5354F0);
                    if (str.equals("Carlinkit")) {
                        imageView.setWillNotDraw(true);
                    }
                    int iM5355G0 = m5355G0();
                    if (str.equals(strM6092n)) {
                        iM5355G0 = m5356H0();
                        this.f4277u = imageView;
                    }
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iM5355G0, iM5355G0);
                    layoutParams2.gravity = 17;
                    int iM7178b = C0964c0.m7178b(this, 10.0f);
                    layoutParams2.setMargins(iM7178b, 0, iM7178b, 0);
                    imageView.setLayoutParams(layoutParams2);
                    if (linearLayout2 != null) {
                        linearLayout2.addView(imageView);
                        m5365Q0(imageView, str);
                    }
                    if (BuildConfig.FLAVOR.equals(strM6092n2) && str.equals("default")) {
                        m5367S0(imageView, str);
                    }
                }
            }
            m5381y0(linearLayout2, i);
        }
    }

    /* JADX INFO: renamed from: N0 */
    private void m5362N0() {
        LinearLayout linearLayout = (LinearLayout) findViewById(2131296633);
        if (C0795b0.m6071i().m6091m("MicType", 0) == 1) {
            linearLayout.setVisibility(8);
        } else {
            linearLayout.setVisibility(0);
        }
        ((ImageView) findViewById(2131296632)).setOnClickListener(this);
    }

    /* JADX INFO: renamed from: O0 */
    private void m5363O0() {
        ((LinearLayout) findViewById(2131296848)).setOnClickListener(this);
        ((ImageView) findViewById(2131296384)).setOnClickListener(this);
    }

    /* JADX INFO: renamed from: P0 */
    private void m5364P0() {
        ((ImageView) findViewById(2131296351)).setOnClickListener(this);
        RadioButton radioButton = (RadioButton) findViewById(2131296728);
        radioButton.setOnClickListener(this);
        RadioButton radioButton2 = (RadioButton) findViewById(2131296727);
        radioButton2.setOnClickListener(this);
        this.f4270H = (LinearLayout) findViewById(2131296948);
        if (C0795b0.m6071i().m6093o("AudioClassify", false)) {
            radioButton.setChecked(true);
            this.f4270H.setVisibility(0);
        } else {
            radioButton2.setChecked(true);
            this.f4270H.setVisibility(8);
        }
        SeekBar seekBar = (SeekBar) findViewById(2131296636);
        seekBar.setMax(30);
        int iM6091m = C0795b0.m6071i().m6091m("MicGain", 0);
        seekBar.setProgress(iM6091m);
        seekBar.setOnSeekBarChangeListener(this);
        TextView textView = (TextView) findViewById(2131296635);
        this.f4269G = textView;
        textView.setText(BuildConfig.FLAVOR + iM6091m + "db");
        SeekBar seekBar2 = (SeekBar) findViewById(2131296674);
        this.f4281y = (TextView) findViewById(2131296673);
        SeekBar seekBar3 = (SeekBar) findViewById(2131296684);
        this.f4279w = (TextView) findViewById(2131296681);
        SeekBar seekBar4 = (SeekBar) findViewById(2131296947);
        this.f4280x = (TextView) findViewById(2131296945);
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        this.f4282z = audioManager;
        if (audioManager != null) {
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            this.f4265C = streamMaxVolume;
            seekBar2.setMax(streamMaxVolume);
            int streamVolume = this.f4282z.getStreamVolume(3);
            C0982s.m7375e("AutoKitHideSettingsActivity,initVolumeSettings: current navigation volume: " + streamVolume);
            seekBar2.setProgress(streamVolume);
            this.f4281y.setText(BuildConfig.FLAVOR + streamVolume + "/" + this.f4265C);
            int streamMaxVolume2 = this.f4282z.getStreamMaxVolume(2);
            this.f4263A = streamMaxVolume2;
            seekBar3.setMax(streamMaxVolume2);
            int streamVolume2 = this.f4282z.getStreamVolume(2);
            C0982s.m7375e("AutoKitHideSettingsActivity,initVolumeSettings: current navigation volume: " + streamVolume2);
            seekBar3.setProgress(streamVolume2);
            this.f4279w.setText(BuildConfig.FLAVOR + streamVolume2 + "/" + this.f4263A);
            int streamMaxVolume3 = this.f4282z.getStreamMaxVolume(0);
            this.f4264B = streamMaxVolume3;
            seekBar4.setMax(streamMaxVolume3);
            int streamVolume3 = this.f4282z.getStreamVolume(0);
            C0982s.m7375e("AutoKitHideSettingsActivity,initVolumeSettings: current voice_call volume: " + streamVolume3);
            seekBar4.setProgress(streamVolume3);
            this.f4280x.setText(BuildConfig.FLAVOR + streamVolume3 + "/" + this.f4264B);
        }
        seekBar3.setOnSeekBarChangeListener(this);
        seekBar4.setOnSeekBarChangeListener(this);
        seekBar2.setOnSeekBarChangeListener(this);
    }

    /* JADX INFO: renamed from: Q0 */
    private void m5365Q0(ImageView imageView, String str) {
        imageView.setOnClickListener(new ViewOnClickListenerC0717c(str, imageView));
        if (str.equals("Carlinkit")) {
            imageView.setOnTouchListener(new ViewOnTouchListenerC0718d(imageView, str));
        }
    }

    /* JADX INFO: renamed from: R0 */
    private void m5366R0(String str) {
        if (str.toLowerCase().contains("siri")) {
            C0795b0.m6071i().m6085F("CarPlayLogoType", 2);
        } else if (str.toLowerCase().contains("custom")) {
            C0795b0.m6071i().m6096z(str, f4262N);
            C0795b0.m6071i().m6085F("CarPlayLogoType", 1);
        } else {
            C0795b0.m6071i().m6096z(str, "CarLogo/" + str + ".png");
            C0795b0.m6071i().m6085F("CarPlayLogoType", 1);
        }
        C0982s.m7373c("AutoKitHideSettingsActivity,saveOemConfig: imageName = " + str);
        if (C0733d.m5591i()) {
            C0733d.f4428l.m5711b();
            C0733d.f4428l.m5720e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: S0 */
    public void m5367S0(ImageView imageView, String str) {
        int iM7178b = C0964c0.m7178b(this, 10.0f);
        if (this.f4277u != null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(m5355G0(), m5355G0());
            layoutParams.gravity = 17;
            layoutParams.setMargins(iM7178b, 0, iM7178b, 0);
            this.f4277u.setLayoutParams(layoutParams);
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(m5356H0(), m5356H0());
        layoutParams2.gravity = 17;
        layoutParams2.setMargins(iM7178b, 0, iM7178b, 0);
        imageView.setLayoutParams(layoutParams2);
        this.f4277u = imageView;
        m5366R0(str);
    }

    /* JADX INFO: renamed from: T0 */
    private void m5368T0(boolean z) {
        C0795b0.m6071i().m6085F("AudioClassify", Boolean.valueOf(z));
        LinearLayout linearLayout = this.f4270H;
        if (linearLayout != null) {
            if (z) {
                linearLayout.setVisibility(0);
                this.f4271I.setVisibility(8);
            } else {
                linearLayout.setVisibility(8);
                this.f4271I.setVisibility(0);
            }
        }
        if (C0733d.f4428l == null || !C0733d.m5591i()) {
            return;
        }
        C0733d.f4428l.m5719d1(z);
    }

    /* JADX INFO: renamed from: U0 */
    private void m5369U0() {
        int iM7178b;
        int iM7178b2;
        String strM7190n = C0964c0.m7190n(this);
        int i = getResources().getConfiguration().orientation;
        int iM7178b3 = 0;
        if (i == 2) {
            iM7178b3 = C0964c0.m7178b(this, 120.0f);
            iM7178b = C0964c0.m7178b(this, 120.0f);
            iM7178b2 = C0964c0.m7178b(this, 4.0f);
        } else if (i == 1) {
            iM7178b3 = C0964c0.m7178b(this, 220.0f);
            iM7178b = C0964c0.m7178b(this, 220.0f);
            iM7178b2 = C0964c0.m7178b(this, 8.0f);
        } else {
            iM7178b = 0;
            iM7178b2 = 0;
        }
        if (this.f4268F == null) {
            this.f4268F = C0985v.m7392a(strM7190n, iM7178b3, iM7178b);
        }
        ImageView imageView = new ImageView(this);
        imageView.setPadding(iM7178b2, iM7178b2, iM7178b2, iM7178b2);
        imageView.setBackgroundColor(getResources().getColor(2131100067));
        imageView.setImageBitmap(this.f4268F);
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 2131755275);
        builder.setView(imageView);
        builder.setCancelable(true);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(true);
        alertDialogCreate.show();
    }

    /* JADX INFO: renamed from: s0 */
    static /* synthetic */ int m5375s0(AutoKitHideSettingsActivity autoKitHideSettingsActivity) {
        int i = autoKitHideSettingsActivity.f4267E;
        autoKitHideSettingsActivity.f4267E = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: x0 */
    public void m5380x0() {
        if (Build.VERSION.SDK_INT >= 23) {
            ArrayList arrayList = new ArrayList();
            if (C0242a.m1696a(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
            }
            if (C0242a.m1696a(this, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
            }
            if (!arrayList.isEmpty()) {
                C0231a.m1643m(this, (String[]) arrayList.toArray(new String[0]), 1000);
                return;
            }
        }
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("image/*");
        try {
            startActivityForResult(intent, 1);
        } catch (Exception e) {
            C0982s.m7375e("AutoKitHideSettingsActivity,addCustomLogo: \n" + Log.getStackTraceString(e));
        }
    }

    /* JADX INFO: renamed from: y0 */
    private void m5381y0(LinearLayout linearLayout, int i) {
        if (linearLayout == null) {
            return;
        }
        int i2 = this.f4278v;
        int i3 = i2 - (i % i2);
        int iM7178b = C0964c0.m7178b(this, 10.0f);
        C0982s.m7374d("AutoKitHideSettingsActivity", "addOccupyImageView: j = " + i3);
        if (i3 != this.f4278v) {
            for (int i4 = 0; i4 < i3; i4++) {
                ImageView imageView = new ImageView(this);
                int iM5355G0 = m5355G0();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iM5355G0, iM5355G0);
                layoutParams.gravity = 17;
                layoutParams.setMargins(iM7178b, 0, iM7178b, 0);
                imageView.setLayoutParams(layoutParams);
                linearLayout.addView(imageView, (i % this.f4278v) + 1);
            }
        }
        m5382z0(linearLayout);
    }

    /* JADX INFO: renamed from: z0 */
    private void m5382z0(LinearLayout linearLayout) {
        if (linearLayout != null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.weight = 1.0f;
            View view = new View(this);
            view.setLayoutParams(layoutParams);
            linearLayout.addView(view);
        }
    }

    @Override // androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        C0982s.m7373c("HideSettingsActivity,onActivityResult: requestCode=" + i + ", resultCode=" + i2);
        if (i == 1) {
            if (i2 == -1) {
                m5351C0(intent.getData(), Uri.fromFile(new File(getCacheDir(), "custom.png")));
                return;
            }
            return;
        }
        if (i == 69) {
            if (i2 != -1) {
                if (i2 == 96) {
                    C0982s.m7375e("AutoKitHideSettingsActivity,onActivityResult: " + Log.getStackTraceString(UCrop.getError(intent)));
                    return;
                }
                return;
            }
            Uri output = UCrop.getOutput(intent);
            C0982s.m7373c("AutoKitHideSettingsActivity,onActivityResult: " + output);
            if (output != null) {
                String path = output.getPath();
                C0982s.m7373c("AutoKitHideSettingsActivity,onActivityResult: " + path);
                C0795b0.m6071i().m6096z("custom", path);
                C0795b0.m6071i().m6085F("CarPlayLogoType", 1);
                if (C0733d.m5591i()) {
                    C0733d.f4428l.m5711b();
                    C0733d.f4428l.m5720e();
                }
                m5361M0();
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4267E = 0;
        int id = view.getId();
        if (m5350B0(id)) {
        }
        switch (id) {
            case 2131296350:
                m5352D0(2131689576);
                break;
            case 2131296351:
                m5349A0();
                break;
            case 2131296382:
                finish();
                overridePendingTransition(R.anim.slide_in_left, R.anim.slide_out_right);
                break;
            case 2131296384:
            case 2131296848:
                m5369U0();
                break;
            case 2131296556:
            case 2131296579:
            case 2131296925:
                startActivity(new Intent(this, (Class<?>) LanguageSettingsActivity.class));
                break;
            case 2131296632:
            case 2131296675:
            case 2131296943:
                m5353E0();
                break;
            case 2131296727:
                m5368T0(false);
                break;
            case 2131296728:
                m5368T0(true);
                break;
            case 2131296729:
                C0795b0.m6071i().m6085F("ShowFloatBall", Boolean.FALSE);
                stopService(new Intent(this, (Class<?>) cn.manstep.phonemirrorBox.floatwindow.FloatWindowService.class));
                break;
            case 2131296730:
                C0795b0.m6071i().m6085F("ShowFloatBall", Boolean.TRUE);
                startService(new Intent(this, (Class<?>) cn.manstep.phonemirrorBox.floatwindow.FloatWindowService.class));
                break;
            case 2131296737:
                m5352D0(2131689934);
                break;
        }
    }

    @Override // cn.manstep.phonemirrorBox.ActivityC0881k, androidx.fragment.app.ActivityC0356e, androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected native void onCreate(Bundle bundle);

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        int id = seekBar.getId();
        if (seekBar.getId() == 2131296684) {
            this.f4282z.setStreamVolume(2, i, 4);
            this.f4279w.setText(BuildConfig.FLAVOR + i + "/" + this.f4263A);
            return;
        }
        if (seekBar.getId() == 2131296947) {
            this.f4282z.setStreamVolume(0, i, 4);
            this.f4280x.setText(BuildConfig.FLAVOR + i + "/" + this.f4264B);
            return;
        }
        if (seekBar.getId() == 2131296674) {
            this.f4282z.setStreamVolume(3, i, 4);
            this.f4281y.setText(BuildConfig.FLAVOR + i + "/" + this.f4265C);
            return;
        }
        if (seekBar.getId() == 2131296636) {
            if (i % 2 != 0) {
                i++;
            }
            this.f4269G.setText(BuildConfig.FLAVOR + i + "db");
            C0795b0.m6071i().m6085F("MicGain", Integer.valueOf(i));
            return;
        }
        if (id == 2131296682) {
            if (i % 2 != 0) {
                i++;
            }
            this.f4272J.setText(BuildConfig.FLAVOR + i + "db");
            C0795b0.m6079x(this, "NaviGain", i);
            return;
        }
        if (id == 2131296946) {
            if (i % 2 != 0) {
                i++;
            }
            this.f4273K.setText(BuildConfig.FLAVOR + i + "db");
            C0795b0.m6079x(this, "VoiceCallGain", i);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }
}
