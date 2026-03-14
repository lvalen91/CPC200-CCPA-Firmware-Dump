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
import cn.manstep.phonemirrorBox.BoxInterface.d;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class WaitFragment extends Fragment implements d.g {
    private ImageView a0;
    private Animation b0;
    private AnimationDrawable c0;
    private TextView d0;
    private View f0;
    private int e0 = -1;
    private boolean g0 = false;

    private void g2(View view) {
        if (view == null || D() == null) {
            return;
        }
        int identifier = D().getResources().getIdentifier("tvWirelessConnTips", "id", D().getPackageName());
        if (identifier != 0) {
            this.d0 = (TextView) view.findViewById(identifier);
        }
        TextView textView = this.d0;
        if (textView != null) {
            textView.setVisibility(cn.manstep.phonemirrorBox.BoxInterface.f.R ? 0 : 8);
        }
        ImageView imageView = (ImageView) view.findViewById(2131296342);
        this.a0 = imageView;
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
        this.c0 = animationDrawable;
        if (animationDrawable == null) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(D(), 2130772002);
            this.b0 = animationLoadAnimation;
            animationLoadAnimation.setInterpolator(new LinearInterpolator());
        }
    }

    private void i2() {
        Point point = new Point();
        Point point2 = new Point();
        if (D() == null) {
            return;
        }
        D().getWindow().getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
        cn.manstep.phonemirrorBox.util.s.e("WaitFragment,resetDisplaySize: " + point.toString() + " " + point2.toString());
        cn.manstep.phonemirrorBox.util.s.e("WaitFragment,resetDisplaySize: " + p.k + " " + p.l);
        View viewL0 = l0();
        if (viewL0 != null) {
            cn.manstep.phonemirrorBox.util.s.c("WaitFragment,resetDisplaySize: VIDEO_MAX_SIZE " + viewL0.getWidth() + "x" + viewL0.getHeight());
        }
        int i = p.l;
        int i2 = p.k;
        if (i <= i2) {
            AutoBoxMirrorView.g(i2, p.l);
            return;
        }
        if (h2(D())) {
            AutoBoxMirrorView.g(point.x, point2.y);
            cn.manstep.phonemirrorBox.util.s.e("WaitFragment,resetDisplaySize: " + p.n + " " + p.o);
        }
    }

    private void j2() {
        cn.manstep.phonemirrorBox.util.s.c("WaitFragment,startAnimation: ====A");
        if (this.g0) {
            return;
        }
        this.g0 = true;
        TextView textView = this.d0;
        if (textView != null) {
            textView.setVisibility(cn.manstep.phonemirrorBox.BoxInterface.f.R ? 0 : 8);
        }
        cn.manstep.phonemirrorBox.util.s.c("WaitFragment,startAnimation: ====B BoxProtocol.bWifiDeviceConected = " + cn.manstep.phonemirrorBox.BoxInterface.f.R);
        AnimationDrawable animationDrawable = this.c0;
        if (animationDrawable == null) {
            this.a0.startAnimation(this.b0);
        } else {
            animationDrawable.start();
        }
    }

    private void k2() {
        cn.manstep.phonemirrorBox.util.s.c("WaitFragment,stopAnimation: ====A");
        if (this.g0) {
            this.g0 = false;
            TextView textView = this.d0;
            if (textView != null) {
                textView.setVisibility(8);
            }
            cn.manstep.phonemirrorBox.util.s.c("WaitFragment,stopAnimation: ====B");
            AnimationDrawable animationDrawable = this.c0;
            if (animationDrawable == null) {
                this.a0.clearAnimation();
            } else {
                animationDrawable.stop();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        cn.manstep.phonemirrorBox.v0.e.M(this);
        View viewInflate = layoutInflater.inflate(2131492947, viewGroup, false);
        this.f0 = viewInflate;
        g2(viewInflate);
        return this.f0;
    }

    @Override // androidx.fragment.app.Fragment
    public void O0() {
        cn.manstep.phonemirrorBox.v0.e.S(this);
        super.O0();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
    }

    public boolean h2(Activity activity) {
        int i = activity.getWindow().getAttributes().flags;
        return (i & (-1025)) == i;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
        cn.manstep.phonemirrorBox.util.s.c("WaitFragment,on_Box_Phase: phase = " + i);
        if (i == 15) {
            i2();
        }
        if (this.e0 != i) {
            this.e0 = i;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i == 4) {
                                TextView textView = (TextView) this.f0.findViewById(2131296953);
                                if (textView != null) {
                                    MainActivity mainActivity = (MainActivity) D();
                                    int i2 = mainActivity != null ? mainActivity.u : -1;
                                    if (i2 == 1) {
                                        textView.setText(String.format(d0().getString(2131689677), "CarPlay"));
                                    } else if (i2 == 3) {
                                        textView.setText(String.format(d0().getString(2131689677), "Android Auto"));
                                    } else if (TextUtils.isEmpty(cn.manstep.phonemirrorBox.BoxInterface.c.e().k())) {
                                        textView.setText(d0().getString(2131689913));
                                    } else {
                                        textView.setText(String.format(d0().getString(2131689677), cn.manstep.phonemirrorBox.BoxInterface.c.e().k()));
                                    }
                                }
                                j2();
                                return;
                            }
                            if (i != 12 && i != 14 && i != 15) {
                                return;
                            }
                        }
                    }
                }
                TextView textView2 = this.d0;
                if (textView2 != null) {
                    textView2.setVisibility(cn.manstep.phonemirrorBox.BoxInterface.f.R ? 0 : 8);
                }
                j2();
                return;
            }
            k2();
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
    }
}
