package androidx.core.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.Editable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import p016c.p041g.p048i.C0615c;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: androidx.core.widget.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0308i {

    /* JADX INFO: renamed from: androidx.core.widget.i$a */
    private static class a implements ActionMode.Callback {

        /* JADX INFO: renamed from: a */
        private final ActionMode.Callback f1999a;

        /* JADX INFO: renamed from: b */
        private final TextView f2000b;

        /* JADX INFO: renamed from: c */
        private Class<?> f2001c;

        /* JADX INFO: renamed from: d */
        private Method f2002d;

        /* JADX INFO: renamed from: e */
        private boolean f2003e;

        /* JADX INFO: renamed from: f */
        private boolean f2004f = false;

        a(ActionMode.Callback callback, TextView textView) {
            this.f1999a = callback;
            this.f2000b = textView;
        }

        /* JADX INFO: renamed from: a */
        private Intent m2292a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        /* JADX INFO: renamed from: b */
        private Intent m2293b(ResolveInfo resolveInfo, TextView textView) {
            Intent intentPutExtra = m2292a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !m2295d(textView));
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            return intentPutExtra.setClassName(activityInfo.packageName, activityInfo.name);
        }

        /* JADX INFO: renamed from: c */
        private List<ResolveInfo> m2294c(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (!(context instanceof Activity)) {
                return arrayList;
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m2292a(), 0)) {
                if (m2296e(resolveInfo, context)) {
                    arrayList.add(resolveInfo);
                }
            }
            return arrayList;
        }

        /* JADX INFO: renamed from: d */
        private boolean m2295d(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        /* JADX INFO: renamed from: e */
        private boolean m2296e(ResolveInfo resolveInfo, Context context) {
            if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (!activityInfo.exported) {
                return false;
            }
            String str = activityInfo.permission;
            return str == null || context.checkSelfPermission(str) == 0;
        }

        /* JADX INFO: renamed from: f */
        private void m2297f(Menu menu) {
            Context context = this.f2000b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f2004f) {
                this.f2004f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f2001c = cls;
                    this.f2002d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f2003e = true;
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    this.f2001c = null;
                    this.f2002d = null;
                    this.f2003e = false;
                }
            }
            try {
                Method declaredMethod = (this.f2003e && this.f2001c.isInstance(menu)) ? this.f2002d : menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE);
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> listM2294c = m2294c(context, packageManager);
                for (int i = 0; i < listM2294c.size(); i++) {
                    ResolveInfo resolveInfo = listM2294c.get(i);
                    menu.add(0, 0, i + 100, resolveInfo.loadLabel(packageManager)).setIntent(m2293b(resolveInfo, this.f2000b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f1999a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f1999a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f1999a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            m2297f(menu);
            return this.f1999a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* JADX INFO: renamed from: a */
    public static Drawable[] m2276a(TextView textView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            return textView.getCompoundDrawablesRelative();
        }
        if (i < 17) {
            return textView.getCompoundDrawables();
        }
        boolean z = textView.getLayoutDirection() == 1;
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        if (z) {
            Drawable drawable = compoundDrawables[2];
            Drawable drawable2 = compoundDrawables[0];
            compoundDrawables[0] = drawable;
            compoundDrawables[2] = drawable2;
        }
        return compoundDrawables;
    }

    /* JADX INFO: renamed from: b */
    public static int m2277b(TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    /* JADX INFO: renamed from: c */
    public static int m2278c(TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    /* JADX INFO: renamed from: d */
    private static int m2279d(TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 6;
        }
        return textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL ? 7 : 1;
    }

    /* JADX INFO: renamed from: e */
    private static TextDirectionHeuristic m2280e(TextView textView) {
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        if (Build.VERSION.SDK_INT >= 28 && (textView.getInputType() & 15) == 3) {
            byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
            return (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        boolean z = textView.getLayoutDirection() == 1;
        switch (textView.getTextDirection()) {
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            default:
                if (!z) {
                }
                break;
        }
        return TextDirectionHeuristics.LTR;
    }

    /* JADX INFO: renamed from: f */
    public static C0615c.a m2281f(TextView textView) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new C0615c.a(textView.getTextMetricsParams());
        }
        C0615c.a.C1348a c1348a = new C0615c.a.C1348a(new TextPaint(textView.getPaint()));
        if (Build.VERSION.SDK_INT >= 23) {
            c1348a.m4834b(textView.getBreakStrategy());
            c1348a.m4835c(textView.getHyphenationFrequency());
        }
        if (Build.VERSION.SDK_INT >= 18) {
            c1348a.m4836d(m2280e(textView));
        }
        return c1348a.m4833a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: g */
    public static void m2282g(TextView textView, ColorStateList colorStateList) {
        C0626h.m4855e(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (textView instanceof InterfaceC0311l) {
            ((InterfaceC0311l) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: h */
    public static void m2283h(TextView textView, PorterDuff.Mode mode) {
        C0626h.m4855e(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (textView instanceof InterfaceC0311l) {
            ((InterfaceC0311l) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m2284i(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
            return;
        }
        if (i < 17) {
            textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
            return;
        }
        boolean z = textView.getLayoutDirection() == 1;
        Drawable drawable5 = z ? drawable3 : drawable;
        if (!z) {
            drawable = drawable3;
        }
        textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
    }

    /* JADX INFO: renamed from: j */
    public static void m2285j(TextView textView, int i) {
        C0626h.m4853c(i);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    /* JADX INFO: renamed from: k */
    public static void m2286k(TextView textView, int i) {
        C0626h.m4853c(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* JADX INFO: renamed from: l */
    public static void m2287l(TextView textView, int i) {
        C0626h.m4853c(i);
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    /* JADX INFO: renamed from: m */
    public static void m2288m(TextView textView, C0615c c0615c) {
        if (Build.VERSION.SDK_INT >= 29) {
            textView.setText(c0615c.m4827b());
        } else {
            if (!m2281f(textView).m4828a(c0615c.m4826a())) {
                throw new IllegalArgumentException("Given text can not be applied to TextView.");
            }
            textView.setText(c0615c);
        }
    }

    /* JADX INFO: renamed from: n */
    public static void m2289n(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* JADX INFO: renamed from: o */
    public static void m2290o(TextView textView, C0615c.a aVar) {
        if (Build.VERSION.SDK_INT >= 18) {
            textView.setTextDirection(m2279d(aVar.m4831d()));
        }
        if (Build.VERSION.SDK_INT >= 23) {
            textView.getPaint().set(aVar.m4832e());
            textView.setBreakStrategy(aVar.m4829b());
            textView.setHyphenationFrequency(aVar.m4830c());
        } else {
            float textScaleX = aVar.m4832e().getTextScaleX();
            textView.getPaint().set(aVar.m4832e());
            if (textScaleX == textView.getTextScaleX()) {
                textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            textView.setTextScaleX(textScaleX);
        }
    }

    /* JADX INFO: renamed from: p */
    public static ActionMode.Callback m2291p(TextView textView, ActionMode.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof a)) ? callback : new a(callback, textView);
    }
}
