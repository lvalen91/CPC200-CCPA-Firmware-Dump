package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p017a.p018k.p019a.C0503a;
import p093d.p099c.p100a.p101a.C1220e;
import p093d.p099c.p100a.p101a.C1224i;
import p093d.p099c.p100a.p101a.p104l.C1227a;

/* JADX INFO: renamed from: com.google.android.material.textfield.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1138a extends AbstractC1142e {

    /* JADX INFO: renamed from: d */
    private final TextWatcher f7330d;

    /* JADX INFO: renamed from: e */
    private final View.OnFocusChangeListener f7331e;

    /* JADX INFO: renamed from: f */
    private final TextInputLayout.InterfaceC1135f f7332f;

    /* JADX INFO: renamed from: g */
    private final TextInputLayout.InterfaceC1136g f7333g;

    /* JADX INFO: renamed from: h */
    private AnimatorSet f7334h;

    /* JADX INFO: renamed from: i */
    private ValueAnimator f7335i;

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$a */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (C1138a.this.f7379a.getSuffixText() != null) {
                return;
            }
            C1138a c1138a = C1138a.this;
            c1138a.m8847i(c1138a.f7379a.hasFocus() && C1138a.m8850l(editable));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$b */
    class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            C1138a.this.m8847i((TextUtils.isEmpty(((EditText) view).getText()) ^ true) && z);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$c */
    class c implements TextInputLayout.InterfaceC1135f {
        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.InterfaceC1135f
        /* JADX INFO: renamed from: a */
        public void mo8838a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(editText.hasFocus() && C1138a.m8850l(editText.getText()));
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(C1138a.this.f7331e);
            editText.removeTextChangedListener(C1138a.this.f7330d);
            editText.addTextChangedListener(C1138a.this.f7330d);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$d */
    class d implements TextInputLayout.InterfaceC1136g {

        /* JADX INFO: renamed from: com.google.android.material.textfield.a$d$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ EditText f7340b;

            a(EditText editText) {
                this.f7340b = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f7340b.removeTextChangedListener(C1138a.this.f7330d);
            }
        }

        d() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.InterfaceC1136g
        /* JADX INFO: renamed from: a */
        public void mo8839a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 2) {
                return;
            }
            editText.post(new a(editText));
            if (editText.getOnFocusChangeListener() == C1138a.this.f7331e) {
                editText.setOnFocusChangeListener(null);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$e */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Editable text = C1138a.this.f7379a.getEditText().getText();
            if (text != null) {
                text.clear();
            }
            C1138a.this.f7379a.m8828V();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$f */
    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1138a.this.f7379a.setEndIconVisible(true);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$g */
    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1138a.this.f7379a.setEndIconVisible(false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$h */
    class h implements ValueAnimator.AnimatorUpdateListener {
        h() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C1138a.this.f7381c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$i */
    class i implements ValueAnimator.AnimatorUpdateListener {
        i() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            C1138a.this.f7381c.setScaleX(fFloatValue);
            C1138a.this.f7381c.setScaleY(fFloatValue);
        }
    }

    C1138a(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f7330d = new a();
        this.f7331e = new b();
        this.f7332f = new c();
        this.f7333g = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i */
    public void m8847i(boolean z) {
        boolean z2 = this.f7379a.m8823K() == z;
        if (z && !this.f7334h.isRunning()) {
            this.f7335i.cancel();
            this.f7334h.start();
            if (z2) {
                this.f7334h.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.f7334h.cancel();
        this.f7335i.start();
        if (z2) {
            this.f7335i.end();
        }
    }

    /* JADX INFO: renamed from: j */
    private ValueAnimator m8848j(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(C1227a.f7754a);
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.addUpdateListener(new h());
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: renamed from: k */
    private ValueAnimator m8849k() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(C1227a.f7757d);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new i());
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l */
    public static boolean m8850l(Editable editable) {
        return editable.length() > 0;
    }

    /* JADX INFO: renamed from: m */
    private void m8851m() {
        ValueAnimator valueAnimatorM8849k = m8849k();
        ValueAnimator valueAnimatorM8848j = m8848j(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f7334h = animatorSet;
        animatorSet.playTogether(valueAnimatorM8849k, valueAnimatorM8848j);
        this.f7334h.addListener(new f());
        ValueAnimator valueAnimatorM8848j2 = m8848j(1.0f, CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7335i = valueAnimatorM8848j2;
        valueAnimatorM8848j2.addListener(new g());
    }

    @Override // com.google.android.material.textfield.AbstractC1142e
    /* JADX INFO: renamed from: a */
    void mo8852a() {
        this.f7379a.setEndIconDrawable(C0503a.m4047d(this.f7380b, C1220e.mtrl_ic_cancel));
        TextInputLayout textInputLayout = this.f7379a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C1224i.clear_text_end_icon_content_description));
        this.f7379a.setEndIconOnClickListener(new e());
        this.f7379a.m8831e(this.f7332f);
        this.f7379a.m8833f(this.f7333g);
        m8851m();
    }

    @Override // com.google.android.material.textfield.AbstractC1142e
    /* JADX INFO: renamed from: c */
    void mo8853c(boolean z) {
        if (this.f7379a.getSuffixText() == null) {
            return;
        }
        m8847i(z);
    }
}
