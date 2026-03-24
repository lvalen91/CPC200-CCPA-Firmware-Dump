package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.app.i;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.d;
import androidx.appcompat.widget.f;
import androidx.appcompat.widget.q;
import androidx.appcompat.widget.x;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.g;
import com.google.android.material.textview.MaterialTextView;
import d.c.a.a.o.a;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class MaterialComponentsViewInflater extends i {
    @Override // androidx.appcompat.app.i
    protected d b(Context context, AttributeSet attributeSet) {
        return new g(context, attributeSet);
    }

    @Override // androidx.appcompat.app.i
    protected AppCompatButton c(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // androidx.appcompat.app.i
    protected f d(Context context, AttributeSet attributeSet) {
        return new a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.i
    protected q j(Context context, AttributeSet attributeSet) {
        return new d.c.a.a.w.a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.i
    protected x n(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }
}
