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
import androidx.appcompat.widget.q;
import androidx.appcompat.widget.r;
import androidx.appcompat.widget.r0;
import androidx.appcompat.widget.u;
import androidx.appcompat.widget.x;
import androidx.appcompat.widget.z;
import androidx.core.view.v;
import com.yalantis.ucrop.BuildConfig;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class<?>[] f146b = {Context.class, AttributeSet.class};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f147c = {R.attr.onClick};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f148d = {"android.widget.", "android.view.", "android.webkit."};
    private static final c.d.g<String, Constructor<? extends View>> e = new c.d.g<>();
    private final Object[] a = new Object[2];

    private static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f149b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f150c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Method f151d;
        private Context e;

        public a(View view, String str) {
            this.f149b = view;
            this.f150c = str;
        }

        private void a(Context context) {
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f150c, View.class)) != null) {
                        this.f151d = method;
                        this.e = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.f149b.getId();
            if (id == -1) {
                str = BuildConfig.FLAVOR;
            } else {
                str = " with id '" + this.f149b.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f150c + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f149b.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f151d == null) {
                a(this.f149b.getContext());
            }
            try {
                this.f151d.invoke(this.e, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    private void a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || v.O(view)) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f147c);
                String string = typedArrayObtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new a(view, string));
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    private View r(Context context, String str, String str2) {
        String str3;
        Constructor<? extends View> constructor = e.get(str);
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
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f146b);
            e.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.a);
    }

    private View s(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.a[0] = context;
            this.a[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return r(context, str, null);
            }
            for (int i = 0; i < f148d.length; i++) {
                View viewR = r(context, str, f148d[i]);
                if (viewR != null) {
                    return viewR;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr = this.a;
            objArr[0] = null;
            objArr[1] = null;
        }
    }

    private static Context t(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.j.View, 0, 0);
        int resourceId = z ? typedArrayObtainStyledAttributes.getResourceId(c.a.j.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0) {
            resourceId = typedArrayObtainStyledAttributes.getResourceId(c.a.j.View_theme, 0);
        }
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != 0 ? ((context instanceof c.a.o.d) && ((c.a.o.d) context).c() == resourceId) ? context : new c.a.o.d(context, resourceId) : context;
    }

    private void u(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    protected androidx.appcompat.widget.d b(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.d(context, attributeSet);
    }

    protected AppCompatButton c(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    protected androidx.appcompat.widget.f d(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.f(context, attributeSet);
    }

    protected androidx.appcompat.widget.g e(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.g(context, attributeSet);
    }

    protected androidx.appcompat.widget.j f(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.j(context, attributeSet);
    }

    protected androidx.appcompat.widget.l g(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.l(context, attributeSet);
    }

    protected AppCompatImageView h(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    protected androidx.appcompat.widget.n i(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.n(context, attributeSet);
    }

    protected q j(Context context, AttributeSet attributeSet) {
        return new q(context, attributeSet);
    }

    protected r k(Context context, AttributeSet attributeSet) {
        return new r(context, attributeSet);
    }

    protected AppCompatSeekBar l(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    protected u m(Context context, AttributeSet attributeSet) {
        return new u(context, attributeSet);
    }

    protected x n(Context context, AttributeSet attributeSet) {
        return new x(context, attributeSet);
    }

    protected z o(Context context, AttributeSet attributeSet) {
        return new z(context, attributeSet);
    }

    protected View p(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    final View q(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        Context context2;
        View viewN;
        context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = t(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = r0.b(context2);
        }
        switch (str) {
            case "TextView":
                viewN = n(context2, attributeSet);
                u(viewN, str);
                break;
            case "ImageView":
                viewN = h(context2, attributeSet);
                u(viewN, str);
                break;
            case "Button":
                viewN = c(context2, attributeSet);
                u(viewN, str);
                break;
            case "EditText":
                viewN = f(context2, attributeSet);
                u(viewN, str);
                break;
            case "Spinner":
                viewN = m(context2, attributeSet);
                u(viewN, str);
                break;
            case "ImageButton":
                viewN = g(context2, attributeSet);
                u(viewN, str);
                break;
            case "CheckBox":
                viewN = d(context2, attributeSet);
                u(viewN, str);
                break;
            case "RadioButton":
                viewN = j(context2, attributeSet);
                u(viewN, str);
                break;
            case "CheckedTextView":
                viewN = e(context2, attributeSet);
                u(viewN, str);
                break;
            case "AutoCompleteTextView":
                viewN = b(context2, attributeSet);
                u(viewN, str);
                break;
            case "MultiAutoCompleteTextView":
                viewN = i(context2, attributeSet);
                u(viewN, str);
                break;
            case "RatingBar":
                viewN = k(context2, attributeSet);
                u(viewN, str);
                break;
            case "SeekBar":
                viewN = l(context2, attributeSet);
                u(viewN, str);
                break;
            case "ToggleButton":
                viewN = o(context2, attributeSet);
                u(viewN, str);
                break;
            default:
                viewN = p(context2, str, attributeSet);
                break;
        }
        if (viewN == null && context != context2) {
            viewN = s(context2, str, attributeSet);
        }
        if (viewN != null) {
            a(viewN, attributeSet);
        }
        return viewN;
    }
}
