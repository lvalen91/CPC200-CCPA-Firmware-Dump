package cn.manstep.phonemirrorBox;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AndroidBackGround extends View {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AndroidBackGround$a */
    class ViewOnClickListenerC0702a implements View.OnClickListener {
        ViewOnClickListenerC0702a(AndroidBackGround androidBackGround) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0824f.m6201b(false);
        }
    }

    public AndroidBackGround(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
        setOnClickListener(new ViewOnClickListenerC0702a(this));
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
