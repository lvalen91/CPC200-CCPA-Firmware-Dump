package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class i extends e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextWatcher f2217d;
    private final TextInputLayout.f e;
    private final TextInputLayout.g f;

    class a extends com.google.android.material.internal.i {
        a() {
        }

        @Override // com.google.android.material.internal.i, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            i.this.f2209c.setChecked(!r1.g());
        }
    }

    class b implements TextInputLayout.f {
        b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            i.this.f2209c.setChecked(!r4.g());
            editText.removeTextChangedListener(i.this.f2217d);
            editText.addTextChangedListener(i.this.f2217d);
        }
    }

    class c implements TextInputLayout.g {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ EditText f2219b;

            a(EditText editText) {
                this.f2219b = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f2219b.removeTextChangedListener(i.this.f2217d);
            }
        }

        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new a(editText));
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText = i.this.a.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (i.this.g()) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            i.this.a.V();
        }
    }

    i(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f2217d = new a();
        this.e = new b();
        this.f = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        EditText editText = this.a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean h(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    @Override // com.google.android.material.textfield.e
    void a() {
        this.a.setEndIconDrawable(c.a.k.a.a.d(this.f2208b, d.c.a.a.e.design_password_eye));
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(d.c.a.a.i.password_toggle_content_description));
        this.a.setEndIconOnClickListener(new d());
        this.a.e(this.e);
        this.a.f(this.f);
        EditText editText = this.a.getEditText();
        if (h(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
