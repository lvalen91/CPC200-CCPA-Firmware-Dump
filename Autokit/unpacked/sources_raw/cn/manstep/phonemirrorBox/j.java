package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.graphics.Outline;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class j {

    static class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f1672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f1673c;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.j$a$a, reason: collision with other inner class name */
        class C0086a extends ViewOutlineProvider {
            C0086a() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), a.this.f1673c);
            }
        }

        a(View view, int i) {
            this.f1672b = view;
            this.f1673c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1672b.setClipToOutline(true);
            this.f1672b.setOutlineProvider(new C0086a());
        }
    }

    public static ViewGroup.LayoutParams a(Context context, ViewGroup.LayoutParams layoutParams, int i, int i2, int i3, int i4) {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewUtil,onRotationChanged: screen:" + i + "x" + i2 + ", video:" + i3 + "x" + i4);
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorViewUtil,onRotationChanged: ");
        sb.append(layoutParams.width);
        sb.append("x");
        sb.append(layoutParams.height);
        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
        layoutParams.width = -1;
        layoutParams.height = -1;
        if (i > i2 + 50) {
            if (i3 < i4) {
                layoutParams.width = ((i3 * i2) / i4) & 65534;
            } else {
                layoutParams.height = i2;
                int i5 = ((i2 * i3) / i4) & 65534;
                layoutParams.width = i5;
                if (i5 > i) {
                    layoutParams.width = i;
                    layoutParams.height = ((int) ((i / i3) * i4)) & 65534;
                }
            }
        } else if (i3 > i4) {
            layoutParams.height = ((int) ((i / i3) * i4)) & 65534;
        } else {
            layoutParams.height = i2;
            int i6 = ((i2 * i3) / i4) & 65534;
            layoutParams.width = i6;
            if (i6 > i) {
                layoutParams.width = i;
                layoutParams.height = ((int) ((i / i3) * i4)) & 65534;
            }
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewUtil,onRotationChanged: Display " + layoutParams.width + "x" + layoutParams.height);
        return layoutParams;
    }

    public static ViewGroup.LayoutParams b(Context context, ViewGroup.LayoutParams layoutParams, int i, int i2, int i3, int i4) {
        int iM = b0.i().m("ImageScale", 0);
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewUtil,ReSizeView: screen:" + i + "x" + i2 + ", video:" + i3 + "x" + i4 + " " + iM);
        layoutParams.width = -1;
        layoutParams.height = -1;
        if (i > i2 + 52) {
            if (i3 < i4) {
                layoutParams.width = ((i3 * i2) / i4) & 65534;
            } else if (iM == 1) {
                layoutParams.height = i2;
                int i5 = ((i2 * i3) / i4) & 65534;
                layoutParams.width = i5;
                if (i5 > i) {
                    layoutParams.width = i;
                    layoutParams.height = ((int) ((i / i3) * i4)) & 65534;
                }
            }
        } else if (i3 > i4) {
            if (iM == 1) {
                layoutParams.height = ((int) ((i / i3) * i4)) & 65534;
            }
        } else if (iM == 1) {
            layoutParams.height = i2;
            int i6 = ((i2 * i3) / i4) & 65534;
            layoutParams.width = i6;
            if (i6 > i) {
                layoutParams.width = i;
                layoutParams.height = ((int) ((i / i3) * i4)) & 65534;
            }
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewUtil,ReSizeView: Display " + layoutParams.width + "x" + layoutParams.height);
        return layoutParams;
    }

    public static void c(View view) {
        int iC = u.z().c();
        if (iC <= 0 || Build.VERSION.SDK_INT < 21) {
            return;
        }
        view.post(new a(view, iC));
    }
}
