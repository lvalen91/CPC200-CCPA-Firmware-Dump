.class public Ld/c/a/a/x/d;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Z

.field public final j:F

.field public k:F

.field private final l:I

.field private m:Z

.field private n:Landroid/graphics/Typeface;

.method public constructor <init>(Landroid/content/Context;I)V
  .registers 8
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Ld/c/a/a/x/d;->m:Z
  .line 3
    sget-object v1, Ld/c/a/a/k;->TextAppearance:[I
    invoke-virtual { p1, p2, v1 }, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    move-result-object v1
  .line 4
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textSize:I
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v2
    iput v2, p0, Ld/c/a/a/x/d;->k:F
  .line 5
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textColor:I
  .line 6
    invoke-static { p1, v1, v2 }, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    move-result-object v2
    iput-object v2, p0, Ld/c/a/a/x/d;->a:Landroid/content/res/ColorStateList;
  .line 7
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textColorHint:I
  .line 8
    invoke-static { p1, v1, v2 }, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
  .line 9
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textColorLink:I
  .line 10
    invoke-static { p1, v1, v2 }, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
  .line 11
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textStyle:I
    invoke-virtual { v1, v2, v0 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, p0, Ld/c/a/a/x/d;->d:I
  .line 12
    sget v2, Ld/c/a/a/k;->TextAppearance_android_typeface:I
    const/4 v4, 1
    invoke-virtual { v1, v2, v4 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, p0, Ld/c/a/a/x/d;->e:I
  .line 13
    sget v2, Ld/c/a/a/k;->TextAppearance_fontFamily:I
    sget v4, Ld/c/a/a/k;->TextAppearance_android_fontFamily:I
  .line 14
    invoke-static { v1, v2, v4 }, Ld/c/a/a/x/c;->e(Landroid/content/res/TypedArray;II)I
    move-result v2
  .line 15
    invoke-virtual { v1, v2, v0 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v4
    iput v4, p0, Ld/c/a/a/x/d;->l:I
  .line 16
    invoke-virtual { v1, v2 }, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Ld/c/a/a/x/d;->c:Ljava/lang/String;
  .line 17
    sget v2, Ld/c/a/a/k;->TextAppearance_textAllCaps:I
    invoke-virtual { v1, v2, v0 }, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
  .line 18
    sget v2, Ld/c/a/a/k;->TextAppearance_android_shadowColor:I
  .line 19
    invoke-static { p1, v1, v2 }, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    move-result-object v2
    iput-object v2, p0, Ld/c/a/a/x/d;->b:Landroid/content/res/ColorStateList;
  .line 20
    sget v2, Ld/c/a/a/k;->TextAppearance_android_shadowDx:I
    invoke-virtual { v1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Ld/c/a/a/x/d;->f:F
  .line 21
    sget v2, Ld/c/a/a/k;->TextAppearance_android_shadowDy:I
    invoke-virtual { v1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Ld/c/a/a/x/d;->g:F
  .line 22
    sget v2, Ld/c/a/a/k;->TextAppearance_android_shadowRadius:I
    invoke-virtual { v1, v2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result v2
    iput v2, p0, Ld/c/a/a/x/d;->h:F
  .line 23
    invoke-virtual { v1 }, Landroid/content/res/TypedArray;->recycle()V
  .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 21
    if-lt v1, v2, :L0
  .line 25
    sget-object v0, Ld/c/a/a/k;->MaterialTextAppearance:[I
    invoke-virtual { p1, p2, v0 }, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 26
    sget p2, Ld/c/a/a/k;->MaterialTextAppearance_android_letterSpacing:I
    invoke-virtual { p1, p2 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p2
    iput-boolean p2, p0, Ld/c/a/a/x/d;->i:Z
  .line 27
    sget p2, Ld/c/a/a/k;->MaterialTextAppearance_android_letterSpacing:I
    invoke-virtual { p1, p2, v3 }, Landroid/content/res/TypedArray;->getFloat(IF)F
    move-result p2
    iput p2, p0, Ld/c/a/a/x/d;->j:F
  .line 28
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
    goto :L1
  :L0
  .line 29
    iput-boolean v0, p0, Ld/c/a/a/x/d;->i:Z
  .line 30
    iput v3, p0, Ld/c/a/a/x/d;->j:F
  :L1
    return-void
.end method

.method static synthetic a(Ld/c/a/a/x/d;)Landroid/graphics/Typeface;
  .registers 1
  .line 1
    iget-object p0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    return-object p0
.end method

.method static synthetic b(Ld/c/a/a/x/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .registers 2
  .line 1
    iput-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    return-object p1
.end method

.method static synthetic c(Ld/c/a/a/x/d;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Ld/c/a/a/x/d;->m:Z
    return p1
.end method

.method private d()V
  .registers 3
  .line 1
    iget-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    if-nez v0, :L0
    iget-object v0, p0, Ld/c/a/a/x/d;->c:Ljava/lang/String;
    if-eqz v0, :L0
  .line 2
    iget v1, p0, Ld/c/a/a/x/d;->d:I
    invoke-static { v0, v1 }, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    move-result-object v0
    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
  :L0
  .line 3
    iget-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    if-nez v0, :L5
  .line 4
    iget v0, p0, Ld/c/a/a/x/d;->e:I
    const/4 v1, 1
    if-eq v0, v1, :L3
    const/4 v1, 2
    if-eq v0, v1, :L2
    const/4 v1, 3
    if-eq v0, v1, :L1
  .line 5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    goto :L4
  :L1
  .line 6
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    goto :L4
  :L2
  .line 7
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;
    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    goto :L4
  :L3
  .line 8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;
    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
  :L4
  .line 9
    iget-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    iget v1, p0, Ld/c/a/a/x/d;->d:I
    invoke-static { v0, v1 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object v0
    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
  :L5
    return-void
.end method

.method private i(Landroid/content/Context;)Z
  .registers 4
  .line 1
    invoke-static { }, Ld/c/a/a/x/e;->a()Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    iget v0, p0, Ld/c/a/a/x/d;->l:I
    if-eqz v0, :L1
  .line 3
    invoke-static { p1, v0 }, Landroidx/core/content/c/f;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    move-result-object p1
    goto :L2
  :L1
    const/4 p1, 0
  :L2
    if-eqz p1, :L3
    goto :L4
  :L3
    const/4 v1, 0
  :L4
    return v1
.end method

.method public e()Landroid/graphics/Typeface;
  .registers 2
  .line 1
    invoke-direct { p0 }, Ld/c/a/a/x/d;->d()V
  .line 2
    iget-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Typeface;
  .catch Ljava/lang/UnsupportedOperationException; { :L1 .. :L2 } :L4
  .catch Landroid/content/res/Resources$NotFoundException; { :L1 .. :L2 } :L4
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .registers 3
  .line 1
    iget-boolean v0, p0, Ld/c/a/a/x/d;->m:Z
    if-eqz v0, :L0
  .line 2
    iget-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    return-object p1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->isRestricted()Z
    move-result v0
    if-nez v0, :L4
  :L1
  .line 4
    iget v0, p0, Ld/c/a/a/x/d;->l:I
    invoke-static { p1, v0 }, Landroidx/core/content/c/f;->c(Landroid/content/Context;I)Landroid/graphics/Typeface;
    move-result-object p1
    iput-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    if-eqz p1, :L4
  .line 5
    iget v0, p0, Ld/c/a/a/x/d;->d:I
    invoke-static { p1, v0 }, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    move-result-object p1
    iput-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
  :L2
    goto :L4
  :L3
  .line 6
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Error loading font "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Ld/c/a/a/x/d;->c:Ljava/lang/String;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L4
  .line 7
    invoke-direct { p0 }, Ld/c/a/a/x/d;->d()V
    const/4 p1, 1
  .line 8
    iput-boolean p1, p0, Ld/c/a/a/x/d;->m:Z
  .line 9
    iget-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    return-object p1
.end method

.method public g(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Ld/c/a/a/x/d;->e()Landroid/graphics/Typeface;
    move-result-object v0
    invoke-virtual { p0, p2, v0 }, Ld/c/a/a/x/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
  .line 2
    new-instance v0, Ld/c/a/a/x/d$b;
    invoke-direct { v0, p0, p2, p3 }, Ld/c/a/a/x/d$b;-><init>(Ld/c/a/a/x/d;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
    invoke-virtual { p0, p1, v0 }, Ld/c/a/a/x/d;->h(Landroid/content/Context;Ld/c/a/a/x/f;)V
    return-void
.end method

.method public h(Landroid/content/Context;Ld/c/a/a/x/f;)V
  .catch Landroid/content/res/Resources$NotFoundException; { :L3 .. :L4 } :L6
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 7
  .line 1
    invoke-direct { p0, p1 }, Ld/c/a/a/x/d;->i(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0, p1 }, Ld/c/a/a/x/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;
    goto :L1
  :L0
  .line 3
    invoke-direct { p0 }, Ld/c/a/a/x/d;->d()V
  :L1
  .line 4
    iget v0, p0, Ld/c/a/a/x/d;->l:I
    const/4 v1, 1
    if-nez v0, :L2
  .line 5
    iput-boolean v1, p0, Ld/c/a/a/x/d;->m:Z
  :L2
  .line 6
    iget-boolean v0, p0, Ld/c/a/a/x/d;->m:Z
    if-eqz v0, :L3
  .line 7
    iget-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    invoke-virtual { p2, p1, v1 }, Ld/c/a/a/x/f;->b(Landroid/graphics/Typeface;Z)V
    return-void
  :L3
  .line 8
    iget v0, p0, Ld/c/a/a/x/d;->l:I
    new-instance v2, Ld/c/a/a/x/d$a;
    invoke-direct { v2, p0, p2 }, Ld/c/a/a/x/d$a;-><init>(Ld/c/a/a/x/d;Ld/c/a/a/x/f;)V
    const/4 v3, 0
    invoke-static { p1, v0, v2, v3 }, Landroidx/core/content/c/f;->e(Landroid/content/Context;ILandroidx/core/content/c/f$a;Landroid/os/Handler;)V
  :L4
    goto :L7
  :L5
  .line 9
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Error loading font "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Ld/c/a/a/x/d;->c:Ljava/lang/String;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  .line 10
    iput-boolean v1, p0, Ld/c/a/a/x/d;->m:Z
    const/4 p1, -3
  .line 11
    invoke-virtual { p2, p1 }, Ld/c/a/a/x/f;->a(I)V
    goto :L7
  :L6
  .line 12
    iput-boolean v1, p0, Ld/c/a/a/x/d;->m:Z
  .line 13
    invoke-virtual { p2, v1 }, Ld/c/a/a/x/f;->a(I)V
  :L7
    return-void
.end method

.method public j(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
  .registers 8
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Ld/c/a/a/x/d;->k(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
  .line 2
    iget-object p1, p0, Ld/c/a/a/x/d;->a:Landroid/content/res/ColorStateList;
    if-eqz p1, :L0
    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I
  .line 3
    invoke-virtual { p1 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v0
    invoke-virtual { p1, p3, v0 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p1
    goto :L1
  :L0
    const/high16 p1, -256
  :L1
  .line 4
    invoke-virtual { p2, p1 }, Landroid/text/TextPaint;->setColor(I)V
  .line 5
    iget p1, p0, Ld/c/a/a/x/d;->h:F
    iget p3, p0, Ld/c/a/a/x/d;->f:F
    iget v0, p0, Ld/c/a/a/x/d;->g:F
    iget-object v1, p0, Ld/c/a/a/x/d;->b:Landroid/content/res/ColorStateList;
    if-eqz v1, :L2
    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I
  .line 6
    invoke-virtual { v1 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v3
    invoke-virtual { v1, v2, v3 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result v1
    goto :L3
  :L2
    const/4 v1, 0
  :L3
  .line 7
    invoke-virtual { p2, p1, p3, v0, v1 }, Landroid/text/TextPaint;->setShadowLayer(FFFI)V
    return-void
.end method

.method public k(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Ld/c/a/a/x/d;->i(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0, p1 }, Ld/c/a/a/x/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;
    move-result-object p1
    invoke-virtual { p0, p2, p1 }, Ld/c/a/a/x/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1, p2, p3 }, Ld/c/a/a/x/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
  :L1
    return-void
.end method

.method public l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
  .registers 4
  .line 1
    invoke-virtual { p1, p2 }, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 2
    iget v0, p0, Ld/c/a/a/x/d;->d:I
    invoke-virtual { p2 }, Landroid/graphics/Typeface;->getStyle()I
    move-result p2
    xor-int/lit8 p2, p2, -1
    and-int/2addr p2, v0
    and-int/lit8 v0, p2, 1
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 3
    invoke-virtual { p1, v0 }, Landroid/text/TextPaint;->setFakeBoldText(Z)V
    and-int/lit8 p2, p2, 2
    if-eqz p2, :L2
    const/high16 p2, -16768
    goto :L3
  :L2
    const/4 p2, 0
  :L3
  .line 4
    invoke-virtual { p1, p2 }, Landroid/text/TextPaint;->setTextSkewX(F)V
  .line 5
    iget p2, p0, Ld/c/a/a/x/d;->k:F
    invoke-virtual { p1, p2 }, Landroid/text/TextPaint;->setTextSize(F)V
  .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 21
    if-lt p2, v0, :L4
  .line 7
    iget-boolean p2, p0, Ld/c/a/a/x/d;->i:Z
    if-eqz p2, :L4
  .line 8
    iget p2, p0, Ld/c/a/a/x/d;->j:F
    invoke-virtual { p1, p2 }, Landroid/text/TextPaint;->setLetterSpacing(F)V
  :L4
    return-void
.end method
