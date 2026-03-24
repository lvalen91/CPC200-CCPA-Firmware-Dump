.class public Ld/c/a/a/x/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ld/c/a/a/x/d;->m:Z

    .line 3
    sget-object v1, Ld/c/a/a/k;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Ld/c/a/a/x/d;->k:F

    .line 5
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textColor:I

    .line 6
    invoke-static {p1, v1, v2}, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Ld/c/a/a/x/d;->a:Landroid/content/res/ColorStateList;

    .line 7
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textColorHint:I

    .line 8
    invoke-static {p1, v1, v2}, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 9
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textColorLink:I

    .line 10
    invoke-static {p1, v1, v2}, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 11
    sget v2, Ld/c/a/a/k;->TextAppearance_android_textStyle:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ld/c/a/a/x/d;->d:I

    .line 12
    sget v2, Ld/c/a/a/k;->TextAppearance_android_typeface:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ld/c/a/a/x/d;->e:I

    .line 13
    sget v2, Ld/c/a/a/k;->TextAppearance_fontFamily:I

    sget v4, Ld/c/a/a/k;->TextAppearance_android_fontFamily:I

    .line 14
    invoke-static {v1, v2, v4}, Ld/c/a/a/x/c;->e(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Ld/c/a/a/x/d;->l:I

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ld/c/a/a/x/d;->c:Ljava/lang/String;

    .line 17
    sget v2, Ld/c/a/a/k;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 18
    sget v2, Ld/c/a/a/k;->TextAppearance_android_shadowColor:I

    .line 19
    invoke-static {p1, v1, v2}, Ld/c/a/a/x/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Ld/c/a/a/x/d;->b:Landroid/content/res/ColorStateList;

    .line 20
    sget v2, Ld/c/a/a/k;->TextAppearance_android_shadowDx:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ld/c/a/a/x/d;->f:F

    .line 21
    sget v2, Ld/c/a/a/k;->TextAppearance_android_shadowDy:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ld/c/a/a/x/d;->g:F

    .line 22
    sget v2, Ld/c/a/a/k;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ld/c/a/a/x/d;->h:F

    .line 23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_94

    .line 25
    sget-object v0, Ld/c/a/a/k;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 26
    sget p2, Ld/c/a/a/k;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Ld/c/a/a/x/d;->i:Z

    .line 27
    sget p2, Ld/c/a/a/k;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Ld/c/a/a/x/d;->j:F

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_98

    .line 29
    :cond_94
    iput-boolean v0, p0, Ld/c/a/a/x/d;->i:Z

    .line 30
    iput v3, p0, Ld/c/a/a/x/d;->j:F

    :goto_98
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

    if-nez v0, :cond_10

    iget-object v0, p0, Ld/c/a/a/x/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 2
    iget v1, p0, Ld/c/a/a/x/d;->d:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    .line 3
    :cond_10
    iget-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    if-nez v0, :cond_3c

    .line 4
    iget v0, p0, Ld/c/a/a/x/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    .line 5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    goto :goto_32

    .line 6
    :cond_24
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    goto :goto_32

    .line 7
    :cond_29
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    goto :goto_32

    .line 8
    :cond_2e
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    .line 9
    :goto_32
    iget-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    iget v1, p0, Ld/c/a/a/x/d;->d:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    :cond_3c
    return-void
.end method

.method private i(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {}, Ld/c/a/a/x/e;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget v0, p0, Ld/c/a/a/x/d;->l:I

    if-eqz v0, :cond_11

    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/c/f;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method


# virtual methods
.method public e()Landroid/graphics/Typeface;
    .registers 2

    .line 1
    invoke-direct {p0}, Ld/c/a/a/x/d;->d()V

    .line 2
    iget-object v0, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ld/c/a/a/x/d;->m:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    return-object p1

    .line 3
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_32

    .line 4
    :try_start_d
    iget v0, p0, Ld/c/a/a/x/d;->l:I

    invoke-static {p1, v0}, Landroidx/core/content/c/f;->c(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    if-eqz p1, :cond_32

    .line 5
    iget v0, p0, Ld/c/a/a/x/d;->d:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;
    :try_end_1f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_1f} :catch_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_1f} :catch_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_20

    goto :goto_32

    .line 6
    :catch_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading font "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/c/a/a/x/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    :catch_32
    :cond_32
    :goto_32
    invoke-direct {p0}, Ld/c/a/a/x/d;->d()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Ld/c/a/a/x/d;->m:Z

    .line 9
    iget-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public g(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ld/c/a/a/x/d;->e()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ld/c/a/a/x/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    new-instance v0, Ld/c/a/a/x/d$b;

    invoke-direct {v0, p0, p2, p3}, Ld/c/a/a/x/d$b;-><init>(Ld/c/a/a/x/d;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V

    invoke-virtual {p0, p1, v0}, Ld/c/a/a/x/d;->h(Landroid/content/Context;Ld/c/a/a/x/f;)V

    return-void
.end method

.method public h(Landroid/content/Context;Ld/c/a/a/x/f;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Ld/c/a/a/x/d;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0, p1}, Ld/c/a/a/x/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    goto :goto_d

    .line 3
    :cond_a
    invoke-direct {p0}, Ld/c/a/a/x/d;->d()V

    .line 4
    :goto_d
    iget v0, p0, Ld/c/a/a/x/d;->l:I

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 5
    iput-boolean v1, p0, Ld/c/a/a/x/d;->m:Z

    .line 6
    :cond_14
    iget-boolean v0, p0, Ld/c/a/a/x/d;->m:Z

    if-eqz v0, :cond_1e

    .line 7
    iget-object p1, p0, Ld/c/a/a/x/d;->n:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Ld/c/a/a/x/f;->b(Landroid/graphics/Typeface;Z)V

    return-void

    .line 8
    :cond_1e
    :try_start_1e
    iget v0, p0, Ld/c/a/a/x/d;->l:I

    new-instance v2, Ld/c/a/a/x/d$a;

    invoke-direct {v2, p0, p2}, Ld/c/a/a/x/d$a;-><init>(Ld/c/a/a/x/d;Ld/c/a/a/x/f;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Landroidx/core/content/c/f;->e(Landroid/content/Context;ILandroidx/core/content/c/f$a;Landroid/os/Handler;)V
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_29} :catch_43
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_48

    .line 9
    :catch_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading font "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/c/a/a/x/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Ld/c/a/a/x/d;->m:Z

    const/4 p1, -0x3

    .line 11
    invoke-virtual {p2, p1}, Ld/c/a/a/x/f;->a(I)V

    goto :goto_48

    .line 12
    :catch_43
    iput-boolean v1, p0, Ld/c/a/a/x/d;->m:Z

    .line 13
    invoke-virtual {p2, v1}, Ld/c/a/a/x/f;->a(I)V

    :goto_48
    return-void
.end method

.method public j(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
    .registers 8

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ld/c/a/a/x/d;->k(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V

    .line 2
    iget-object p1, p0, Ld/c/a/a/x/d;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_12

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_14

    :cond_12
    const/high16 p1, -0x1000000

    .line 4
    :goto_14
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 5
    iget p1, p0, Ld/c/a/a/x/d;->h:F

    iget p3, p0, Ld/c/a/a/x/d;->f:F

    iget v0, p0, Ld/c/a/a/x/d;->g:F

    iget-object v1, p0, Ld/c/a/a/x/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2c

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 7
    :goto_2d
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public k(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Ld/c/a/a/x/d;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {p0, p1}, Ld/c/a/a/x/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ld/c/a/a/x/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    goto :goto_11

    .line 3
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Ld/c/a/a/x/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V

    :goto_11
    return-void
.end method

.method public l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget v0, p0, Ld/c/a/a/x/d;->d:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 3
    :goto_13
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1d

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    .line 4
    :goto_1e
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 5
    iget p2, p0, Ld/c/a/a/x/d;->k:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_35

    .line 7
    iget-boolean p2, p0, Ld/c/a/a/x/d;->i:Z

    if-eqz p2, :cond_35

    .line 8
    iget p2, p0, Ld/c/a/a/x/d;->j:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_35
    return-void
.end method
