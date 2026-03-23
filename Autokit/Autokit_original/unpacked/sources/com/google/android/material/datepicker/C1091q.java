package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.C0467g;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: com.google.android.material.datepicker.q */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1091q extends LinearLayoutManager {

    /* JADX INFO: renamed from: com.google.android.material.datepicker.q$a */
    class a extends C0467g {
        a(C1091q c1091q, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.C0467g
        /* JADX INFO: renamed from: v */
        protected float mo3886v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    C1091q(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0442n
    /* JADX INFO: renamed from: I1 */
    public void mo3164I1(RecyclerView recyclerView, RecyclerView.C0454z c0454z, int i) {
        a aVar = new a(this, recyclerView.getContext());
        aVar.m3653p(i);
        m3491J1(aVar);
    }
}
