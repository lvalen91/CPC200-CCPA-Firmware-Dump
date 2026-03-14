package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class y {
    public static boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof o) {
                return ((o) viewParent).onNestedFling(view, f, f2, z);
            }
            return false;
        }
        try {
            return viewParent.onNestedFling(view, f, f2, z);
        } catch (AbstractMethodError unused) {
            String str = "ViewParent " + viewParent + " does not implement interface method onNestedFling";
            return false;
        }
    }

    public static boolean b(ViewParent viewParent, View view, float f, float f2) {
        if (Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof o) {
                return ((o) viewParent).onNestedPreFling(view, f, f2);
            }
            return false;
        }
        try {
            return viewParent.onNestedPreFling(view, f, f2);
        } catch (AbstractMethodError unused) {
            String str = "ViewParent " + viewParent + " does not implement interface method onNestedPreFling";
            return false;
        }
    }

    public static void c(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof m) {
            ((m) viewParent).j(view, i, i2, iArr, i3);
            return;
        }
        if (i3 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof o) {
                    ((o) viewParent).onNestedPreScroll(view, i, i2, iArr);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (AbstractMethodError unused) {
                String str = "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll";
            }
        }
    }

    public static void d(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof n) {
            ((n) viewParent).m(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof m) {
            ((m) viewParent).n(view, i, i2, i3, i4, i5);
            return;
        }
        if (i5 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof o) {
                    ((o) viewParent).onNestedScroll(view, i, i2, i3, i4);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (AbstractMethodError unused) {
                String str = "ViewParent " + viewParent + " does not implement interface method onNestedScroll";
            }
        }
    }

    public static void e(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof m) {
            ((m) viewParent).h(view, view2, i, i2);
            return;
        }
        if (i2 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof o) {
                    ((o) viewParent).onNestedScrollAccepted(view, view2, i);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedScrollAccepted(view, view2, i);
            } catch (AbstractMethodError unused) {
                String str = "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted";
            }
        }
    }

    public static boolean f(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof m) {
            return ((m) viewParent).o(view, view2, i, i2);
        }
        if (i2 != 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof o) {
                return ((o) viewParent).onStartNestedScroll(view, view2, i);
            }
            return false;
        }
        try {
            return viewParent.onStartNestedScroll(view, view2, i);
        } catch (AbstractMethodError unused) {
            String str = "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll";
            return false;
        }
    }

    public static void g(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof m) {
            ((m) viewParent).i(view, i);
            return;
        }
        if (i == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof o) {
                    ((o) viewParent).onStopNestedScroll(view);
                    return;
                }
                return;
            }
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError unused) {
                String str = "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll";
            }
        }
    }

    @Deprecated
    public static boolean h(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }
}
