.class Landroidx/appcompat/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/y$b;,
        Landroidx/appcompat/widget/y$a;,
        Landroidx/appcompat/widget/y$c;
    }
.end annotation


# static fields
.field private static final l:Landroid/graphics/RectF;

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


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/RectF;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/y;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/y;->n:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/y;->a:I

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/y;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

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
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2c

    .line 12
    new-instance p1, Landroidx/appcompat/widget/y$b;

    invoke-direct {p1}, Landroidx/appcompat/widget/y$b;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;

    goto :goto_3f

    :cond_2c
    const/16 v0, 0x17

    if-lt p1, v0, :cond_38

    .line 13
    new-instance p1, Landroidx/appcompat/widget/y$a;

    invoke-direct {p1}, Landroidx/appcompat/widget/y$a;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;

    goto :goto_3f

    .line 14
    :cond_38
    new-instance p1, Landroidx/appcompat/widget/y$c;

    invoke-direct {p1}, Landroidx/appcompat/widget/y$c;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;

    :goto_3f
    return-void
.end method

.method private A(Landroid/content/res/TypedArray;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    if-lez v0, :cond_1e

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    const/4 v3, -0x1

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4
    :cond_15
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/y;->c([I)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/y;->f:[I

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->B()Z

    :cond_1e
    return-void
.end method

.method private B()Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->f:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    .line 2
    :goto_a
    iput-boolean v3, p0, Landroidx/appcompat/widget/y;->g:Z

    if-eqz v3, :cond_21

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

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/y;->c:F

    .line 7
    :cond_21
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->g:Z

    return v0
.end method

.method private C(ILandroid/graphics/RectF;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-interface {v1, v0, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object v0, v1

    .line 4
    :cond_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, -0x1

    if-lt v1, v2, :cond_25

    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, -0x1

    .line 5
    :goto_26
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->q(I)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v4, "getLayoutAlignment"

    invoke-static {p1, v4, v2}, Landroidx/appcompat/widget/y;->r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Alignment;

    .line 7
    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/appcompat/widget/y;->e(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eq v1, v3, :cond_59

    .line 8
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-gt v3, v1, :cond_58

    .line 9
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v1, v0, :cond_59

    :cond_58
    return v2

    .line 10
    :cond_59
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_65

    return v2

    :cond_65
    return v4
.end method

.method private D()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    instance-of v0, v0, Landroidx/appcompat/widget/j;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private E(FFF)V
    .registers 7

    const-string v0, "px) is less or equal to (0px)"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-lez v2, :cond_5a

    cmpg-float v2, p2, p1

    if-lez v2, :cond_36

    cmpg-float v1, p3, v1

    if-lez v1, :cond_1c

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/y;->a:I

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/y;->d:F

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/y;->e:F

    .line 4
    iput p3, p0, Landroidx/appcompat/widget/y;->c:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/y;->g:Z

    return-void

    .line 6
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The auto-size step granularity ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_36
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum auto-size text size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 8
    :cond_5a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minimum auto-size text size ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/y;->o(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p2

    .line 2
    :cond_7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 3
    :catch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to access TextView#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " member"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object p2
.end method

.method private c([I)[I
    .registers 8

    .line 1
    array-length v0, p1

    if-nez v0, :cond_4

    return-object p1

    .line 2
    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_28

    .line 4
    aget v4, p1, v3

    if-lez v4, :cond_25

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_25

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 7
    :cond_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2f

    return-object p1

    .line 8
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 9
    new-array v0, p1, [I

    :goto_35
    if-ge v2, p1, :cond_46

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_46
    return-object v0
.end method

.method private d()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/y;->a:I

    const/high16 v1, -0x40800000    # -1.0f

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
    .registers 8

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v2, v0, v1, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p3

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    .line 6
    invoke-virtual {p2, p3, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p3}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p3}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p3}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    const/4 p3, -0x1

    if-ne p4, p3, :cond_43

    const p4, 0x7fffffff

    .line 10
    :cond_43
    invoke-virtual {p2, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 11
    :try_start_46
    iget-object p2, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;

    iget-object p3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/y$c;->a(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    :try_end_4d
    .catch Ljava/lang/ClassCastException; {:try_start_46 .. :try_end_4d} :catch_4d

    .line 12
    :catch_4d
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mSpacingMult"

    .line 3
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/y;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mSpacingAdd"

    .line 6
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/y;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "mIncludePad"

    .line 9
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/y;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 10
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;

    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private h(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v7

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v8

    .line 4
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;

    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private i(Landroid/graphics/RectF;)I
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->f:[I

    array-length v0, v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_a
    if-gt v1, v0, :cond_24

    add-int v2, v1, v0

    .line 2
    div-int/lit8 v2, v2, 0x2

    .line 3
    iget-object v3, p0, Landroidx/appcompat/widget/y;->f:[I

    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Landroidx/appcompat/widget/y;->C(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_20

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_a

    :cond_20
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_a

    .line 4
    :cond_24
    iget-object p1, p0, Landroidx/appcompat/widget/y;->f:[I

    aget p1, p1, v2

    return p1

    .line 5
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No available text sizes to choose from."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :goto_31
    throw p1

    :goto_32
    goto :goto_31
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/y;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_1b

    .line 2
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    sget-object v1, Landroidx/appcompat/widget/y;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    return-object v0

    .line 5
    :catch_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to access TextView#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " member"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method private static p(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/y;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1e

    .line 2
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    sget-object v1, Landroidx/appcompat/widget/y;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-object v0

    .line 5
    :catch_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve TextView#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method static r(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
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

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p1}, Landroidx/appcompat/widget/y;->p(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_24

    :catchall_c
    move-exception p0

    goto :goto_25

    :catch_e
    const/4 v0, 0x1

    .line 3
    :try_start_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to invoke TextView#"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_c

    :goto_24
    return-object p2

    .line 4
    :goto_25
    throw p0
.end method

.method private x(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_53

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-lt p1, v0, :cond_25

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isInLayout()Z

    move-result p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 5
    :goto_26
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 6
    iput-boolean v1, p0, Landroidx/appcompat/widget/y;->b:Z

    :try_start_30
    const-string v0, "nullLayouts"

    .line 7
    invoke-static {v0}, Landroidx/appcompat/widget/y;->p(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 8
    iget-object v2, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    nop

    :cond_41
    :goto_41
    if-nez p1, :cond_49

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_4e

    .line 10
    :cond_49
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->forceLayout()V

    .line 11
    :goto_4e
    iget-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_53
    return-void
.end method

.method private z()Z
    .registers 8

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    iget v0, p0, Landroidx/appcompat/widget/y;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_42

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->g:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/appcompat/widget/y;->f:[I

    array-length v0, v0

    if-nez v0, :cond_3f

    .line 3
    :cond_15
    iget v0, p0, Landroidx/appcompat/widget/y;->e:F

    iget v3, p0, Landroidx/appcompat/widget/y;->d:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/appcompat/widget/y;->c:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 4
    new-array v3, v0, [I

    :goto_26
    if-ge v1, v0, :cond_39

    .line 5
    iget v4, p0, Landroidx/appcompat/widget/y;->d:F

    int-to-float v5, v1

    iget v6, p0, Landroidx/appcompat/widget/y;->c:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 6
    :cond_39
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/y;->c([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/y;->f:[I

    .line 7
    :cond_3f
    iput-boolean v2, p0, Landroidx/appcompat/widget/y;->b:Z

    goto :goto_44

    .line 8
    :cond_42
    iput-boolean v1, p0, Landroidx/appcompat/widget/y;->b:Z

    .line 9
    :goto_44
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->b:Z

    return v0
.end method


# virtual methods
.method b()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->s()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->b:Z

    if-eqz v0, :cond_83

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_82

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1c

    goto :goto_82

    .line 4
    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/widget/y;->k:Landroidx/appcompat/widget/y$c;

    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y$c;->b(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/high16 v0, 0x100000

    goto :goto_3d

    .line 5
    :cond_29
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8
    :goto_3d
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_82

    if-gtz v1, :cond_56

    goto :goto_82

    .line 10
    :cond_56
    sget-object v2, Landroidx/appcompat/widget/y;->l:Landroid/graphics/RectF;

    monitor-enter v2

    .line 11
    :try_start_59
    sget-object v3, Landroidx/appcompat/widget/y;->l:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

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

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/y;->i(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/y;->y(IF)V

    .line 17
    :cond_7d
    monitor-exit v2

    goto :goto_83

    :catchall_7f
    move-exception v0

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_59 .. :try_end_81} :catchall_7f

    throw v0

    :cond_82
    :goto_82
    return-void

    :cond_83
    :goto_83
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/appcompat/widget/y;->b:Z

    return-void
.end method

.method e(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/y;->f(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 p4, 0x10

    if-lt v0, p4, :cond_14

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/y;->h(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    .line 4
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/y;->g(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method j()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/y;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method k()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/y;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method l()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/y;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

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

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;

    goto :goto_f

    .line 3
    :cond_c
    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    .line 4
    :goto_f
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;

    iget-object v1, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method s()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->D()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroidx/appcompat/widget/y;->a:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method t(Landroid/util/AttributeSet;I)V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;

    sget-object v1, Lc/a/j;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    iget-object v3, p0, Landroidx/appcompat/widget/y;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lc/a/j;->AppCompatTextView:[I

    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, v0

    move v8, p2

    invoke-static/range {v3 .. v9}, Landroidx/core/view/v;->m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 3
    sget p1, Lc/a/j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 4
    sget p1, Lc/a/j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/y;->a:I

    .line 5
    :cond_28
    sget p1, Lc/a/j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    if-eqz p1, :cond_39

    .line 6
    sget p1, Lc/a/j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    goto :goto_3b

    :cond_39
    const/high16 p1, -0x40800000    # -1.0f

    .line 7
    :goto_3b
    sget v1, Lc/a/j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 8
    sget v1, Lc/a/j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_4c

    :cond_4a
    const/high16 v1, -0x40800000    # -1.0f

    .line 9
    :goto_4c
    sget v3, Lc/a/j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 10
    sget v3, Lc/a/j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v0, v3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_5d

    :cond_5b
    const/high16 v3, -0x40800000    # -1.0f

    .line 11
    :goto_5d
    sget v4, Lc/a/j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 12
    sget v4, Lc/a/j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_7b

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 14
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 15
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/y;->A(Landroid/content/res/TypedArray;)V

    .line 16
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    :cond_7b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->D()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 19
    iget v0, p0, Landroidx/appcompat/widget/y;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_bb

    .line 20
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->g:Z

    if-nez v0, :cond_b5

    .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x2

    cmpl-float v4, v1, p2

    if-nez v4, :cond_a2

    const/high16 v1, 0x41400000    # 12.0f

    .line 23
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    :cond_a2
    cmpl-float v4, v3, p2

    if-nez v4, :cond_ac

    const/high16 v3, 0x42e00000    # 112.0f

    .line 24
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_ac
    cmpl-float p2, p1, p2

    if-nez p2, :cond_b2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    :cond_b2
    invoke-direct {p0, v1, v3, p1}, Landroidx/appcompat/widget/y;->E(FFF)V

    .line 26
    :cond_b5
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->z()Z

    goto :goto_bb

    .line 27
    :cond_b9
    iput v2, p0, Landroidx/appcompat/widget/y;->a:I

    :cond_bb
    :goto_bb
    return-void
.end method

.method u(IIII)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->D()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 3
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 4
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 5
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/y;->E(FFF)V

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->z()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->b()V

    :cond_2b
    return-void
.end method

.method v([II)V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->D()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_57

    .line 3
    new-array v2, v0, [I

    if-nez p2, :cond_13

    .line 4
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_2f

    .line 5
    :cond_13
    iget-object v3, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;

    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_1d
    if-ge v1, v0, :cond_2f

    .line 7
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 8
    :cond_2f
    :goto_2f
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/y;->c([I)[I

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/y;->f:[I

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->B()Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_59

    .line 10
    :cond_3c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None of the preset sizes is valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_57
    iput-boolean v1, p0, Landroidx/appcompat/widget/y;->g:Z

    .line 13
    :goto_59
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->z()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->b()V

    :cond_62
    return-void
.end method

.method w(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->D()Z

    move-result v0

    if-eqz v0, :cond_4b

    if-eqz p1, :cond_48

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000    # 112.0f

    .line 5
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/widget/y;->E(FFF)V

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->z()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->b()V

    goto :goto_4b

    .line 9
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown auto-size text type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_48
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->d()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method y(IF)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->j:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_d

    .line 3
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    :goto_d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/y;->x(F)V

    return-void
.end method
