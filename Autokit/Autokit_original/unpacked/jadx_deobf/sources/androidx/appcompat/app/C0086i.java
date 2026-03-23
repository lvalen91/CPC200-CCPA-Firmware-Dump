package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.C0160d;
import androidx.appcompat.widget.C0164f;
import androidx.appcompat.widget.C0166g;
import androidx.appcompat.widget.C0172j;
import androidx.appcompat.widget.C0176l;
import androidx.appcompat.widget.C0180n;
import androidx.appcompat.widget.C0186q;
import androidx.appcompat.widget.C0188r;
import androidx.appcompat.widget.C0189r0;
import androidx.appcompat.widget.C0194u;
import androidx.appcompat.widget.C0200x;
import androidx.appcompat.widget.C0204z;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.BuildConfig;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p016c.p017a.C0502j;
import p016c.p017a.p024o.C0514d;
import p016c.p032d.C0540g;

/* JADX INFO: renamed from: androidx.appcompat.app.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0086i {

    /* JADX INFO: renamed from: b */
    private static final Class<?>[] f438b = {Context.class, AttributeSet.class};

    /* JADX INFO: renamed from: c */
    private static final int[] f439c = {R.attr.onClick};

    /* JADX INFO: renamed from: d */
    private static final String[] f440d = {"android.widget.", "android.view.", "android.webkit."};

    /* JADX INFO: renamed from: e */
    private static final C0540g<String, Constructor<? extends View>> f441e = new C0540g<>();

    /* JADX INFO: renamed from: a */
    private final Object[] f442a = new Object[2];

    /* JADX INFO: renamed from: androidx.appcompat.app.i$a */
    private static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b */
        private final View f443b;

        /* JADX INFO: renamed from: c */
        private final String f444c;

        /* JADX INFO: renamed from: d */
        private Method f445d;

        /* JADX INFO: renamed from: e */
        private Context f446e;

        public a(View view, String str) {
            this.f443b = view;
            this.f444c = str;
        }

        /* JADX INFO: renamed from: a */
        private void m580a(Context context) {
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f444c, View.class)) != null) {
                        this.f445d = method;
                        this.f446e = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.f443b.getId();
            if (id == -1) {
                str = BuildConfig.FLAVOR;
            } else {
                str = " with id '" + this.f443b.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f444c + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f443b.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f445d == null) {
                m580a(this.f443b.getContext());
            }
            try {
                this.f445d.invoke(this.f446e, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    private void m559a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || C0292v.m2064O(view)) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f439c);
                String string = typedArrayObtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new a(view, string));
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    /* JADX INFO: renamed from: r */
    private View m560r(Context context, String str, String str2) {
        String str3;
        Constructor<? extends View> constructor = f441e.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f438b);
            f441e.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.f442a);
    }

    /* JADX INFO: renamed from: s */
    private View m561s(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.f442a[0] = context;
            this.f442a[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return m560r(context, str, null);
            }
            for (int i = 0; i < f440d.length; i++) {
                View viewM560r = m560r(context, str, f440d[i]);
                if (viewM560r != null) {
                    return viewM560r;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr = this.f442a;
            objArr[0] = null;
            objArr[1] = null;
        }
    }

    /* JADX INFO: renamed from: t */
    private static Context m562t(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0502j.View, 0, 0);
        int resourceId = z ? typedArrayObtainStyledAttributes.getResourceId(C0502j.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0) {
            resourceId = typedArrayObtainStyledAttributes.getResourceId(C0502j.View_theme, 0);
        }
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != 0 ? ((context instanceof C0514d) && ((C0514d) context).m4133c() == resourceId) ? context : new C0514d(context, resourceId) : context;
    }

    /* JADX INFO: renamed from: u */
    private void m563u(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    /* JADX INFO: renamed from: b */
    protected C0160d mo564b(Context context, AttributeSet attributeSet) {
        return new C0160d(context, attributeSet);
    }

    /* JADX INFO: renamed from: c */
    protected AppCompatButton mo565c(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    /* JADX INFO: renamed from: d */
    protected C0164f mo566d(Context context, AttributeSet attributeSet) {
        return new C0164f(context, attributeSet);
    }

    /* JADX INFO: renamed from: e */
    protected C0166g m567e(Context context, AttributeSet attributeSet) {
        return new C0166g(context, attributeSet);
    }

    /* JADX INFO: renamed from: f */
    protected C0172j m568f(Context context, AttributeSet attributeSet) {
        return new C0172j(context, attributeSet);
    }

    /* JADX INFO: renamed from: g */
    protected C0176l m569g(Context context, AttributeSet attributeSet) {
        return new C0176l(context, attributeSet);
    }

    /* JADX INFO: renamed from: h */
    protected AppCompatImageView m570h(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    /* JADX INFO: renamed from: i */
    protected C0180n m571i(Context context, AttributeSet attributeSet) {
        return new C0180n(context, attributeSet);
    }

    /* JADX INFO: renamed from: j */
    protected C0186q mo572j(Context context, AttributeSet attributeSet) {
        return new C0186q(context, attributeSet);
    }

    /* JADX INFO: renamed from: k */
    protected C0188r m573k(Context context, AttributeSet attributeSet) {
        return new C0188r(context, attributeSet);
    }

    /* JADX INFO: renamed from: l */
    protected AppCompatSeekBar m574l(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    /* JADX INFO: renamed from: m */
    protected C0194u m575m(Context context, AttributeSet attributeSet) {
        return new C0194u(context, attributeSet);
    }

    /* JADX INFO: renamed from: n */
    protected C0200x mo576n(Context context, AttributeSet attributeSet) {
        return new C0200x(context, attributeSet);
    }

    /* JADX INFO: renamed from: o */
    protected C0204z m577o(Context context, AttributeSet attributeSet) {
        return new C0204z(context, attributeSet);
    }

    /* JADX INFO: renamed from: p */
    protected View m578p(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX INFO: renamed from: q */
    final View m579q(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        Context context2;
        View viewMo576n;
        context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = m562t(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = C0189r0.m1286b(context2);
        }
        switch (str) {
            case "TextView":
                viewMo576n = mo576n(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "ImageView":
                viewMo576n = m570h(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "Button":
                viewMo576n = mo565c(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "EditText":
                viewMo576n = m568f(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "Spinner":
                viewMo576n = m575m(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "ImageButton":
                viewMo576n = m569g(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "CheckBox":
                viewMo576n = mo566d(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "RadioButton":
                viewMo576n = mo572j(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "CheckedTextView":
                viewMo576n = m567e(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "AutoCompleteTextView":
                viewMo576n = mo564b(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "MultiAutoCompleteTextView":
                viewMo576n = m571i(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "RatingBar":
                viewMo576n = m573k(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "SeekBar":
                viewMo576n = m574l(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            case "ToggleButton":
                viewMo576n = m577o(context2, attributeSet);
                m563u(viewMo576n, str);
                break;
            default:
                viewMo576n = m578p(context2, str, attributeSet);
                break;
        }
        if (viewMo576n == null && context != context2) {
            viewMo576n = m561s(context2, str, attributeSet);
        }
        if (viewMo576n != null) {
            m559a(viewMo576n, attributeSet);
        }
        return viewMo576n;
    }
}
