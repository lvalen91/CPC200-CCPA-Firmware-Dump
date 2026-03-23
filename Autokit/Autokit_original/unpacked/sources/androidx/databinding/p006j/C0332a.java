package androidx.databinding.p006j;

import android.widget.CompoundButton;
import androidx.databinding.InterfaceC0329g;

/* JADX INFO: renamed from: androidx.databinding.j.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0332a {

    /* JADX INFO: renamed from: androidx.databinding.j.a$a */
    static class a implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ CompoundButton.OnCheckedChangeListener f2042a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ InterfaceC0329g f2043b;

        a(CompoundButton.OnCheckedChangeListener onCheckedChangeListener, InterfaceC0329g interfaceC0329g) {
            this.f2042a = onCheckedChangeListener;
            this.f2043b = interfaceC0329g;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.f2042a;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(compoundButton, z);
            }
            this.f2043b.mo2363a();
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2366a(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isChecked() != z) {
            compoundButton.setChecked(z);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m2367b(CompoundButton compoundButton, CompoundButton.OnCheckedChangeListener onCheckedChangeListener, InterfaceC0329g interfaceC0329g) {
        if (interfaceC0329g == null) {
            compoundButton.setOnCheckedChangeListener(onCheckedChangeListener);
        } else {
            compoundButton.setOnCheckedChangeListener(new a(onCheckedChangeListener, interfaceC0329g));
        }
    }
}
