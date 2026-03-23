package cn.manstep.phonemirrorBox.k0;

import android.R;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.TimePicker;
import cn.manstep.phonemirrorBox.util.c0;
import com.yalantis.ucrop.BuildConfig;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class i extends androidx.fragment.app.d {
    private String q0;
    private String r0;
    private TimePicker s0;
    private TimePicker t0;
    private final String u0;
    private final e v0;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i.this.k2();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (i.this.v0 != null) {
                String str = new SimpleDateFormat("HH:mm", Locale.CHINESE).format(new Date());
                if (TextUtils.isEmpty(i.this.q0)) {
                    i.this.q0 = str;
                }
                if (TextUtils.isEmpty(i.this.r0)) {
                    i.this.r0 = str;
                }
                i.this.v0.a(i.this.q0, i.this.r0);
                i.this.k2();
            }
        }
    }

    class c implements TimePicker.OnTimeChangedListener {
        c() {
        }

        @Override // android.widget.TimePicker.OnTimeChangedListener
        public void onTimeChanged(TimePicker timePicker, int i, int i2) {
            StringBuilder sb;
            String str;
            if (i < 10) {
                sb = new StringBuilder();
                sb.append("0");
            } else {
                sb = new StringBuilder();
                sb.append(BuildConfig.FLAVOR);
            }
            sb.append(i);
            String string = sb.toString();
            if (i2 < 10) {
                str = "0" + i2;
            } else {
                str = BuildConfig.FLAVOR + i2;
            }
            i.this.q0 = string + ":" + str;
        }
    }

    class d implements TimePicker.OnTimeChangedListener {
        d() {
        }

        @Override // android.widget.TimePicker.OnTimeChangedListener
        public void onTimeChanged(TimePicker timePicker, int i, int i2) {
            StringBuilder sb;
            String str;
            if (i < 10) {
                sb = new StringBuilder();
                sb.append("0");
            } else {
                sb = new StringBuilder();
                sb.append(BuildConfig.FLAVOR);
            }
            sb.append(i);
            String string = sb.toString();
            if (i2 < 10) {
                str = "0" + i2;
            } else {
                str = BuildConfig.FLAVOR + i2;
            }
            i.this.r0 = string + ":" + str;
        }
    }

    public interface e {
        void a(String str, String str2);
    }

    public i(String str, e eVar) {
        this.u0 = str;
        this.v0 = eVar;
    }

    public static int A2(float f, Context context) {
        return (int) Math.ceil(f * context.getResources().getDisplayMetrics().density);
    }

    private void B2() {
        this.s0.setIs24HourView(Boolean.TRUE);
        this.t0.setIs24HourView(Boolean.TRUE);
        this.s0.setDescendantFocusability(393216);
        this.t0.setDescendantFocusability(393216);
        G2(this.s0);
        G2(this.t0);
        List<String> listL = c0.l(this.u0, "\\d+:\\d+");
        if (!D2(listL) && listL.size() >= 2) {
            this.q0 = c0.l(this.u0, "\\d+:\\d+").get(0);
            this.r0 = c0.l(this.u0, "\\d+:\\d+").get(1);
        }
        if (!C2(this.q0) && !C2(this.r0)) {
            if (Build.VERSION.SDK_INT >= 23) {
                TimePicker timePicker = this.s0;
                String str = this.q0;
                timePicker.setHour(Integer.parseInt(str.substring(0, str.indexOf(":"))));
                TimePicker timePicker2 = this.s0;
                String str2 = this.q0;
                timePicker2.setMinute(Integer.parseInt(str2.substring(str2.indexOf(":") + 1)));
                TimePicker timePicker3 = this.t0;
                String str3 = this.r0;
                timePicker3.setHour(Integer.parseInt(str3.substring(0, str3.indexOf(":"))));
                TimePicker timePicker4 = this.t0;
                String str4 = this.r0;
                timePicker4.setMinute(Integer.parseInt(str4.substring(str4.indexOf(":") + 1)));
            } else {
                TimePicker timePicker5 = this.s0;
                String str5 = this.q0;
                timePicker5.setCurrentHour(Integer.valueOf(Integer.parseInt(str5.substring(0, str5.indexOf(":")))));
                TimePicker timePicker6 = this.s0;
                String str6 = this.q0;
                timePicker6.setCurrentMinute(Integer.valueOf(Integer.parseInt(str6.substring(str6.indexOf(":") + 1))));
                TimePicker timePicker7 = this.t0;
                String str7 = this.r0;
                timePicker7.setCurrentHour(Integer.valueOf(Integer.parseInt(str7.substring(0, str7.indexOf(":")))));
                TimePicker timePicker8 = this.t0;
                String str8 = this.r0;
                timePicker8.setCurrentMinute(Integer.valueOf(Integer.parseInt(str8.substring(str8.indexOf(":") + 1))));
            }
        }
        this.s0.setOnTimeChangedListener(new c());
        this.t0.setOnTimeChangedListener(new d());
    }

    public static <T> T E2(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    private void F2(NumberPicker numberPicker) {
        LinearLayout.LayoutParams layoutParams;
        if (numberPicker == null || (layoutParams = (LinearLayout.LayoutParams) numberPicker.getLayoutParams()) == null) {
            return;
        }
        Context contextK = K();
        E2(contextK);
        layoutParams.width = A2(50.0f, contextK);
        float f = 5;
        Context contextK2 = K();
        E2(contextK2);
        layoutParams.setMargins(A2(f, contextK2), 0, A2(f, K()), 0);
        if (Build.VERSION.SDK_INT > 17) {
            layoutParams.setMarginStart(A2(f, K()));
            layoutParams.setMarginEnd(A2(f, K()));
        }
    }

    private void G2(TimePicker timePicker) {
        LinearLayout linearLayout = (LinearLayout) ((LinearLayout) timePicker.getChildAt(0)).getChildAt(1);
        for (int i = 0; i < linearLayout.getChildCount(); i++) {
            if (linearLayout.getChildAt(i) instanceof NumberPicker) {
                Field[] declaredFields = NumberPicker.class.getDeclaredFields();
                F2((NumberPicker) linearLayout.getChildAt(i));
                int length = declaredFields.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        Field field = declaredFields[i2];
                        if (field.getName().equals("mSelectionDivider")) {
                            field.setAccessible(true);
                            try {
                                field.set(linearLayout.getChildAt(i), new ColorDrawable(-1));
                                break;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        } else {
                            i2++;
                        }
                    }
                }
            }
        }
    }

    public boolean C2(String str) {
        return str == null || str.length() == 0;
    }

    public boolean D2(List<?> list) {
        return list == null || list.size() == 0;
    }

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2() != null) {
            m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131492998, viewGroup, false);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void e1() {
        Window window;
        super.e1();
        if (m2() == null || (window = m2().getWindow()) == null) {
            return;
        }
        window.setDimAmount(0.5f);
        window.setBackgroundDrawableResource(R.color.transparent);
        window.setAttributes(window.getAttributes());
        window.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        window.setLayout(c0.b(K(), 400.0f), -2);
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        this.s0 = (TimePicker) view.findViewById(2131296868);
        this.t0 = (TimePicker) view.findViewById(2131296867);
        cn.manstep.phonemirrorBox.widget.b bVar = new cn.manstep.phonemirrorBox.widget.b();
        View viewFindViewById = view.findViewById(2131296372);
        bVar.a(viewFindViewById);
        viewFindViewById.setOnClickListener(new a());
        View viewFindViewById2 = view.findViewById(2131296380);
        bVar.a(viewFindViewById2);
        viewFindViewById2.setOnClickListener(new b());
        B2();
    }
}
