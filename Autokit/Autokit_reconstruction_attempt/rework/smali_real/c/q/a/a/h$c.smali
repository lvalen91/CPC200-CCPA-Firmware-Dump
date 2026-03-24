.class Lc/q/a/a/h$c;
.super Lc/q/a/a/h$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/q/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private e:[I

.field f:Landroidx/core/content/c/b;

.field g:F

.field h:Landroidx/core/content/c/b;

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:Landroid/graphics/Paint$Cap;

.field o:Landroid/graphics/Paint$Join;

.field p:F


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lc/q/a/a/h$f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/q/a/a/h$c;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lc/q/a/a/h$c;->i:F

    .line 4
    iput v1, p0, Lc/q/a/a/h$c;->j:F

    .line 5
    iput v0, p0, Lc/q/a/a/h$c;->k:F

    .line 6
    iput v1, p0, Lc/q/a/a/h$c;->l:F

    .line 7
    iput v0, p0, Lc/q/a/a/h$c;->m:F

    .line 8
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lc/q/a/a/h$c;->n:Landroid/graphics/Paint$Cap;

    .line 9
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lc/q/a/a/h$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 10
    iput v0, p0, Lc/q/a/a/h$c;->p:F

    return-void
.end method

.method constructor <init>(Lc/q/a/a/h$c;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1}, Lc/q/a/a/h$f;-><init>(Lc/q/a/a/h$f;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lc/q/a/a/h$c;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lc/q/a/a/h$c;->i:F

    .line 14
    iput v1, p0, Lc/q/a/a/h$c;->j:F

    .line 15
    iput v0, p0, Lc/q/a/a/h$c;->k:F

    .line 16
    iput v1, p0, Lc/q/a/a/h$c;->l:F

    .line 17
    iput v0, p0, Lc/q/a/a/h$c;->m:F

    .line 18
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lc/q/a/a/h$c;->n:Landroid/graphics/Paint$Cap;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lc/q/a/a/h$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    iput v0, p0, Lc/q/a/a/h$c;->p:F

    .line 21
    iget-object v0, p1, Lc/q/a/a/h$c;->e:[I

    iput-object v0, p0, Lc/q/a/a/h$c;->e:[I

    .line 22
    iget-object v0, p1, Lc/q/a/a/h$c;->f:Landroidx/core/content/c/b;

    iput-object v0, p0, Lc/q/a/a/h$c;->f:Landroidx/core/content/c/b;

    .line 23
    iget v0, p1, Lc/q/a/a/h$c;->g:F

    iput v0, p0, Lc/q/a/a/h$c;->g:F

    .line 24
    iget v0, p1, Lc/q/a/a/h$c;->i:F

    iput v0, p0, Lc/q/a/a/h$c;->i:F

    .line 25
    iget-object v0, p1, Lc/q/a/a/h$c;->h:Landroidx/core/content/c/b;

    iput-object v0, p0, Lc/q/a/a/h$c;->h:Landroidx/core/content/c/b;

    .line 26
    iget v0, p1, Lc/q/a/a/h$f;->c:I

    iput v0, p0, Lc/q/a/a/h$f;->c:I

    .line 27
    iget v0, p1, Lc/q/a/a/h$c;->j:F

    iput v0, p0, Lc/q/a/a/h$c;->j:F

    .line 28
    iget v0, p1, Lc/q/a/a/h$c;->k:F

    iput v0, p0, Lc/q/a/a/h$c;->k:F

    .line 29
    iget v0, p1, Lc/q/a/a/h$c;->l:F

    iput v0, p0, Lc/q/a/a/h$c;->l:F

    .line 30
    iget v0, p1, Lc/q/a/a/h$c;->m:F

    iput v0, p0, Lc/q/a/a/h$c;->m:F

    .line 31
    iget-object v0, p1, Lc/q/a/a/h$c;->n:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lc/q/a/a/h$c;->n:Landroid/graphics/Paint$Cap;

    .line 32
    iget-object v0, p1, Lc/q/a/a/h$c;->o:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lc/q/a/a/h$c;->o:Landroid/graphics/Paint$Join;

    .line 33
    iget p1, p1, Lc/q/a/a/h$c;->p:F

    iput p1, p0, Lc/q/a/a/h$c;->p:F

    return-void
.end method

.method private e(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .registers 4

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-object p2

    .line 1
    :cond_9
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p1

    .line 2
    :cond_c
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p1

    .line 3
    :cond_f
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p1
.end method

.method private f(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .registers 4

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-object p2

    .line 1
    :cond_9
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p1

    .line 2
    :cond_c
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p1

    .line 3
    :cond_f
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p1
.end method

.method private h(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .registers 11

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/q/a/a/h$c;->e:[I

    const-string v0, "pathData"

    .line 2
    invoke-static {p2, v0}, Landroidx/core/content/c/g;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4
    iput-object v0, p0, Lc/q/a/a/h$f;->b:Ljava/lang/String;

    :cond_15
    const/4 v0, 0x2

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 6
    invoke-static {v0}, Lc/g/d/c;->d(Ljava/lang/String;)[Lc/g/d/c$b;

    move-result-object v0

    iput-object v0, p0, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    :cond_22
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "fillColor"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 7
    invoke-static/range {v1 .. v6}, Landroidx/core/content/c/g;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/c/b;

    move-result-object v0

    iput-object v0, p0, Lc/q/a/a/h$c;->h:Landroidx/core/content/c/b;

    const/16 v0, 0xc

    .line 8
    iget v1, p0, Lc/q/a/a/h$c;->j:F

    const-string v2, "fillAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lc/q/a/a/h$c;->j:F

    const/16 v0, 0x8

    const-string v1, "strokeLineCap"

    const/4 v2, -0x1

    .line 9
    invoke-static {p1, p2, v1, v0, v2}, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 10
    iget-object v1, p0, Lc/q/a/a/h$c;->n:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v1}, Lc/q/a/a/h$c;->e(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Lc/q/a/a/h$c;->n:Landroid/graphics/Paint$Cap;

    const/16 v0, 0x9

    const-string v1, "strokeLineJoin"

    .line 11
    invoke-static {p1, p2, v1, v0, v2}, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 12
    iget-object v1, p0, Lc/q/a/a/h$c;->o:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Lc/q/a/a/h$c;->f(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Lc/q/a/a/h$c;->o:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    .line 13
    iget v1, p0, Lc/q/a/a/h$c;->p:F

    const-string v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lc/q/a/a/h$c;->p:F

    const/4 v5, 0x3

    const-string v4, "strokeColor"

    move-object v1, p1

    move-object v2, p2

    .line 14
    invoke-static/range {v1 .. v6}, Landroidx/core/content/c/g;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/c/b;

    move-result-object p3

    iput-object p3, p0, Lc/q/a/a/h$c;->f:Landroidx/core/content/c/b;

    const/16 p3, 0xb

    .line 15
    iget v0, p0, Lc/q/a/a/h$c;->i:F

    const-string v1, "strokeAlpha"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lc/q/a/a/h$c;->i:F

    const/4 p3, 0x4

    .line 16
    iget v0, p0, Lc/q/a/a/h$c;->g:F

    const-string v1, "strokeWidth"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lc/q/a/a/h$c;->g:F

    const/4 p3, 0x6

    .line 17
    iget v0, p0, Lc/q/a/a/h$c;->l:F

    const-string v1, "trimPathEnd"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lc/q/a/a/h$c;->l:F

    const/4 p3, 0x7

    .line 18
    iget v0, p0, Lc/q/a/a/h$c;->m:F

    const-string v1, "trimPathOffset"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lc/q/a/a/h$c;->m:F

    const/4 p3, 0x5

    .line 19
    iget v0, p0, Lc/q/a/a/h$c;->k:F

    const-string v1, "trimPathStart"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->f(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lc/q/a/a/h$c;->k:F

    const/16 p3, 0xd

    .line 20
    iget v0, p0, Lc/q/a/a/h$f;->c:I

    const-string v1, "fillType"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lc/q/a/a/h$f;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/h$c;->h:Landroidx/core/content/c/b;

    invoke-virtual {v0}, Landroidx/core/content/c/b;->i()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lc/q/a/a/h$c;->f:Landroidx/core/content/c/b;

    invoke-virtual {v0}, Landroidx/core/content/c/b;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public b([I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lc/q/a/a/h$c;->h:Landroidx/core/content/c/b;

    invoke-virtual {v0, p1}, Landroidx/core/content/c/b;->j([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lc/q/a/a/h$c;->f:Landroidx/core/content/c/b;

    invoke-virtual {v1, p1}, Landroidx/core/content/c/b;->j([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public g(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .line 1
    sget-object v0, Lc/q/a/a/a;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/c/g;->k(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p4, p3}, Lc/q/a/a/h$c;->h(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method getFillAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Lc/q/a/a/h$c;->j:F

    return v0
.end method

.method getFillColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/h$c;->h:Landroidx/core/content/c/b;

    invoke-virtual {v0}, Landroidx/core/content/c/b;->e()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Lc/q/a/a/h$c;->i:F

    return v0
.end method

.method getStrokeColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/h$c;->f:Landroidx/core/content/c/b;

    invoke-virtual {v0}, Landroidx/core/content/c/b;->e()I

    move-result v0

    return v0
.end method

.method getStrokeWidth()F
    .registers 2

    .line 1
    iget v0, p0, Lc/q/a/a/h$c;->g:F

    return v0
.end method

.method getTrimPathEnd()F
    .registers 2

    .line 1
    iget v0, p0, Lc/q/a/a/h$c;->l:F

    return v0
.end method

.method getTrimPathOffset()F
    .registers 2

    .line 1
    iget v0, p0, Lc/q/a/a/h$c;->m:F

    return v0
.end method

.method getTrimPathStart()F
    .registers 2

    .line 1
    iget v0, p0, Lc/q/a/a/h$c;->k:F

    return v0
.end method

.method setFillAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Lc/q/a/a/h$c;->j:F

    return-void
.end method

.method setFillColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/h$c;->h:Landroidx/core/content/c/b;

    invoke-virtual {v0, p1}, Landroidx/core/content/c/b;->k(I)V

    return-void
.end method

.method setStrokeAlpha(F)V
    .registers 2

    .line 1
    iput p1, p0, Lc/q/a/a/h$c;->i:F

    return-void
.end method

.method setStrokeColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/h$c;->f:Landroidx/core/content/c/b;

    invoke-virtual {v0, p1}, Landroidx/core/content/c/b;->k(I)V

    return-void
.end method

.method setStrokeWidth(F)V
    .registers 2

    .line 1
    iput p1, p0, Lc/q/a/a/h$c;->g:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .registers 2

    .line 1
    iput p1, p0, Lc/q/a/a/h$c;->l:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .registers 2

    .line 1
    iput p1, p0, Lc/q/a/a/h$c;->m:F

    return-void
.end method

.method setTrimPathStart(F)V
    .registers 2

    .line 1
    iput p1, p0, Lc/q/a/a/h$c;->k:F

    return-void
.end method
