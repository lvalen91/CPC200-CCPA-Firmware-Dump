.class public final Landroidx/core/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/widget/i$a;
  }
.end annotation

.method public static a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
  :L0
    const/16 v1, 17
    if-lt v0, v1, :L4
  .line 3
    invoke-virtual { p0 }, Landroid/widget/TextView;->getLayoutDirection()I
    move-result v0
    const/4 v1, 1
    const/4 v2, 0
    if-ne v0, v1, :L1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
  .line 4
    invoke-virtual { p0 }, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    move-result-object p0
    if-eqz v1, :L3
    const/4 v0, 2
  .line 5
    aget-object v1, p0, v0
  .line 6
    aget-object v3, p0, v2
  .line 7
    aput-object v1, p0, v2
  .line 8
    aput-object v3, p0, v0
  :L3
    return-object p0
  :L4
  .line 9
    invoke-virtual { p0 }, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    move-result-object p0
    return-object p0
.end method

.method public static b(Landroid/widget/TextView;)I
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingTop()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object p0
    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I
    sub-int/2addr v0, p0
    return v0
.end method

.method public static c(Landroid/widget/TextView;)I
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingBottom()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object p0
    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    add-int/2addr v0, p0
    return v0
.end method

.method private static d(Landroid/text/TextDirectionHeuristic;)I
  .registers 3
  .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;
    const/4 v1, 1
    if-ne p0, v0, :L0
    return v1
  :L0
  .line 2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;
    if-ne p0, v0, :L1
    return v1
  :L1
  .line 3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;
    if-ne p0, v0, :L2
    const/4 p0, 2
    return p0
  :L2
  .line 4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;
    if-ne p0, v0, :L3
    const/4 p0, 3
    return p0
  :L3
  .line 5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;
    if-ne p0, v0, :L4
    const/4 p0, 4
    return p0
  :L4
  .line 6
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;
    if-ne p0, v0, :L5
    const/4 p0, 5
    return p0
  :L5
  .line 7
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;
    if-ne p0, v0, :L6
    const/4 p0, 6
    return p0
  :L6
  .line 8
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;
    if-ne p0, v0, :L7
    const/4 p0, 7
    return p0
  :L7
    return v1
.end method

