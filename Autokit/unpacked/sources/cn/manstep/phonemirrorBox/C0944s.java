package cn.manstep.phonemirrorBox;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.AbstractC0325c;
import androidx.databinding.InterfaceC0327e;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.p007k.p008b.C0335a;
import cn.manstep.phonemirrorBox.p075i0.C0856b;
import cn.manstep.phonemirrorBox.p075i0.C0858d;
import cn.manstep.phonemirrorBox.p075i0.C0860f;
import cn.manstep.phonemirrorBox.p075i0.C0862h;
import cn.manstep.phonemirrorBox.p075i0.C0864j;
import cn.manstep.phonemirrorBox.p075i0.C0866l;
import cn.manstep.phonemirrorBox.p075i0.C0868n;
import cn.manstep.phonemirrorBox.p075i0.C0870p;
import cn.manstep.phonemirrorBox.p075i0.C0872r;
import cn.manstep.phonemirrorBox.p075i0.C0874t;
import cn.manstep.phonemirrorBox.p075i0.C0876v;
import cn.manstep.phonemirrorBox.p075i0.C0878x;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.s */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0944s extends AbstractC0325c {

    /* JADX INFO: renamed from: a */
    private static final SparseIntArray f5934a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(12);
        f5934a = sparseIntArray;
        sparseIntArray.put(2131492894, 1);
        f5934a.put(2131492906, 2);
        f5934a.put(2131492930, 3);
        f5934a.put(2131492932, 4);
        f5934a.put(2131492934, 5);
        f5934a.put(2131492935, 6);
        f5934a.put(2131492937, 7);
        f5934a.put(2131492941, 8);
        f5934a.put(2131492943, 9);
        f5934a.put(2131492944, 10);
        f5934a.put(2131492945, 11);
        f5934a.put(2131492949, 12);
    }

    @Override // androidx.databinding.AbstractC0325c
    /* JADX INFO: renamed from: a */
    public List<AbstractC0325c> mo2352a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new C0335a());
        return arrayList;
    }

    @Override // androidx.databinding.AbstractC0325c
    /* JADX INFO: renamed from: b */
    public ViewDataBinding mo2353b(InterfaceC0327e interfaceC0327e, View view, int i) {
        int i2 = f5934a.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        switch (i2) {
            case 1:
                if ("layout/activity_hide_settings_autokit_0".equals(tag)) {
                    return new C0856b(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for activity_hide_settings_autokit is invalid. Received: " + tag);
            case 2:
                if ("layout/custom_setting_dialog_0".equals(tag)) {
                    return new C0858d(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for custom_setting_dialog is invalid. Received: " + tag);
            case 3:
                if ("layout/fragment_advanced_settings_0".equals(tag)) {
                    return new C0860f(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for fragment_advanced_settings is invalid. Received: " + tag);
            case 4:
                if ("layout/fragment_audio_debug_0".equals(tag)) {
                    return new C0862h(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for fragment_audio_debug is invalid. Received: " + tag);
            case 5:
                if ("layout/fragment_box_upgraded_0".equals(tag)) {
                    return new C0864j(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for fragment_box_upgraded is invalid. Received: " + tag);
            case 6:
                if ("layout/fragment_box_upgrading_0".equals(tag)) {
                    return new C0866l(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for fragment_box_upgrading is invalid. Received: " + tag);
            case 7:
                if ("layout/fragment_debug_settings_0".equals(tag)) {
                    return new C0868n(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for fragment_debug_settings is invalid. Received: " + tag);
            case 8:
                if ("layout/fragment_first_page_carplay_0".equals(tag)) {
                    return new C0870p(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for fragment_first_page_carplay is invalid. Received: " + tag);
            case 9:
                if ("layout/fragment_permission_request_0".equals(tag)) {
                    return new C0872r(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for fragment_permission_request is invalid. Received: " + tag);
            case 10:
                if ("layout/fragment_settings_0".equals(tag)) {
                    return new C0874t(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings is invalid. Received: " + tag);
            case 11:
                if ("layout/fragment_share_file_0".equals(tag)) {
                    return new C0876v(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for fragment_share_file is invalid. Received: " + tag);
            case 12:
                if ("layout/input_fragment_0".equals(tag)) {
                    return new C0878x(interfaceC0327e, view);
                }
                throw new IllegalArgumentException("The tag for input_fragment is invalid. Received: " + tag);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.AbstractC0325c
    /* JADX INFO: renamed from: c */
    public ViewDataBinding mo2354c(InterfaceC0327e interfaceC0327e, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f5934a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
