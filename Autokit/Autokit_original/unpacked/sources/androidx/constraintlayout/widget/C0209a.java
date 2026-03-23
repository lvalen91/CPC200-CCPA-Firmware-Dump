package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: renamed from: androidx.constraintlayout.widget.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0209a {

    /* JADX INFO: renamed from: a */
    String f1499a;

    /* JADX INFO: renamed from: b */
    private b f1500b;

    /* JADX INFO: renamed from: c */
    private int f1501c;

    /* JADX INFO: renamed from: d */
    private float f1502d;

    /* JADX INFO: renamed from: e */
    private String f1503e;

    /* JADX INFO: renamed from: f */
    boolean f1504f;

    /* JADX INFO: renamed from: g */
    private int f1505g;

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.a$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f1506a;

        static {
            int[] iArr = new int[b.values().length];
            f1506a = iArr;
            try {
                iArr[b.COLOR_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1506a[b.COLOR_DRAWABLE_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1506a[b.INT_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1506a[b.FLOAT_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1506a[b.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1506a[b.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1506a[b.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.a$b */
    public enum b {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE
    }

    public C0209a(String str, b bVar, Object obj) {
        this.f1499a = str;
        this.f1500b = bVar;
        m1471d(obj);
    }

    /* JADX INFO: renamed from: a */
    public static HashMap<String, C0209a> m1468a(HashMap<String, C0209a> map, View view) {
        HashMap<String, C0209a> map2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            C0209a c0209a = map.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    map2.put(str, new C0209a(c0209a, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    map2.put(str, new C0209a(c0209a, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
        return map2;
    }

    /* JADX INFO: renamed from: b */
    public static void m1469b(Context context, XmlPullParser xmlPullParser, HashMap<String, C0209a> map) {
        b bVar;
        Object string;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0217i.CustomAttribute);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string2 = null;
        Object objValueOf = null;
        b bVar2 = null;
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == C0217i.CustomAttribute_attributeName) {
                string2 = typedArrayObtainStyledAttributes.getString(index);
                if (string2 != null && string2.length() > 0) {
                    string2 = Character.toUpperCase(string2.charAt(0)) + string2.substring(1);
                }
            } else if (index == C0217i.CustomAttribute_customBoolean) {
                objValueOf = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                bVar2 = b.BOOLEAN_TYPE;
            } else {
                if (index == C0217i.CustomAttribute_customColorValue) {
                    bVar = b.COLOR_TYPE;
                    string = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == C0217i.CustomAttribute_customColorDrawableValue) {
                    bVar = b.COLOR_DRAWABLE_TYPE;
                    string = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == C0217i.CustomAttribute_customPixelDimension) {
                    bVar = b.DIMENSION_TYPE;
                    string = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, CropImageView.DEFAULT_ASPECT_RATIO), context.getResources().getDisplayMetrics()));
                } else if (index == C0217i.CustomAttribute_customDimension) {
                    bVar = b.DIMENSION_TYPE;
                    string = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, CropImageView.DEFAULT_ASPECT_RATIO));
                } else if (index == C0217i.CustomAttribute_customFloatValue) {
                    bVar = b.FLOAT_TYPE;
                    string = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == C0217i.CustomAttribute_customIntegerValue) {
                    bVar = b.INT_TYPE;
                    string = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                } else if (index == C0217i.CustomAttribute_customStringValue) {
                    bVar = b.STRING_TYPE;
                    string = typedArrayObtainStyledAttributes.getString(index);
                }
                Object obj = string;
                bVar2 = bVar;
                objValueOf = obj;
            }
        }
        if (string2 != null && objValueOf != null) {
            map.put(string2, new C0209a(string2, bVar2, objValueOf));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: renamed from: c */
    public static void m1470c(View view, HashMap<String, C0209a> map) {
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            C0209a c0209a = map.get(str);
            String str2 = "set" + str;
            try {
                switch (a.f1506a[c0209a.f1500b.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(c0209a.f1505g));
                        break;
                    case 2:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(c0209a.f1505g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 3:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(c0209a.f1501c));
                        break;
                    case 4:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(c0209a.f1502d));
                        break;
                    case 5:
                        cls.getMethod(str2, CharSequence.class).invoke(view, c0209a.f1503e);
                        break;
                    case 6:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(c0209a.f1504f));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(c0209a.f1502d));
                        break;
                }
            } catch (IllegalAccessException e) {
                String str3 = " Custom Attribute \"" + str + "\" not found on " + cls.getName();
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.getMessage();
                String str4 = " Custom Attribute \"" + str + "\" not found on " + cls.getName();
                String str5 = cls.getName() + " must have a method " + str2;
            } catch (InvocationTargetException e3) {
                String str6 = " Custom Attribute \"" + str + "\" not found on " + cls.getName();
                e3.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public void m1471d(Object obj) {
        switch (a.f1506a[this.f1500b.ordinal()]) {
            case 1:
            case 2:
                this.f1505g = ((Integer) obj).intValue();
                break;
            case 3:
                this.f1501c = ((Integer) obj).intValue();
                break;
            case 4:
                this.f1502d = ((Float) obj).floatValue();
                break;
            case 5:
                this.f1503e = (String) obj;
                break;
            case 6:
                this.f1504f = ((Boolean) obj).booleanValue();
                break;
            case 7:
                this.f1502d = ((Float) obj).floatValue();
                break;
        }
    }

    public C0209a(C0209a c0209a, Object obj) {
        this.f1499a = c0209a.f1499a;
        this.f1500b = c0209a.f1500b;
        m1471d(obj);
    }
}
