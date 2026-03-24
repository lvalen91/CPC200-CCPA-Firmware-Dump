.class public Lcn/manstep/phonemirrorBox/widget/WaveformView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[S>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->d:I

    .line 3
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/widget/WaveformView;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a([BII)[S
    .registers 8

    if-eqz p1, :cond_22

    .line 1
    rem-int/lit8 p3, p2, 0x2

    if-nez p3, :cond_22

    .line 2
    div-int/lit8 p3, p2, 0x2

    new-array p3, p3, [S

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    if-ge v0, p2, :cond_21

    .line 3
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p3, v1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_21
    return-object p3

    .line 4
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid byte array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method

.method private b(Landroid/graphics/Canvas;[SIIFI)V
    .registers 16

    int-to-float p3, p3

    .line 1
    array-length v0, p2

    iget v1, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->d:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 2
    :goto_7
    array-length v0, p2

    if-ge p6, v0, :cond_30

    .line 3
    aget-short v0, p2, p6

    int-to-float v0, v0

    const/high16 v1, 0x47000000    # 32768.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, p4

    mul-float v0, v0, v1

    .line 4
    iget v2, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->d:I

    div-int v2, p6, v2

    int-to-float v2, v2

    mul-float v4, v2, p3

    sub-float v0, v1, v0

    add-float v5, p5, v0

    add-float v6, v4, p3

    add-float v7, p5, v1

    .line 5
    iget-object v8, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->b:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget v0, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->d:I

    add-int/2addr p6, v0

    goto :goto_7

    :cond_30
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->b:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->b:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    new-instance p1, Ljava/util/Vector;

    const/16 v0, 0x140

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->c:Ljava/util/Vector;

    return-void
.end method

.method private f([S)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public d([BI)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcn/manstep/phonemirrorBox/widget/WaveformView;->e([BII)V

    return-void
.end method

.method public e([BII)V
    .registers 4

    .line 1
    iput p3, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->d:I

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/manstep/phonemirrorBox/widget/WaveformView;->a([BII)[S

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/widget/WaveformView;->f([S)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_c

    return-void

    .line 3
    :cond_c
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->c:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 6
    iget v3, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->d:I

    div-int v10, v2, v3

    .line 7
    :goto_21
    iget v2, p0, Lcn/manstep/phonemirrorBox/widget/WaveformView;->d:I

    if-ge v1, v2, :cond_34

    mul-int v2, v1, v10

    int-to-float v7, v2

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v5, v9

    move v6, v10

    move v8, v1

    .line 8
    invoke-direct/range {v2 .. v8}, Lcn/manstep/phonemirrorBox/widget/WaveformView;->b(Landroid/graphics/Canvas;[SIIFI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_34
    return-void
.end method
