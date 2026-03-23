package cn.manstep.phonemirrorBox;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import cn.manstep.phonemirrorBox.a;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class v extends cn.manstep.phonemirrorBox.a {
    private final WeakReference<Activity> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f1936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f1937c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f1938d;
    private Animation e;
    private TextView f;
    private ImageView g;

    class a implements View.OnClickListener {
        a(v vVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            cn.manstep.phonemirrorBox.BoxInterface.f fVar;
            if (!d.E() || (fVar = d.l) == null) {
                return;
            }
            fVar.X0();
        }
    }

    public v(Activity activity) {
        cn.manstep.phonemirrorBox.util.s.c("FirstPageExImpl,FirstPageExImpl: " + activity);
        this.a = new WeakReference<>(activity);
    }

    private void F() {
        HashMap map = new HashMap();
        map.put("uuid", cn.manstep.phonemirrorBox.BoxInterface.c.e().o());
        map.put("orimodel", cn.manstep.phonemirrorBox.BoxInterface.c.e().i());
        map.put("OSver", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
        map.put("SWver", "2025.03.19.1126");
        Locale locale = this.a.get().getResources().getConfiguration().locale;
        map.put("uselang", String.format(Locale.getDefault(), "%s-%s", locale.getLanguage(), locale.getCountry()));
        String strH = cn.manstep.phonemirrorBox.BoxInterface.c.e().h();
        if (strH.length() == 8) {
            strH = String.format(Locale.getDefault(), "%s-%s-%s 00:00:00", strH.substring(0, 4), strH.substring(4, 6), strH.substring(6));
        }
        map.put("initime", strH);
        if (cn.manstep.phonemirrorBox.BoxInterface.c.e().f().length() == 0) {
            map.put("sourceType", cn.manstep.phonemirrorBox.v0.a.t().u());
        } else {
            map.put("sourceType", cn.manstep.phonemirrorBox.BoxInterface.c.e().f());
        }
        map.put("wififreq", b0.i().m("wifi_type", 5) == 5 ? "5G" : "2.4G");
        map.put("wifichannel", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.BoxInterface.c.e().r());
        map.put("phonemodel", cn.manstep.phonemirrorBox.BoxInterface.c.e().j());
        map.put("phonever", cn.manstep.phonemirrorBox.BoxInterface.c.e().l());
        map.put("carlinkver", cn.manstep.phonemirrorBox.BoxInterface.c.e().g());
        map.put("Coretemp", BuildConfig.FLAVOR + cn.manstep.phonemirrorBox.BoxInterface.c.e().b());
        map.put("HW1", cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
        map.put("HW2", cn.manstep.phonemirrorBox.BoxInterface.c.e().d());
        map.put("gps", BuildConfig.FLAVOR);
        map.put("cuscode", cn.manstep.phonemirrorBox.BoxInterface.c.e().n());
        new o().a(map);
    }

    private void G(boolean z) {
        TextView textView = this.f;
        if (textView != null) {
            if (z) {
                textView.setVisibility(0);
            } else {
                textView.setVisibility(4);
            }
        }
    }

    private void H(Activity activity) {
        int identifier = activity.getResources().getIdentifier("imgQRcode", "id", activity.getPackageName());
        if (identifier != 0) {
            this.g = (ImageView) activity.findViewById(identifier);
        }
    }

    private void I(boolean z) {
        ImageView imageView = this.f1938d;
        if (imageView == null) {
            return;
        }
        if (!z) {
            imageView.clearAnimation();
            return;
        }
        Animation animation = this.e;
        if (animation != null) {
            imageView.startAnimation(animation);
        }
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void B(a.InterfaceC0081a interfaceC0081a) {
    }

    public void J() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = d.l;
        if (fVar != null) {
            String strL = fVar.L();
            cn.manstep.phonemirrorBox.util.s.c("FirstPageExImpl,updateQrCode: " + strL + "," + p.f1804b);
            if (this.g != null) {
                if (TextUtils.isEmpty(strL) || !d.A()) {
                    this.g.setVisibility(8);
                    return;
                }
                int width = this.g.getWidth();
                if (width == 0) {
                    width = cn.manstep.phonemirrorBox.util.c0.b(this.a.get(), 60.0f);
                }
                Bitmap bitmapA = cn.manstep.phonemirrorBox.util.v.a(strL, width, width);
                if (bitmapA != null) {
                    this.g.setImageBitmap(bitmapA);
                    this.g.setVisibility(0);
                }
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void a() {
        this.f = (TextView) this.a.get().findViewById(2131296367);
        this.f1937c = (TextView) this.a.get().findViewById(2131296904);
        int identifier = this.a.get().getResources().getIdentifier("tvBoxPlug", "id", this.a.get().getPackageName());
        if (identifier != 0) {
            this.f1936b = (TextView) this.a.get().findViewById(identifier);
        }
        int identifier2 = this.a.get().getResources().getIdentifier("AutoKitWaitBoxConn", "id", this.a.get().getPackageName());
        if (identifier2 != 0) {
            this.f1938d = (ImageView) this.a.get().findViewById(identifier2);
        }
        ImageView imageView = this.f1938d;
        if (imageView != null) {
            imageView.setOnClickListener(new a(this));
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.a.get(), 2130772002);
            this.e = animationLoadAnimation;
            animationLoadAnimation.setInterpolator(new LinearInterpolator());
        }
        H(this.a.get());
        J();
    }

    @Override // cn.manstep.phonemirrorBox.a
    public boolean b() {
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.a
    public boolean c(int i, int i2, Intent intent) {
        return false;
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void e() {
        TextView textView = this.f1936b;
        if (textView != null) {
            textView.setTextColor(Color.rgb(113, 143, 181));
            this.f1937c.setText(2131689676);
        }
        G(false);
        I(true);
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void f() {
        cn.manstep.phonemirrorBox.util.s.c("FirstPageExImpl,onBoxDisconnect: ######");
        super.f();
        TextView textView = this.f1936b;
        if (textView != null) {
            textView.setTextColor(Color.rgb(113, 143, 181));
            this.f1937c.setText(2131689887);
        }
        G(false);
        I(false);
        ImageView imageView = this.g;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void h(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void p() {
        I(true);
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void q() {
        I(false);
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void s(boolean z) {
        super.s(z);
        if (!z) {
            cn.manstep.phonemirrorBox.BoxInterface.c.e().v();
            return;
        }
        cn.manstep.phonemirrorBox.util.s.c("FirstPageExImpl,onPhoneConnectStateChanged: " + cn.manstep.phonemirrorBox.BoxInterface.c.e().toString());
        if (p.B) {
            F();
        }
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void t() {
        super.t();
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void u(String str) {
        cn.manstep.phonemirrorBox.util.s.c("FirstPageExImpl,onShowBoxVersion: " + str);
        if (this.f1937c == null || this.f1936b == null) {
            return;
        }
        if (d.i()) {
            this.f1936b.setTextColor(Color.rgb(56, 219, 148));
            this.f1937c.setText(2131689886);
        } else {
            this.f1936b.setTextColor(Color.rgb(113, 143, 181));
            this.f1937c.setText(2131689887);
        }
        I(false);
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void v() {
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void w() {
        J();
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void y() {
    }

    @Override // cn.manstep.phonemirrorBox.a
    public void z() {
    }
}
