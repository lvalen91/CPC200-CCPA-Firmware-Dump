package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AssistCmd extends cn.manstep.phonemirrorBox.util.a implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1370b;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AssistCmd.this.f1370b) {
                switch (AssistCmd.this.getId()) {
                    case 2131296336:
                        cn.manstep.phonemirrorBox.v0.e.J(1);
                        cn.manstep.phonemirrorBox.util.s.c("KEY_BACK");
                        break;
                    case 2131296338:
                        cn.manstep.phonemirrorBox.v0.e.J(0);
                        cn.manstep.phonemirrorBox.util.s.c("KEY_HOME");
                        break;
                    case 2131296340:
                        cn.manstep.phonemirrorBox.v0.e.J(10);
                        cn.manstep.phonemirrorBox.util.s.c("KEY_QUIT");
                        break;
                    case 2131296341:
                        cn.manstep.phonemirrorBox.v0.e.J(2);
                        cn.manstep.phonemirrorBox.util.s.c("KEY_ROTATE");
                        break;
                }
            }
        }
    }

    public AssistCmd(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1370b = false;
        setOnClickListener(new a());
        f.d().a(this);
    }

    @Override // cn.manstep.phonemirrorBox.g
    public void a(int i, int i2, Object obj) {
        if (i == 1) {
            animate().alpha(i2 == 1 ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
            setClickable(i2 == 1);
            this.f1370b = i2 == 1;
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

    @Override // cn.manstep.phonemirrorBox.util.a, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || action == 1 || action == 3) {
            f.b(true);
        }
        return super.onTouch(view, motionEvent);
    }
}
