package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.C0292v;
import androidx.core.view.C0294x;
import androidx.core.view.ViewTreeObserverOnPreDrawListenerC0290t;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p016c.p041g.p046g.C0604b;

/* JADX INFO: renamed from: androidx.fragment.app.z */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"UnknownNullness"})
public abstract class AbstractC0378z {

    /* JADX INFO: renamed from: androidx.fragment.app.z$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f2462b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ ArrayList f2463c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ ArrayList f2464d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ ArrayList f2465e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ ArrayList f2466f;

        a(AbstractC0378z abstractC0378z, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f2462b = i;
            this.f2463c = arrayList;
            this.f2464d = arrayList2;
            this.f2465e = arrayList3;
            this.f2466f = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f2462b; i++) {
                C0292v.m2049D0((View) this.f2463c.get(i), (String) this.f2464d.get(i));
                C0292v.m2049D0((View) this.f2465e.get(i), (String) this.f2466f.get(i));
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.z$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f2467b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Map f2468c;

        b(AbstractC0378z abstractC0378z, ArrayList arrayList, Map map) {
            this.f2467b = arrayList;
            this.f2468c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2467b.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f2467b.get(i);
                String strM2061L = C0292v.m2061L(view);
                if (strM2061L != null) {
                    C0292v.m2049D0(view, AbstractC0378z.m2946i(this.f2468c, strM2061L));
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.z$c */
    class c implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ArrayList f2469b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Map f2470c;

        c(AbstractC0378z abstractC0378z, ArrayList arrayList, Map map) {
            this.f2469b = arrayList;
            this.f2470c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2469b.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f2469b.get(i);
                C0292v.m2049D0(view, (String) this.f2470c.get(C0292v.m2061L(view)));
            }
        }
    }

    /* JADX INFO: renamed from: d */
    protected static void m2944d(List<View> list, View view) {
        int size = list.size();
        if (m2945h(list, view, size)) {
            return;
        }
        if (C0292v.m2061L(view) != null) {
            list.add(view);
        }
        for (int i = size; i < list.size(); i++) {
            View view2 = list.get(i);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (!m2945h(list, childAt, size) && C0292v.m2061L(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: h */
    private static boolean m2945h(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: i */
    static String m2946i(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: l */
    protected static boolean m2947l(List list) {
        return list == null || list.isEmpty();
    }

    /* JADX INFO: renamed from: A */
    public abstract void mo2927A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* JADX INFO: renamed from: B */
    public abstract Object mo2928B(Object obj);

    /* JADX INFO: renamed from: a */
    public abstract void mo2929a(Object obj, View view);

    /* JADX INFO: renamed from: b */
    public abstract void mo2930b(Object obj, ArrayList<View> arrayList);

    /* JADX INFO: renamed from: c */
    public abstract void mo2931c(ViewGroup viewGroup, Object obj);

    /* JADX INFO: renamed from: e */
    public abstract boolean mo2932e(Object obj);

    /* JADX INFO: renamed from: f */
    void m2948f(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof ViewGroup)) {
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (C0294x.m2169a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m2948f(arrayList, viewGroup.getChildAt(i));
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public abstract Object mo2933g(Object obj);

    /* JADX INFO: renamed from: j */
    void m2949j(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String strM2061L = C0292v.m2061L(view);
            if (strM2061L != null) {
                map.put(strM2061L, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    m2949j(map, viewGroup.getChildAt(i));
                }
            }
        }
    }

    /* JADX INFO: renamed from: k */
    protected void m2950k(View view, Rect rect) {
        if (C0292v.m2068S(view)) {
            RectF rectF = new RectF();
            rectF.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            while (parent instanceof View) {
                View view2 = (View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            view.getRootView().getLocationOnScreen(new int[2]);
            rectF.offset(r1[0], r1[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    /* JADX INFO: renamed from: m */
    public abstract Object mo2934m(Object obj, Object obj2, Object obj3);

    /* JADX INFO: renamed from: n */
    public abstract Object mo2935n(Object obj, Object obj2, Object obj3);

    /* JADX INFO: renamed from: o */
    ArrayList<String> m2951o(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(C0292v.m2061L(view));
            C0292v.m2049D0(view, null);
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: p */
    public abstract void mo2936p(Object obj, View view);

    /* JADX INFO: renamed from: q */
    public abstract void mo2937q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* JADX INFO: renamed from: r */
    public abstract void mo2938r(Object obj, View view, ArrayList<View> arrayList);

    /* JADX INFO: renamed from: s */
    void m2952s(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        ViewTreeObserverOnPreDrawListenerC0290t.m2040a(viewGroup, new c(this, arrayList, map));
    }

    /* JADX INFO: renamed from: t */
    public abstract void mo2939t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* JADX INFO: renamed from: u */
    public abstract void mo2940u(Object obj, Rect rect);

    /* JADX INFO: renamed from: v */
    public abstract void mo2941v(Object obj, View view);

    /* JADX INFO: renamed from: w */
    public void mo2942w(Fragment fragment, Object obj, C0604b c0604b, Runnable runnable) {
        runnable.run();
    }

    /* JADX INFO: renamed from: x */
    void m2953x(View view, ArrayList<View> arrayList, Map<String, String> map) {
        ViewTreeObserverOnPreDrawListenerC0290t.m2040a(view, new b(this, arrayList, map));
    }

    /* JADX INFO: renamed from: y */
    void m2954y(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String strM2061L = C0292v.m2061L(view2);
            arrayList4.add(strM2061L);
            if (strM2061L != null) {
                C0292v.m2049D0(view2, null);
                String str = map.get(strM2061L);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i2))) {
                        C0292v.m2049D0(arrayList2.get(i2), strM2061L);
                        break;
                    }
                    i2++;
                }
            }
        }
        ViewTreeObserverOnPreDrawListenerC0290t.m2040a(view, new a(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* JADX INFO: renamed from: z */
    public abstract void mo2943z(Object obj, View view, ArrayList<View> arrayList);
}
