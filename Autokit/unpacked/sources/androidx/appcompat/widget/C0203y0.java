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
import p016c.p017a.C0496d;
import p016c.p017a.C0498f;
import p016c.p017a.C0499g;
import p016c.p017a.C0501i;

/* JADX INFO: renamed from: androidx.appcompat.widget.y0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0203y0 {

    /* JADX INFO: renamed from: a */
    private final Context f1390a;

    /* JADX INFO: renamed from: b */
    private final View f1391b;

    /* JADX INFO: renamed from: c */
    private final TextView f1392c;

    /* JADX INFO: renamed from: d */
    private final WindowManager.LayoutParams f1393d = new WindowManager.LayoutParams();

    /* JADX INFO: renamed from: e */
    private final Rect f1394e = new Rect();

    /* JADX INFO: renamed from: f */
    private final int[] f1395f = new int[2];

    /* JADX INFO: renamed from: g */
    private final int[] f1396g = new int[2];

    C0203y0(Context context) {
        this.f1390a = context;
        View viewInflate = LayoutInflater.from(context).inflate(C0499g.abc_tooltip, (ViewGroup) null);
        this.f1391b = viewInflate;
        this.f1392c = (TextView) viewInflate.findViewById(C0498f.message);
        this.f1393d.setTitle(C0203y0.class.getSimpleName());
        this.f1393d.packageName = this.f1390a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f1393d;
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = C0501i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    /* JADX INFO: renamed from: a */
    private void m1431a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i3;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1390a.getResources().getDimensionPixelOffset(C0496d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1390a.getResources().getDimensionPixelOffset(C0496d.tooltip_precise_anchor_extra_offset);
            height = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1390a.getResources().getDimensionPixelOffset(z ? C0496d.tooltip_y_offset_touch : C0496d.tooltip_y_offset_non_touch);
        View viewM1432b = m1432b(view);
        if (viewM1432b == null) {
            return;
        }
        viewM1432b.getWindowVisibleDisplayFrame(this.f1394e);
        Rect rect = this.f1394e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f1390a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1394e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        viewM1432b.getLocationOnScreen(this.f1396g);
        view.getLocationOnScreen(this.f1395f);
        int[] iArr = this.f1395f;
        int i4 = iArr[0];
        int[] iArr2 = this.f1396g;
        iArr[0] = i4 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (viewM1432b.getWidth() / 2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1391b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        int measuredHeight = this.f1391b.getMeasuredHeight();
        int[] iArr3 = this.f1395f;
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
        if (measuredHeight + i6 <= this.f1394e.height()) {
            layoutParams.y = i6;
        } else {
            layoutParams.y = i5;
        }
    }

    /* JADX INFO: renamed from: b */
    private static View m1432b(View view) {
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

    /* JADX INFO: renamed from: c */
    void m1433c() {
        if (m1434d()) {
            ((WindowManager) this.f1390a.getSystemService("window")).removeView(this.f1391b);
        }
    }

    /* JADX INFO: renamed from: d */
    boolean m1434d() {
        return this.f1391b.getParent() != null;
    }

    /* JADX INFO: renamed from: e */
    void m1435e(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m1434d()) {
            m1433c();
        }
        this.f1392c.setText(charSequence);
        m1431a(view, i, i2, z, this.f1393d);
        ((WindowManager) this.f1390a.getSystemService("window")).addView(this.f1391b, this.f1393d);
    }
}
