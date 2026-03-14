package p016c.p066q.p067a.p068a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.core.content.p003c.C0250g;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p041g.p042d.C0590c;

/* JADX INFO: renamed from: c.q.a.a.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0694d {

    /* JADX INFO: renamed from: c.q.a.a.d$a */
    private static class a implements TypeEvaluator<C0590c.b[]> {

        /* JADX INFO: renamed from: a */
        private C0590c.b[] f4098a;

        a() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0590c.b[] evaluate(float f, C0590c.b[] bVarArr, C0590c.b[] bVarArr2) {
            if (!C0590c.m4678b(bVarArr, bVarArr2)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (!C0590c.m4678b(this.f4098a, bVarArr)) {
                this.f4098a = C0590c.m4682f(bVarArr);
            }
            for (int i = 0; i < bVarArr.length; i++) {
                this.f4098a[i].m4691d(bVarArr[i], bVarArr2[i], f);
            }
            return this.f4098a;
        }
    }

    /* JADX INFO: renamed from: a */
    private static Animator m5199a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) {
        return m5200b(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00dd, code lost:
    
        if (r23 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00df, code lost:
    
        if (r13 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e1, code lost:
    
        r1 = new android.animation.Animator[r13.size()];
        r2 = r13.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ef, code lost:
    
        if (r2.hasNext() == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f1, code lost:
    
        r1[r14] = (android.animation.Animator) r2.next();
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fd, code lost:
    
        if (r24 != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ff, code lost:
    
        r23.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0103, code lost:
    
        r23.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0106, code lost:
    
        return r0;
     */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Animator m5200b(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i, float f) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        Animator animatorM5210l = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            int i2 = 0;
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("objectAnimator")) {
                    animatorM5210l = m5212n(context, resources, theme, attributeSet, f, xmlPullParser);
                } else if (name.equals("animator")) {
                    animatorM5210l = m5210l(context, resources, theme, attributeSet, null, f, xmlPullParser);
                } else {
                    if (name.equals("set")) {
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4082h);
                        m5200b(context, resources, theme, xmlPullParser, attributeSet, animatorSet2, C0250g.m1769g(typedArrayM1773k, xmlPullParser, "ordering", 0, 0), f);
                        typedArrayM1773k.recycle();
                        animatorM5210l = animatorSet2;
                    } else {
                        if (!name.equals("propertyValuesHolder")) {
                            throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                        }
                        PropertyValuesHolder[] propertyValuesHolderArrM5214p = m5214p(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                        if (propertyValuesHolderArrM5214p != null && (animatorM5210l instanceof ValueAnimator)) {
                            ((ValueAnimator) animatorM5210l).setValues(propertyValuesHolderArrM5214p);
                        }
                        i2 = 1;
                    }
                    if (animatorSet == null && i2 == 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(animatorM5210l);
                    }
                }
                if (animatorSet == null) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private static Keyframe m5201c(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* JADX INFO: renamed from: d */
    private static void m5202d(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    /* JADX INFO: renamed from: e */
    private static PropertyValuesHolder m5203e(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder propertyValuesHolderOfFloat;
        PropertyValuesHolder propertyValuesHolderOfObject;
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        boolean z = typedValuePeekValue != null;
        int i4 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i3);
        boolean z2 = typedValuePeekValue2 != null;
        int i5 = z2 ? typedValuePeekValue2.type : 0;
        if (i == 4) {
            i = ((z && m5206h(i4)) || (z2 && m5206h(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i != 2) {
            C0695e c0695eM5219a = i == 3 ? C0695e.m5219a() : null;
            if (z3) {
                if (z) {
                    float dimension = i4 == 5 ? typedArray.getDimension(i2, CropImageView.DEFAULT_ASPECT_RATIO) : typedArray.getFloat(i2, CropImageView.DEFAULT_ASPECT_RATIO);
                    if (z2) {
                        propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension, i5 == 5 ? typedArray.getDimension(i3, CropImageView.DEFAULT_ASPECT_RATIO) : typedArray.getFloat(i3, CropImageView.DEFAULT_ASPECT_RATIO));
                    } else {
                        propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
                    }
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, i5 == 5 ? typedArray.getDimension(i3, CropImageView.DEFAULT_ASPECT_RATIO) : typedArray.getFloat(i3, CropImageView.DEFAULT_ASPECT_RATIO));
                }
                propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
            } else if (z) {
                int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, CropImageView.DEFAULT_ASPECT_RATIO) : m5206h(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
                if (z2) {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, CropImageView.DEFAULT_ASPECT_RATIO) : m5206h(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
                } else {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2);
                }
            } else if (z2) {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, CropImageView.DEFAULT_ASPECT_RATIO) : m5206h(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
            }
            if (propertyValuesHolderOfInt == null || c0695eM5219a == null) {
                return propertyValuesHolderOfInt;
            }
            propertyValuesHolderOfInt.setEvaluator(c0695eM5219a);
            return propertyValuesHolderOfInt;
        }
        String string = typedArray.getString(i2);
        String string2 = typedArray.getString(i3);
        C0590c.b[] bVarArrM4680d = C0590c.m4680d(string);
        C0590c.b[] bVarArrM4680d2 = C0590c.m4680d(string2);
        if (bVarArrM4680d == null && bVarArrM4680d2 == null) {
            return null;
        }
        if (bVarArrM4680d == null) {
            if (bVarArrM4680d2 != null) {
                return PropertyValuesHolder.ofObject(str, new a(), bVarArrM4680d2);
            }
            return null;
        }
        a aVar = new a();
        if (bVarArrM4680d2 == null) {
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, bVarArrM4680d);
        } else {
            if (!C0590c.m4678b(bVarArrM4680d, bVarArrM4680d2)) {
                throw new InflateException(" Can't morph from " + string + " to " + string2);
            }
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, bVarArrM4680d, bVarArrM4680d2);
        }
        return propertyValuesHolderOfObject;
    }

    /* JADX INFO: renamed from: f */
    private static int m5204f(TypedArray typedArray, int i, int i2) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        boolean z = typedValuePeekValue != null;
        int i3 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i2);
        boolean z2 = typedValuePeekValue2 != null;
        return ((z && m5206h(i3)) || (z2 && m5206h(z2 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
    }

    /* JADX INFO: renamed from: g */
    private static int m5205g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4084j);
        int i = 0;
        TypedValue typedValueM1774l = C0250g.m1774l(typedArrayM1773k, xmlPullParser, "value", 0);
        if ((typedValueM1774l != null) && m5206h(typedValueM1774l.type)) {
            i = 3;
        }
        typedArrayM1773k.recycle();
        return i;
    }

    /* JADX INFO: renamed from: h */
    private static boolean m5206h(int i) {
        return i >= 28 && i <= 31;
    }

    /* JADX INFO: renamed from: i */
    public static Animator m5207i(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i) : m5208j(context, context.getResources(), context.getTheme(), i);
    }

    /* JADX INFO: renamed from: j */
    public static Animator m5208j(Context context, Resources resources, Resources.Theme theme, int i) {
        return m5209k(context, resources, theme, i, 1.0f);
    }

    /* JADX INFO: renamed from: k */
    public static Animator m5209k(Context context, Resources resources, Resources.Theme theme, int i, float f) {
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    animation = resources.getAnimation(i);
                    return m5199a(context, resources, theme, animation, f);
                } catch (XmlPullParserException e) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                    notFoundException.initCause(e);
                    throw notFoundException;
                }
            } catch (IOException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } finally {
            if (animation != null) {
                animation.close();
            }
        }
    }

    /* JADX INFO: renamed from: l */
    private static ValueAnimator m5210l(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) {
        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4081g);
        TypedArray typedArrayM1773k2 = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4085k);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        m5215q(valueAnimator, typedArrayM1773k, typedArrayM1773k2, f, xmlPullParser);
        int iM1770h = C0250g.m1770h(typedArrayM1773k, xmlPullParser, "interpolator", 0, 0);
        if (iM1770h > 0) {
            valueAnimator.setInterpolator(C0693c.m5198b(context, iM1770h));
        }
        typedArrayM1773k.recycle();
        if (typedArrayM1773k2 != null) {
            typedArrayM1773k2.recycle();
        }
        return valueAnimator;
    }

    /* JADX INFO: renamed from: m */
    private static Keyframe m5211m(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) {
        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4084j);
        float fM1768f = C0250g.m1768f(typedArrayM1773k, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue typedValueM1774l = C0250g.m1774l(typedArrayM1773k, xmlPullParser, "value", 0);
        boolean z = typedValueM1774l != null;
        if (i == 4) {
            i = (z && m5206h(typedValueM1774l.type)) ? 3 : 0;
        }
        Keyframe keyframeOfInt = z ? i != 0 ? (i == 1 || i == 3) ? Keyframe.ofInt(fM1768f, C0250g.m1769g(typedArrayM1773k, xmlPullParser, "value", 0, 0)) : null : Keyframe.ofFloat(fM1768f, C0250g.m1768f(typedArrayM1773k, xmlPullParser, "value", 0, CropImageView.DEFAULT_ASPECT_RATIO)) : i == 0 ? Keyframe.ofFloat(fM1768f) : Keyframe.ofInt(fM1768f);
        int iM1770h = C0250g.m1770h(typedArrayM1773k, xmlPullParser, "interpolator", 1, 0);
        if (iM1770h > 0) {
            keyframeOfInt.setInterpolator(C0693c.m5198b(context, iM1770h));
        }
        typedArrayM1773k.recycle();
        return keyframeOfInt;
    }

    /* JADX INFO: renamed from: n */
    private static ObjectAnimator m5212n(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        m5210l(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* JADX INFO: renamed from: o */
    private static PropertyValuesHolder m5213o(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) throws XmlPullParserException, IOException {
        int size;
        PropertyValuesHolder propertyValuesHolderOfKeyframe = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (i == 4) {
                    i = m5205g(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe keyframeM5211m = m5211m(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i, xmlPullParser);
                if (keyframeM5211m != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(keyframeM5211m);
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            Keyframe keyframe = (Keyframe) arrayList.get(0);
            Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
            float fraction = keyframe2.getFraction();
            if (fraction < 1.0f) {
                if (fraction < CropImageView.DEFAULT_ASPECT_RATIO) {
                    keyframe2.setFraction(1.0f);
                } else {
                    arrayList.add(arrayList.size(), m5201c(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != CropImageView.DEFAULT_ASPECT_RATIO) {
                if (fraction2 < CropImageView.DEFAULT_ASPECT_RATIO) {
                    keyframe.setFraction(CropImageView.DEFAULT_ASPECT_RATIO);
                } else {
                    arrayList.add(0, m5201c(keyframe, CropImageView.DEFAULT_ASPECT_RATIO));
                    size++;
                }
            }
            Keyframe[] keyframeArr = new Keyframe[size];
            arrayList.toArray(keyframeArr);
            for (int i2 = 0; i2 < size; i2++) {
                Keyframe keyframe3 = keyframeArr[i2];
                if (keyframe3.getFraction() < CropImageView.DEFAULT_ASPECT_RATIO) {
                    if (i2 == 0) {
                        keyframe3.setFraction(CropImageView.DEFAULT_ASPECT_RATIO);
                    } else {
                        int i3 = size - 1;
                        if (i2 == i3) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i4 = i2;
                            for (int i5 = i2 + 1; i5 < i3 && keyframeArr[i5].getFraction() < CropImageView.DEFAULT_ASPECT_RATIO; i5++) {
                                i4 = i5;
                            }
                            m5202d(keyframeArr, keyframeArr[i4 + 1].getFraction() - keyframeArr[i2 - 1].getFraction(), i2, i4);
                        }
                    }
                }
            }
            propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (i == 3) {
                propertyValuesHolderOfKeyframe.setEvaluator(C0695e.m5219a());
            }
        }
        return propertyValuesHolderOfKeyframe;
    }

    /* JADX INFO: renamed from: p */
    private static PropertyValuesHolder[] m5214p(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4083i);
                    String strM1771i = C0250g.m1771i(typedArrayM1773k, xmlPullParser, "propertyName", 3);
                    int iM1769g = C0250g.m1769g(typedArrayM1773k, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder propertyValuesHolderM5213o = m5213o(context, resources, theme, xmlPullParser, strM1771i, iM1769g);
                    if (propertyValuesHolderM5213o == null) {
                        propertyValuesHolderM5213o = m5203e(typedArrayM1773k, iM1769g, 0, 1, strM1771i);
                    }
                    if (propertyValuesHolderM5213o != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(propertyValuesHolderM5213o);
                    }
                    typedArrayM1773k.recycle();
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (i = 0; i < size; i++) {
                propertyValuesHolderArr[i] = (PropertyValuesHolder) arrayList.get(i);
            }
        }
        return propertyValuesHolderArr;
    }

    /* JADX INFO: renamed from: q */
    private static void m5215q(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long jM1769g = C0250g.m1769g(typedArray, xmlPullParser, "duration", 1, 300);
        long jM1769g2 = C0250g.m1769g(typedArray, xmlPullParser, "startOffset", 2, 0);
        int iM1769g = C0250g.m1769g(typedArray, xmlPullParser, "valueType", 7, 4);
        if (C0250g.m1772j(xmlPullParser, "valueFrom") && C0250g.m1772j(xmlPullParser, "valueTo")) {
            if (iM1769g == 4) {
                iM1769g = m5204f(typedArray, 5, 6);
            }
            PropertyValuesHolder propertyValuesHolderM5203e = m5203e(typedArray, iM1769g, 5, 6, BuildConfig.FLAVOR);
            if (propertyValuesHolderM5203e != null) {
                valueAnimator.setValues(propertyValuesHolderM5203e);
            }
        }
        valueAnimator.setDuration(jM1769g);
        valueAnimator.setStartDelay(jM1769g2);
        valueAnimator.setRepeatCount(C0250g.m1769g(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(C0250g.m1769g(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            m5216r(valueAnimator, typedArray2, iM1769g, f, xmlPullParser);
        }
    }

    /* JADX INFO: renamed from: r */
    private static void m5216r(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String strM1771i = C0250g.m1771i(typedArray, xmlPullParser, "pathData", 1);
        if (strM1771i == null) {
            objectAnimator.setPropertyName(C0250g.m1771i(typedArray, xmlPullParser, "propertyName", 0));
            return;
        }
        String strM1771i2 = C0250g.m1771i(typedArray, xmlPullParser, "propertyXName", 2);
        String strM1771i3 = C0250g.m1771i(typedArray, xmlPullParser, "propertyYName", 3);
        if (i != 2) {
        }
        if (strM1771i2 != null || strM1771i3 != null) {
            m5217s(C0590c.m4681e(strM1771i), objectAnimator, f * 0.5f, strM1771i2, strM1771i3);
            return;
        }
        throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
    }

    /* JADX INFO: renamed from: s */
    private static void m5217s(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        float f2 = CropImageView.DEFAULT_ASPECT_RATIO;
        arrayList.add(Float.valueOf(CropImageView.DEFAULT_ASPECT_RATIO));
        float length = CropImageView.DEFAULT_ASPECT_RATIO;
        do {
            length += pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int iMin = Math.min(100, ((int) (length / f)) + 1);
        float[] fArr = new float[iMin];
        float[] fArr2 = new float[iMin];
        float[] fArr3 = new float[2];
        float f3 = length / (iMin - 1);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= iMin) {
                break;
            }
            pathMeasure2.getPosTan(f2 - ((Float) arrayList.get(i2)).floatValue(), fArr3, null);
            fArr[i] = fArr3[0];
            fArr2[i] = fArr3[1];
            f2 += f3;
            int i3 = i2 + 1;
            if (i3 < arrayList.size() && f2 > ((Float) arrayList.get(i3)).floatValue()) {
                pathMeasure2.nextContour();
                i2 = i3;
            }
            i++;
        }
        PropertyValuesHolder propertyValuesHolderOfFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        PropertyValuesHolder propertyValuesHolderOfFloat2 = str2 != null ? PropertyValuesHolder.ofFloat(str2, fArr2) : null;
        if (propertyValuesHolderOfFloat == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat2);
        } else if (propertyValuesHolderOfFloat2 == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat);
        } else {
            objectAnimator.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
        }
    }
}
