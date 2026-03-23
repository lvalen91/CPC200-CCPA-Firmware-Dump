.class public final Lc/g/i/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/i/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/g/i/c$a$a;
  }
.end annotation

.field private final a:Landroid/text/TextPaint;

.field private final b:Landroid/text/TextDirectionHeuristic;

.field private final c:I

.field private final d:I

.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
  .registers 3
  .line 12
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 13
    invoke-virtual { p1 }, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;
    move-result-object v0
    iput-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 14
    invoke-virtual { p1 }, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;
    move-result-object v0
    iput-object v0, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
  .line 15
    invoke-virtual { p1 }, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I
    move-result v0
    iput v0, p0, Lc/g/i/c$a;->c:I
  .line 16
    invoke-virtual { p1 }, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I
    move-result p1
    iput p1, p0, Lc/g/i/c$a;->d:I
  .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 29
    return-void
.end method

.method constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "NewApi"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 3
    new-instance v0, Landroid/text/PrecomputedText$Params$Builder;
    invoke-direct { v0, p1 }, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V
  .line 4
    invoke-virtual { v0, p3 }, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;
    move-result-object v0
  .line 5
    invoke-virtual { v0, p4 }, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;
    move-result-object v0
  .line 6
    invoke-virtual { v0, p2 }, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;
    move-result-object v0
  .line 7
    invoke-virtual { v0 }, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;
  :L0
  .line 8
    iput-object p1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 9
    iput-object p2, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
  .line 10
    iput p3, p0, Lc/g/i/c$a;->c:I
  .line 11
    iput p4, p0, Lc/g/i/c$a;->d:I
    return-void
.end method

