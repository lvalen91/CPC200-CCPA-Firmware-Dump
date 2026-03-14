package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class y0 {
    private final Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextView f436c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WindowManager.LayoutParams f437d = new WindowManager.LayoutParams();
    private final Rect e = new Rect();
    private final int[] f = new int[2];
    private final int[] g = new int[2];

    y0(Context context) {
        this.a = context;
        View viewInflate = LayoutInflater.from(context).inflate(c.a.g.abc_tooltip, (ViewGroup) null);
        this.f435b = viewInflate;
        this.f436c = (TextView) viewInflate.findViewById(c.a.f.message);
        this.f437d.setTitle(y0.class.getSimpleName());
        this.f437d.packageName = this.a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f437d;
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = c.a.i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    private void a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i3;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.a.getResources().getDimensionPixelOffset(c.a.d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.a.getResources().getDimensionPixelOffset(c.a.d.tooltip_precise_anchor_extra_offset);
            height = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.a.getResources().getDimensionPixelOffset(z ? c.a.d.tooltip_y_offset_touch : c.a.d.tooltip_y_offset_non_touch);
        View viewB = b(view);
        if (viewB == null) {
            return;
        }
        viewB.getWindowVisibleDisplayFrame(this.e);
        Rect rect = this.e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        viewB.getLocationOnScreen(this.g);
        view.getLocationOnScreen(this.f);
        int[] iArr = this.f;
        int i4 = iArr[0];
        int[] iArr2 = this.g;
        iArr[0] = i4 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (viewB.getWidth() / 2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f435b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        int measuredHeight = this.f435b.getMeasuredHeight();
        int[] iArr3 = this.f;
        int i5 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i6 = iArr3[1] + height + dimensionPixelOffset3;
        if (z) {
            if (i5 >= 0) {
                layoutParams.y = i5;
                return;
            } else {
                layoutParams.y = i6;
                return;
            }
        }
        if (measuredHeight + i6 <= this.e.height()) {
            layoutParams.y = i6;
        } else {
            layoutParams.y = i5;
        }
    }

    private static View b(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }

    void c() {
        if (d()) {
            ((WindowManager) this.a.getSystemService("window")).removeView(this.f435b);
        }
    }

    boolean d() {
        return this.f435b.getParent() != null;
    }

    void e(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (d()) {
            c();
        }
        this.f436c.setText(charSequence);
        a(view, i, i2, z, this.f437d);
        ((WindowManager) this.a.getSystemService("window")).addView(this.f435b, this.f437d);
    }
}
