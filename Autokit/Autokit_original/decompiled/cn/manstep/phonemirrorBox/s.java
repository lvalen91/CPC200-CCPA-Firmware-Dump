package cn.manstep.phonemirrorBox;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import cn.manstep.phonemirrorBox.i0.d;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class s extends androidx.databinding.c {
    private static final SparseIntArray a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(12);
        a = sparseIntArray;
        sparseIntArray.put(2131492894, 1);
        a.put(2131492906, 2);
        a.put(2131492930, 3);
        a.put(2131492932, 4);
        a.put(2131492934, 5);
        a.put(2131492935, 6);
        a.put(2131492937, 7);
        a.put(2131492941, 8);
        a.put(2131492943, 9);
        a.put(2131492944, 10);
        a.put(2131492945, 11);
        a.put(2131492949, 12);
    }

    @Override // androidx.databinding.c
    public List<androidx.databinding.c> a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.k.b.a());
        return arrayList;
    }

    @Override // androidx.databinding.c
    public ViewDataBinding b(androidx.databinding.e eVar, View view, int i) {
        int i2 = a.get(i);
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
                    return new cn.manstep.phonemirrorBox.i0.b(eVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_hide_settings_autokit is invalid. Received: " + tag);
            case 2:
                if ("layout/custom_setting_dialog_0".equals(tag)) {
                    return new d(eVar, view);
                }
                throw new IllegalArgumentException("The tag for custom_setting_dialog is invalid. Received: " + tag);
            case 3:
                if ("layout/fragment_advanced_settings_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.f(eVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_advanced_settings is invalid. Received: " + tag);
            case 4:
                if ("layout/fragment_audio_debug_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.h(eVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_audio_debug is invalid. Received: " + tag);
            case 5:
                if ("layout/fragment_box_upgraded_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.j(eVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_box_upgraded is invalid. Received: " + tag);
            case 6:
                if ("layout/fragment_box_upgrading_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.l(eVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_box_upgrading is invalid. Received: " + tag);
            case 7:
                if ("layout/fragment_debug_settings_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.n(eVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_debug_settings is invalid. Received: " + tag);
            case 8:
                if ("layout/fragment_first_page_carplay_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.p(eVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_first_page_carplay is invalid. Received: " + tag);
            case 9:
                if ("layout/fragment_permission_request_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.r(eVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_permission_request is invalid. Received: " + tag);
            case 10:
                if ("layout/fragment_settings_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.t(eVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings is invalid. Received: " + tag);
            case 11:
                if ("layout/fragment_share_file_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.v(eVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_share_file is invalid. Received: " + tag);
            case 12:
                if ("layout/input_fragment_0".equals(tag)) {
                    return new cn.manstep.phonemirrorBox.i0.x(eVar, view);
                }
                throw new IllegalArgumentException("The tag for input_fragment is invalid. Received: " + tag);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.c
    public ViewDataBinding c(androidx.databinding.e eVar, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
