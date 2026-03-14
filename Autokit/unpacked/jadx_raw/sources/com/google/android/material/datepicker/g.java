package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class g extends BaseAdapter {
    private static final int e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Calendar f2085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2086c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2087d;

    static {
        e = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public g() {
        Calendar calendarK = s.k();
        this.f2085b = calendarK;
        this.f2086c = calendarK.getMaximum(7);
        this.f2087d = this.f2085b.getFirstDayOfWeek();
    }

    private int b(int i) {
        int i2 = i + this.f2087d;
        int i3 = this.f2086c;
        return i2 > i3 ? i2 - i3 : i2;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer getItem(int i) {
        if (i >= this.f2086c) {
            return null;
        }
        return Integer.valueOf(b(i));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f2086c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"WrongConstant"})
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(d.c.a.a.h.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f2085b.set(7, b(i));
        textView.setText(this.f2085b.getDisplayName(7, e, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(d.c.a.a.i.mtrl_picker_day_of_week_column_header), this.f2085b.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