.method private static e(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;
    move-result-object v0
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;
    if-eqz v0, :L0
  .line 2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;
    return-object p0
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    const/4 v2, 0
    const/4 v3, 1
    if-lt v0, v1, :L3
  .line 4
    invoke-virtual { p0 }, Landroid/widget/TextView;->getInputType()I
    move-result v0
    and-int/lit8 v0, v0, 15
    const/4 v1, 3
    if-ne v0, v1, :L3
  .line 5
    invoke-virtual { p0 }, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;
    move-result-object p0
    invoke-static { p0 }, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;
    move-result-object p0
  .line 6
    invoke-virtual { p0 }, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;
    move-result-object p0
    aget-object p0, p0, v2
  .line 7
    invoke-virtual { p0, v2 }, Ljava/lang/String;->codePointAt(I)I
    move-result p0
  .line 8
    invoke-static { p0 }, Ljava/lang/Character;->getDirectionality(I)B
    move-result p0
    if-eq p0, v3, :L2
    const/4 v0, 2
    if-ne p0, v0, :L1
    goto :L2
  :L1
  .line 9
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;
    return-object p0
  :L2
  .line 10
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;
    return-object p0
  :L3
  .line 11
    invoke-virtual { p0 }, Landroid/widget/TextView;->getLayoutDirection()I
    move-result v0
    if-ne v0, v3, :L4
    const/4 v2, 1
  :L4
  .line 12
    invoke-virtual { p0 }, Landroid/widget/TextView;->getTextDirection()I
    move-result p0
    packed-switch p0, :L13
    if-eqz v2, :L11
  .line 13
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;
    goto :L12
  :L5
  .line 14
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;
    return-object p0
  :L6
  .line 15
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;
    return-object p0
  :L7
  .line 16
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;
    return-object p0
  :L8
  .line 17
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;
    return-object p0
  :L9
  .line 18
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;
    return-object p0
  :L10
  .line 19
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;
    return-object p0
  :L11
  .line 20
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;
  :L12
    return-object p0
  :L13
  .packed-switch 2
    :L10
    :L9
    :L8
    :L7
    :L6
    :L5
  .end packed-switch
.end method

.method public static f(Landroid/widget/TextView;)Lc/g/i/c$a;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    new-instance v0, Lc/g/i/c$a;
    invoke-virtual { p0 }, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;
    move-result-object p0
    invoke-direct { v0, p0 }, Lc/g/i/c$a;-><init>(Landroid/text/PrecomputedText$Params;)V
    return-object v0
  :L0
  .line 3
    new-instance v0, Lc/g/i/c$a$a;
    new-instance v1, Landroid/text/TextPaint;
  .line 4
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v2
    invoke-direct { v1, v2 }, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V
    invoke-direct { v0, v1 }, Lc/g/i/c$a$a;-><init>(Landroid/text/TextPaint;)V
  .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 23
    if-lt v1, v2, :L1
  .line 6
    invoke-virtual { p0 }, Landroid/widget/TextView;->getBreakStrategy()I
    move-result v1
    invoke-virtual { v0, v1 }, Lc/g/i/c$a$a;->b(I)Lc/g/i/c$a$a;
  .line 7
    invoke-virtual { p0 }, Landroid/widget/TextView;->getHyphenationFrequency()I
    move-result v1
    invoke-virtual { v0, v1 }, Lc/g/i/c$a$a;->c(I)Lc/g/i/c$a$a;
  :L1
  .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 18
    if-lt v1, v2, :L2
  .line 9
    invoke-static { p0 }, Landroidx/core/widget/i;->e(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    move-result-object p0
    invoke-virtual { v0, p0 }, Lc/g/i/c$a$a;->d(Landroid/text/TextDirectionHeuristic;)Lc/g/i/c$a$a;
  :L2
  .line 10
    invoke-virtual { v0 }, Lc/g/i/c$a$a;->a()Lc/g/i/c$a;
    move-result-object p0
    return-object p0
.end method

.method public static g(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
  .registers 4
  .line 1
    invoke-static { p0 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 24
    if-lt v0, v1, :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    goto :L1
  :L0
  .line 4
    instance-of v0, p0, Landroidx/core/widget/l;
    if-eqz v0, :L1
  .line 5
    check-cast p0, Landroidx/core/widget/l;
    invoke-interface { p0, p1 }, Landroidx/core/widget/l;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
  :L1
    return-void
.end method

.method public static h(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
  .registers 4
  .line 1
    invoke-static { p0 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 24
    if-lt v0, v1, :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    goto :L1
  :L0
  .line 4
    instance-of v0, p0, Landroidx/core/widget/l;
    if-eqz v0, :L1
  .line 5
    check-cast p0, Landroidx/core/widget/l;
    invoke-interface { p0, p1 }, Landroidx/core/widget/l;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L1
    return-void
.end method

.method public static i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3, p4 }, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    goto :L8
  :L0
    const/16 v1, 17
    if-lt v0, v1, :L7
  .line 3
    invoke-virtual { p0 }, Landroid/widget/TextView;->getLayoutDirection()I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    if-eqz v1, :L3
    move-object v0, p3
    goto :L4
  :L3
    move-object v0, p1
  :L4
    if-eqz v1, :L5
    goto :L6
  :L5
    move-object p1, p3
  :L6
  .line 4
    invoke-virtual { p0, v0, p2, p1, p4 }, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    goto :L8
  :L7
  .line 5
    invoke-virtual { p0, p1, p2, p3, p4 }, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
  :L8
    return-void
.end method

.method public static j(Landroid/widget/TextView;I)V
  .registers 5
  .line 1
    invoke-static { p1 }, Lc/g/j/h;->c(I)I
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V
    return-void
  :L0
  .line 4
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v0
  .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 16
    if-lt v1, v2, :L2
  .line 6
    invoke-virtual { p0 }, Landroid/widget/TextView;->getIncludeFontPadding()Z
    move-result v1
    if-eqz v1, :L1
    goto :L2
  :L1
  .line 7
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    goto :L3
  :L2
  .line 8
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I
  :L3
  .line 9
    invoke-static { v0 }, Ljava/lang/Math;->abs(I)I
    move-result v1
    if-le p1, v1, :L4
    add-int/2addr p1, v0
  .line 10
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingLeft()I
    move-result v0
  .line 11
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingRight()I
    move-result v1
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingBottom()I
    move-result v2
  .line 12
    invoke-virtual { p0, v0, p1, v1, v2 }, Landroid/widget/TextView;->setPadding(IIII)V
  :L4
    return-void
.end method

.method public static k(Landroid/widget/TextView;I)V
  .registers 5
  .line 1
    invoke-static { p1 }, Lc/g/j/h;->c(I)I
  .line 2
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v0
  .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 16
    if-lt v1, v2, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/widget/TextView;->getIncludeFontPadding()Z
    move-result v1
    if-eqz v1, :L0
    goto :L1
  :L0
  .line 5
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    goto :L2
  :L1
  .line 6
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
  :L2
  .line 7
    invoke-static { v0 }, Ljava/lang/Math;->abs(I)I
    move-result v1
    if-le p1, v1, :L3
    sub-int/2addr p1, v0
  .line 8
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingLeft()I
    move-result v0
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingTop()I
    move-result v1
  .line 9
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaddingRight()I
    move-result v2
  .line 10
    invoke-virtual { p0, v0, v1, v2, p1 }, Landroid/widget/TextView;->setPadding(IIII)V
  :L3
    return-void
.end method

.method public static l(Landroid/widget/TextView;I)V
  .registers 4
  .line 1
    invoke-static { p1 }, Lc/g/j/h;->c(I)I
  .line 2
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    move-result v0
    if-eq p1, v0, :L0
    sub-int/2addr p1, v0
    int-to-float p1, p1
    const/high16 v0, 16256
  .line 3
    invoke-virtual { p0, p1, v0 }, Landroid/widget/TextView;->setLineSpacing(FF)V
  :L0
    return-void
.end method

.method public static m(Landroid/widget/TextView;Lc/g/i/c;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p1 }, Lc/g/i/c;->b()Landroid/text/PrecomputedText;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L1
  :L0
  .line 3
    invoke-static { p0 }, Landroidx/core/widget/i;->f(Landroid/widget/TextView;)Lc/g/i/c$a;
    move-result-object v0
  .line 4
    invoke-virtual { p1 }, Lc/g/i/c;->a()Lc/g/i/c$a;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lc/g/i/c$a;->a(Lc/g/i/c$a;)Z
    move-result v0
    if-eqz v0, :L2
  .line 5
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L1
    return-void
  :L2
  .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "Given text can not be applied to TextView."
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method public static n(Landroid/widget/TextView;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setTextAppearance(I)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { p0, v0, p1 }, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
  :L1
    return-void
.end method

.method public static o(Landroid/widget/TextView;Lc/g/i/c$a;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p1 }, Lc/g/i/c$a;->d()Landroid/text/TextDirectionHeuristic;
    move-result-object v0
    invoke-static { v0 }, Landroidx/core/widget/i;->d(Landroid/text/TextDirectionHeuristic;)I
    move-result v0
    invoke-virtual { p0, v0 }, Landroid/widget/TextView;->setTextDirection(I)V
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-ge v0, v1, :L2
  .line 4
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTextScaleX()F
    move-result v0
  .line 5
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v1
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object p1
    invoke-virtual { v1, p1 }, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
  .line 6
    invoke-virtual { p0 }, Landroid/widget/TextView;->getTextScaleX()F
    move-result p1
    cmpl-float p1, v0, p1
    if-nez p1, :L1
    const/high16 p1, 16384
    div-float p1, v0, p1
    const/high16 v1, 16256
    add-float/2addr p1, v1
  .line 7
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setTextScaleX(F)V
  :L1
  .line 8
    invoke-virtual { p0, v0 }, Landroid/widget/TextView;->setTextScaleX(F)V
    goto :L3
  :L2
  .line 9
    invoke-virtual { p0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
  .line 10
    invoke-virtual { p1 }, Lc/g/i/c$a;->b()I
    move-result v0
    invoke-virtual { p0, v0 }, Landroid/widget/TextView;->setBreakStrategy(I)V
  .line 11
    invoke-virtual { p1 }, Lc/g/i/c$a;->c()I
    move-result p1
    invoke-virtual { p0, p1 }, Landroid/widget/TextView;->setHyphenationFrequency(I)V
  :L3
    return-void
.end method

.method public static p(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L1
    const/16 v1, 27
    if-gt v0, v1, :L1
    instance-of v0, p1, Landroidx/core/widget/i$a;
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 2
    new-instance v0, Landroidx/core/widget/i$a;
    invoke-direct { v0, p1, p0 }, Landroidx/core/widget/i$a;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    return-object v0
  :L1
    return-object p1
.end method
