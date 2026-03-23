package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.C1120i;
import com.google.android.material.textfield.TextInputLayout;
import p093d.p099c.p100a.p101a.C1223h;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* JADX INFO: renamed from: b */
    private final Chip f7423b;

    /* JADX INFO: renamed from: c */
    private final TextInputLayout f7424c;

    /* JADX INFO: renamed from: d */
    private final EditText f7425d;

    /* JADX INFO: renamed from: e */
    private TextWatcher f7426e;

    /* JADX INFO: renamed from: com.google.android.material.timepicker.ChipTextInputComboView$a */
    static /* synthetic */ class C1148a {
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.ChipTextInputComboView$b */
    private class C1149b extends C1120i {
        private C1149b() {
        }

        @Override // com.google.android.material.internal.C1120i, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f7423b.setText(ChipTextInputComboView.this.m8955c("00"));
            } else {
                ChipTextInputComboView.this.f7423b.setText(ChipTextInputComboView.this.m8955c(editable));
            }
        }

        /* synthetic */ C1149b(ChipTextInputComboView chipTextInputComboView, C1148a c1148a) {
            this();
        }
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c */
    public String m8955c(CharSequence charSequence) {
        return C1164b.m8995j(getResources(), charSequence);
    }

    /* JADX INFO: renamed from: d */
    private void m8956d() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f7425d.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f7423b.isChecked();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m8956d();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f7423b.setChecked(z);
        this.f7425d.setVisibility(z ? 0 : 4);
        this.f7423b.setVisibility(z ? 8 : 0);
        if (isChecked()) {
            this.f7425d.requestFocus();
            if (TextUtils.isEmpty(this.f7425d.getText())) {
                return;
            }
            EditText editText = this.f7425d;
            editText.setSelection(editText.getText().length());
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f7423b.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.f7423b.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f7423b.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.f7423b = (Chip) layoutInflaterFrom.inflate(C1223h.material_time_chip, (ViewGroup) this, false);
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(C1223h.material_time_input, (ViewGroup) this, false);
        this.f7424c = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f7425d = editText;
        editText.setVisibility(4);
        C1149b c1149b = new C1149b(this, null);
        this.f7426e = c1149b;
        this.f7425d.addTextChangedListener(c1149b);
        m8956d();
        addView(this.f7423b);
        addView(this.f7424c);
        this.f7425d.setSaveEnabled(false);
    }
}
