package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.DialogInterfaceC0080c;
import androidx.appcompat.view.menu.InterfaceC0110p;
import androidx.core.view.C0292v;
import androidx.core.view.InterfaceC0291u;
import p016c.p017a.C0493a;
import p016c.p017a.C0499g;
import p016c.p017a.C0502j;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p017a.p024o.C0514d;

/* JADX INFO: renamed from: androidx.appcompat.widget.u */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0194u extends Spinner implements InterfaceC0291u {

    /* JADX INFO: renamed from: j */
    private static final int[] f1283j = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: b */
    private final C0162e f1284b;

    /* JADX INFO: renamed from: c */
    private final Context f1285c;

    /* JADX INFO: renamed from: d */
    private AbstractViewOnTouchListenerC0165f0 f1286d;

    /* JADX INFO: renamed from: e */
    private SpinnerAdapter f1287e;

    /* JADX INFO: renamed from: f */
    private final boolean f1288f;

    /* JADX INFO: renamed from: g */
    private g f1289g;

    /* JADX INFO: renamed from: h */
    int f1290h;

    /* JADX INFO: renamed from: i */
    final Rect f1291i;

    /* JADX INFO: renamed from: androidx.appcompat.widget.u$a */
    class a extends AbstractViewOnTouchListenerC0165f0 {

        /* JADX INFO: renamed from: k */
        final /* synthetic */ e f1292k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, e eVar) {
            super(view);
            this.f1292k = eVar;
        }

        @Override // androidx.appcompat.widget.AbstractViewOnTouchListenerC0165f0
        /* JADX INFO: renamed from: b */
        public InterfaceC0110p mo649b() {
            return this.f1292k;
        }

        @Override // androidx.appcompat.widget.AbstractViewOnTouchListenerC0165f0
        @SuppressLint({"SyntheticAccessor"})
        /* JADX INFO: renamed from: c */
        public boolean mo650c() {
            if (C0194u.this.getInternalPopup().mo1302b()) {
                return true;
            }
            C0194u.this.m1301b();
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.u$b */
    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!C0194u.this.getInternalPopup().mo1302b()) {
                C0194u.this.m1301b();
            }
            ViewTreeObserver viewTreeObserver = C0194u.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.u$c */
    class c implements g, DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b */
        DialogInterfaceC0080c f1295b;

        /* JADX INFO: renamed from: c */
        private ListAdapter f1296c;

        /* JADX INFO: renamed from: d */
        private CharSequence f1297d;

        c() {
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: b */
        public boolean mo1302b() {
            DialogInterfaceC0080c dialogInterfaceC0080c = this.f1295b;
            if (dialogInterfaceC0080c != null) {
                return dialogInterfaceC0080c.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: c */
        public void mo1303c(Drawable drawable) {
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: d */
        public void mo1304d(int i) {
        }

        @Override // androidx.appcompat.widget.C0194u.g
        public void dismiss() {
            DialogInterfaceC0080c dialogInterfaceC0080c = this.f1295b;
            if (dialogInterfaceC0080c != null) {
                dialogInterfaceC0080c.dismiss();
                this.f1295b = null;
            }
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: e */
        public int mo1305e() {
            return 0;
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: f */
        public void mo1306f(int i, int i2) {
            if (this.f1296c == null) {
                return;
            }
            DialogInterfaceC0080c.a aVar = new DialogInterfaceC0080c.a(C0194u.this.getPopupContext());
            CharSequence charSequence = this.f1297d;
            if (charSequence != null) {
                aVar.m428h(charSequence);
            }
            aVar.m427g(this.f1296c, C0194u.this.getSelectedItemPosition(), this);
            DialogInterfaceC0080c dialogInterfaceC0080cM421a = aVar.m421a();
            this.f1295b = dialogInterfaceC0080cM421a;
            ListView listViewM420e = dialogInterfaceC0080cM421a.m420e();
            if (Build.VERSION.SDK_INT >= 17) {
                listViewM420e.setTextDirection(i);
                listViewM420e.setTextAlignment(i2);
            }
            this.f1295b.show();
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: h */
        public int mo1307h() {
            return 0;
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: j */
        public Drawable mo1308j() {
            return null;
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: k */
        public CharSequence mo1309k() {
            return this.f1297d;
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: m */
        public void mo1310m(CharSequence charSequence) {
            this.f1297d = charSequence;
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: n */
        public void mo1311n(int i) {
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: o */
        public void mo1158o(ListAdapter listAdapter) {
            this.f1296c = listAdapter;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C0194u.this.setSelection(i);
            if (C0194u.this.getOnItemClickListener() != null) {
                C0194u.this.performItemClick(null, i, this.f1296c.getItemId(i));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: p */
        public void mo1312p(int i) {
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.u$d */
    private static class d implements ListAdapter, SpinnerAdapter {

        /* JADX INFO: renamed from: b */
        private SpinnerAdapter f1299b;

        /* JADX INFO: renamed from: c */
        private ListAdapter f1300c;

        public d(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1299b = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1300c = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof InterfaceC0187q0) {
                    InterfaceC0187q0 interfaceC0187q0 = (InterfaceC0187q0) spinnerAdapter;
                    if (interfaceC0187q0.getDropDownViewTheme() == null) {
                        interfaceC0187q0.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1300c;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1299b;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1299b;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f1299b;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f1299b;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1299b;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f1300c;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1299b;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1299b;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.u$e */
    class e extends C0169h0 implements g {

        /* JADX INFO: renamed from: J */
        private CharSequence f1301J;

        /* JADX INFO: renamed from: K */
        ListAdapter f1302K;

        /* JADX INFO: renamed from: L */
        private final Rect f1303L;

        /* JADX INFO: renamed from: M */
        private int f1304M;

        /* JADX INFO: renamed from: androidx.appcompat.widget.u$e$a */
        class a implements AdapterView.OnItemClickListener {
            a(C0194u c0194u) {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0194u.this.setSelection(i);
                if (C0194u.this.getOnItemClickListener() != null) {
                    e eVar = e.this;
                    C0194u.this.performItemClick(view, i, eVar.f1302K.getItemId(i));
                }
                e.this.dismiss();
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.widget.u$e$b */
        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                e eVar = e.this;
                if (!eVar.m1316U(C0194u.this)) {
                    e.this.dismiss();
                } else {
                    e.this.m1314S();
                    e.super.mo696g();
                }
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.widget.u$e$c */
        class c implements PopupWindow.OnDismissListener {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f1308b;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f1308b = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = C0194u.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1308b);
                }
            }
        }

        public e(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1303L = new Rect();
            m1139D(C0194u.this);
            m1145J(true);
            m1149O(0);
            m1147L(new a(C0194u.this));
        }

        /* JADX INFO: renamed from: S */
        void m1314S() {
            Drawable drawableM1156j = m1156j();
            int i = 0;
            if (drawableM1156j != null) {
                drawableM1156j.getPadding(C0194u.this.f1291i);
                i = C0154a1.m1022b(C0194u.this) ? C0194u.this.f1291i.right : -C0194u.this.f1291i.left;
            } else {
                Rect rect = C0194u.this.f1291i;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = C0194u.this.getPaddingLeft();
            int paddingRight = C0194u.this.getPaddingRight();
            int width = C0194u.this.getWidth();
            C0194u c0194u = C0194u.this;
            int i2 = c0194u.f1290h;
            if (i2 == -2) {
                int iM1300a = c0194u.m1300a((SpinnerAdapter) this.f1302K, m1156j());
                int i3 = C0194u.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = C0194u.this.f1291i;
                int i4 = (i3 - rect2.left) - rect2.right;
                if (iM1300a > i4) {
                    iM1300a = i4;
                }
                m1141F(Math.max(iM1300a, (width - paddingLeft) - paddingRight));
            } else if (i2 == -1) {
                m1141F((width - paddingLeft) - paddingRight);
            } else {
                m1141F(i2);
            }
            m1153d(C0154a1.m1022b(C0194u.this) ? i + (((width - paddingRight) - m1166z()) - m1315T()) : i + paddingLeft + m1315T());
        }

        /* JADX INFO: renamed from: T */
        public int m1315T() {
            return this.f1304M;
        }

        /* JADX INFO: renamed from: U */
        boolean m1316U(View view) {
            return C0292v.m2068S(view) && view.getGlobalVisibleRect(this.f1303L);
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: f */
        public void mo1306f(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean zMo694b = mo694b();
            m1314S();
            m1144I(2);
            super.mo696g();
            ListView listViewMo698l = mo698l();
            listViewMo698l.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                listViewMo698l.setTextDirection(i);
                listViewMo698l.setTextAlignment(i2);
            }
            m1150P(C0194u.this.getSelectedItemPosition());
            if (zMo694b || (viewTreeObserver = C0194u.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            m1146K(new c(bVar));
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: k */
        public CharSequence mo1309k() {
            return this.f1301J;
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: m */
        public void mo1310m(CharSequence charSequence) {
            this.f1301J = charSequence;
        }

        @Override // androidx.appcompat.widget.C0169h0, androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: o */
        public void mo1158o(ListAdapter listAdapter) {
            super.mo1158o(listAdapter);
            this.f1302K = listAdapter;
        }

        @Override // androidx.appcompat.widget.C0194u.g
        /* JADX INFO: renamed from: p */
        public void mo1312p(int i) {
            this.f1304M = i;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.u$f */
    static class f extends View.BaseSavedState {
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* JADX INFO: renamed from: b */
        boolean f1310b;

        /* JADX INFO: renamed from: androidx.appcompat.widget.u$f$a */
        class a implements Parcelable.Creator<f> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public f createFromParcel(Parcel parcel) {
                return new f(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public f[] newArray(int i) {
                return new f[i];
            }
        }

        f(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f1310b ? (byte) 1 : (byte) 0);
        }

        f(Parcel parcel) {
            super(parcel);
            this.f1310b = parcel.readByte() != 0;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.u$g */
    interface g {
        /* JADX INFO: renamed from: b */
        boolean mo1302b();

        /* JADX INFO: renamed from: c */
        void mo1303c(Drawable drawable);

        /* JADX INFO: renamed from: d */
        void mo1304d(int i);

        void dismiss();

        /* JADX INFO: renamed from: e */
        int mo1305e();

        /* JADX INFO: renamed from: f */
        void mo1306f(int i, int i2);

        /* JADX INFO: renamed from: h */
        int mo1307h();

        /* JADX INFO: renamed from: j */
        Drawable mo1308j();

        /* JADX INFO: renamed from: k */
        CharSequence mo1309k();

        /* JADX INFO: renamed from: m */
        void mo1310m(CharSequence charSequence);

        /* JADX INFO: renamed from: n */
        void mo1311n(int i);

        /* JADX INFO: renamed from: o */
        void mo1158o(ListAdapter listAdapter);

        /* JADX INFO: renamed from: p */
        void mo1312p(int i);
    }

    public C0194u(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.spinnerStyle);
    }

    /* JADX INFO: renamed from: a */
    int m1300a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.f1291i);
        Rect rect = this.f1291i;
        return iMax2 + rect.left + rect.right;
    }

    /* JADX INFO: renamed from: b */
    void m1301b() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1289g.mo1306f(getTextDirection(), getTextAlignment());
        } else {
            this.f1289g.mo1306f(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0162e c0162e = this.f1284b;
        if (c0162e != null) {
            c0162e.m1091b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        g gVar = this.f1289g;
        if (gVar != null) {
            return gVar.mo1305e();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        g gVar = this.f1289g;
        if (gVar != null) {
            return gVar.mo1307h();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f1289g != null) {
            return this.f1290h;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    final g getInternalPopup() {
        return this.f1289g;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        g gVar = this.f1289g;
        if (gVar != null) {
            return gVar.mo1308j();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1285c;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        g gVar = this.f1289g;
        return gVar != null ? gVar.mo1309k() : super.getPrompt();
    }

    @Override // androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        C0162e c0162e = this.f1284b;
        if (c0162e != null) {
            return c0162e.m1092c();
        }
        return null;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0162e c0162e = this.f1284b;
        if (c0162e != null) {
            return c0162e.m1093d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g gVar = this.f1289g;
        if (gVar == null || !gVar.mo1302b()) {
            return;
        }
        this.f1289g.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1289g == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m1300a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        if (!fVar.f1310b || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        g gVar = this.f1289g;
        fVar.f1310b = gVar != null && gVar.mo1302b();
        return fVar;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractViewOnTouchListenerC0165f0 abstractViewOnTouchListenerC0165f0 = this.f1286d;
        if (abstractViewOnTouchListenerC0165f0 == null || !abstractViewOnTouchListenerC0165f0.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        g gVar = this.f1289g;
        if (gVar == null) {
            return super.performClick();
        }
        if (gVar.mo1302b()) {
            return true;
        }
        m1301b();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0162e c0162e = this.f1284b;
        if (c0162e != null) {
            c0162e.m1095f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0162e c0162e = this.f1284b;
        if (c0162e != null) {
            c0162e.m1096g(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        g gVar = this.f1289g;
        if (gVar != null) {
            gVar.mo1312p(i);
            this.f1289g.mo1304d(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        g gVar = this.f1289g;
        if (gVar != null) {
            gVar.mo1311n(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f1289g != null) {
            this.f1290h = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        g gVar = this.f1289g;
        if (gVar != null) {
            gVar.mo1303c(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C0503a.m4047d(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        g gVar = this.f1289g;
        if (gVar != null) {
            gVar.mo1310m(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0162e c0162e = this.f1284b;
        if (c0162e != null) {
            c0162e.m1098i(colorStateList);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0162e c0162e = this.f1284b;
        if (c0162e != null) {
            c0162e.m1099j(mode);
        }
    }

    public C0194u(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1288f) {
            this.f1287e = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1289g != null) {
            Context context = this.f1285c;
            if (context == null) {
                context = getContext();
            }
            this.f1289g.mo1158o(new d(spinnerAdapter, context.getTheme()));
        }
    }

    public C0194u(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051 A[PHI: r9 r10
      0x0051: PHI (r9v2 int) = (r9v0 int), (r9v4 int) binds: [B:24:0x0060, B:15:0x004f] A[DONT_GENERATE, DONT_INLINE]
      0x0051: PHI (r10v6 android.content.res.TypedArray) = (r10v5 android.content.res.TypedArray), (r10v8 android.content.res.TypedArray) binds: [B:24:0x0060, B:15:0x004f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0194u(Context context, AttributeSet attributeSet, int i, int i2, Resources.Theme theme) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i);
        this.f1291i = new Rect();
        C0185p0.m1279a(this, getContext());
        C0195u0 c0195u0M1321v = C0195u0.m1321v(context, attributeSet, C0502j.Spinner, i, 0);
        this.f1284b = new C0162e(this);
        if (theme != null) {
            this.f1285c = new C0514d(context, theme);
        } else {
            int iM1335n = c0195u0M1321v.m1335n(C0502j.Spinner_popupTheme, 0);
            if (iM1335n != 0) {
                this.f1285c = new C0514d(context, iM1335n);
            } else {
                this.f1285c = context;
            }
        }
        TypedArray typedArray = null;
        if (i2 == -1) {
            try {
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1283j, i, 0);
                try {
                    i2 = typedArrayObtainStyledAttributes.hasValue(0) ? typedArrayObtainStyledAttributes.getInt(0, 0) : i2;
                } catch (Exception unused) {
                    if (typedArrayObtainStyledAttributes != null) {
                    }
                } catch (Throwable th) {
                    th = th;
                    typedArray = typedArrayObtainStyledAttributes;
                    if (typedArray != null) {
                        typedArray.recycle();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                typedArrayObtainStyledAttributes = null;
            } catch (Throwable th2) {
                th = th2;
            }
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        if (i2 == 0) {
            c cVar = new c();
            this.f1289g = cVar;
            cVar.mo1310m(c0195u0M1321v.m1336o(C0502j.Spinner_android_prompt));
        } else if (i2 == 1) {
            e eVar = new e(this.f1285c, attributeSet, i);
            C0195u0 c0195u0M1321v2 = C0195u0.m1321v(this.f1285c, attributeSet, C0502j.Spinner, i, 0);
            this.f1290h = c0195u0M1321v2.m1334m(C0502j.Spinner_android_dropDownWidth, -2);
            eVar.m1152c(c0195u0M1321v2.m1328g(C0502j.Spinner_android_popupBackground));
            eVar.mo1310m(c0195u0M1321v.m1336o(C0502j.Spinner_android_prompt));
            c0195u0M1321v2.m1341w();
            this.f1289g = eVar;
            this.f1286d = new a(this, eVar);
        }
        CharSequence[] charSequenceArrM1338q = c0195u0M1321v.m1338q(C0502j.Spinner_android_entries);
        if (charSequenceArrM1338q != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, charSequenceArrM1338q);
            arrayAdapter.setDropDownViewResource(C0499g.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        c0195u0M1321v.m1341w();
        this.f1288f = true;
        SpinnerAdapter spinnerAdapter = this.f1287e;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f1287e = null;
        }
        this.f1284b.m1094e(attributeSet, i);
    }
}
