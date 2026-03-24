package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.v;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import d.c.a.a.h;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class TimePickerView extends ConstraintLayout {
    private e A;
    private final Chip u;
    private final Chip v;
    private final MaterialButtonToggleGroup w;
    private final View.OnClickListener x;
    private f y;
    private g z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.z != null) {
                TimePickerView.this.z.a(((Integer) view.getTag(d.c.a.a.f.selection_type)).intValue());
            }
        }
    }

    class b implements MaterialButtonToggleGroup.e {
        b() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.e
        public void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
            int i2 = i == d.c.a.a.f.material_clock_period_pm_button ? 1 : 0;
            if (TimePickerView.this.y == null || !z) {
                return;
            }
            TimePickerView.this.y.a(i2);
        }
    }

    class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean zOnDoubleTap = super.onDoubleTap(motionEvent);
            if (TimePickerView.this.A != null) {
                TimePickerView.this.A.a();
            }
            return zOnDoubleTap;
        }
    }

    class d implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GestureDetector f2234b;

        d(TimePickerView timePickerView, GestureDetector gestureDetector) {
            this.f2234b = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f2234b.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    interface e {
        void a();
    }

    interface f {
        void a(int i);
    }

    interface g {
        void a(int i);
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void x() {
        this.u.setTag(d.c.a.a.f.selection_type, 12);
        this.v.setTag(d.c.a.a.f.selection_type, 10);
        this.u.setOnClickListener(this.x);
        this.v.setOnClickListener(this.x);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void y() {
        d dVar = new d(this, new GestureDetector(getContext(), new c()));
        this.u.setOnTouchListener(dVar);
        this.v.setOnTouchListener(dVar);
    }

    private void z() {
        if (this.w.getVisibility() == 0) {
            androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
            dVar.g(this);
            dVar.e(d.c.a.a.f.material_clock_display, v.C(this) == 0 ? 2 : 1);
            dVar.c(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        z();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            z();
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.x = new a();
        LayoutInflater.from(context).inflate(h.material_timepicker, this);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(d.c.a.a.f.material_clock_period_toggle);
        this.w = materialButtonToggleGroup;
        materialButtonToggleGroup.g(new b());
        this.u = (Chip) findViewById(d.c.a.a.f.material_minute_tv);
        this.v = (Chip) findViewById(d.c.a.a.f.material_hour_tv);
        y();
        x();
    }
}
