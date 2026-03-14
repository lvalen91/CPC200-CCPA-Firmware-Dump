package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.graphics.Outline;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0879j {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.j$a */
    static class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f5480b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f5481c;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.j$a$a, reason: collision with other inner class name */
        class C1354a extends ViewOutlineProvider {
            C1354a() {
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), a.this.f5481c);
            }
        }

        a(View view, int i) {
            this.f5480b = view;
            this.f5481c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5480b.setClipToOutline(true);
            this.f5480b.setOutlineProvider(new C1354a());
        }
    }

    /* JADX INFO: renamed from: a */
    public static ViewGroup.LayoutParams m6483a(Context context, ViewGroup.LayoutParams layoutParams, int i, int i2, int i3, int i4) {
        C0982s.m7373c("AutoBoxMirrorViewUtil,onRotationChanged: screen:" + i + "x" + i2 + ", video:" + i3 + "x" + i4);
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorViewUtil,onRotationChanged: ");
        sb.append(layoutParams.width);
        sb.append("x");
        sb.append(layoutParams.height);
        C0982s.m7373c(sb.toString());
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
        C0982s.m7373c("AutoBoxMirrorViewUtil,onRotationChanged: Display " + layoutParams.width + "x" + layoutParams.height);
        return layoutParams;
    }

    /* JADX INFO: renamed from: b */
    public static ViewGroup.LayoutParams m6484b(Context context, ViewGroup.LayoutParams layoutParams, int i, int i2, int i3, int i4) {
        int iM6091m = C0795b0.m6071i().m6091m("ImageScale", 0);
        C0982s.m7373c("AutoBoxMirrorViewUtil,ReSizeView: screen:" + i + "x" + i2 + ", video:" + i3 + "x" + i4 + " " + iM6091m);
        layoutParams.width = -1;
        layoutParams.height = -1;
        if (i > i2 + 52) {
            if (i3 < i4) {
                layoutParams.width = ((i3 * i2) / i4) & 65534;
            } else if (iM6091m == 1) {
                layoutParams.height = i2;
                int i5 = ((i2 * i3) / i4) & 65534;
                layoutParams.width = i5;
                if (i5 > i) {
                    layoutParams.width = i;
                    layoutParams.height = ((int) ((i / i3) * i4)) & 65534;
                }
            }
        } else if (i3 > i4) {
            if (iM6091m == 1) {
                layoutParams.height = ((int) ((i / i3) * i4)) & 65534;
            }
        } else if (iM6091m == 1) {
            layoutParams.height = i2;
            int i6 = ((i2 * i3) / i4) & 65534;
            layoutParams.width = i6;
            if (i6 > i) {
                layoutParams.width = i;
                layoutParams.height = ((int) ((i / i3) * i4)) & 65534;
            }
        }
        C0982s.m7373c("AutoBoxMirrorViewUtil,ReSizeView: Display " + layoutParams.width + "x" + layoutParams.height);
        return layoutParams;
    }

    /* JADX INFO: renamed from: c */
    public static void m6485c(View view) {
        int iM7031c = C0953u.m7001z().m7031c();
        if (iM7031c <= 0 || Build.VERSION.SDK_INT < 21) {
            return;
        }
        view.post(new a(view, iM7031c));
    }
}
