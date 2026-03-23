package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.C0258a;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import com.google.android.material.internal.C1123l;
import java.util.Calendar;
import p016c.p041g.p049j.C0622d;
import p093d.p099c.p100a.p101a.C1221f;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class MaterialCalendarGridView extends GridView {

    /* JADX INFO: renamed from: b */
    private final Calendar f6850b;

    /* JADX INFO: renamed from: c */
    private final boolean f6851c;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.MaterialCalendarGridView$a */
    class C1074a extends C0258a {
        C1074a(MaterialCalendarGridView materialCalendarGridView) {
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            super.mo1813g(view, c0269c);
            c0269c.m1921Y(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: renamed from: a */
    private void m8342a(int i, Rect rect) {
        if (i == 33) {
            setSelection(getAdapter().m8453i());
        } else if (i == 130) {
            setSelection(getAdapter().m8448b());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    /* JADX INFO: renamed from: c */
    private static int m8343c(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    /* JADX INFO: renamed from: d */
    private static boolean m8344d(Long l, Long l2, Long l3, Long l4) {
        return l == null || l2 == null || l3 == null || l4 == null || l3.longValue() > l2.longValue() || l4.longValue() < l.longValue();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1087m getAdapter() {
        return (C1087m) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        int iM8447a;
        int iM8343c;
        int iM8447a2;
        int iM8343c2;
        int width;
        int i;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        C1087m adapter = getAdapter();
        InterfaceC1078d<?> interfaceC1078d = adapter.f6954c;
        C1077c c1077c = adapter.f6956e;
        Long item = adapter.getItem(adapter.m8448b());
        Long item2 = adapter.getItem(adapter.m8453i());
        for (C0622d<Long, Long> c0622d : interfaceC1078d.m8369d()) {
            Long l = c0622d.f3812a;
            if (l != null) {
                if (c0622d.f3813b != null) {
                    long jLongValue = l.longValue();
                    long jLongValue2 = c0622d.f3813b.longValue();
                    if (!m8344d(item, item2, Long.valueOf(jLongValue), Long.valueOf(jLongValue2))) {
                        boolean zM8734d = C1123l.m8734d(this);
                        if (jLongValue < item.longValue()) {
                            iM8447a = adapter.m8448b();
                            iM8343c = adapter.m8451f(iM8447a) ? 0 : !zM8734d ? materialCalendarGridView.getChildAt(iM8447a - 1).getRight() : materialCalendarGridView.getChildAt(iM8447a - 1).getLeft();
                        } else {
                            materialCalendarGridView.f6850b.setTimeInMillis(jLongValue);
                            iM8447a = adapter.m8447a(materialCalendarGridView.f6850b.get(5));
                            iM8343c = m8343c(materialCalendarGridView.getChildAt(iM8447a));
                        }
                        if (jLongValue2 > item2.longValue()) {
                            iM8447a2 = Math.min(adapter.m8453i(), getChildCount() - 1);
                            iM8343c2 = adapter.m8452g(iM8447a2) ? getWidth() : !zM8734d ? materialCalendarGridView.getChildAt(iM8447a2).getRight() : materialCalendarGridView.getChildAt(iM8447a2).getLeft();
                        } else {
                            materialCalendarGridView.f6850b.setTimeInMillis(jLongValue2);
                            iM8447a2 = adapter.m8447a(materialCalendarGridView.f6850b.get(5));
                            iM8343c2 = m8343c(materialCalendarGridView.getChildAt(iM8447a2));
                        }
                        int itemId = (int) adapter.getItemId(iM8447a);
                        int itemId2 = (int) adapter.getItemId(iM8447a2);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt = materialCalendarGridView.getChildAt(numColumns);
                            int top = childAt.getTop() + c1077c.f6870a.m8364c();
                            int bottom = childAt.getBottom() - c1077c.f6870a.m8363b();
                            if (zM8734d) {
                                int i2 = iM8447a2 > numColumns2 ? 0 : iM8343c2;
                                width = numColumns > iM8447a ? getWidth() : iM8343c;
                                i = i2;
                            } else {
                                i = numColumns > iM8447a ? 0 : iM8343c;
                                width = iM8447a2 > numColumns2 ? getWidth() : iM8343c2;
                            }
                            canvas.drawRect(i, top, width, bottom, c1077c.f6877h);
                            itemId++;
                            materialCalendarGridView = this;
                            adapter = adapter;
                        }
                    }
                }
            }
            materialCalendarGridView = this;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            m8342a(i, rect);
        } else {
            super.onFocusChanged(false, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().m8448b()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().m8448b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f6851c) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter().m8448b()) {
            super.setSelection(getAdapter().m8448b());
        } else {
            super.setSelection(i);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6850b = C1093s.m8477k();
        if (C1083i.m8414K2(getContext())) {
            setNextFocusLeftId(C1221f.cancel_button);
            setNextFocusRightId(C1221f.confirm_button);
        }
        this.f6851c = C1083i.m8415L2(getContext());
        C0292v.m2105o0(this, new C1074a(this));
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof C1087m)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), C1087m.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }
}
