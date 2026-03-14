package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.ViewOnTouchListenerC0959a;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AssistCmd extends ViewOnTouchListenerC0959a implements InterfaceC0845g {

    /* JADX INFO: renamed from: b */
    private boolean f4215b;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AssistCmd$a */
    class ViewOnClickListenerC0707a implements View.OnClickListener {
        ViewOnClickListenerC0707a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AssistCmd.this.f4215b) {
                switch (AssistCmd.this.getId()) {
                    case 2131296336:
                        C0995e.m7437J(1);
                        C0982s.m7373c("KEY_BACK");
                        break;
                    case 2131296338:
                        C0995e.m7437J(0);
                        C0982s.m7373c("KEY_HOME");
                        break;
                    case 2131296340:
                        C0995e.m7437J(10);
                        C0982s.m7373c("KEY_QUIT");
                        break;
                    case 2131296341:
                        C0995e.m7437J(2);
                        C0982s.m7373c("KEY_ROTATE");
                        break;
                }
            }
        }
    }

    public AssistCmd(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4215b = false;
        setOnClickListener(new ViewOnClickListenerC0707a());
        C0824f.m6203d().mo6189a(this);
    }

    @Override // cn.manstep.phonemirrorBox.InterfaceC0845g
    /* JADX INFO: renamed from: a */
    public void mo5313a(int i, int i2, Object obj) {
        if (i == 1) {
            animate().alpha(i2 == 1 ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
            setClickable(i2 == 1);
            this.f4215b = i2 == 1;
        }
        if (i != 3) {
            if (i != 4) {
                return;
            }
            setVisibility(i2 != 1 ? 4 : 0);
            return;
        }
        int[] iArr = (int[]) obj;
        int width = getWidth();
        int height = getHeight();
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        int i7 = iArr[4];
        int i8 = i7 * i5;
        int i9 = i3 - ((i8 - i5) / 2);
        int i10 = i4 - (((i7 * i6) - i6) / 2);
        switch (getId()) {
            case 2131296336:
                animate().x(i9 + (((i8 / 2) - width) / 3));
                animate().y(i10 + ((r10 - height) / 2));
                break;
            case 2131296338:
                animate().x(i9 + ((i8 - width) / 2));
                animate().y(i10 + (((r10 / 2) - height) / 3));
                break;
            case 2131296340:
                animate().x(((i9 + i8) - (((i8 / 2) - width) / 3)) - width);
                animate().y(i10 + ((r10 - height) / 2));
                break;
            case 2131296341:
                animate().x(i9 + ((i8 - width) / 2));
                animate().y(((i10 + r10) - (((r10 / 2) - height) / 3)) - height);
                break;
        }
    }

    @Override // cn.manstep.phonemirrorBox.util.ViewOnTouchListenerC0959a, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || action == 1 || action == 3) {
            C0824f.m6201b(true);
        }
        return super.onTouch(view, motionEvent);
    }
}
