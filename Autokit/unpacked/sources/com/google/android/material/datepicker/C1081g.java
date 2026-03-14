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
import p093d.p099c.p100a.p101a.C1223h;
import p093d.p099c.p100a.p101a.C1224i;

/* JADX INFO: renamed from: com.google.android.material.datepicker.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1081g extends BaseAdapter {

    /* JADX INFO: renamed from: e */
    private static final int f6879e;

    /* JADX INFO: renamed from: b */
    private final Calendar f6880b;

    /* JADX INFO: renamed from: c */
    private final int f6881c;

    /* JADX INFO: renamed from: d */
    private final int f6882d;

    static {
        f6879e = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public C1081g() {
        Calendar calendarM8477k = C1093s.m8477k();
        this.f6880b = calendarM8477k;
        this.f6881c = calendarM8477k.getMaximum(7);
        this.f6882d = this.f6880b.getFirstDayOfWeek();
    }

    /* JADX INFO: renamed from: b */
    private int m8382b(int i) {
        int i2 = i + this.f6882d;
        int i3 = this.f6881c;
        return i2 > i3 ? i2 - i3 : i2;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer getItem(int i) {
        if (i >= this.f6881c) {
            return null;
        }
        return Integer.valueOf(m8382b(i));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f6881c;
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
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C1223h.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f6880b.set(7, m8382b(i));
        textView.setText(this.f6880b.getDisplayName(7, f6879e, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(C1224i.mtrl_picker_day_of_week_column_header), this.f6880b.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
