package androidx.core.widget;

import android.widget.ListView;

/* JADX INFO: renamed from: androidx.core.widget.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0305f extends AbstractViewOnTouchListenerC0300a {

    /* JADX INFO: renamed from: t */
    private final ListView f1994t;

    public C0305f(ListView listView) {
        super(listView);
        this.f1994t = listView;
    }

    @Override // androidx.core.widget.AbstractViewOnTouchListenerC0300a
    /* JADX INFO: renamed from: a */
    public boolean mo2235a(int i) {
        return false;
    }

    @Override // androidx.core.widget.AbstractViewOnTouchListenerC0300a
    /* JADX INFO: renamed from: b */
    public boolean mo2236b(int i) {
        ListView listView = this.f1994t;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int i2 = firstVisiblePosition + childCount;
        if (i > 0) {
            if (i2 >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight()) {
                return false;
            }
        } else {
            if (i >= 0) {
                return false;
            }
            if (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.core.widget.AbstractViewOnTouchListenerC0300a
    /* JADX INFO: renamed from: j */
    public void mo2238j(int i, int i2) {
        C0306g.m2272a(this.f1994t, i2);
    }
}
