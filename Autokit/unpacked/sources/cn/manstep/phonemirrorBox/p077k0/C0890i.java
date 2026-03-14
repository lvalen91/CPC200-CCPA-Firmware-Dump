package cn.manstep.phonemirrorBox.p077k0;

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
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d;
import cn.manstep.phonemirrorBox.util.C0964c0;
import cn.manstep.phonemirrorBox.widget.ViewOnTouchListenerC1001b;
import com.yalantis.ucrop.BuildConfig;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0890i extends DialogInterfaceOnCancelListenerC0354d {

    /* JADX INFO: renamed from: q0 */
    private String f5583q0;

    /* JADX INFO: renamed from: r0 */
    private String f5584r0;

    /* JADX INFO: renamed from: s0 */
    private TimePicker f5585s0;

    /* JADX INFO: renamed from: t0 */
    private TimePicker f5586t0;

    /* JADX INFO: renamed from: u0 */
    private final String f5587u0;

    /* JADX INFO: renamed from: v0 */
    private final e f5588v0;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.i$a */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C0890i.this.m2607k2();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.i$b */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C0890i.this.f5588v0 != null) {
                String str = new SimpleDateFormat("HH:mm", Locale.CHINESE).format(new Date());
                if (TextUtils.isEmpty(C0890i.this.f5583q0)) {
                    C0890i.this.f5583q0 = str;
                }
                if (TextUtils.isEmpty(C0890i.this.f5584r0)) {
                    C0890i.this.f5584r0 = str;
                }
                C0890i.this.f5588v0.mo6618a(C0890i.this.f5583q0, C0890i.this.f5584r0);
                C0890i.this.m2607k2();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.i$c */
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
            C0890i.this.f5583q0 = string + ":" + str;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.i$d */
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
            C0890i.this.f5584r0 = string + ":" + str;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.k0.i$e */
    public interface e {
        /* JADX INFO: renamed from: a */
        void mo6618a(String str, String str2);
    }

    public C0890i(String str, e eVar) {
        this.f5587u0 = str;
        this.f5588v0 = eVar;
    }

    /* JADX INFO: renamed from: A2 */
    public static int m6606A2(float f, Context context) {
        return (int) Math.ceil(f * context.getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: renamed from: B2 */
    private void m6607B2() {
        this.f5585s0.setIs24HourView(Boolean.TRUE);
        this.f5586t0.setIs24HourView(Boolean.TRUE);
        this.f5585s0.setDescendantFocusability(393216);
        this.f5586t0.setDescendantFocusability(393216);
        m6610G2(this.f5585s0);
        m6610G2(this.f5586t0);
        List<String> listM7188l = C0964c0.m7188l(this.f5587u0, "\\d+:\\d+");
        if (!m6617D2(listM7188l) && listM7188l.size() >= 2) {
            this.f5583q0 = C0964c0.m7188l(this.f5587u0, "\\d+:\\d+").get(0);
            this.f5584r0 = C0964c0.m7188l(this.f5587u0, "\\d+:\\d+").get(1);
        }
        if (!m6616C2(this.f5583q0) && !m6616C2(this.f5584r0)) {
            if (Build.VERSION.SDK_INT >= 23) {
                TimePicker timePicker = this.f5585s0;
                String str = this.f5583q0;
                timePicker.setHour(Integer.parseInt(str.substring(0, str.indexOf(":"))));
                TimePicker timePicker2 = this.f5585s0;
                String str2 = this.f5583q0;
                timePicker2.setMinute(Integer.parseInt(str2.substring(str2.indexOf(":") + 1)));
                TimePicker timePicker3 = this.f5586t0;
                String str3 = this.f5584r0;
                timePicker3.setHour(Integer.parseInt(str3.substring(0, str3.indexOf(":"))));
                TimePicker timePicker4 = this.f5586t0;
                String str4 = this.f5584r0;
                timePicker4.setMinute(Integer.parseInt(str4.substring(str4.indexOf(":") + 1)));
            } else {
                TimePicker timePicker5 = this.f5585s0;
                String str5 = this.f5583q0;
                timePicker5.setCurrentHour(Integer.valueOf(Integer.parseInt(str5.substring(0, str5.indexOf(":")))));
                TimePicker timePicker6 = this.f5585s0;
                String str6 = this.f5583q0;
                timePicker6.setCurrentMinute(Integer.valueOf(Integer.parseInt(str6.substring(str6.indexOf(":") + 1))));
                TimePicker timePicker7 = this.f5586t0;
                String str7 = this.f5584r0;
                timePicker7.setCurrentHour(Integer.valueOf(Integer.parseInt(str7.substring(0, str7.indexOf(":")))));
                TimePicker timePicker8 = this.f5586t0;
                String str8 = this.f5584r0;
                timePicker8.setCurrentMinute(Integer.valueOf(Integer.parseInt(str8.substring(str8.indexOf(":") + 1))));
            }
        }
        this.f5585s0.setOnTimeChangedListener(new c());
        this.f5586t0.setOnTimeChangedListener(new d());
    }

    /* JADX INFO: renamed from: E2 */
    public static <T> T m6608E2(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* JADX INFO: renamed from: F2 */
    private void m6609F2(NumberPicker numberPicker) {
        LinearLayout.LayoutParams layoutParams;
        if (numberPicker == null || (layoutParams = (LinearLayout.LayoutParams) numberPicker.getLayoutParams()) == null) {
            return;
        }
        Context contextM2404K = m2404K();
        m6608E2(contextM2404K);
        layoutParams.width = m6606A2(50.0f, contextM2404K);
        float f = 5;
        Context contextM2404K2 = m2404K();
        m6608E2(contextM2404K2);
        layoutParams.setMargins(m6606A2(f, contextM2404K2), 0, m6606A2(f, m2404K()), 0);
        if (Build.VERSION.SDK_INT > 17) {
            layoutParams.setMarginStart(m6606A2(f, m2404K()));
            layoutParams.setMarginEnd(m6606A2(f, m2404K()));
        }
    }

    /* JADX INFO: renamed from: G2 */
    private void m6610G2(TimePicker timePicker) {
        LinearLayout linearLayout = (LinearLayout) ((LinearLayout) timePicker.getChildAt(0)).getChildAt(1);
        for (int i = 0; i < linearLayout.getChildCount(); i++) {
            if (linearLayout.getChildAt(i) instanceof NumberPicker) {
                Field[] declaredFields = NumberPicker.class.getDeclaredFields();
                m6609F2((NumberPicker) linearLayout.getChildAt(i));
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

    /* JADX INFO: renamed from: C2 */
    public boolean m6616C2(String str) {
        return str == null || str.length() == 0;
    }

    /* JADX INFO: renamed from: D2 */
    public boolean m6617D2(List<?> list) {
        return list == null || list.size() == 0;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (m2608m2() != null) {
            m2608m2().requestWindowFeature(1);
        }
        return layoutInflater.inflate(2131492998, viewGroup, false);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0354d, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: e1 */
    public void mo2463e1() {
        Window window;
        super.mo2463e1();
        if (m2608m2() == null || (window = m2608m2().getWindow()) == null) {
            return;
        }
        window.setDimAmount(0.5f);
        window.setBackgroundDrawableResource(R.color.transparent);
        window.setAttributes(window.getAttributes());
        window.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        window.setLayout(C0964c0.m7178b(m2404K(), 400.0f), -2);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        this.f5585s0 = (TimePicker) view.findViewById(2131296868);
        this.f5586t0 = (TimePicker) view.findViewById(2131296867);
        ViewOnTouchListenerC1001b viewOnTouchListenerC1001b = new ViewOnTouchListenerC1001b();
        View viewFindViewById = view.findViewById(2131296372);
        viewOnTouchListenerC1001b.m7492a(viewFindViewById);
        viewFindViewById.setOnClickListener(new a());
        View viewFindViewById2 = view.findViewById(2131296380);
        viewOnTouchListenerC1001b.m7492a(viewFindViewById2);
        viewFindViewById2.setOnClickListener(new b());
        m6607B2();
    }
}
