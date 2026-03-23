package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.constraintlayout.widget.C0212d;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.C0292v;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1223h;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class TimePickerView extends ConstraintLayout {

    /* JADX INFO: renamed from: A */
    private InterfaceC1160e f7462A;

    /* JADX INFO: renamed from: u */
    private final Chip f7463u;

    /* JADX INFO: renamed from: v */
    private final Chip f7464v;

    /* JADX INFO: renamed from: w */
    private final MaterialButtonToggleGroup f7465w;

    /* JADX INFO: renamed from: x */
    private final View.OnClickListener f7466x;

    /* JADX INFO: renamed from: y */
    private InterfaceC1161f f7467y;

    /* JADX INFO: renamed from: z */
    private InterfaceC1162g f7468z;

    /* JADX INFO: renamed from: com.google.android.material.timepicker.TimePickerView$a */
    class ViewOnClickListenerC1156a implements View.OnClickListener {
        ViewOnClickListenerC1156a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.f7468z != null) {
                TimePickerView.this.f7468z.m8989a(((Integer) view.getTag(C1221f.selection_type)).intValue());
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.TimePickerView$b */
    class C1157b implements MaterialButtonToggleGroup.InterfaceC1062e {
        C1157b() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.InterfaceC1062e
        /* JADX INFO: renamed from: a */
        public void mo8118a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
            int i2 = i == C1221f.material_clock_period_pm_button ? 1 : 0;
            if (TimePickerView.this.f7467y == null || !z) {
                return;
            }
            TimePickerView.this.f7467y.m8988a(i2);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.TimePickerView$c */
    class C1158c extends GestureDetector.SimpleOnGestureListener {
        C1158c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean zOnDoubleTap = super.onDoubleTap(motionEvent);
            if (TimePickerView.this.f7462A != null) {
                TimePickerView.this.f7462A.m8987a();
            }
            return zOnDoubleTap;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.TimePickerView$d */
    class ViewOnTouchListenerC1159d implements View.OnTouchListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ GestureDetector f7472b;

        ViewOnTouchListenerC1159d(TimePickerView timePickerView, GestureDetector gestureDetector) {
            this.f7472b = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f7472b.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.TimePickerView$e */
    interface InterfaceC1160e {
        /* JADX INFO: renamed from: a */
        void m8987a();
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.TimePickerView$f */
    interface InterfaceC1161f {
        /* JADX INFO: renamed from: a */
        void m8988a(int i);
    }

    /* JADX INFO: renamed from: com.google.android.material.timepicker.TimePickerView$g */
    interface InterfaceC1162g {
        /* JADX INFO: renamed from: a */
        void m8989a(int i);
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: renamed from: x */
    private void m8984x() {
        this.f7463u.setTag(C1221f.selection_type, 12);
        this.f7464v.setTag(C1221f.selection_type, 10);
        this.f7463u.setOnClickListener(this.f7466x);
        this.f7464v.setOnClickListener(this.f7466x);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* JADX INFO: renamed from: y */
    private void m8985y() {
        ViewOnTouchListenerC1159d viewOnTouchListenerC1159d = new ViewOnTouchListenerC1159d(this, new GestureDetector(getContext(), new C1158c()));
        this.f7463u.setOnTouchListener(viewOnTouchListenerC1159d);
        this.f7464v.setOnTouchListener(viewOnTouchListenerC1159d);
    }

    /* JADX INFO: renamed from: z */
    private void m8986z() {
        if (this.f7465w.getVisibility() == 0) {
            C0212d c0212d = new C0212d();
            c0212d.m1499g(this);
            c0212d.m1497e(C1221f.material_clock_display, C0292v.m2046C(this) == 0 ? 2 : 1);
            c0212d.m1495c(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m8986z();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            m8986z();
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7466x = new ViewOnClickListenerC1156a();
        LayoutInflater.from(context).inflate(C1223h.material_timepicker, this);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(C1221f.material_clock_period_toggle);
        this.f7465w = materialButtonToggleGroup;
        materialButtonToggleGroup.m8107g(new C1157b());
        this.f7463u = (Chip) findViewById(C1221f.material_minute_tv);
        this.f7464v = (Chip) findViewById(C1221f.material_hour_tv);
        m8985y();
        m8984x();
    }
}
