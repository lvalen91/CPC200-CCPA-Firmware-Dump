package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.appcompat.widget.InterfaceC0163e0;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class FitWindowsLinearLayout extends LinearLayout implements InterfaceC0163e0 {

    /* JADX INFO: renamed from: b */
    private InterfaceC0163e0.a f846b;

    public FitWindowsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        InterfaceC0163e0.a aVar = this.f846b;
        if (aVar != null) {
            aVar.mo528a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.appcompat.widget.InterfaceC0163e0
    public void setOnFitSystemWindowsListener(InterfaceC0163e0.a aVar) {
        this.f846b = aVar;
    }
}
