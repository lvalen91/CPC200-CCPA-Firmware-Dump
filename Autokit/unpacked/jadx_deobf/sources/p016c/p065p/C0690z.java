package p016c.p065p;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.C0292v;
import java.util.ArrayList;

/* JADX INFO: renamed from: c.p.z */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0690z implements InterfaceC0655b0 {

    /* JADX INFO: renamed from: a */
    protected a f4069a;

    /* JADX INFO: renamed from: c.p.z$a */
    static class a extends ViewGroup {

        /* JADX INFO: renamed from: b */
        ViewGroup f4070b;

        /* JADX INFO: renamed from: c */
        View f4071c;

        /* JADX INFO: renamed from: d */
        ArrayList<Drawable> f4072d;

        /* JADX INFO: renamed from: e */
        C0690z f4073e;

        /* JADX INFO: renamed from: f */
        private boolean f4074f;

        static {
            try {
                ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, C0690z c0690z) {
            super(context);
            this.f4072d = null;
            this.f4070b = viewGroup;
            this.f4071c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f4073e = c0690z;
        }

        /* JADX INFO: renamed from: c */
        private void m5186c() {
            if (this.f4074f) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        /* JADX INFO: renamed from: d */
        private void m5187d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f4072d;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f4074f = true;
                    this.f4070b.removeView(this);
                }
            }
        }

        /* JADX INFO: renamed from: e */
        private void m5188e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f4070b.getLocationOnScreen(iArr2);
            this.f4071c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        /* JADX INFO: renamed from: a */
        public void m5189a(Drawable drawable) {
            m5186c();
            if (this.f4072d == null) {
                this.f4072d = new ArrayList<>();
            }
            if (this.f4072d.contains(drawable)) {
                return;
            }
            this.f4072d.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        /* JADX INFO: renamed from: b */
        public void m5190b(View view) {
            m5186c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f4070b && viewGroup.getParent() != null && C0292v.m2068S(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f4070b.getLocationOnScreen(iArr2);
                    C0292v.m2074Y(view, iArr[0] - iArr2[0]);
                    C0292v.m2075Z(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.f4070b.getLocationOnScreen(new int[2]);
            this.f4071c.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f4071c.getWidth(), this.f4071c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f4072d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f4072d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        /* JADX INFO: renamed from: f */
        public void m5191f(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f4072d;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                m5187d();
            }
        }

        /* JADX INFO: renamed from: g */
        public void m5192g(View view) {
            super.removeView(view);
            m5187d();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f4070b == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (!(this.f4070b instanceof ViewGroup)) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            m5188e(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f4072d) != null && arrayList.contains(drawable));
        }
    }

    C0690z(Context context, ViewGroup viewGroup, View view) {
        this.f4069a = new a(context, viewGroup, view, this);
    }

    /* JADX INFO: renamed from: e */
    static C0690z m5184e(View view) {
        ViewGroup viewGroupM5185f = m5185f(view);
        if (viewGroupM5185f == null) {
            return null;
        }
        int childCount = viewGroupM5185f.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroupM5185f.getChildAt(i);
            if (childAt instanceof a) {
                return ((a) childAt).f4073e;
            }
        }
        return new C0685u(viewGroupM5185f.getContext(), viewGroupM5185f, view);
    }

    /* JADX INFO: renamed from: f */
    static ViewGroup m5185f(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    @Override // p016c.p065p.InterfaceC0655b0
    /* JADX INFO: renamed from: b */
    public void mo5030b(Drawable drawable) {
        this.f4069a.m5189a(drawable);
    }

    @Override // p016c.p065p.InterfaceC0655b0
    /* JADX INFO: renamed from: d */
    public void mo5031d(Drawable drawable) {
        this.f4069a.m5191f(drawable);
    }
}
