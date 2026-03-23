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
import androidx.appcompat.app.c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class u extends Spinner implements androidx.core.view.u {
    private static final int[] j = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.appcompat.widget.e f391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f0 f393d;
    private SpinnerAdapter e;
    private final boolean f;
    private g g;
    int h;
    final Rect i;

    class a extends f0 {
        final /* synthetic */ e k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, e eVar) {
            super(view);
            this.k = eVar;
        }

        @Override // androidx.appcompat.widget.f0
        public androidx.appcompat.view.menu.p b() {
            return this.k;
        }

        @Override // androidx.appcompat.widget.f0
        @SuppressLint({"SyntheticAccessor"})
        public boolean c() {
            if (u.this.getInternalPopup().b()) {
                return true;
            }
            u.this.b();
            return true;
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!u.this.getInternalPopup().b()) {
                u.this.b();
            }
            ViewTreeObserver viewTreeObserver = u.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
    }

    class c implements g, DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        androidx.appcompat.app.c f395b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ListAdapter f396c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CharSequence f397d;

        c() {
        }

        @Override // androidx.appcompat.widget.u.g
        public boolean b() {
            androidx.appcompat.app.c cVar = this.f395b;
            if (cVar != null) {
                return cVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.u.g
        public void c(Drawable drawable) {
        }

        @Override // androidx.appcompat.widget.u.g
        public void d(int i) {
        }

        @Override // androidx.appcompat.widget.u.g
        public void dismiss() {
            androidx.appcompat.app.c cVar = this.f395b;
            if (cVar != null) {
                cVar.dismiss();
                this.f395b = null;
            }
        }

        @Override // androidx.appcompat.widget.u.g
        public int e() {
            return 0;
        }

        @Override // androidx.appcompat.widget.u.g
        public void f(int i, int i2) {
            if (this.f396c == null) {
                return;
            }
            c.a aVar = new c.a(u.this.getPopupContext());
            CharSequence charSequence = this.f397d;
            if (charSequence != null) {
                aVar.h(charSequence);
            }
            aVar.g(this.f396c, u.this.getSelectedItemPosition(), this);
            androidx.appcompat.app.c cVarA = aVar.a();
            this.f395b = cVarA;
            ListView listViewE = cVarA.e();
            if (Build.VERSION.SDK_INT >= 17) {
                listViewE.setTextDirection(i);
                listViewE.setTextAlignment(i2);
            }
            this.f395b.show();
        }

        @Override // androidx.appcompat.widget.u.g
        public int h() {
            return 0;
        }

        @Override // androidx.appcompat.widget.u.g
        public Drawable j() {
            return null;
        }

        @Override // androidx.appcompat.widget.u.g
        public CharSequence k() {
            return this.f397d;
        }

        @Override // androidx.appcompat.widget.u.g
        public void m(CharSequence charSequence) {
            this.f397d = charSequence;
        }

        @Override // androidx.appcompat.widget.u.g
        public void n(int i) {
        }

        @Override // androidx.appcompat.widget.u.g
        public void o(ListAdapter listAdapter) {
            this.f396c = listAdapter;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            u.this.setSelection(i);
            if (u.this.getOnItemClickListener() != null) {
                u.this.performItemClick(null, i, this.f396c.getItemId(i));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.u.g
        public void p(int i) {
        }
    }

    private static class d implements ListAdapter, SpinnerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SpinnerAdapter f398b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ListAdapter f399c;

        public d(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f398b = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f399c = (ListAdapter) spinnerAdapter;
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
                if (spinnerAdapter instanceof q0) {
                    q0 q0Var = (q0) spinnerAdapter;
                    if (q0Var.getDropDownViewTheme() == null) {
                        q0Var.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f399c;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f398b;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f398b;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f398b;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f398b;
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
            SpinnerAdapter spinnerAdapter = this.f398b;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f399c;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f398b;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f398b;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class e extends h0 implements g {
        private CharSequence J;
        ListAdapter K;
        private final Rect L;
        private int M;

        class a implements AdapterView.OnItemClickListener {
            a(u uVar) {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                u.this.setSelection(i);
                if (u.this.getOnItemClickListener() != null) {
                    e eVar = e.this;
                    u.this.performItemClick(view, i, eVar.K.getItemId(i));
                }
                e.this.dismiss();
            }
        }

        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                e eVar = e.this;
                if (!eVar.U(u.this)) {
                    e.this.dismiss();
                } else {
                    e.this.S();
                    e.super.g();
                }
            }
        }

        class c implements PopupWindow.OnDismissListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f402b;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f402b = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = u.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f402b);
                }
            }
        }

        public e(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.L = new Rect();
            D(u.this);
            J(true);
            O(0);
            L(new a(u.this));
        }

        void S() {
            Drawable drawableJ = j();
            int i = 0;
            if (drawableJ != null) {
                drawableJ.getPadding(u.this.i);
                i = a1.b(u.this) ? u.this.i.right : -u.this.i.left;
            } else {
                Rect rect = u.this.i;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = u.this.getPaddingLeft();
            int paddingRight = u.this.getPaddingRight();
            int width = u.this.getWidth();
            u uVar = u.this;
            int i2 = uVar.h;
            if (i2 == -2) {
                int iA = uVar.a((SpinnerAdapter) this.K, j());
                int i3 = u.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = u.this.i;
                int i4 = (i3 - rect2.left) - rect2.right;
                if (iA > i4) {
                    iA = i4;
                }
                F(Math.max(iA, (width - paddingLeft) - paddingRight));
            } else if (i2 == -1) {
                F((width - paddingLeft) - paddingRight);
            } else {
                F(i2);
            }
            d(a1.b(u.this) ? i + (((width - paddingRight) - z()) - T()) : i + paddingLeft + T());
        }

        public int T() {
            return this.M;
        }

        boolean U(View view) {
            return androidx.core.view.v.S(view) && view.getGlobalVisibleRect(this.L);
        }

        @Override // androidx.appcompat.widget.u.g
        public void f(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean zB = b();
            S();
            I(2);
            super.g();
            ListView listViewL = l();
            listViewL.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                listViewL.setTextDirection(i);
                listViewL.setTextAlignment(i2);
            }
            P(u.this.getSelectedItemPosition());
            if (zB || (viewTreeObserver = u.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            K(new c(bVar));
        }

        @Override // androidx.appcompat.widget.u.g
        public CharSequence k() {
            return this.J;
        }

        @Override // androidx.appcompat.widget.u.g
        public void m(CharSequence charSequence) {
            this.J = charSequence;
        }

        @Override // androidx.appcompat.widget.h0, androidx.appcompat.widget.u.g
        public void o(ListAdapter listAdapter) {
            super.o(listAdapter);
            this.K = listAdapter;
        }

        @Override // androidx.appcompat.widget.u.g
        public void p(int i) {
            this.M = i;
        }
    }

    static class f extends View.BaseSavedState {
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f404b;

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
            parcel.writeByte(this.f404b ? (byte) 1 : (byte) 0);
        }

        f(Parcel parcel) {
            super(parcel);
            this.f404b = parcel.readByte() != 0;
        }
    }

    interface g {
        boolean b();

        void c(Drawable drawable);

        void d(int i);

        void dismiss();

        int e();

        void f(int i, int i2);

        int h();

        Drawable j();

        CharSequence k();

        void m(CharSequence charSequence);

        void n(int i);

        void o(ListAdapter listAdapter);

        void p(int i);
    }

    public u(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.a.a.spinnerStyle);
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
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
        drawable.getPadding(this.i);
        Rect rect = this.i;
        return iMax2 + rect.left + rect.right;
    }

    void b() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.g.f(getTextDirection(), getTextAlignment());
        } else {
            this.g.f(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.e eVar = this.f391b;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        g gVar = this.g;
        if (gVar != null) {
            return gVar.e();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        g gVar = this.g;
        if (gVar != null) {
            return gVar.h();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.g != null) {
            return this.h;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    final g getInternalPopup() {
        return this.g;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        g gVar = this.g;
        if (gVar != null) {
            return gVar.j();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f392c;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        g gVar = this.g;
        return gVar != null ? gVar.k() : super.getPrompt();
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.e eVar = this.f391b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.e eVar = this.f391b;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g gVar = this.g;
        if (gVar == null || !gVar.b()) {
            return;
        }
        this.g.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.g == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        if (!fVar.f404b || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        g gVar = this.g;
        fVar.f404b = gVar != null && gVar.b();
        return fVar;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        f0 f0Var = this.f393d;
        if (f0Var == null || !f0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        g gVar = this.g;
        if (gVar == null) {
            return super.performClick();
        }
        if (gVar.b()) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.e eVar = this.f391b;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        androidx.appcompat.widget.e eVar = this.f391b;
        if (eVar != null) {
            eVar.g(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        g gVar = this.g;
        if (gVar != null) {
            gVar.p(i);
            this.g.d(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        g gVar = this.g;
        if (gVar != null) {
            gVar.n(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.g != null) {
            this.h = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        g gVar = this.g;
        if (gVar != null) {
            gVar.c(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(c.a.k.a.a.d(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        g gVar = this.g;
        if (gVar != null) {
            gVar.m(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        androidx.appcompat.widget.e eVar = this.f391b;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        androidx.appcompat.widget.e eVar = this.f391b;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public u(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f) {
            this.e = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.g != null) {
            Context context = this.f392c;
            if (context == null) {
                context = getContext();
            }
            this.g.o(new d(spinnerAdapter, context.getTheme()));
        }
    }

    public u(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051 A[PHI: r9 r10
      0x0051: PHI (r9v2 int) = (r9v0 int), (r9v4 int) binds: [B:24:0x0060, B:15:0x004f] A[DONT_GENERATE, DONT_INLINE]
      0x0051: PHI (r10v6 android.content.res.TypedArray) = (r10v5 android.content.res.TypedArray), (r10v8 android.content.res.TypedArray) binds: [B:24:0x0060, B:15:0x004f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public u(Context context, AttributeSet attributeSet, int i, int i2, Resources.Theme theme) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i);
        this.i = new Rect();
        p0.a(this, getContext());
        u0 u0VarV = u0.v(context, attributeSet, c.a.j.Spinner, i, 0);
        this.f391b = new androidx.appcompat.widget.e(this);
        if (theme != null) {
            this.f392c = new c.a.o.d(context, theme);
        } else {
            int iN = u0VarV.n(c.a.j.Spinner_popupTheme, 0);
            if (iN != 0) {
                this.f392c = new c.a.o.d(context, iN);
            } else {
                this.f392c = context;
            }
        }
        TypedArray typedArray = null;
        if (i2 == -1) {
            try {
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j, i, 0);
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
            this.g = cVar;
            cVar.m(u0VarV.o(c.a.j.Spinner_android_prompt));
        } else if (i2 == 1) {
            e eVar = new e(this.f392c, attributeSet, i);
            u0 u0VarV2 = u0.v(this.f392c, attributeSet, c.a.j.Spinner, i, 0);
            this.h = u0VarV2.m(c.a.j.Spinner_android_dropDownWidth, -2);
            eVar.c(u0VarV2.g(c.a.j.Spinner_android_popupBackground));
            eVar.m(u0VarV.o(c.a.j.Spinner_android_prompt));
            u0VarV2.w();
            this.g = eVar;
            this.f393d = new a(this, eVar);
        }
        CharSequence[] charSequenceArrQ = u0VarV.q(c.a.j.Spinner_android_entries);
        if (charSequenceArrQ != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, charSequenceArrQ);
            arrayAdapter.setDropDownViewResource(c.a.g.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        u0VarV.w();
        this.f = true;
        SpinnerAdapter spinnerAdapter = this.e;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.e = null;
        }
        this.f391b.e(attributeSet, i);
    }
}
