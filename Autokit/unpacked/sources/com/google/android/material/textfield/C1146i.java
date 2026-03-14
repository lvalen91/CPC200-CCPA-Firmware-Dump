package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.internal.C1120i;
import com.google.android.material.textfield.TextInputLayout;
import p016c.p017a.p018k.p019a.C0503a;
import p093d.p099c.p100a.p101a.C1220e;
import p093d.p099c.p100a.p101a.C1224i;

/* JADX INFO: renamed from: com.google.android.material.textfield.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1146i extends AbstractC1142e {

    /* JADX INFO: renamed from: d */
    private final TextWatcher f7412d;

    /* JADX INFO: renamed from: e */
    private final TextInputLayout.InterfaceC1135f f7413e;

    /* JADX INFO: renamed from: f */
    private final TextInputLayout.InterfaceC1136g f7414f;

    /* JADX INFO: renamed from: com.google.android.material.textfield.i$a */
    class a extends C1120i {
        a() {
        }

        @Override // com.google.android.material.internal.C1120i, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C1146i.this.f7381c.setChecked(!r1.m8943g());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.i$b */
    class b implements TextInputLayout.InterfaceC1135f {
        b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.InterfaceC1135f
        /* JADX INFO: renamed from: a */
        public void mo8838a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            C1146i.this.f7381c.setChecked(!r4.m8943g());
            editText.removeTextChangedListener(C1146i.this.f7412d);
            editText.addTextChangedListener(C1146i.this.f7412d);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.i$c */
    class c implements TextInputLayout.InterfaceC1136g {

        /* JADX INFO: renamed from: com.google.android.material.textfield.i$c$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ EditText f7418b;

            a(EditText editText) {
                this.f7418b = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f7418b.removeTextChangedListener(C1146i.this.f7412d);
            }
        }

        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.InterfaceC1136g
        /* JADX INFO: renamed from: a */
        public void mo8839a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new a(editText));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.i$d */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText = C1146i.this.f7379a.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (C1146i.this.m8943g()) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            C1146i.this.f7379a.m8828V();
        }
    }

    C1146i(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f7412d = new a();
        this.f7413e = new b();
        this.f7414f = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g */
    public boolean m8943g() {
        EditText editText = this.f7379a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* JADX INFO: renamed from: h */
    private static boolean m8944h(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    @Override // com.google.android.material.textfield.AbstractC1142e
    /* JADX INFO: renamed from: a */
    void mo8852a() {
        this.f7379a.setEndIconDrawable(C0503a.m4047d(this.f7380b, C1220e.design_password_eye));
        TextInputLayout textInputLayout = this.f7379a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C1224i.password_toggle_content_description));
        this.f7379a.setEndIconOnClickListener(new d());
        this.f7379a.m8831e(this.f7413e);
        this.f7379a.m8833f(this.f7414f);
        EditText editText = this.f7379a.getEditText();
        if (m8944h(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