.method public a(Lc/g/i/c$a;)Z
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 0
    const/16 v2, 23
    if-lt v0, v2, :L1
  .line 2
    iget v0, p0, Lc/g/i/c$a;->c:I
    invoke-virtual { p1 }, Lc/g/i/c$a;->b()I
    move-result v2
    if-eq v0, v2, :L0
    return v1
  :L0
  .line 3
    iget v0, p0, Lc/g/i/c$a;->d:I
    invoke-virtual { p1 }, Lc/g/i/c$a;->c()I
    move-result v2
    if-eq v0, v2, :L1
    return v1
  :L1
  .line 4
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v0
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v2
    cmpl-float v0, v0, v2
    if-eqz v0, :L2
    return v1
  :L2
  .line 5
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTextScaleX()F
    move-result v0
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextScaleX()F
    move-result v2
    cmpl-float v0, v0, v2
    if-eqz v0, :L3
    return v1
  :L3
  .line 6
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTextSkewX()F
    move-result v0
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextSkewX()F
    move-result v2
    cmpl-float v0, v0, v2
    if-eqz v0, :L4
    return v1
  :L4
  .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v0, v2, :L6
  .line 8
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getLetterSpacing()F
    move-result v0
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getLetterSpacing()F
    move-result v2
    cmpl-float v0, v0, v2
    if-eqz v0, :L5
    return v1
  :L5
  .line 9
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;
    move-result-object v0
  .line 10
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;
    move-result-object v2
  .line 11
    invoke-static { v0, v2 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L6
    return v1
  :L6
  .line 12
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getFlags()I
    move-result v0
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getFlags()I
    move-result v2
    if-eq v0, v2, :L7
    return v1
  :L7
  .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 24
    if-lt v0, v2, :L8
  .line 14
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;
    move-result-object v0
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;
    move-result-object v2
    invoke-virtual { v0, v2 }, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L9
    return v1
  :L8
    const/16 v2, 17
    if-lt v0, v2, :L9
  .line 15
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;
    move-result-object v0
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L9
    return v1
  :L9
  .line 16
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v0
    if-nez v0, :L10
  .line 17
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object p1
    if-eqz p1, :L11
    return v1
  :L10
  .line 18
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v0
    invoke-virtual { p1 }, Lc/g/i/c$a;->e()Landroid/text/TextPaint;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :L11
    return v1
  :L11
    const/4 p1, 1
    return p1
.end method

.method public b()I
  .registers 2
  .line 1
    iget v0, p0, Lc/g/i/c$a;->c:I
    return v0
.end method

.method public c()I
  .registers 2
  .line 1
    iget v0, p0, Lc/g/i/c$a;->d:I
    return v0
.end method

.method public d()Landroid/text/TextDirectionHeuristic;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
    return-object v0
.end method

.method public e()Landroid/text/TextPaint;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p1, p0, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Lc/g/i/c$a;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Lc/g/i/c$a;
  .line 3
    invoke-virtual { p0, p1 }, Lc/g/i/c$a;->a(Lc/g/i/c$a;)Z
    move-result v1
    if-nez v1, :L2
    return v2
  :L2
  .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 18
    if-lt v1, v3, :L3
  .line 5
    iget-object v1, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
    invoke-virtual { p1 }, Lc/g/i/c$a;->d()Landroid/text/TextDirectionHeuristic;
    move-result-object p1
    if-eq v1, p1, :L3
    return v2
  :L3
    return v0
.end method

.method public hashCode()I
  .registers 15
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 10
    const/16 v2, 11
    const/16 v3, 9
    const/16 v4, 8
    const/4 v5, 7
    const/4 v6, 6
    const/4 v7, 5
    const/4 v8, 4
    const/4 v9, 3
    const/4 v10, 2
    const/4 v11, 1
    const/4 v12, 0
    const/16 v13, 24
    if-lt v0, v13, :L0
    new-array v0, v2, [Ljava/lang/Object;
  .line 2
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v2
    invoke-static { v2 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v0, v12
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextScaleX()F
    move-result v2
    invoke-static { v2 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v0, v11
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 3
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextSkewX()F
    move-result v2
    invoke-static { v2 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v0, v10
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getLetterSpacing()F
    move-result v2
    invoke-static { v2 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v0, v9
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getFlags()I
    move-result v2
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v0, v8
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 4
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;
    move-result-object v2
    aput-object v2, v0, v7
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v2
    aput-object v2, v0, v6
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->isElegantTextHeight()Z
    move-result v2
    invoke-static { v2 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v2
    aput-object v2, v0, v5
    iget-object v2, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
    aput-object v2, v0, v4
    iget v2, p0, Lc/g/i/c$a;->c:I
  .line 5
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v0, v3
    iget v2, p0, Lc/g/i/c$a;->d:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v0, v1
  .line 6
    invoke-static { v0 }, Lc/g/j/c;->b([Ljava/lang/Object;)I
    move-result v0
    return v0
  :L0
    const/16 v13, 21
    if-lt v0, v13, :L1
    new-array v0, v2, [Ljava/lang/Object;
  .line 7
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v2
    invoke-static { v2 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v0, v12
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextScaleX()F
    move-result v2
    invoke-static { v2 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v0, v11
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 8
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextSkewX()F
    move-result v2
    invoke-static { v2 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v0, v10
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getLetterSpacing()F
    move-result v2
    invoke-static { v2 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v0, v9
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getFlags()I
    move-result v2
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v0, v8
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 9
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;
    move-result-object v2
    aput-object v2, v0, v7
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v2
    aput-object v2, v0, v6
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->isElegantTextHeight()Z
    move-result v2
    invoke-static { v2 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v2
    aput-object v2, v0, v5
    iget-object v2, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
    aput-object v2, v0, v4
    iget v2, p0, Lc/g/i/c$a;->c:I
  .line 10
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v0, v3
    iget v2, p0, Lc/g/i/c$a;->d:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v0, v1
  .line 11
    invoke-static { v0 }, Lc/g/j/c;->b([Ljava/lang/Object;)I
    move-result v0
    return v0
  :L1
    const/16 v1, 18
    if-lt v0, v1, :L2
    new-array v0, v3, [Ljava/lang/Object;
  .line 12
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    aput-object v1, v0, v12
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextScaleX()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    aput-object v1, v0, v11
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 13
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextSkewX()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    aput-object v1, v0, v10
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getFlags()I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v9
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;
    move-result-object v1
    aput-object v1, v0, v8
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 14
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v1
    aput-object v1, v0, v7
    iget-object v1, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
    aput-object v1, v0, v6
    iget v1, p0, Lc/g/i/c$a;->c:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v5
    iget v1, p0, Lc/g/i/c$a;->d:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v4
  .line 15
    invoke-static { v0 }, Lc/g/j/c;->b([Ljava/lang/Object;)I
    move-result v0
    return v0
  :L2
    const/16 v1, 17
    if-lt v0, v1, :L3
    new-array v0, v3, [Ljava/lang/Object;
  .line 16
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    aput-object v1, v0, v12
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextScaleX()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    aput-object v1, v0, v11
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 17
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextSkewX()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    aput-object v1, v0, v10
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getFlags()I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v9
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;
    move-result-object v1
    aput-object v1, v0, v8
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 18
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v1
    aput-object v1, v0, v7
    iget-object v1, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
    aput-object v1, v0, v6
    iget v1, p0, Lc/g/i/c$a;->c:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v5
    iget v1, p0, Lc/g/i/c$a;->d:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v4
  .line 19
    invoke-static { v0 }, Lc/g/j/c;->b([Ljava/lang/Object;)I
    move-result v0
    return v0
  :L3
    new-array v0, v4, [Ljava/lang/Object;
  .line 20
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    aput-object v1, v0, v12
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextScaleX()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    aput-object v1, v0, v11
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
  .line 21
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTextSkewX()F
    move-result v1
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    aput-object v1, v0, v10
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getFlags()I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v9
    iget-object v1, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v1 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v1
    aput-object v1, v0, v8
    iget-object v1, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
    aput-object v1, v0, v7
    iget v1, p0, Lc/g/i/c$a;->c:I
  .line 22
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v6
    iget v1, p0, Lc/g/i/c$a;->d:I
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v0, v5
  .line 23
    invoke-static { v0 }, Lc/g/j/c;->b([Ljava/lang/Object;)I
    move-result v0
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "{"
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "textSize="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ", textScaleX="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextScaleX()F
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ", textSkewX="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextSkewX()F
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v1, v2, :L0
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ", letterSpacing="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getLetterSpacing()F
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 7
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ", elegantTextHeight="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->isElegantTextHeight()Z
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L0
  .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 24
    const-string v3, ", textLocale="
    if-lt v1, v2, :L1
  .line 9
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L2
  :L1
    const/16 v2, 17
    if-lt v1, v2, :L2
  .line 10
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
  .line 11
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ", typeface="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 26
    if-lt v1, v2, :L3
  .line 13
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ", variationSettings="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->a:Landroid/text/TextPaint;
    invoke-virtual { v2 }, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L3
  .line 14
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ", textDir="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc/g/i/c$a;->b:Landroid/text/TextDirectionHeuristic;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 15
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ", breakStrategy="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lc/g/i/c$a;->c:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 16
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ", hyphenationFrequency="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lc/g/i/c$a;->d:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "}"
  .line 17
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 18
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
