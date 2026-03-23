package p093d.p099c.p100a.p101a.p102a0;

import android.graphics.RectF;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;

/* JADX INFO: renamed from: d.c.a.a.a0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1203b implements InterfaceC1204c {

    /* JADX INFO: renamed from: a */
    private final InterfaceC1204c f7612a;

    /* JADX INFO: renamed from: b */
    private final float f7613b;

    public C1203b(float f, InterfaceC1204c interfaceC1204c) {
        while (interfaceC1204c instanceof C1203b) {
            interfaceC1204c = ((C1203b) interfaceC1204c).f7612a;
            f += ((C1203b) interfaceC1204c).f7613b;
        }
        this.f7612a = interfaceC1204c;
        this.f7613b = f;
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.InterfaceC1204c
    /* JADX INFO: renamed from: a */
    public float mo9140a(RectF rectF) {
        return Math.max(CropImageView.DEFAULT_ASPECT_RATIO, this.f7612a.mo9140a(rectF) + this.f7613b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1203b)) {
            return false;
        }
        C1203b c1203b = (C1203b) obj;
        return this.f7612a.equals(c1203b.f7612a) && this.f7613b == c1203b.f7613b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7612a, Float.valueOf(this.f7613b)});
    }
}
