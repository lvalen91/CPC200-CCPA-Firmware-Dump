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
import androidx.core.view.C0292v;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d;
import com.google.android.material.datepicker.C1075a;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p016c.p017a.p018k.p019a.C0503a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1220e;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1223h;
import p093d.p099c.p100a.p101a.C1224i;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p111r.ViewOnTouchListenerC1248a;
import p093d.p099c.p100a.p101a.p117x.C1256b;

/* JADX INFO: renamed from: com.google.android.material.datepicker.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1083i<S> extends DialogInterfaceOnCancelListenerC0354d {

    /* JADX INFO: renamed from: H0 */
    static final Object f6917H0 = "CONFIRM_BUTTON_TAG";

    /* JADX INFO: renamed from: I0 */
    static final Object f6918I0 = "CANCEL_BUTTON_TAG";

    /* JADX INFO: renamed from: J0 */
    static final Object f6919J0 = "TOGGLE_BUTTON_TAG";

    /* JADX INFO: renamed from: A0 */
    private CharSequence f6920A0;

    /* JADX INFO: renamed from: B0 */
    private boolean f6921B0;

    /* JADX INFO: renamed from: C0 */
    private int f6922C0;

    /* JADX INFO: renamed from: D0 */
    private TextView f6923D0;

    /* JADX INFO: renamed from: E0 */
    private CheckableImageButton f6924E0;

    /* JADX INFO: renamed from: F0 */
    private C1208g f6925F0;

    /* JADX INFO: renamed from: G0 */
    private Button f6926G0;

    /* JADX INFO: renamed from: q0 */
    private final LinkedHashSet<InterfaceC1084j<? super S>> f6927q0 = new LinkedHashSet<>();

    /* JADX INFO: renamed from: r0 */
    private final LinkedHashSet<View.OnClickListener> f6928r0 = new LinkedHashSet<>();

    /* JADX INFO: renamed from: s0 */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f6929s0 = new LinkedHashSet<>();

    /* JADX INFO: renamed from: t0 */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f6930t0 = new LinkedHashSet<>();

    /* JADX INFO: renamed from: u0 */
    private int f6931u0;

    /* JADX INFO: renamed from: v0 */
    private InterfaceC1078d<S> f6932v0;

    /* JADX INFO: renamed from: w0 */
    private AbstractC1090p<S> f6933w0;

    /* JADX INFO: renamed from: x0 */
    private C1075a f6934x0;

    /* JADX INFO: renamed from: y0 */
    private C1082h<S> f6935y0;

    /* JADX INFO: renamed from: z0 */
    private int f6936z0;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.i$a */
    class a implements View.OnClickListener {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = C1083i.this.f6927q0.iterator();
            while (it.hasNext()) {
                ((InterfaceC1084j) it.next()).m8428a(C1083i.this.m8426H2());
            }
            C1083i.this.mo2606j2();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.i$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = C1083i.this.f6928r0.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            C1083i.this.mo2606j2();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.i$c */
    class c extends AbstractC1089o<S> {
        c() {
        }

        @Override // com.google.android.material.datepicker.AbstractC1089o
        /* JADX INFO: renamed from: a */
        public void mo8427a(S s) {
            C1083i.this.m8418O2();
            C1083i.this.f6926G0.setEnabled(C1083i.this.f6932v0.m8370f());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.i$d */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C1083i.this.f6926G0.setEnabled(C1083i.this.f6932v0.m8370f());
            C1083i.this.f6924E0.toggle();
            C1083i c1083i = C1083i.this;
            c1083i.m8419P2(c1083i.f6924E0);
            C1083i.this.m8417N2();
        }
    }

    /* JADX INFO: renamed from: D2 */
    private static Drawable m8409D2(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, C0503a.m4047d(context, C1220e.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], C0503a.m4047d(context, C1220e.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    /* JADX INFO: renamed from: E2 */
    private static int m8410E2(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(C1219d.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(C1219d.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(C1219d.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelSize(C1219d.mtrl_calendar_days_of_week_height) + (C1087m.f6952g * resources.getDimensionPixelSize(C1219d.mtrl_calendar_day_height)) + ((C1087m.f6952g - 1) * resources.getDimensionPixelOffset(C1219d.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(C1219d.mtrl_calendar_bottom_padding);
    }

    /* JADX INFO: renamed from: G2 */
    private static int m8411G2(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(C1219d.mtrl_calendar_content_padding);
        int i = C1086l.m8432m().f6948e;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(C1219d.mtrl_calendar_day_width) * i) + ((i - 1) * resources.getDimensionPixelOffset(C1219d.mtrl_calendar_month_horizontal_padding));
    }

    /* JADX INFO: renamed from: I2 */
    private int m8412I2(Context context) {
        int i = this.f6931u0;
        return i != 0 ? i : this.f6932v0.m8368c(context);
    }

    /* JADX INFO: renamed from: J2 */
    private void m8413J2(Context context) {
        this.f6924E0.setTag(f6919J0);
        this.f6924E0.setImageDrawable(m8409D2(context));
        this.f6924E0.setChecked(this.f6922C0 != 0);
        C0292v.m2105o0(this.f6924E0, null);
        m8419P2(this.f6924E0);
        this.f6924E0.setOnClickListener(new d());
    }

    /* JADX INFO: renamed from: K2 */
    static boolean m8414K2(Context context) {
        return m8416M2(context, R.attr.windowFullscreen);
    }

    /* JADX INFO: renamed from: L2 */
    static boolean m8415L2(Context context) {
        return m8416M2(context, C1216b.nestedScrollable);
    }

    /* JADX INFO: renamed from: M2 */
    static boolean m8416M2(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(C1256b.m9452c(context, C1216b.materialCalendarStyle, C1082h.class.getCanonicalName()), new int[]{i});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: N2 */
    public void m8417N2() {
        int iM8412I2 = m8412I2(m2406K1());
        this.f6935y0 = C1082h.m8394x2(this.f6932v0, iM8412I2, this.f6934x0);
        this.f6933w0 = this.f6924E0.isChecked() ? C1085k.m8429i2(this.f6932v0, iM8412I2, this.f6934x0) : this.f6935y0;
        m8418O2();
        AbstractC0375w abstractC0375wM2774l = m2401J().m2774l();
        abstractC0375wM2774l.m2893p(C1221f.mtrl_calendar_frame, this.f6933w0);
        abstractC0375wM2774l.mo2528j();
        this.f6933w0.mo8398g2(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: O2 */
    public void m8418O2() {
        String strM8425F2 = m8425F2();
        this.f6923D0.setContentDescription(String.format(m2474j0(C1224i.mtrl_picker_announce_current_selection), strM8425F2));
        this.f6923D0.setText(strM8425F2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: P2 */
    public void m8419P2(CheckableImageButton checkableImageButton) {
        this.f6924E0.setContentDescription(this.f6924E0.isChecked() ? checkableImageButton.getContext().getString(C1224i.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(C1224i.mtrl_picker_toggle_to_text_input_mode));
    }

    /* JADX INFO: renamed from: F2 */
    public String m8425F2() {
        return this.f6932v0.m8367b(m2404K());
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: H0 */
    public final void mo2397H0(Bundle bundle) {
        super.mo2397H0(bundle);
        if (bundle == null) {
            bundle = m2399I();
        }
        this.f6931u0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.f6932v0 = (InterfaceC1078d) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f6934x0 = (C1075a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f6936z0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f6920A0 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f6922C0 = bundle.getInt("INPUT_MODE_KEY");
    }

    /* JADX INFO: renamed from: H2 */
    public final S m8426H2() {
        return this.f6932v0.m8366a();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public final View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f6921B0 ? C1223h.mtrl_picker_fullscreen : C1223h.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f6921B0) {
            viewInflate.findViewById(C1221f.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(m8411G2(context), -2));
        } else {
            View viewFindViewById = viewInflate.findViewById(C1221f.mtrl_calendar_main_pane);
            View viewFindViewById2 = viewInflate.findViewById(C1221f.mtrl_calendar_frame);
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(m8411G2(context), -1));
            viewFindViewById2.setMinimumHeight(m8410E2(m2406K1()));
        }
        TextView textView = (TextView) viewInflate.findViewById(C1221f.mtrl_picker_header_selection_text);
        this.f6923D0 = textView;
        C0292v.m2109q0(textView, 1);
        this.f6924E0 = (CheckableImageButton) viewInflate.findViewById(C1221f.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) viewInflate.findViewById(C1221f.mtrl_picker_title_text);
        CharSequence charSequence = this.f6920A0;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f6936z0);
        }
        m8413J2(context);
        this.f6926G0 = (Button) viewInflate.findViewById(C1221f.confirm_button);
        if (this.f6932v0.m8370f()) {
            this.f6926G0.setEnabled(true);
        } else {
            this.f6926G0.setEnabled(false);
        }
        this.f6926G0.setTag(f6917H0);
        this.f6926G0.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(C1221f.cancel_button);
        button.setTag(f6918I0);
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: d1 */
    public final void mo2460d1(Bundle bundle) {
        super.mo2460d1(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f6931u0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f6932v0);
        C1075a.b bVar = new C1075a.b(this.f6934x0);
        if (this.f6935y0.m8401t2() != null) {
            bVar.m8360b(this.f6935y0.m8401t2().f6950g);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar.m8359a());
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f6936z0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f6920A0);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: e1 */
    public void mo2463e1() {
        super.mo2463e1();
        Window window = m2613s2().getWindow();
        if (this.f6921B0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f6925F0);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = m2459d0().getDimensionPixelOffset(C1219d.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f6925F0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new ViewOnTouchListenerC1248a(m2613s2(), rect));
        }
        m8417N2();
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: f1 */
    public void mo2466f1() {
        this.f6933w0.m8463h2();
        super.mo2466f1();
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d
    /* JADX INFO: renamed from: o2 */
    public final Dialog mo2610o2(Bundle bundle) {
        Dialog dialog = new Dialog(m2406K1(), m8412I2(m2406K1()));
        Context context = dialog.getContext();
        this.f6921B0 = m8414K2(context);
        int iM9452c = C1256b.m9452c(context, C1216b.colorSurface, C1083i.class.getCanonicalName());
        C1208g c1208g = new C1208g(context, null, C1216b.materialCalendarStyle, C1225j.Widget_MaterialComponents_MaterialCalendar);
        this.f6925F0 = c1208g;
        c1208g.m9178M(context);
        this.f6925F0.m9184W(ColorStateList.valueOf(iM9452c));
        this.f6925F0.m9183V(C0292v.m2120w(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f6929s0.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f6930t0.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) m2478l0();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }
}
