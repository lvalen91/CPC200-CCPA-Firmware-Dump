package p016c.p041g.p048i;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import p016c.p041g.p049j.C0621c;

/* JADX INFO: renamed from: c.g.i.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0615c implements Spannable {

    /* JADX INFO: renamed from: b */
    private final Spannable f3790b;

    /* JADX INFO: renamed from: c */
    private final a f3791c;

    /* JADX INFO: renamed from: d */
    private final PrecomputedText f3792d;

    /* JADX INFO: renamed from: a */
    public a m4826a() {
        return this.f3791c;
    }

    /* JADX INFO: renamed from: b */
    public PrecomputedText m4827b() {
        Spannable spannable = this.f3790b;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f3790b.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f3790b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f3790b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f3790b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.f3792d.getSpans(i, i2, cls) : (T[]) this.f3790b.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f3790b.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f3790b.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f3792d.removeSpan(obj);
        } else {
            this.f3790b.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f3792d.setSpan(obj, i, i2, i3);
        } else {
            this.f3790b.setSpan(obj, i, i2, i3);
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f3790b.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f3790b.toString();
    }

    /* JADX INFO: renamed from: c.g.i.c$a */
    public static final class a {

        /* JADX INFO: renamed from: a */
        private final TextPaint f3793a;

        /* JADX INFO: renamed from: b */
        private final TextDirectionHeuristic f3794b;

        /* JADX INFO: renamed from: c */
        private final int f3795c;

        /* JADX INFO: renamed from: d */
        private final int f3796d;

        /* JADX INFO: renamed from: c.g.i.c$a$a, reason: collision with other inner class name */
        public static class C1348a {

            /* JADX INFO: renamed from: a */
            private final TextPaint f3797a;

            /* JADX INFO: renamed from: b */
            private TextDirectionHeuristic f3798b;

            /* JADX INFO: renamed from: c */
            private int f3799c;

            /* JADX INFO: renamed from: d */
            private int f3800d;

            public C1348a(TextPaint textPaint) {
                this.f3797a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f3799c = 1;
                    this.f3800d = 1;
                } else {
                    this.f3800d = 0;
                    this.f3799c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f3798b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f3798b = null;
                }
            }

            /* JADX INFO: renamed from: a */
            public a m4833a() {
                return new a(this.f3797a, this.f3798b, this.f3799c, this.f3800d);
            }

            /* JADX INFO: renamed from: b */
            public C1348a m4834b(int i) {
                this.f3799c = i;
                return this;
            }

            /* JADX INFO: renamed from: c */
            public C1348a m4835c(int i) {
                this.f3800d = i;
                return this;
            }

            /* JADX INFO: renamed from: d */
            public C1348a m4836d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f3798b = textDirectionHeuristic;
                return this;
            }
        }

        @SuppressLint({"NewApi"})
        a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.f3793a = textPaint;
            this.f3794b = textDirectionHeuristic;
            this.f3795c = i;
            this.f3796d = i2;
        }

        /* JADX INFO: renamed from: a */
        public boolean m4828a(a aVar) {
            if ((Build.VERSION.SDK_INT >= 23 && (this.f3795c != aVar.m4829b() || this.f3796d != aVar.m4830c())) || this.f3793a.getTextSize() != aVar.m4832e().getTextSize() || this.f3793a.getTextScaleX() != aVar.m4832e().getTextScaleX() || this.f3793a.getTextSkewX() != aVar.m4832e().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f3793a.getLetterSpacing() != aVar.m4832e().getLetterSpacing() || !TextUtils.equals(this.f3793a.getFontFeatureSettings(), aVar.m4832e().getFontFeatureSettings()))) || this.f3793a.getFlags() != aVar.m4832e().getFlags()) {
                return false;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                if (!this.f3793a.getTextLocales().equals(aVar.m4832e().getTextLocales())) {
                    return false;
                }
            } else if (i >= 17 && !this.f3793a.getTextLocale().equals(aVar.m4832e().getTextLocale())) {
                return false;
            }
            return this.f3793a.getTypeface() == null ? aVar.m4832e().getTypeface() == null : this.f3793a.getTypeface().equals(aVar.m4832e().getTypeface());
        }

        /* JADX INFO: renamed from: b */
        public int m4829b() {
            return this.f3795c;
        }

        /* JADX INFO: renamed from: c */
        public int m4830c() {
            return this.f3796d;
        }

        /* JADX INFO: renamed from: d */
        public TextDirectionHeuristic m4831d() {
            return this.f3794b;
        }

        /* JADX INFO: renamed from: e */
        public TextPaint m4832e() {
            return this.f3793a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (m4828a(aVar)) {
                return Build.VERSION.SDK_INT < 18 || this.f3794b == aVar.m4831d();
            }
            return false;
        }

        public int hashCode() {
            int i = Build.VERSION.SDK_INT;
            return i >= 24 ? C0621c.m4847b(Float.valueOf(this.f3793a.getTextSize()), Float.valueOf(this.f3793a.getTextScaleX()), Float.valueOf(this.f3793a.getTextSkewX()), Float.valueOf(this.f3793a.getLetterSpacing()), Integer.valueOf(this.f3793a.getFlags()), this.f3793a.getTextLocales(), this.f3793a.getTypeface(), Boolean.valueOf(this.f3793a.isElegantTextHeight()), this.f3794b, Integer.valueOf(this.f3795c), Integer.valueOf(this.f3796d)) : i >= 21 ? C0621c.m4847b(Float.valueOf(this.f3793a.getTextSize()), Float.valueOf(this.f3793a.getTextScaleX()), Float.valueOf(this.f3793a.getTextSkewX()), Float.valueOf(this.f3793a.getLetterSpacing()), Integer.valueOf(this.f3793a.getFlags()), this.f3793a.getTextLocale(), this.f3793a.getTypeface(), Boolean.valueOf(this.f3793a.isElegantTextHeight()), this.f3794b, Integer.valueOf(this.f3795c), Integer.valueOf(this.f3796d)) : i >= 18 ? C0621c.m4847b(Float.valueOf(this.f3793a.getTextSize()), Float.valueOf(this.f3793a.getTextScaleX()), Float.valueOf(this.f3793a.getTextSkewX()), Integer.valueOf(this.f3793a.getFlags()), this.f3793a.getTextLocale(), this.f3793a.getTypeface(), this.f3794b, Integer.valueOf(this.f3795c), Integer.valueOf(this.f3796d)) : i >= 17 ? C0621c.m4847b(Float.valueOf(this.f3793a.getTextSize()), Float.valueOf(this.f3793a.getTextScaleX()), Float.valueOf(this.f3793a.getTextSkewX()), Integer.valueOf(this.f3793a.getFlags()), this.f3793a.getTextLocale(), this.f3793a.getTypeface(), this.f3794b, Integer.valueOf(this.f3795c), Integer.valueOf(this.f3796d)) : C0621c.m4847b(Float.valueOf(this.f3793a.getTextSize()), Float.valueOf(this.f3793a.getTextScaleX()), Float.valueOf(this.f3793a.getTextSkewX()), Integer.valueOf(this.f3793a.getFlags()), this.f3793a.getTypeface(), this.f3794b, Integer.valueOf(this.f3795c), Integer.valueOf(this.f3796d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f3793a.getTextSize());
            sb.append(", textScaleX=" + this.f3793a.getTextScaleX());
            sb.append(", textSkewX=" + this.f3793a.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f3793a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f3793a.isElegantTextHeight());
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                sb.append(", textLocale=" + this.f3793a.getTextLocales());
            } else if (i >= 17) {
                sb.append(", textLocale=" + this.f3793a.getTextLocale());
            }
            sb.append(", typeface=" + this.f3793a.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f3793a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f3794b);
            sb.append(", breakStrategy=" + this.f3795c);
            sb.append(", hyphenationFrequency=" + this.f3796d);
            sb.append("}");
            return sb.toString();
        }

        public a(PrecomputedText.Params params) {
            this.f3793a = params.getTextPaint();
            this.f3794b = params.getTextDirection();
            this.f3795c = params.getBreakStrategy();
            this.f3796d = params.getHyphenationFrequency();
            int i = Build.VERSION.SDK_INT;
        }
    }
}
