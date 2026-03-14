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
import cn.manstep.phonemirrorBox.AbstractC0791a;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.p089v0.C0991a;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0985v;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0990v extends AbstractC0791a {

    /* JADX INFO: renamed from: a */
    private final WeakReference<Activity> f6161a;

    /* JADX INFO: renamed from: b */
    private TextView f6162b;

    /* JADX INFO: renamed from: c */
    private TextView f6163c;

    /* JADX INFO: renamed from: d */
    private ImageView f6164d;

    /* JADX INFO: renamed from: e */
    private Animation f6165e;

    /* JADX INFO: renamed from: f */
    private TextView f6166f;

    /* JADX INFO: renamed from: g */
    private ImageView f6167g;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v$a */
    class a implements View.OnClickListener {
        a(C0990v c0990v) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0735f c0735f;
            if (!C0733d.m5572E() || (c0735f = C0733d.f4428l) == null) {
                return;
            }
            c0735f.m5706X0();
        }
    }

    public C0990v(Activity activity) {
        C0982s.m7373c("FirstPageExImpl,FirstPageExImpl: " + activity);
        this.f6161a = new WeakReference<>(activity);
    }

    /* JADX INFO: renamed from: F */
    private void m7407F() {
        HashMap map = new HashMap();
        map.put("uuid", C0732c.m5542e().m5557o());
        map.put("orimodel", C0732c.m5542e().m5551i());
        map.put("OSver", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
        map.put("SWver", "2025.03.19.1126");
        Locale locale = this.f6161a.get().getResources().getConfiguration().locale;
        map.put("uselang", String.format(Locale.getDefault(), "%s-%s", locale.getLanguage(), locale.getCountry()));
        String strM5550h = C0732c.m5542e().m5550h();
        if (strM5550h.length() == 8) {
            strM5550h = String.format(Locale.getDefault(), "%s-%s-%s 00:00:00", strM5550h.substring(0, 4), strM5550h.substring(4, 6), strM5550h.substring(6));
        }
        map.put("initime", strM5550h);
        if (C0732c.m5542e().m5548f().length() == 0) {
            map.put("sourceType", C0991a.m7412t().m7421u());
        } else {
            map.put("sourceType", C0732c.m5542e().m5548f());
        }
        map.put("wififreq", C0795b0.m6071i().m6091m("wifi_type", 5) == 5 ? "5G" : "2.4G");
        map.put("wifichannel", BuildConfig.FLAVOR + C0732c.m5542e().m5560r());
        map.put("phonemodel", C0732c.m5542e().m5552j());
        map.put("phonever", C0732c.m5542e().m5554l());
        map.put("carlinkver", C0732c.m5542e().m5549g());
        map.put("Coretemp", BuildConfig.FLAVOR + C0732c.m5542e().m5545b());
        map.put("HW1", C0732c.m5542e().m5558p());
        map.put("HW2", C0732c.m5542e().m5547d());
        map.put("gps", BuildConfig.FLAVOR);
        map.put("cuscode", C0732c.m5542e().m5556n());
        new C0923o().m6851a(map);
    }

    /* JADX INFO: renamed from: G */
    private void m7408G(boolean z) {
        TextView textView = this.f6166f;
        if (textView != null) {
            if (z) {
                textView.setVisibility(0);
            } else {
                textView.setVisibility(4);
            }
        }
    }

    /* JADX INFO: renamed from: H */
    private void m7409H(Activity activity) {
        int identifier = activity.getResources().getIdentifier("imgQRcode", "id", activity.getPackageName());
        if (identifier != 0) {
            this.f6167g = (ImageView) activity.findViewById(identifier);
        }
    }

    /* JADX INFO: renamed from: I */
    private void m7410I(boolean z) {
        ImageView imageView = this.f6164d;
        if (imageView == null) {
            return;
        }
        if (!z) {
            imageView.clearAnimation();
            return;
        }
        Animation animation = this.f6165e;
        if (animation != null) {
            imageView.startAnimation(animation);
        }
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: B */
    public void mo6017B(AbstractC0791a.a aVar) {
    }

    /* JADX INFO: renamed from: J */
    public void m7411J() {
        C0735f c0735f = C0733d.f4428l;
        if (c0735f != null) {
            String strM5687L = c0735f.m5687L();
            C0982s.m7373c("FirstPageExImpl,updateQrCode: " + strM5687L + "," + C0925p.f5865b);
            if (this.f6167g != null) {
                if (TextUtils.isEmpty(strM5687L) || !C0733d.m5569A()) {
                    this.f6167g.setVisibility(8);
                    return;
                }
                int width = this.f6167g.getWidth();
                if (width == 0) {
                    width = C0964c0.m7178b(this.f6161a.get(), 60.0f);
                }
                Bitmap bitmapM7392a = C0985v.m7392a(strM5687L, width, width);
                if (bitmapM7392a != null) {
                    this.f6167g.setImageBitmap(bitmapM7392a);
                    this.f6167g.setVisibility(0);
                }
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: a */
    public void mo6021a() {
        this.f6166f = (TextView) this.f6161a.get().findViewById(2131296367);
        this.f6163c = (TextView) this.f6161a.get().findViewById(2131296904);
        int identifier = this.f6161a.get().getResources().getIdentifier("tvBoxPlug", "id", this.f6161a.get().getPackageName());
        if (identifier != 0) {
            this.f6162b = (TextView) this.f6161a.get().findViewById(identifier);
        }
        int identifier2 = this.f6161a.get().getResources().getIdentifier("AutoKitWaitBoxConn", "id", this.f6161a.get().getPackageName());
        if (identifier2 != 0) {
            this.f6164d = (ImageView) this.f6161a.get().findViewById(identifier2);
        }
        ImageView imageView = this.f6164d;
        if (imageView != null) {
            imageView.setOnClickListener(new a(this));
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f6161a.get(), 2130772002);
            this.f6165e = animationLoadAnimation;
            animationLoadAnimation.setInterpolator(new LinearInterpolator());
        }
        m7409H(this.f6161a.get());
        m7411J();
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: b */
    public boolean mo6022b() {
        return true;
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: c */
    public boolean mo6023c(int i, int i2, Intent intent) {
        return false;
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: e */
    public void mo6025e() {
        TextView textView = this.f6162b;
        if (textView != null) {
            textView.setTextColor(Color.rgb(113, 143, 181));
            this.f6163c.setText(2131689676);
        }
        m7408G(false);
        m7410I(true);
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: f */
    public void mo6026f() {
        C0982s.m7373c("FirstPageExImpl,onBoxDisconnect: ######");
        super.mo6026f();
        TextView textView = this.f6162b;
        if (textView != null) {
            textView.setTextColor(Color.rgb(113, 143, 181));
            this.f6163c.setText(2131689887);
        }
        m7408G(false);
        m7410I(false);
        ImageView imageView = this.f6167g;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: h */
    public void mo6028h(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: p */
    public void mo6036p() {
        m7410I(true);
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: q */
    public void mo6037q() {
        m7410I(false);
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: s */
    public void mo6039s(boolean z) {
        super.mo6039s(z);
        if (!z) {
            C0732c.m5542e().m5564v();
            return;
        }
        C0982s.m7373c("FirstPageExImpl,onPhoneConnectStateChanged: " + C0732c.m5542e().toString());
        if (C0925p.f5855B) {
            m7407F();
        }
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: t */
    public void mo6040t() {
        super.mo6040t();
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: u */
    public void mo6041u(String str) {
        C0982s.m7373c("FirstPageExImpl,onShowBoxVersion: " + str);
        if (this.f6163c == null || this.f6162b == null) {
            return;
        }
        if (C0733d.m5591i()) {
            this.f6162b.setTextColor(Color.rgb(56, 219, 148));
            this.f6163c.setText(2131689886);
        } else {
            this.f6162b.setTextColor(Color.rgb(113, 143, 181));
            this.f6163c.setText(2131689887);
        }
        m7410I(false);
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: v */
    public void mo6042v() {
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: w */
    public void mo6043w() {
        m7411J();
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: y */
    public void mo6045y() {
    }

    @Override // cn.manstep.phonemirrorBox.AbstractC0791a
    /* JADX INFO: renamed from: z */
    public void mo6046z() {
    }
}
