package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.C0200x;
import androidx.core.view.C0292v;
import androidx.core.widget.C0308i;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.List;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.p104l.C1227a;
import p093d.p099c.p100a.p101a.p104l.C1228b;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: renamed from: com.google.android.material.textfield.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C1143f {

    /* JADX INFO: renamed from: a */
    private final Context f7382a;

    /* JADX INFO: renamed from: b */
    private final TextInputLayout f7383b;

    /* JADX INFO: renamed from: c */
    private LinearLayout f7384c;

    /* JADX INFO: renamed from: d */
    private int f7385d;

    /* JADX INFO: renamed from: e */
    private FrameLayout f7386e;

    /* JADX INFO: renamed from: f */
    private Animator f7387f;

    /* JADX INFO: renamed from: g */
    private final float f7388g;

    /* JADX INFO: renamed from: h */
    private int f7389h;

    /* JADX INFO: renamed from: i */
    private int f7390i;

    /* JADX INFO: renamed from: j */
    private CharSequence f7391j;

    /* JADX INFO: renamed from: k */
    private boolean f7392k;

    /* JADX INFO: renamed from: l */
    private TextView f7393l;

    /* JADX INFO: renamed from: m */
    private CharSequence f7394m;

    /* JADX INFO: renamed from: n */
    private int f7395n;

    /* JADX INFO: renamed from: o */
    private ColorStateList f7396o;

    /* JADX INFO: renamed from: p */
    private CharSequence f7397p;

    /* JADX INFO: renamed from: q */
    private boolean f7398q;

    /* JADX INFO: renamed from: r */
    private TextView f7399r;

    /* JADX INFO: renamed from: s */
    private int f7400s;

    /* JADX INFO: renamed from: t */
    private ColorStateList f7401t;

    /* JADX INFO: renamed from: u */
    private Typeface f7402u;

    /* JADX INFO: renamed from: com.google.android.material.textfield.f$a */
    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f7403a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ TextView f7404b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f7405c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ TextView f7406d;

        a(int i, TextView textView, int i2, TextView textView2) {
            this.f7403a = i;
            this.f7404b = textView;
            this.f7405c = i2;
            this.f7406d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1143f.this.f7389h = this.f7403a;
            C1143f.this.f7387f = null;
            TextView textView = this.f7404b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f7405c == 1 && C1143f.this.f7393l != null) {
                    C1143f.this.f7393l.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f7406d;
            if (textView2 != null) {
                textView2.setTranslationY(CropImageView.DEFAULT_ASPECT_RATIO);
                this.f7406d.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f7406d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    public C1143f(TextInputLayout textInputLayout) {
        this.f7382a = textInputLayout.getContext();
        this.f7383b = textInputLayout;
        this.f7388g = r0.getResources().getDimensionPixelSize(C1219d.design_textinput_caption_translate_y);
    }

    /* JADX INFO: renamed from: A */
    private void m8895A(int i, int i2) {
        TextView textViewM8907l;
        TextView textViewM8907l2;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (textViewM8907l2 = m8907l(i2)) != null) {
            textViewM8907l2.setVisibility(0);
            textViewM8907l2.setAlpha(1.0f);
        }
        if (i != 0 && (textViewM8907l = m8907l(i)) != null) {
            textViewM8907l.setVisibility(4);
            if (i == 1) {
                textViewM8907l.setText((CharSequence) null);
            }
        }
        this.f7389h = i2;
    }

    /* JADX INFO: renamed from: I */
    private void m8896I(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* JADX INFO: renamed from: K */
    private void m8897K(ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* JADX INFO: renamed from: L */
    private boolean m8898L(TextView textView, CharSequence charSequence) {
        return C0292v.m2069T(this.f7383b) && this.f7383b.isEnabled() && !(this.f7390i == this.f7389h && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    /* JADX INFO: renamed from: O */
    private void m8899O(int i, int i2, boolean z) {
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f7387f = animatorSet;
            ArrayList arrayList = new ArrayList();
            m8904h(arrayList, this.f7398q, this.f7399r, 2, i, i2);
            m8904h(arrayList, this.f7392k, this.f7393l, 1, i, i2);
            C1228b.m9337a(animatorSet, arrayList);
            animatorSet.addListener(new a(i2, m8907l(i), i, m8907l(i2)));
            animatorSet.start();
        } else {
            m8895A(i, i2);
        }
        this.f7383b.m8836s0();
        this.f7383b.m8837v0(z);
        this.f7383b.m8822F0();
    }

    /* JADX INFO: renamed from: f */
    private boolean m8903f() {
        return (this.f7384c == null || this.f7383b.getEditText() == null) ? false : true;
    }

    /* JADX INFO: renamed from: h */
    private void m8904h(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            list.add(m8905i(textView, i3 == i));
            if (i3 == i) {
                list.add(m8906j(textView));
            }
        }
    }

    /* JADX INFO: renamed from: i */
    private ObjectAnimator m8905i(TextView textView, boolean z) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
        objectAnimatorOfFloat.setDuration(167L);
        objectAnimatorOfFloat.setInterpolator(C1227a.f7754a);
        return objectAnimatorOfFloat;
    }

    /* JADX INFO: renamed from: j */
    private ObjectAnimator m8906j(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f7388g, CropImageView.DEFAULT_ASPECT_RATIO);
        objectAnimatorOfFloat.setDuration(217L);
        objectAnimatorOfFloat.setInterpolator(C1227a.f7757d);
        return objectAnimatorOfFloat;
    }

    /* JADX INFO: renamed from: l */
    private TextView m8907l(int i) {
        if (i == 1) {
            return this.f7393l;
        }
        if (i != 2) {
            return null;
        }
        return this.f7399r;
    }

    /* JADX INFO: renamed from: s */
    private int m8908s(boolean z, int i, int i2) {
        return z ? this.f7382a.getResources().getDimensionPixelSize(i) : i2;
    }

    /* JADX INFO: renamed from: v */
    private boolean m8909v(int i) {
        return (i != 1 || this.f7393l == null || TextUtils.isEmpty(this.f7391j)) ? false : true;
    }

    /* JADX INFO: renamed from: B */
    void m8910B(CharSequence charSequence) {
        this.f7394m = charSequence;
        TextView textView = this.f7393l;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: renamed from: C */
    void m8911C(boolean z) {
        if (this.f7392k == z) {
            return;
        }
        m8922g();
        if (z) {
            C0200x c0200x = new C0200x(this.f7382a);
            this.f7393l = c0200x;
            c0200x.setId(C1221f.textinput_error);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f7393l.setTextAlignment(5);
            }
            Typeface typeface = this.f7402u;
            if (typeface != null) {
                this.f7393l.setTypeface(typeface);
            }
            m8912D(this.f7395n);
            m8913E(this.f7396o);
            m8910B(this.f7394m);
            this.f7393l.setVisibility(4);
            C0292v.m2109q0(this.f7393l, 1);
            m8920d(this.f7393l, 0);
        } else {
            m8930t();
            m8935z(this.f7393l, 0);
            this.f7393l = null;
            this.f7383b.m8836s0();
            this.f7383b.m8822F0();
        }
        this.f7392k = z;
    }

    /* JADX INFO: renamed from: D */
    void m8912D(int i) {
        this.f7395n = i;
        TextView textView = this.f7393l;
        if (textView != null) {
            this.f7383b.m8832e0(textView, i);
        }
    }

    /* JADX INFO: renamed from: E */
    void m8913E(ColorStateList colorStateList) {
        this.f7396o = colorStateList;
        TextView textView = this.f7393l;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* JADX INFO: renamed from: F */
    void m8914F(int i) {
        this.f7400s = i;
        TextView textView = this.f7399r;
        if (textView != null) {
            C0308i.m2289n(textView, i);
        }
    }

    /* JADX INFO: renamed from: G */
    void m8915G(boolean z) {
        if (this.f7398q == z) {
            return;
        }
        m8922g();
        if (z) {
            C0200x c0200x = new C0200x(this.f7382a);
            this.f7399r = c0200x;
            c0200x.setId(C1221f.textinput_helper_text);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f7399r.setTextAlignment(5);
            }
            Typeface typeface = this.f7402u;
            if (typeface != null) {
                this.f7399r.setTypeface(typeface);
            }
            this.f7399r.setVisibility(4);
            C0292v.m2109q0(this.f7399r, 1);
            m8914F(this.f7400s);
            m8916H(this.f7401t);
            m8920d(this.f7399r, 1);
        } else {
            m8931u();
            m8935z(this.f7399r, 1);
            this.f7399r = null;
            this.f7383b.m8836s0();
            this.f7383b.m8822F0();
        }
        this.f7398q = z;
    }

    /* JADX INFO: renamed from: H */
    void m8916H(ColorStateList colorStateList) {
        this.f7401t = colorStateList;
        TextView textView = this.f7399r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* JADX INFO: renamed from: J */
    void m8917J(Typeface typeface) {
        if (typeface != this.f7402u) {
            this.f7402u = typeface;
            m8896I(this.f7393l, typeface);
            m8896I(this.f7399r, typeface);
        }
    }

    /* JADX INFO: renamed from: M */
    void m8918M(CharSequence charSequence) {
        m8922g();
        this.f7391j = charSequence;
        this.f7393l.setText(charSequence);
        if (this.f7389h != 1) {
            this.f7390i = 1;
        }
        m8899O(this.f7389h, this.f7390i, m8898L(this.f7393l, charSequence));
    }

    /* JADX INFO: renamed from: N */
    void m8919N(CharSequence charSequence) {
        m8922g();
        this.f7397p = charSequence;
        this.f7399r.setText(charSequence);
        if (this.f7389h != 2) {
            this.f7390i = 2;
        }
        m8899O(this.f7389h, this.f7390i, m8898L(this.f7399r, charSequence));
    }

    /* JADX INFO: renamed from: d */
    void m8920d(TextView textView, int i) {
        if (this.f7384c == null && this.f7386e == null) {
            LinearLayout linearLayout = new LinearLayout(this.f7382a);
            this.f7384c = linearLayout;
            linearLayout.setOrientation(0);
            this.f7383b.addView(this.f7384c, -1, -2);
            this.f7386e = new FrameLayout(this.f7382a);
            this.f7384c.addView(this.f7386e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f7383b.getEditText() != null) {
                m8921e();
            }
        }
        if (m8932w(i)) {
            this.f7386e.setVisibility(0);
            this.f7386e.addView(textView);
        } else {
            this.f7384c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f7384c.setVisibility(0);
        this.f7385d++;
    }

    /* JADX INFO: renamed from: e */
    void m8921e() {
        if (m8903f()) {
            EditText editText = this.f7383b.getEditText();
            boolean zM9460g = C1257c.m9460g(this.f7382a);
            C0292v.m2043A0(this.f7384c, m8908s(zM9460g, C1219d.material_helper_text_font_1_3_padding_horizontal, C0292v.m2058I(editText)), m8908s(zM9460g, C1219d.material_helper_text_font_1_3_padding_top, this.f7382a.getResources().getDimensionPixelSize(C1219d.material_helper_text_default_padding_top)), m8908s(zM9460g, C1219d.material_helper_text_font_1_3_padding_horizontal, C0292v.m2056H(editText)), 0);
        }
    }

    /* JADX INFO: renamed from: g */
    void m8922g() {
        Animator animator = this.f7387f;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* JADX INFO: renamed from: k */
    boolean m8923k() {
        return m8909v(this.f7390i);
    }

    /* JADX INFO: renamed from: m */
    CharSequence m8924m() {
        return this.f7394m;
    }

    /* JADX INFO: renamed from: n */
    CharSequence m8925n() {
        return this.f7391j;
    }

    /* JADX INFO: renamed from: o */
    int m8926o() {
        TextView textView = this.f7393l;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: renamed from: p */
    ColorStateList m8927p() {
        TextView textView = this.f7393l;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* JADX INFO: renamed from: q */
    CharSequence m8928q() {
        return this.f7397p;
    }

    /* JADX INFO: renamed from: r */
    int m8929r() {
        TextView textView = this.f7399r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: renamed from: t */
    void m8930t() {
        this.f7391j = null;
        m8922g();
        if (this.f7389h == 1) {
            if (!this.f7398q || TextUtils.isEmpty(this.f7397p)) {
                this.f7390i = 0;
            } else {
                this.f7390i = 2;
            }
        }
        m8899O(this.f7389h, this.f7390i, m8898L(this.f7393l, null));
    }

    /* JADX INFO: renamed from: u */
    void m8931u() {
        m8922g();
        if (this.f7389h == 2) {
            this.f7390i = 0;
        }
        m8899O(this.f7389h, this.f7390i, m8898L(this.f7399r, null));
    }

    /* JADX INFO: renamed from: w */
    boolean m8932w(int i) {
        return i == 0 || i == 1;
    }

    /* JADX INFO: renamed from: x */
    boolean m8933x() {
        return this.f7392k;
    }

    /* JADX INFO: renamed from: y */
    boolean m8934y() {
        return this.f7398q;
    }

    /* JADX INFO: renamed from: z */
    void m8935z(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.f7384c == null) {
            return;
        }
        if (!m8932w(i) || (frameLayout = this.f7386e) == null) {
            this.f7384c.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i2 = this.f7385d - 1;
        this.f7385d = i2;
        m8897K(this.f7384c, i2);
    }
}
