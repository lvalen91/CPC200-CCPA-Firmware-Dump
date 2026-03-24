package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
abstract class e {
    TextInputLayout a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f2208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    CheckableImageButton f2209c;

    e(TextInputLayout textInputLayout) {
        this.a = textInputLayout;
        this.f2208b = textInputLayout.getContext();
        this.f2209c = textInputLayout.getEndIconView();
    }

    abstract void a();

    boolean b(int i) {
        return true;
    }

    void c(boolean z) {
    }

    boolean d() {
        return false;
    }
}
