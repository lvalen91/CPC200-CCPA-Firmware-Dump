package cn.manstep.phonemirrorBox;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import cn.manstep.phonemirrorBox.BoxInterface.C0732c;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class WaitFragment extends Fragment implements C0733d.g {

    /* JADX INFO: renamed from: a0 */
    private ImageView f4708a0;

    /* JADX INFO: renamed from: b0 */
    private Animation f4709b0;

    /* JADX INFO: renamed from: c0 */
    private AnimationDrawable f4710c0;

    /* JADX INFO: renamed from: d0 */
    private TextView f4711d0;

    /* JADX INFO: renamed from: f0 */
    private View f4713f0;

    /* JADX INFO: renamed from: e0 */
    private int f4712e0 = -1;

    /* JADX INFO: renamed from: g0 */
    private boolean f4714g0 = false;

    /* JADX INFO: renamed from: g2 */
    private void m6011g2(View view) {
        if (view == null || m2385D() == null) {
            return;
        }
        int identifier = m2385D().getResources().getIdentifier("tvWirelessConnTips", "id", m2385D().getPackageName());
        if (identifier != 0) {
            this.f4711d0 = (TextView) view.findViewById(identifier);
        }
        TextView textView = this.f4711d0;
        if (textView != null) {
            textView.setVisibility(C0735f.f4461R ? 0 : 8);
        }
        ImageView imageView = (ImageView) view.findViewById(2131296342);
        this.f4708a0 = imageView;
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
        this.f4710c0 = animationDrawable;
        if (animationDrawable == null) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(m2385D(), 2130772002);
            this.f4709b0 = animationLoadAnimation;
            animationLoadAnimation.setInterpolator(new LinearInterpolator());
        }
    }

    /* JADX INFO: renamed from: i2 */
    private void m6012i2() {
        Point point = new Point();
        Point point2 = new Point();
        if (m2385D() == null) {
            return;
        }
        m2385D().getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
        C0982s.m7375e("WaitFragment,resetDisplaySize: " + point.toString() + " " + point2.toString());
        C0982s.m7375e("WaitFragment,resetDisplaySize: " + C0925p.f5874k + " " + C0925p.f5875l);
        View viewM2478l0 = m2478l0();
        if (viewM2478l0 != null) {
            C0982s.m7373c("WaitFragment,resetDisplaySize: VIDEO_MAX_SIZE " + viewM2478l0.getWidth() + "x" + viewM2478l0.getHeight());
        }
        int i = C0925p.f5875l;
        int i2 = C0925p.f5874k;
        if (i <= i2) {
            AutoBoxMirrorView.m5345g(i2, C0925p.f5875l);
            return;
        }
        if (m6015h2(m2385D())) {
            AutoBoxMirrorView.m5345g(point.x, point2.y);
            C0982s.m7375e("WaitFragment,resetDisplaySize: " + C0925p.f5877n + " " + C0925p.f5878o);
        }
    }

    /* JADX INFO: renamed from: j2 */
    private void m6013j2() {
        C0982s.m7373c("WaitFragment,startAnimation: ====A");
        if (this.f4714g0) {
            return;
        }
        this.f4714g0 = true;
        TextView textView = this.f4711d0;
        if (textView != null) {
            textView.setVisibility(C0735f.f4461R ? 0 : 8);
        }
        C0982s.m7373c("WaitFragment,startAnimation: ====B BoxProtocol.bWifiDeviceConected = " + C0735f.f4461R);
        AnimationDrawable animationDrawable = this.f4710c0;
        if (animationDrawable == null) {
            this.f4708a0.startAnimation(this.f4709b0);
        } else {
            animationDrawable.start();
        }
    }

    /* JADX INFO: renamed from: k2 */
    private void m6014k2() {
        C0982s.m7373c("WaitFragment,stopAnimation: ====A");
        if (this.f4714g0) {
            this.f4714g0 = false;
            TextView textView = this.f4711d0;
            if (textView != null) {
                textView.setVisibility(8);
            }
            C0982s.m7373c("WaitFragment,stopAnimation: ====B");
            AnimationDrawable animationDrawable = this.f4710c0;
            if (animationDrawable == null) {
                this.f4708a0.clearAnimation();
            } else {
                animationDrawable.stop();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C0995e.m7440M(this);
        View viewInflate = layoutInflater.inflate(2131492947, viewGroup, false);
        this.f4713f0 = viewInflate;
        m6011g2(viewInflate);
        return this.f4713f0;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: O0 */
    public void mo2416O0() {
        C0995e.m7446S(this);
        super.mo2416O0();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i, Object obj) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i) {
    }

    /* JADX INFO: renamed from: h2 */
    public boolean m6015h2(Activity activity) {
        int i = activity.getWindow().getAttributes().flags;
        return (i & (-1025)) == i;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i) {
        C0982s.m7373c("WaitFragment,on_Box_Phase: phase = " + i);
        if (i == 15) {
            m6012i2();
        }
        if (this.f4712e0 != i) {
            this.f4712e0 = i;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i == 4) {
                                TextView textView = (TextView) this.f4713f0.findViewById(2131296953);
                                if (textView != null) {
                                    MainActivity mainActivity = (MainActivity) m2385D();
                                    int i2 = mainActivity != null ? mainActivity.f4637u : -1;
                                    if (i2 == 1) {
                                        textView.setText(String.format(m2459d0().getString(2131689677), "CarPlay"));
                                    } else if (i2 == 3) {
                                        textView.setText(String.format(m2459d0().getString(2131689677), "Android Auto"));
                                    } else if (TextUtils.isEmpty(C0732c.m5542e().m5553k())) {
                                        textView.setText(m2459d0().getString(2131689913));
                                    } else {
                                        textView.setText(String.format(m2459d0().getString(2131689677), C0732c.m5542e().m5553k()));
                                    }
                                }
                                m6013j2();
                                return;
                            }
                            if (i != 12 && i != 14 && i != 15) {
                                return;
                            }
                        }
                    }
                }
                TextView textView2 = this.f4711d0;
                if (textView2 != null) {
                    textView2.setVisibility(C0735f.f4461R ? 0 : 8);
                }
                m6013j2();
                return;
            }
            m6014k2();
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
    }
}
