package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class q extends LinearLayoutManager {

    class a extends androidx.recyclerview.widget.g {
        a(q qVar, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.g
        protected float v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    q(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.n
    public void I1(RecyclerView recyclerView, RecyclerView.z zVar, int i) {
        a aVar = new a(this, recyclerView.getContext());
        aVar.p(i);
        J1(aVar);
    }
}
