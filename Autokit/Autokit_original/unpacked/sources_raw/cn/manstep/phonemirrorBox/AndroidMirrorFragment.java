package cn.manstep.phonemirrorBox;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AndroidMirrorFragment extends Fragment {
    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        cn.manstep.phonemirrorBox.util.s.d("AndroidMirrorFragment", "onCreateView");
        f.c();
        return layoutInflater.inflate(2131492931, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void M0() {
        f.e();
        super.M0();
        cn.manstep.phonemirrorBox.util.s.d("AndroidMirrorFragment", "onDestroy");
    }
}
