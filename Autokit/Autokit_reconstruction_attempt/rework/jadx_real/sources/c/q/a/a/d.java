package c.q.a.a;

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
import c.g.d.c;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class d {

    private static class a implements TypeEvaluator<c.b[]> {
        private c.b[] a;

        a() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c.b[] evaluate(float f, c.b[] bVarArr, c.b[] bVarArr2) {
            if (!c.g.d.c.b(bVarArr, bVarArr2)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (!c.g.d.c.b(this.a, bVarArr)) {
                this.a = c.g.d.c.f(bVarArr);
            }
            for (int i = 0; i < bVarArr.length; i++) {
                this.a[i].d(bVarArr[i], bVarArr2[i], f);
            }
            return this.a;
        }
    }

    private static Animator a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) {
        return b(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Animator b(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i, float f) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        Animator animatorL = null;
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
                    animatorL = n(context, resources, theme, attributeSet, f, xmlPullParser);
                } else if (name.equals("animator")) {
                    animatorL = l(context, resources, theme, attributeSet, null, f, xmlPullParser);
                } else {
                    if (name.equals("set")) {
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.h);
                        b(context, resources, theme, xmlPullParser, attributeSet, animatorSet2, androidx.core.content.c.g.g(typedArrayK, xmlPullParser, "ordering", 0, 0), f);
                        typedArrayK.recycle();
                        animatorL = animatorSet2;
                    } else {
                        if (!name.equals("propertyValuesHolder")) {
                            throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                        }
                        PropertyValuesHolder[] propertyValuesHolderArrP = p(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                        if (propertyValuesHolderArrP != null && (animatorL instanceof ValueAnimator)) {
                            ((ValueAnimator) animatorL).setValues(propertyValuesHolderArrP);
                        }
                        i2 = 1;
                    }
                    if (animatorSet == null && i2 == 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(animatorL);
                    }
                }
                if (animatorSet == null) {
                }
            }
        }
    }

    private static Keyframe c(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    private static void d(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    private static PropertyValuesHolder e(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder propertyValuesHolderOfFloat;
        PropertyValuesHolder propertyValuesHolderOfObject;
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        boolean z = typedValuePeekValue != null;
        int i4 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i3);
        boolean z2 = typedValuePeekValue2 != null;
        int i5 = z2 ? typedValuePeekValue2.type : 0;
        if (i == 4) {
            i = ((z && h(i4)) || (z2 && h(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i != 2) {
            e eVarA = i == 3 ? e.a() : null;
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
                int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, CropImageView.DEFAULT_ASPECT_RATIO) : h(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
                if (z2) {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, CropImageView.DEFAULT_ASPECT_RATIO) : h(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
                } else {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2);
                }
            } else if (z2) {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, CropImageView.DEFAULT_ASPECT_RATIO) : h(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
            }
            if (propertyValuesHolderOfInt == null || eVarA == null) {
                return propertyValuesHolderOfInt;
            }
            propertyValuesHolderOfInt.setEvaluator(eVarA);
            return propertyValuesHolderOfInt;
        }
        String string = typedArray.getString(i2);
        String string2 = typedArray.getString(i3);
        c.b[] bVarArrD = c.g.d.c.d(string);
        c.b[] bVarArrD2 = c.g.d.c.d(string2);
        if (bVarArrD == null && bVarArrD2 == null) {
            return null;
        }
        if (bVarArrD == null) {
            if (bVarArrD2 != null) {
                return PropertyValuesHolder.ofObject(str, new a(), bVarArrD2);
            }
            return null;
        }
        a aVar = new a();
        if (bVarArrD2 == null) {
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, bVarArrD);
        } else {
            if (!c.g.d.c.b(bVarArrD, bVarArrD2)) {
                throw new InflateException(" Can't morph from " + string + " to " + string2);
            }
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, bVarArrD, bVarArrD2);
        }
        return propertyValuesHolderOfObject;
    }

    private static int f(TypedArray typedArray, int i, int i2) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        boolean z = typedValuePeekValue != null;
        int i3 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i2);
        boolean z2 = typedValuePeekValue2 != null;
        return ((z && h(i3)) || (z2 && h(z2 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
    }

    private static int g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.j);
        int i = 0;
        TypedValue typedValueL = androidx.core.content.c.g.l(typedArrayK, xmlPullParser, "value", 0);
        if ((typedValueL != null) && h(typedValueL.type)) {
            i = 3;
        }
        typedArrayK.recycle();
        return i;
    }

    private static boolean h(int i) {
        return i >= 28 && i <= 31;
    }

    public static Animator i(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i) : j(context, context.getResources(), context.getTheme(), i);
    }

    public static Animator j(Context context, Resources resources, Resources.Theme theme, int i) {
        return k(context, resources, theme, i, 1.0f);
    }

    public static Animator k(Context context, Resources resources, Resources.Theme theme, int i, float f) {
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    animation = resources.getAnimation(i);
                    return a(context, resources, theme, animation, f);
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

    private static ValueAnimator l(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) {
        TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.g);
        TypedArray typedArrayK2 = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.k);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        q(valueAnimator, typedArrayK, typedArrayK2, f, xmlPullParser);
        int iH = androidx.core.content.c.g.h(typedArrayK, xmlPullParser, "interpolator", 0, 0);
        if (iH > 0) {
            valueAnimator.setInterpolator(c.b(context, iH));
        }
        typedArrayK.recycle();
        if (typedArrayK2 != null) {
            typedArrayK2.recycle();
        }
        return valueAnimator;
    }

    private static Keyframe m(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) {
        TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.j);
        float f = androidx.core.content.c.g.f(typedArrayK, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue typedValueL = androidx.core.content.c.g.l(typedArrayK, xmlPullParser, "value", 0);
        boolean z = typedValueL != null;
        if (i == 4) {
            i = (z && h(typedValueL.type)) ? 3 : 0;
        }
        Keyframe keyframeOfInt = z ? i != 0 ? (i == 1 || i == 3) ? Keyframe.ofInt(f, androidx.core.content.c.g.g(typedArrayK, xmlPullParser, "value", 0, 0)) : null : Keyframe.ofFloat(f, androidx.core.content.c.g.f(typedArrayK, xmlPullParser, "value", 0, CropImageView.DEFAULT_ASPECT_RATIO)) : i == 0 ? Keyframe.ofFloat(f) : Keyframe.ofInt(f);
        int iH = androidx.core.content.c.g.h(typedArrayK, xmlPullParser, "interpolator", 1, 0);
        if (iH > 0) {
            keyframeOfInt.setInterpolator(c.b(context, iH));
        }
        typedArrayK.recycle();
        return keyframeOfInt;
    }

    private static ObjectAnimator n(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        l(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    private static PropertyValuesHolder o(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) throws XmlPullParserException, IOException {
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
                    i = g(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe keyframeM = m(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i, xmlPullParser);
                if (keyframeM != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(keyframeM);
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
                    arrayList.add(arrayList.size(), c(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != CropImageView.DEFAULT_ASPECT_RATIO) {
                if (fraction2 < CropImageView.DEFAULT_ASPECT_RATIO) {
                    keyframe.setFraction(CropImageView.DEFAULT_ASPECT_RATIO);
                } else {
                    arrayList.add(0, c(keyframe, CropImageView.DEFAULT_ASPECT_RATIO));
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
                            d(keyframeArr, keyframeArr[i4 + 1].getFraction() - keyframeArr[i2 - 1].getFraction(), i2, i4);
                        }
                    }
                }
            }
            propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (i == 3) {
                propertyValuesHolderOfKeyframe.setEvaluator(e.a());
            }
        }
        return propertyValuesHolderOfKeyframe;
    }

    private static PropertyValuesHolder[] p(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
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
                    TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, c.q.a.a.a.i);
                    String strI = androidx.core.content.c.g.i(typedArrayK, xmlPullParser, "propertyName", 3);
                    int iG = androidx.core.content.c.g.g(typedArrayK, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder propertyValuesHolderO = o(context, resources, theme, xmlPullParser, strI, iG);
                    if (propertyValuesHolderO == null) {
                        propertyValuesHolderO = e(typedArrayK, iG, 0, 1, strI);
                    }
                    if (propertyValuesHolderO != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(propertyValuesHolderO);
                    }
                    typedArrayK.recycle();
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

    private static void q(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long jG = androidx.core.content.c.g.g(typedArray, xmlPullParser, "duration", 1, 300);
        long jG2 = androidx.core.content.c.g.g(typedArray, xmlPullParser, "startOffset", 2, 0);
        int iG = androidx.core.content.c.g.g(typedArray, xmlPullParser, "valueType", 7, 4);
        if (androidx.core.content.c.g.j(xmlPullParser, "valueFrom") && androidx.core.content.c.g.j(xmlPullParser, "valueTo")) {
            if (iG == 4) {
                iG = f(typedArray, 5, 6);
            }
            PropertyValuesHolder propertyValuesHolderE = e(typedArray, iG, 5, 6, BuildConfig.FLAVOR);
            if (propertyValuesHolderE != null) {
                valueAnimator.setValues(propertyValuesHolderE);
            }
        }
        valueAnimator.setDuration(jG);
        valueAnimator.setStartDelay(jG2);
        valueAnimator.setRepeatCount(androidx.core.content.c.g.g(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(androidx.core.content.c.g.g(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            r(valueAnimator, typedArray2, iG, f, xmlPullParser);
        }
    }

    private static void r(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String strI = androidx.core.content.c.g.i(typedArray, xmlPullParser, "pathData", 1);
        if (strI == null) {
            objectAnimator.setPropertyName(androidx.core.content.c.g.i(typedArray, xmlPullParser, "propertyName", 0));
            return;
        }
        String strI2 = androidx.core.content.c.g.i(typedArray, xmlPullParser, "propertyXName", 2);
        String strI3 = androidx.core.content.c.g.i(typedArray, xmlPullParser, "propertyYName", 3);
        if (i != 2) {
        }
        if (strI2 != null || strI3 != null) {
            s(c.g.d.c.e(strI), objectAnimator, f * 0.5f, strI2, strI3);
            return;
        }
        throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
    }

    private static void s(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
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
