package androidx.databinding.p007k.p008b;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.AbstractC0325c;
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: androidx.databinding.k.b.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0335a extends AbstractC0325c {

    /* JADX INFO: renamed from: a */
    private static final SparseIntArray f2044a = new SparseIntArray(0);

    @Override // androidx.databinding.AbstractC0325c
    /* JADX INFO: renamed from: a */
    public List<AbstractC0325c> mo2352a() {
        return new ArrayList(0);
    }

    @Override // androidx.databinding.AbstractC0325c
    /* JADX INFO: renamed from: b */
    public ViewDataBinding mo2353b(InterfaceC0327e interfaceC0327e, View view, int i) {
        if (f2044a.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.AbstractC0325c
    /* JADX INFO: renamed from: c */
    public ViewDataBinding mo2354c(InterfaceC0327e interfaceC0327e, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f2044a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
