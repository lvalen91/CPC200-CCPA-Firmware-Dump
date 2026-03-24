package c.g.i;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class c implements Spannable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Spannable f1222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f1223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PrecomputedText f1224d;

    public a a() {
        return this.f1223c;
    }

    public PrecomputedText b() {
        Spannable spannable = this.f1222b;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f1222b.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f1222b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f1222b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f1222b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.f1224d.getSpans(i, i2, cls) : (T[]) this.f1222b.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f1222b.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f1222b.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1224d.removeSpan(obj);
        } else {
            this.f1222b.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1224d.setSpan(obj, i, i2, i3);
        } else {
            this.f1222b.setSpan(obj, i, i2, i3);
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f1222b.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f1222b.toString();
    }

    public static final class a {
        private final TextPaint a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextDirectionHeuristic f1225b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f1226c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f1227d;

        /* JADX INFO: renamed from: c.g.i.c$a$a, reason: collision with other inner class name */
        public static class C0054a {
            private final TextPaint a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private TextDirectionHeuristic f1228b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f1229c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f1230d;

            public C0054a(TextPaint textPaint) {
                this.a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f1229c = 1;
                    this.f1230d = 1;
                } else {
                    this.f1230d = 0;
                    this.f1229c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f1228b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f1228b = null;
                }
            }

            public a a() {
                return new a(this.a, this.f1228b, this.f1229c, this.f1230d);
            }

            public C0054a b(int i) {
                this.f1229c = i;
                return this;
            }

            public C0054a c(int i) {
                this.f1230d = i;
                return this;
            }

            public C0054a d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f1228b = textDirectionHeuristic;
                return this;
            }
        }

        @SuppressLint({"NewApi"})
        a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.a = textPaint;
            this.f1225b = textDirectionHeuristic;
            this.f1226c = i;
            this.f1227d = i2;
        }

        public boolean a(a aVar) {
            if ((Build.VERSION.SDK_INT >= 23 && (this.f1226c != aVar.b() || this.f1227d != aVar.c())) || this.a.getTextSize() != aVar.e().getTextSize() || this.a.getTextScaleX() != aVar.e().getTextScaleX() || this.a.getTextSkewX() != aVar.e().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.a.getLetterSpacing() != aVar.e().getLetterSpacing() || !TextUtils.equals(this.a.getFontFeatureSettings(), aVar.e().getFontFeatureSettings()))) || this.a.getFlags() != aVar.e().getFlags()) {
                return false;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                if (!this.a.getTextLocales().equals(aVar.e().getTextLocales())) {
                    return false;
                }
            } else if (i >= 17 && !this.a.getTextLocale().equals(aVar.e().getTextLocale())) {
                return false;
            }
            return this.a.getTypeface() == null ? aVar.e().getTypeface() == null : this.a.getTypeface().equals(aVar.e().getTypeface());
        }

        public int b() {
            return this.f1226c;
        }

        public int c() {
            return this.f1227d;
        }

        public TextDirectionHeuristic d() {
            return this.f1225b;
        }

        public TextPaint e() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (a(aVar)) {
                return Build.VERSION.SDK_INT < 18 || this.f1225b == aVar.d();
            }
            return false;
        }

        public int hashCode() {
            int i = Build.VERSION.SDK_INT;
            return i >= 24 ? c.g.j.c.b(Float.valueOf(this.a.getTextSize()), Float.valueOf(this.a.getTextScaleX()), Float.valueOf(this.a.getTextSkewX()), Float.valueOf(this.a.getLetterSpacing()), Integer.valueOf(this.a.getFlags()), this.a.getTextLocales(), this.a.getTypeface(), Boolean.valueOf(this.a.isElegantTextHeight()), this.f1225b, Integer.valueOf(this.f1226c), Integer.valueOf(this.f1227d)) : i >= 21 ? c.g.j.c.b(Float.valueOf(this.a.getTextSize()), Float.valueOf(this.a.getTextScaleX()), Float.valueOf(this.a.getTextSkewX()), Float.valueOf(this.a.getLetterSpacing()), Integer.valueOf(this.a.getFlags()), this.a.getTextLocale(), this.a.getTypeface(), Boolean.valueOf(this.a.isElegantTextHeight()), this.f1225b, Integer.valueOf(this.f1226c), Integer.valueOf(this.f1227d)) : i >= 18 ? c.g.j.c.b(Float.valueOf(this.a.getTextSize()), Float.valueOf(this.a.getTextScaleX()), Float.valueOf(this.a.getTextSkewX()), Integer.valueOf(this.a.getFlags()), this.a.getTextLocale(), this.a.getTypeface(), this.f1225b, Integer.valueOf(this.f1226c), Integer.valueOf(this.f1227d)) : i >= 17 ? c.g.j.c.b(Float.valueOf(this.a.getTextSize()), Float.valueOf(this.a.getTextScaleX()), Float.valueOf(this.a.getTextSkewX()), Integer.valueOf(this.a.getFlags()), this.a.getTextLocale(), this.a.getTypeface(), this.f1225b, Integer.valueOf(this.f1226c), Integer.valueOf(this.f1227d)) : c.g.j.c.b(Float.valueOf(this.a.getTextSize()), Float.valueOf(this.a.getTextScaleX()), Float.valueOf(this.a.getTextSkewX()), Integer.valueOf(this.a.getFlags()), this.a.getTypeface(), this.f1225b, Integer.valueOf(this.f1226c), Integer.valueOf(this.f1227d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.a.getTextSize());
            sb.append(", textScaleX=" + this.a.getTextScaleX());
            sb.append(", textSkewX=" + this.a.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.a.isElegantTextHeight());
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                sb.append(", textLocale=" + this.a.getTextLocales());
            } else if (i >= 17) {
                sb.append(", textLocale=" + this.a.getTextLocale());
            }
            sb.append(", typeface=" + this.a.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f1225b);
            sb.append(", breakStrategy=" + this.f1226c);
            sb.append(", hyphenationFrequency=" + this.f1227d);
            sb.append("}");
            return sb.toString();
        }

        public a(PrecomputedText.Params params) {
            this.a = params.getTextPaint();
            this.f1225b = params.getTextDirection();
            this.f1226c = params.getBreakStrategy();
            this.f1227d = params.getHyphenationFrequency();
            int i = Build.VERSION.SDK_INT;
        }
    }
}
