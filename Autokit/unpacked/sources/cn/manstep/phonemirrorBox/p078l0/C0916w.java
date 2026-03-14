package cn.manstep.phonemirrorBox.p078l0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import cn.manstep.phonemirrorBox.util.C0977n;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.w */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0916w extends C0906m {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.w$a */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0916w.this.m2404K() instanceof InterfaceC0912s) {
                ((InterfaceC0912s) C0916w.this.m2404K()).mo5267f(C0916w.this);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492946, viewGroup, false);
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        WebView webView = (WebView) view.findViewById(2131296956);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl(C0977n.m7317t(m2404K(), "terms_privacy", 2131886087));
        view.findViewById(2131296370).setOnClickListener(new a());
    }

    @Override // cn.manstep.phonemirrorBox.p078l0.C0906m
    /* JADX INFO: renamed from: g2 */
    protected void mo6691g2() {
        if (m2404K() instanceof InterfaceC0912s) {
            ((InterfaceC0912s) m2404K()).mo5267f(this);
        }
    }
}
