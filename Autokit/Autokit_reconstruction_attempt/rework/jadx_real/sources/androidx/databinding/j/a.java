package androidx.databinding.j;

import android.widget.CompoundButton;
import androidx.databinding.g;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a {

    /* JADX INFO: renamed from: androidx.databinding.j.a$a, reason: collision with other inner class name */
    static class C0030a implements CompoundButton.OnCheckedChangeListener {
        final /* synthetic */ CompoundButton.OnCheckedChangeListener a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g f647b;

        C0030a(CompoundButton.OnCheckedChangeListener onCheckedChangeListener, g gVar) {
            this.a = onCheckedChangeListener;
            this.f647b = gVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.a;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(compoundButton, z);
            }
            this.f647b.a();
        }
    }

    public static void a(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isChecked() != z) {
            compoundButton.setChecked(z);
        }
    }

    public static void b(CompoundButton compoundButton, CompoundButton.OnCheckedChangeListener onCheckedChangeListener, g gVar) {
        if (gVar == null) {
            compoundButton.setOnCheckedChangeListener(onCheckedChangeListener);
        } else {
            compoundButton.setOnCheckedChangeListener(new C0030a(onCheckedChangeListener, gVar));
        }
    }
}
