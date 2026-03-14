.class Landroidx/appcompat/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/y$b;,
    Landroidx/appcompat/widget/y$a;,
    Landroidx/appcompat/widget/y$c;
  }
.end annotation

.field private final static l:Landroid/graphics/RectF;

.field private static m:Ljava/util/concurrent/ConcurrentHashMap;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "BanConcurrentHashMap"
    }
  .end annotation
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ConcurrentHashMap<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Method;",
      ">;"
    }
  .end annotation
.end field

.field private static n:Ljava/util/concurrent/ConcurrentHashMap;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "BanConcurrentHashMap"
    }
  .end annotation
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/ConcurrentHashMap<",
      "Ljava/lang/String;",
      "Ljava/lang/reflect/Field;",
      ">;"
    }
  .end annotation
.end field

.field private a:I

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:[I

.field private g:Z

.field private h:Landroid/text/TextPaint;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/content/Context;

.field private final k:Landroidx/appcompat/widget/y$c;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
    sput-object v0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/RectF;
  .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    sput-object v0, Landroidx/appcompat/widget/y;->m:Ljava/util/concurrent/ConcurrentHashMap;
  .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    sput-object v0, Landroidx/appcompat/widget/y;->n:Ljava/util/concurrent/ConcurrentHashMap;
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Landroidx/appcompat/widget/y;->a:I
  .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/y;->b:Z
    const/high16 v1, -16512
  .line 4
    iput v1, p0, Landroidx/appcompat/widget/y;->c:F
  .line 5
    iput v1, p0, Landroidx/appcompat/widget/y;->d:F
  .line 6
    iput v1, p0, Landroidx/appcompat/widget/y;->e:F
    new-array v1, v0, [I
  .line 7
    iput-object v1, p0, Landroidx/appcompat/widget/y;->f:[I
  .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/y;->g:Z
  .line 9
    iput-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 10
    invoke-virtual { p1 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;
  .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 29
    if-lt p1, v0, :L0
  .line 12
    new-instance p1, Landroidx/appcompat/widget/y$b;
    invoke-direct { p1 }, Landroidx/appcompat/widget/y$b;-><init>()V
    iput-object p1, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;
    goto :L2
  :L0
    const/16 v0, 23
    if-lt p1, v0, :L1
  .line 13
    new-instance p1, Landroidx/appcompat/widget/y$a;
    invoke-direct { p1 }, Landroidx/appcompat/widget/y$a;-><init>()V
    iput-object p1, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;
    goto :L2
  :L1
  .line 14
    new-instance p1, Landroidx/appcompat/widget/y$c;
    invoke-direct { p1 }, Landroidx/appcompat/widget/y$c;-><init>()V
    iput-object p1, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;
  :L2
    return-void
.end method

.method private A(Landroid/content/res/TypedArray;)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->length()I
    move-result v0
  .line 2
    new-array v1, v0, [I
    if-lez v0, :L2
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L1
    const/4 v3, -1
  .line 3
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    move-result v3
    aput v3, v1, v2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 4
    invoke-direct { p0, v1 }, Landroidx/appcompat/widget/y;->c([I)[I
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/y;->f:[I
  .line 5
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->B()Z
  :L2
    return-void
.end method

.method private B()Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->f:[I
    array-length v0, v0
    const/4 v1, 0
    const/4 v2, 1
    if-lez v0, :L0
    const/4 v3, 1
    goto :L1
  :L0
    const/4 v3, 0
  :L1
  .line 2
    iput-boolean v3, p0, Landroidx/appcompat/widget/y;->g:Z
    if-eqz v3, :L2
  .line 3
    iput v2, p0, Landroidx/appcompat/widget/y;->a:I
  .line 4
    iget-object v3, p0, Landroidx/appcompat/widget/y;->f:[I
    aget v1, v3, v1
    int-to-float v1, v1
    iput v1, p0, Landroidx/appcompat/widget/y;->d:F
    sub-int/2addr v0, v2
  .line 5
    aget v0, v3, v0
    int-to-float v0, v0
    iput v0, p0, Landroidx/appcompat/widget/y;->e:F
    const/high16 v0, -16512
  .line 6
    iput v0, p0, Landroidx/appcompat/widget/y;->c:F
  :L2
  .line 7
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->g:Z
    return v0
.end method

.method private C(ILandroid/graphics/RectF;)Z
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;
    move-result-object v1
    if-eqz v1, :L0
  .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-interface { v1, v0, v2 }, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object v1
    if-eqz v1, :L0
    move-object v0, v1
  :L0
  .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 16
    const/4 v3, -1
    if-lt v1, v2, :L1
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getMaxLines()I
    move-result v1
    goto :L2
  :L1
    const/4 v1, -1
  :L2
  .line 5
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/y;->q(I)V
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    const-string v4, "getLayoutAlignment"
    invoke-static { p1, v4, v2 }, Landroidx/appcompat/widget/y;->r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/text/Layout$Alignment;
  .line 7
    iget v2, p2, Landroid/graphics/RectF;->right:F
    invoke-static { v2 }, Ljava/lang/Math;->round(F)I
    move-result v2
    invoke-virtual { p0, v0, p1, v2, v1 }, Landroidx/appcompat/widget/y;->e(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    move-result-object p1
    const/4 v2, 0
    const/4 v4, 1
    if-eq v1, v3, :L4
  .line 8
    invoke-virtual { p1 }, Landroid/text/StaticLayout;->getLineCount()I
    move-result v3
    if-gt v3, v1, :L3
  .line 9
    invoke-virtual { p1 }, Landroid/text/StaticLayout;->getLineCount()I
    move-result v1
    sub-int/2addr v1, v4
    invoke-virtual { p1, v1 }, Landroid/text/StaticLayout;->getLineEnd(I)I
    move-result v1
    invoke-interface { v0 }, Ljava/lang/CharSequence;->length()I
    move-result v0
    if-eq v1, v0, :L4
  :L3
    return v2
  :L4
  .line 10
    invoke-virtual { p1 }, Landroid/text/StaticLayout;->getHeight()I
    move-result p1
    int-to-float p1, p1
    iget p2, p2, Landroid/graphics/RectF;->bottom:F
    cmpl-float p1, p1, p2
    if-lez p1, :L5
    return v2
  :L5
    return v4
.end method

.method private D()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    instance-of v0, v0, Landroidx/appcompat/widget/j;
    xor-int/lit8 v0, v0, 1
    return v0
.end method

.method private E(FFF)V
  .registers 7
    const-string v0, "px) is less or equal to (0px)"
    const/4 v1, 0
    cmpg-float v2, p1, v1
    if-lez v2, :L2
    cmpg-float v2, p2, p1
    if-lez v2, :L1
    cmpg-float v1, p3, v1
    if-lez v1, :L0
    const/4 v0, 1
  .line 1
    iput v0, p0, Landroidx/appcompat/widget/y;->a:I
  .line 2
    iput p1, p0, Landroidx/appcompat/widget/y;->d:F
  .line 3
    iput p2, p0, Landroidx/appcompat/widget/y;->e:F
  .line 4
    iput p3, p0, Landroidx/appcompat/widget/y;->c:F
    const/4 p1, 0
  .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/y;->g:Z
    return-void
  :L0
  .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "The auto-size step granularity ("
    invoke-virtual { p2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 7
    new-instance p3, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Maximum auto-size text size ("
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string p2, "px) is less or equal to minimum auto-size text size ("
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string p1, "px)"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p3, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p3
  :L2
  .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Minimum auto-size text size ("
    invoke-virtual { p3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual { p3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/Object;",
      "Ljava/lang/String;",
      "TT;)TT;"
    }
  .end annotation
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L2 } :L3
  .registers 4
  :L0
  .line 1
    invoke-static { p1 }, Landroidx/appcompat/widget/y;->o(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    if-nez v0, :L1
    return-object p2
  :L1
  .line 2
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
  :L2
    return-object p0
  :L3
  .line 3
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Failed to access TextView#"
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " member"
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-object p2
.end method

.method private c([I)[I
  .registers 8
  .line 1
    array-length v0, p1
    if-nez v0, :L0
    return-object p1
  :L0
  .line 2
    invoke-static { p1 }, Ljava/util/Arrays;->sort([I)V
  .line 3
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    const/4 v2, 0
    const/4 v3, 0
  :L1
    if-ge v3, v0, :L3
  .line 4
    aget v4, p1, v3
    if-lez v4, :L2
  .line 5
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-static { v1, v5 }, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    move-result v5
    if-gez v5, :L2
  .line 6
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface { v1, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L2
    add-int/lit8 v3, v3, 1
    goto :L1
  :L3
  .line 7
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v3
    if-ne v0, v3, :L4
    return-object p1
  :L4
  .line 8
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result p1
  .line 9
    new-array v0, p1, [I
  :L5
    if-ge v2, p1, :L6
  .line 10
    invoke-interface { v1, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Integer;
    invoke-virtual { v3 }, Ljava/lang/Integer;->intValue()I
    move-result v3
    aput v3, v0, v2
    add-int/lit8 v2, v2, 1
    goto :L5
  :L6
    return-object v0
.end method

.method private d()V
  .registers 3
    const/4 v0, 0
  .line 1
    iput v0, p0, Landroidx/appcompat/widget/y;->a:I
    const/high16 v1, -16512
  .line 2
    iput v1, p0, Landroidx/appcompat/widget/y;->d:F
  .line 3
    iput v1, p0, Landroidx/appcompat/widget/y;->e:F
  .line 4
    iput v1, p0, Landroidx/appcompat/widget/y;->c:F
    new-array v1, v0, [I
  .line 5
    iput-object v1, p0, Landroidx/appcompat/widget/y;->f:[I
  .line 6
    iput-boolean v0, p0, Landroidx/appcompat/widget/y;->b:Z
    return-void
.end method

.method private f(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
  .catch Ljava/lang/ClassCastException; { :L1 .. :L2 } :L2
  .registers 8
  .line 1
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result v0
    iget-object v1, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;
    const/4 v2, 0
  .line 2
    invoke-static { p1, v2, v0, v1, p3 }, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    move-result-object p1
  .line 3
    invoke-virtual { p1, p2 }, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    move-result-object p2
    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 4
    invoke-virtual { p3 }, Landroid/widget/TextView;->getLineSpacingExtra()F
    move-result p3
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 5
    invoke-virtual { v0 }, Landroid/widget/TextView;->getLineSpacingMultiplier()F
    move-result v0
  .line 6
    invoke-virtual { p2, p3, v0 }, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    move-result-object p2
    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 7
    invoke-virtual { p3 }, Landroid/widget/TextView;->getIncludeFontPadding()Z
    move-result p3
    invoke-virtual { p2, p3 }, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    move-result-object p2
    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 8
    invoke-virtual { p3 }, Landroid/widget/TextView;->getBreakStrategy()I
    move-result p3
    invoke-virtual { p2, p3 }, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    move-result-object p2
    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 9
    invoke-virtual { p3 }, Landroid/widget/TextView;->getHyphenationFrequency()I
    move-result p3
    invoke-virtual { p2, p3 }, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    move-result-object p2
    const/4 p3, -1
    if-ne p4, p3, :L0
    const p4, 2147483647
  :L0
  .line 10
    invoke-virtual { p2, p4 }, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;
  :L1
  .line 11
    iget-object p2, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;
    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { p2, p1, p3 }, Landroidx/appcompat/widget/y$c;->a(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
  :L2
  .line 12
    invoke-virtual { p1 }, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;
    move-result-object p1
    return-object p1
.end method

.method private g(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
  .registers 13
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    const/high16 v1, 16256
  .line 2
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    const-string v2, "mSpacingMult"
  .line 3
    invoke-static { v0, v2, v1 }, Landroidx/appcompat/widget/y;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Float;
    invoke-virtual { v0 }, Ljava/lang/Float;->floatValue()F
    move-result v6
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    const/4 v1, 0
  .line 5
    invoke-static { v1 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v1
    const-string v2, "mSpacingAdd"
  .line 6
    invoke-static { v0, v2, v1 }, Landroidx/appcompat/widget/y;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Float;
    invoke-virtual { v0 }, Ljava/lang/Float;->floatValue()F
    move-result v7
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    const-string v2, "mIncludePad"
  .line 9
    invoke-static { v0, v2, v1 }, Landroidx/appcompat/widget/y;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Boolean;
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v8
  .line 10
    new-instance v0, Landroid/text/StaticLayout;
    iget-object v3, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;
    move-object v1, v0
    move-object v2, p1
    move v4, p3
    move-object v5, p2
    invoke-direct/range { v1 .. v8 }, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    return-object v0
.end method

.method private h(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
  .registers 13
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getLineSpacingMultiplier()F
    move-result v6
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getLineSpacingExtra()F
    move-result v7
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getIncludeFontPadding()Z
    move-result v8
  .line 4
    new-instance v0, Landroid/text/StaticLayout;
    iget-object v3, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;
    move-object v1, v0
    move-object v2, p1
    move v4, p3
    move-object v5, p2
    invoke-direct/range { v1 .. v8 }, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    return-object v0
.end method

.method private i(Landroid/graphics/RectF;)I
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->f:[I
    array-length v0, v0
    if-eqz v0, :L3
    const/4 v1, 0
    const/4 v2, 1
    sub-int/2addr v0, v2
    const/4 v1, 1
    const/4 v2, 0
  :L0
    if-gt v1, v0, :L2
    add-int v2, v1, v0
  .line 2
    div-int/lit8 v2, v2, 2
  .line 3
    iget-object v3, p0, Landroidx/appcompat/widget/y;->f:[I
    aget v3, v3, v2
    invoke-direct { p0, v3, p1 }, Landroidx/appcompat/widget/y;->C(ILandroid/graphics/RectF;)Z
    move-result v3
    if-eqz v3, :L1
    add-int/lit8 v2, v2, 1
    move v4, v2
    move v2, v1
    move v1, v4
    goto :L0
  :L1
    add-int/lit8 v2, v2, -1
    move v0, v2
    goto :L0
  :L2
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/y;->f:[I
    aget p1, p1, v2
    return p1
  :L3
  .line 5
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "No available text sizes to choose from."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    goto :L5
  :L4
    throw p1
  :L5
    goto :L4
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/reflect/Field;
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    sget-object v0, Landroidx/appcompat/widget/y;->n:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-virtual { v0, p0 }, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/reflect/Field;
    if-nez v0, :L1
  .line 2
    const-class v0, Landroid/widget/TextView;
    invoke-virtual { v0, p0 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    if-eqz v0, :L1
    const/4 v1, 1
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 4
    sget-object v1, Landroidx/appcompat/widget/y;->n:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-virtual { v1, p0, v0 }, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-object v0
  :L2
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed to access TextView#"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, " member"
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 p0, 0
    return-object p0
.end method

.method private static p(Ljava/lang/String;)Ljava/lang/reflect/Method;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    sget-object v0, Landroidx/appcompat/widget/y;->m:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-virtual { v0, p0 }, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/reflect/Method;
    if-nez v0, :L1
  .line 2
    const-class v0, Landroid/widget/TextView;
    const/4 v1, 0
    new-array v1, v1, [Ljava/lang/Class;
    invoke-virtual { v0, p0, v1 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    if-eqz v0, :L1
    const/4 v1, 1
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  .line 4
    sget-object v1, Landroidx/appcompat/widget/y;->m:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-virtual { v1, p0, v0 }, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-object v0
  :L2
  .line 5
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed to retrieve TextView#"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "() method"
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 p0, 0
    return-object p0
.end method

.method static r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/Object;",
      "Ljava/lang/String;",
      "TT;)TT;"
    }
  .end annotation
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L5 } :L2
  .registers 6
    const/4 v0, 0
  :L0
  .line 1
    invoke-static { p1 }, Landroidx/appcompat/widget/y;->p(Ljava/lang/String;)Ljava/lang/reflect/Method;
    move-result-object v1
    new-array v2, v0, [Ljava/lang/Object;
  .line 2
    invoke-virtual { v1, p0, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p2
  :L1
    goto :L5
  :L2
    move-exception p0
    goto :L6
  :L3
    const/4 v0, 1
  :L4
  .line 3
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed to invoke TextView#"
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "() method"
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L5
    return-object p2
  :L6
  .line 4
    throw p0
.end method

.method private x(F)V
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getTextSize()F
    move-result v0
    cmpl-float v0, p1, v0
    if-eqz v0, :L8
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/text/TextPaint;->setTextSize(F)V
  .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 18
    const/4 v1, 0
    if-lt p1, v0, :L0
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { p1 }, Landroid/widget/TextView;->isInLayout()Z
    move-result p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;
    move-result-object v0
    if-eqz v0, :L8
  .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/y;->b:Z
  :L2
    const-string v0, "nullLayouts"
  .line 7
    invoke-static { v0 }, Landroidx/appcompat/widget/y;->p(Ljava/lang/String;)Ljava/lang/reflect/Method;
    move-result-object v0
    if-eqz v0, :L5
  .line 8
    iget-object v2, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    new-array v1, v1, [Ljava/lang/Object;
    invoke-virtual { v0, v2, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L3
    goto :L5
  :L4
    nop
  :L5
    if-nez p1, :L6
  .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { p1 }, Landroid/widget/TextView;->requestLayout()V
    goto :L7
  :L6
  .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { p1 }, Landroid/widget/TextView;->forceLayout()V
  :L7
  .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { p1 }, Landroid/widget/TextView;->invalidate()V
  :L8
    return-void
.end method

.method private z()Z
  .registers 8
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->D()Z
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L4
    iget v0, p0, Landroidx/appcompat/widget/y;->a:I
    const/4 v2, 1
    if-ne v0, v2, :L4
  .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->g:Z
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->f:[I
    array-length v0, v0
    if-nez v0, :L3
  :L0
  .line 3
    iget v0, p0, Landroidx/appcompat/widget/y;->e:F
    iget v3, p0, Landroidx/appcompat/widget/y;->d:F
    sub-float/2addr v0, v3
    iget v3, p0, Landroidx/appcompat/widget/y;->c:F
    div-float/2addr v0, v3
    float-to-double v3, v0
    invoke-static { v3, v4 }, Ljava/lang/Math;->floor(D)D
    move-result-wide v3
    double-to-int v0, v3
    add-int/2addr v0, v2
  .line 4
    new-array v3, v0, [I
  :L1
    if-ge v1, v0, :L2
  .line 5
    iget v4, p0, Landroidx/appcompat/widget/y;->d:F
    int-to-float v5, v1
    iget v6, p0, Landroidx/appcompat/widget/y;->c:F
    mul-float v5, v5, v6
    add-float/2addr v4, v5
    invoke-static { v4 }, Ljava/lang/Math;->round(F)I
    move-result v4
    aput v4, v3, v1
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
  .line 6
    invoke-direct { p0, v3 }, Landroidx/appcompat/widget/y;->c([I)[I
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/y;->f:[I
  :L3
  .line 7
    iput-boolean v2, p0, Landroidx/appcompat/widget/y;->b:Z
    goto :L5
  :L4
  .line 8
    iput-boolean v1, p0, Landroidx/appcompat/widget/y;->b:Z
  :L5
  .line 9
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->b:Z
    return v0
.end method

.method b()V
  .catchall { :L5 .. :L8 } :L7
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/y;->s()Z
    move-result v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->b:Z
    if-eqz v0, :L10
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getMeasuredHeight()I
    move-result v0
    if-lez v0, :L9
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v0
    if-gtz v0, :L1
    goto :L9
  :L1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/y$c;->b(Landroid/widget/TextView;)Z
    move-result v0
    if-eqz v0, :L2
    const/high16 v0, 16
    goto :L3
  :L2
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 6
    invoke-virtual { v0 }, Landroid/widget/TextView;->getMeasuredWidth()I
    move-result v0
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getTotalPaddingLeft()I
    move-result v1
    sub-int/2addr v0, v1
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 7
    invoke-virtual { v1 }, Landroid/widget/TextView;->getTotalPaddingRight()I
    move-result v1
    sub-int/2addr v0, v1
  :L3
  .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getHeight()I
    move-result v1
    iget-object v2, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v2 }, Landroid/widget/TextView;->getCompoundPaddingBottom()I
    move-result v2
    sub-int/2addr v1, v2
    iget-object v2, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
  .line 9
    invoke-virtual { v2 }, Landroid/widget/TextView;->getCompoundPaddingTop()I
    move-result v2
    sub-int/2addr v1, v2
    if-lez v0, :L9
    if-gtz v1, :L4
    goto :L9
  :L4
  .line 10
    sget-object v2, Landroidx/appcompat/widget/y;->l:Landroid/graphics/RectF;
    monitor-enter v2
  :L5
  .line 11
    sget-object v3, Landroidx/appcompat/widget/y;->l:Landroid/graphics/RectF;
    invoke-virtual { v3 }, Landroid/graphics/RectF;->setEmpty()V
  .line 12
    sget-object v3, Landroidx/appcompat/widget/y;->l:Landroid/graphics/RectF;
    int-to-float v0, v0
    iput v0, v3, Landroid/graphics/RectF;->right:F
  .line 13
    sget-object v0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/RectF;
    int-to-float v1, v1
    iput v1, v0, Landroid/graphics/RectF;->bottom:F
  .line 14
    sget-object v0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/RectF;
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/y;->i(Landroid/graphics/RectF;)I
    move-result v0
    int-to-float v0, v0
  .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getTextSize()F
    move-result v1
    cmpl-float v1, v0, v1
    if-eqz v1, :L6
    const/4 v1, 0
  .line 16
    invoke-virtual { p0, v1, v0 }, Landroidx/appcompat/widget/y;->y(IF)V
  :L6
  .line 17
    monitor-exit v2
    goto :L10
  :L7
    move-exception v0
    monitor-exit v2
  :L8
    throw v0
  :L9
    return-void
  :L10
    const/4 v0, 1
  .line 18
    iput-boolean v0, p0, Landroidx/appcompat/widget/y;->b:Z
    return-void
.end method

.method e(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-direct { p0, p1, p2, p3, p4 }, Landroidx/appcompat/widget/y;->f(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    move-result-object p1
    return-object p1
  :L0
    const/16 p4, 16
    if-lt v0, p4, :L1
  .line 3
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/y;->h(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    move-result-object p1
    return-object p1
  :L1
  .line 4
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/y;->g(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    move-result-object p1
    return-object p1
.end method

.method j()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/y;->e:F
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
    return v0
.end method

.method k()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/y;->d:F
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
    return v0
.end method

.method l()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/y;->c:F
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
    return v0
.end method

.method m()[I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->f:[I
    return-object v0
.end method

.method n()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/y;->a:I
    return v0
.end method

.method q(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/text/TextPaint;
    invoke-direct { v0 }, Landroid/text/TextPaint;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;
    goto :L1
  :L0
  .line 3
    invoke-virtual { v0 }, Landroid/text/TextPaint;->reset()V
  :L1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v1 }, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;
    int-to-float p1, p1
    invoke-virtual { v0, p1 }, Landroid/text/TextPaint;->setTextSize(F)V
    return-void
.end method

.method s()Z
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->D()Z
    move-result v0
    if-eqz v0, :L0
    iget v0, p0, Landroidx/appcompat/widget/y;->a:I
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method t(Landroid/util/AttributeSet;I)V
  .registers 13
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;
    sget-object v1, Lc/a/j;->AppCompatTextView:[I
    const/4 v2, 0
    invoke-virtual { v0, p1, v1, p2, v2 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object v0
  .line 2
    iget-object v3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;
    invoke-virtual { v3 }, Landroid/widget/TextView;->getContext()Landroid/content/Context;
    move-result-object v4
    sget-object v5, Lc/a/j;->AppCompatTextView:[I
    const/4 v9, 0
    move-object v6, p1
    move-object v7, v0
    move v8, p2
    invoke-static/range { v3 .. v9 }, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  .line 3
    sget p1, Lc/a/j;->AppCompatTextView_autoSizeTextType:I
    invoke-virtual { v0, p1 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p1
    if-eqz p1, :L0
  .line 4
    sget p1, Lc/a/j;->AppCompatTextView_autoSizeTextType:I
    invoke-virtual { v0, p1, v2 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/y;->a:I
  :L0
  .line 5
    sget p1, Lc/a/j;->AppCompatTextView_autoSizeStepGranularity:I
    invoke-virtual { v0, p1 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result p1
    const/high16 p2, -16512
    if-eqz p1, :L1
  .line 6
    sget p1, Lc/a/j;->AppCompatTextView_autoSizeStepGranularity:I
    invoke-virtual { v0, p1, p2 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result p1
    goto :L2
  :L1
    const/high16 p1, -16512
  :L2
  .line 7
    sget v1, Lc/a/j;->AppCompatTextView_autoSizeMinTextSize:I
    invoke-virtual { v0, v1 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v1
    if-eqz v1, :L3
  .line 8
    sget v1, Lc/a/j;->AppCompatTextView_autoSizeMinTextSize:I
    invoke-virtual { v0, v1, p2 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v1
    goto :L4
  :L3
    const/high16 v1, -16512
  :L4
  .line 9
    sget v3, Lc/a/j;->AppCompatTextView_autoSizeMaxTextSize:I
    invoke-virtual { v0, v3 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v3
    if-eqz v3, :L5
  .line 10
    sget v3, Lc/a/j;->AppCompatTextView_autoSizeMaxTextSize:I
    invoke-virtual { v0, v3, p2 }, Landroid/content/res/TypedArray;->getDimension(IF)F
    move-result v3
    goto :L6
  :L5
    const/high16 v3, -16512
  :L6
  .line 11
    sget v4, Lc/a/j;->AppCompatTextView_autoSizePresetSizes:I
    invoke-virtual { v0, v4 }, Landroid/content/res/TypedArray;->hasValue(I)Z
    move-result v4
    if-eqz v4, :L7
  .line 12
    sget v4, Lc/a/j;->AppCompatTextView_autoSizePresetSizes:I
    invoke-virtual { v0, v4, v2 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v4
    if-lez v4, :L7
  .line 13
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;
    move-result-object v5
  .line 14
    invoke-virtual { v5, v4 }, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
    move-result-object v4
  .line 15
    invoke-direct { p0, v4 }, Landroidx/appcompat/widget/y;->A(Landroid/content/res/TypedArray;)V
  .line 16
    invoke-virtual { v4 }, Landroid/content/res/TypedArray;->recycle()V
  :L7
  .line 17
    invoke-virtual { v0 }, Landroid/content/res/TypedArray;->recycle()V
  .line 18
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->D()Z
    move-result v0
    if-eqz v0, :L12
  .line 19
    iget v0, p0, Landroidx/appcompat/widget/y;->a:I
    const/4 v2, 1
    if-ne v0, v2, :L13
  .line 20
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->g:Z
    if-nez v0, :L11
  .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;
  .line 22
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    const/4 v2, 2
    cmpl-float v4, v1, p2
    if-nez v4, :L8
    const/high16 v1, 16704
  .line 23
    invoke-static { v2, v1, v0 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result v1
  :L8
    cmpl-float v4, v3, p2
    if-nez v4, :L9
    const/high16 v3, 17120
  .line 24
    invoke-static { v2, v3, v0 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result v3
  :L9
    cmpl-float p2, p1, p2
    if-nez p2, :L10
    const/high16 p1, 16256
  :L10
  .line 25
    invoke-direct { p0, v1, v3, p1 }, Landroidx/appcompat/widget/y;->E(FFF)V
  :L11
  .line 26
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->z()Z
    goto :L13
  :L12
  .line 27
    iput v2, p0, Landroidx/appcompat/widget/y;->a:I
  :L13
    return-void
.end method

.method u(IIII)V
  .registers 6
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->D()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    int-to-float p1, p1
  .line 3
    invoke-static { p4, p1, v0 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result p1
    int-to-float p2, p2
  .line 4
    invoke-static { p4, p2, v0 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result p2
    int-to-float p3, p3
  .line 5
    invoke-static { p4, p3, v0 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result p3
  .line 6
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/y;->E(FFF)V
  .line 7
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->z()Z
    move-result p1
    if-eqz p1, :L0
  .line 8
    invoke-virtual { p0 }, Landroidx/appcompat/widget/y;->b()V
  :L0
    return-void
.end method

.method v([II)V
  .registers 8
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->D()Z
    move-result v0
    if-eqz v0, :L6
  .line 2
    array-length v0, p1
    const/4 v1, 0
    if-lez v0, :L4
  .line 3
    new-array v2, v0, [I
    if-nez p2, :L0
  .line 4
    invoke-static { p1, v0 }, Ljava/util/Arrays;->copyOf([II)[I
    move-result-object v2
    goto :L2
  :L0
  .line 5
    iget-object v3, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;
  .line 6
    invoke-virtual { v3 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    invoke-virtual { v3 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v3
  :L1
    if-ge v1, v0, :L2
  .line 7
    aget v4, p1, v1
    int-to-float v4, v4
    invoke-static { p2, v4, v3 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result v4
    invoke-static { v4 }, Ljava/lang/Math;->round(F)I
    move-result v4
    aput v4, v2, v1
    add-int/lit8 v1, v1, 1
    goto :L1
  :L2
  .line 8
    invoke-direct { p0, v2 }, Landroidx/appcompat/widget/y;->c([I)[I
    move-result-object p2
    iput-object p2, p0, Landroidx/appcompat/widget/y;->f:[I
  .line 9
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->B()Z
    move-result p2
    if-eqz p2, :L3
    goto :L5
  :L3
  .line 10
    new-instance p2, Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "None of the preset sizes is valid: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    invoke-static { p1 }, Ljava/util/Arrays;->toString([I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p2
  :L4
  .line 12
    iput-boolean v1, p0, Landroidx/appcompat/widget/y;->g:Z
  :L5
  .line 13
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->z()Z
    move-result p1
    if-eqz p1, :L6
  .line 14
    invoke-virtual { p0 }, Landroidx/appcompat/widget/y;->b()V
  :L6
    return-void
.end method

.method w(I)V
  .registers 5
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->D()Z
    move-result v0
    if-eqz v0, :L2
    if-eqz p1, :L1
    const/4 v0, 1
    if-ne p1, v0, :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p1
    const/high16 v0, 16704
    const/4 v1, 2
  .line 4
    invoke-static { v1, v0, p1 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result v0
    const/high16 v2, 17120
  .line 5
    invoke-static { v1, v2, p1 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result p1
    const/high16 v1, 16256
  .line 6
    invoke-direct { p0, v0, p1, v1 }, Landroidx/appcompat/widget/y;->E(FFF)V
  .line 7
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->z()Z
    move-result p1
    if-eqz p1, :L2
  .line 8
    invoke-virtual { p0 }, Landroidx/appcompat/widget/y;->b()V
    goto :L2
  :L0
  .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unknown auto-size text type: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 10
    invoke-direct { p0 }, Landroidx/appcompat/widget/y;->d()V
  :L2
    return-void
.end method

.method y(IF)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;
    if-nez v0, :L0
  .line 2
    invoke-static { }, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
    move-result-object v0
    goto :L1
  :L0
  .line 3
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
  :L1
  .line 4
    invoke-virtual { v0 }, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    invoke-static { p1, p2, v0 }, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/y;->x(F)V
    return-void
.end method
