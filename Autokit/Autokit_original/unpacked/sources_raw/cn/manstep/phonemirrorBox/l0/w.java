package cn.manstep.phonemirrorBox.l0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class w extends m {

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (w.this.K() instanceof s) {
                ((s) w.this.K()).f(w.this);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131492946, viewGroup, false);
    }

    @Override // cn.manstep.phonemirrorBox.l0.m, androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        WebView webView = (WebView) view.findViewById(2131296956);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl(cn.manstep.phonemirrorBox.util.n.t(K(), "terms_privacy", 2131886087));
        view.findViewById(2131296370).setOnClickListener(new a());
    }

    @Override // cn.manstep.phonemirrorBox.l0.m
    protected void g2() {
        if (K() instanceof s) {
            ((s) K()).f(this);
        }
    }
}
