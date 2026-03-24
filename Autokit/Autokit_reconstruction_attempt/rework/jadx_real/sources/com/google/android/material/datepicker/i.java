package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.v;
import androidx.fragment.app.w;
import com.google.android.material.datepicker.a;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class i<S> extends androidx.fragment.app.d {
    static final Object H0 = "CONFIRM_BUTTON_TAG";
    static final Object I0 = "CANCEL_BUTTON_TAG";
    static final Object J0 = "TOGGLE_BUTTON_TAG";
    private CharSequence A0;
    private boolean B0;
    private int C0;
    private TextView D0;
    private CheckableImageButton E0;
    private d.c.a.a.a0.g F0;
    private Button G0;
    private final LinkedHashSet<j<? super S>> q0 = new LinkedHashSet<>();
    private final LinkedHashSet<View.OnClickListener> r0 = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnCancelListener> s0 = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnDismissListener> t0 = new LinkedHashSet<>();
    private int u0;
    private com.google.android.material.datepicker.d<S> v0;
    private p<S> w0;
    private com.google.android.material.datepicker.a x0;
    private h<S> y0;
    private int z0;

    class a implements View.OnClickListener {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = i.this.q0.iterator();
            while (it.hasNext()) {
                ((j) it.next()).a(i.this.H2());
            }
            i.this.j2();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = i.this.r0.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            i.this.j2();
        }
    }

    class c extends o<S> {
        c() {
        }

        @Override // com.google.android.material.datepicker.o
        public void a(S s) {
            i.this.O2();
            i.this.G0.setEnabled(i.this.v0.f());
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i.this.G0.setEnabled(i.this.v0.f());
            i.this.E0.toggle();
            i iVar = i.this;
            iVar.P2(iVar.E0);
            i.this.N2();
        }
    }

    private static Drawable D2(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, c.a.k.a.a.d(context, d.c.a.a.e.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], c.a.k.a.a.d(context, d.c.a.a.e.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    private static int E2(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(d.c.a.a.d.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(d.c.a.a.d.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(d.c.a.a.d.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelSize(d.c.a.a.d.mtrl_calendar_days_of_week_height) + (m.g * resources.getDimensionPixelSize(d.c.a.a.d.mtrl_calendar_day_height)) + ((m.g - 1) * resources.getDimensionPixelOffset(d.c.a.a.d.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(d.c.a.a.d.mtrl_calendar_bottom_padding);
    }

    private static int G2(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(d.c.a.a.d.mtrl_calendar_content_padding);
        int i = l.m().e;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(d.c.a.a.d.mtrl_calendar_day_width) * i) + ((i - 1) * resources.getDimensionPixelOffset(d.c.a.a.d.mtrl_calendar_month_horizontal_padding));
    }

    private int I2(Context context) {
        int i = this.u0;
        return i != 0 ? i : this.v0.c(context);
    }

    private void J2(Context context) {
        this.E0.setTag(J0);
        this.E0.setImageDrawable(D2(context));
        this.E0.setChecked(this.C0 != 0);
        v.o0(this.E0, null);
        P2(this.E0);
        this.E0.setOnClickListener(new d());
    }

    static boolean K2(Context context) {
        return M2(context, R.attr.windowFullscreen);
    }

    static boolean L2(Context context) {
        return M2(context, d.c.a.a.b.nestedScrollable);
    }

    static boolean M2(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(d.c.a.a.x.b.c(context, d.c.a.a.b.materialCalendarStyle, h.class.getCanonicalName()), new int[]{i});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N2() {
        int iI2 = I2(K1());
        this.y0 = h.x2(this.v0, iI2, this.x0);
        this.w0 = this.E0.isChecked() ? k.i2(this.v0, iI2, this.x0) : this.y0;
        O2();
        w wVarL = J().l();
        wVarL.p(d.c.a.a.f.mtrl_calendar_frame, this.w0);
        wVarL.j();
        this.w0.g2(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O2() {
        String strF2 = F2();
        this.D0.setContentDescription(String.format(j0(d.c.a.a.i.mtrl_picker_announce_current_selection), strF2));
        this.D0.setText(strF2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P2(CheckableImageButton checkableImageButton) {
        this.E0.setContentDescription(this.E0.isChecked() ? checkableImageButton.getContext().getString(d.c.a.a.i.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(d.c.a.a.i.mtrl_picker_toggle_to_text_input_mode));
    }

    public String F2() {
        return this.v0.b(K());
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public final void H0(Bundle bundle) {
        super.H0(bundle);
        if (bundle == null) {
            bundle = I();
        }
        this.u0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.v0 = (com.google.android.material.datepicker.d) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.x0 = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.z0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.A0 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.C0 = bundle.getInt("INPUT_MODE_KEY");
    }

    public final S H2() {
        return this.v0.a();
    }

    @Override // androidx.fragment.app.Fragment
    public final View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.B0 ? d.c.a.a.h.mtrl_picker_fullscreen : d.c.a.a.h.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.B0) {
            viewInflate.findViewById(d.c.a.a.f.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(G2(context), -2));
        } else {
            View viewFindViewById = viewInflate.findViewById(d.c.a.a.f.mtrl_calendar_main_pane);
            View viewFindViewById2 = viewInflate.findViewById(d.c.a.a.f.mtrl_calendar_frame);
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(G2(context), -1));
            viewFindViewById2.setMinimumHeight(E2(K1()));
        }
        TextView textView = (TextView) viewInflate.findViewById(d.c.a.a.f.mtrl_picker_header_selection_text);
        this.D0 = textView;
        v.q0(textView, 1);
        this.E0 = (CheckableImageButton) viewInflate.findViewById(d.c.a.a.f.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) viewInflate.findViewById(d.c.a.a.f.mtrl_picker_title_text);
        CharSequence charSequence = this.A0;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.z0);
        }
        J2(context);
        this.G0 = (Button) viewInflate.findViewById(d.c.a.a.f.confirm_button);
        if (this.v0.f()) {
            this.G0.setEnabled(true);
        } else {
            this.G0.setEnabled(false);
        }
        this.G0.setTag(H0);
        this.G0.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(d.c.a.a.f.cancel_button);
        button.setTag(I0);
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public final void d1(Bundle bundle) {
        super.d1(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.u0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.v0);
        a.b bVar = new a.b(this.x0);
        if (this.y0.t2() != null) {
            bVar.b(this.y0.t2().g);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar.a());
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.z0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.A0);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void e1() {
        super.e1();
        Window window = s2().getWindow();
        if (this.B0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.F0);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = d0().getDimensionPixelOffset(d.c.a.a.d.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.F0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new d.c.a.a.r.a(s2(), rect));
        }
        N2();
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void f1() {
        this.w0.h2();
        super.f1();
    }

    @Override // androidx.fragment.app.d
    public final Dialog o2(Bundle bundle) {
        Dialog dialog = new Dialog(K1(), I2(K1()));
        Context context = dialog.getContext();
        this.B0 = K2(context);
        int iC = d.c.a.a.x.b.c(context, d.c.a.a.b.colorSurface, i.class.getCanonicalName());
        d.c.a.a.a0.g gVar = new d.c.a.a.a0.g(context, null, d.c.a.a.b.materialCalendarStyle, d.c.a.a.j.Widget_MaterialComponents_MaterialCalendar);
        this.F0 = gVar;
        gVar.M(context);
        this.F0.W(ColorStateList.valueOf(iC));
        this.F0.V(v.w(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.d, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.s0.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.d, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.t0.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) l0();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }
}
