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
import com.google.android.material.internal.i;
import com.google.android.material.textfield.TextInputLayout;
import d.c.a.a.h;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Chip f2223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextInputLayout f2224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final EditText f2225d;
    private TextWatcher e;

    static /* synthetic */ class a {
    }

    private class b extends i {
        private b() {
        }

        @Override // com.google.android.material.internal.i, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f2223b.setText(ChipTextInputComboView.this.c("00"));
            } else {
                ChipTextInputComboView.this.f2223b.setText(ChipTextInputComboView.this.c(editable));
            }
        }

        /* synthetic */ b(ChipTextInputComboView chipTextInputComboView, a aVar) {
            this();
        }
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(CharSequence charSequence) {
        return com.google.android.material.timepicker.b.j(getResources(), charSequence);
    }

    private void d() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f2225d.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f2223b.isChecked();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f2223b.setChecked(z);
        this.f2225d.setVisibility(z ? 0 : 4);
        this.f2223b.setVisibility(z ? 8 : 0);
        if (isChecked()) {
            this.f2225d.requestFocus();
            if (TextUtils.isEmpty(this.f2225d.getText())) {
                return;
            }
            EditText editText = this.f2225d;
            editText.setSelection(editText.getText().length());
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f2223b.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.f2223b.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f2223b.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.f2223b = (Chip) layoutInflaterFrom.inflate(h.material_time_chip, (ViewGroup) this, false);
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(h.material_time_input, (ViewGroup) this, false);
        this.f2224c = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f2225d = editText;
        editText.setVisibility(4);
        b bVar = new b(this, null);
        this.e = bVar;
        this.f2225d.addTextChangedListener(bVar);
        d();
        addView(this.f2223b);
        addView(this.f2224c);
        this.f2225d.setSaveEnabled(false);
    }
}
