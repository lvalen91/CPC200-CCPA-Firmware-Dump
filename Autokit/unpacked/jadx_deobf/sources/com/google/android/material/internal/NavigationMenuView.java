package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.view.menu.InterfaceC0108n;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class NavigationMenuView extends RecyclerView implements InterfaceC0108n {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n
    /* JADX INFO: renamed from: b */
    public void mo653b(C0101g c0101g) {
    }

    public int getWindowAnimations() {
        return 0;
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayoutManager(new LinearLayoutManager(context, 1, false));
    }
}
