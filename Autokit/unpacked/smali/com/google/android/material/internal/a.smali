.class public final Lcom/google/android/material/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static j0:Z

.field private final static k0:Landroid/graphics/Paint;

.field private A:Ld/c/a/a/x/a;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Landroid/graphics/Bitmap;

.field private H:Landroid/graphics/Paint;

.field private I:F

.field private J:F

.field private K:[I

.field private L:Z

.field private final M:Landroid/text/TextPaint;

.field private final N:Landroid/text/TextPaint;

.field private O:Landroid/animation/TimeInterpolator;

.field private P:Landroid/animation/TimeInterpolator;

.field private Q:F

.field private R:F

.field private S:F

.field private T:Landroid/content/res/ColorStateList;

.field private U:F

.field private V:F

.field private W:F

.field private X:Landroid/content/res/ColorStateList;

.field private Y:F

.field private Z:F

.field private final a:Landroid/view/View;

.field private a0:Landroid/text/StaticLayout;

.field private b:Z

.field private b0:F

.field private c:F

.field private c0:F

.field private d:Z

.field private d0:F

.field private e:F

.field private e0:Ljava/lang/CharSequence;

.field private f:F

.field private f0:I

.field private g:I

.field private g0:F

.field private final h:Landroid/graphics/Rect;

.field private h0:F

.field private final i:Landroid/graphics/Rect;

.field private i0:I

.field private final j:Landroid/graphics/RectF;

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:Landroid/content/res/ColorStateList;

.field private p:Landroid/content/res/ColorStateList;

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Landroid/graphics/Typeface;

.field private x:Landroid/graphics/Typeface;

.field private y:Landroid/graphics/Typeface;

.field private z:Ld/c/a/a/x/a;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 1
    const/16 v2, 18
    if-ge v0, v2, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    sput-boolean v0, Lcom/google/android/material/internal/a;->j0:Z
    const/4 v0, 0
  .line 2
    sput-object v0, Lcom/google/android/material/internal/a;->k0:Landroid/graphics/Paint;
    if-eqz v0, :L2
  .line 3
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setAntiAlias(Z)V
  .line 4
    sget-object v0, Lcom/google/android/material/internal/a;->k0:Landroid/graphics/Paint;
    const v1, -65281
    invoke-virtual { v0, v1 }, Landroid/graphics/Paint;->setColor(I)V
  :L2
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/16 v0, 16
  .line 2
    iput v0, p0, Lcom/google/android/material/internal/a;->k:I
  .line 3
    iput v0, p0, Lcom/google/android/material/internal/a;->l:I
    const/high16 v0, 16752
  .line 4
    iput v0, p0, Lcom/google/android/material/internal/a;->m:F
  .line 5
    iput v0, p0, Lcom/google/android/material/internal/a;->n:F
    const/4 v0, 1
  .line 6
    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->E:Z
  .line 7
    iput v0, p0, Lcom/google/android/material/internal/a;->f0:I
    const/4 v0, 0
  .line 8
    iput v0, p0, Lcom/google/android/material/internal/a;->g0:F
    const/high16 v0, 16256
  .line 9
    iput v0, p0, Lcom/google/android/material/internal/a;->h0:F
  .line 10
    sget v0, Lcom/google/android/material/internal/g;->n:I
    iput v0, p0, Lcom/google/android/material/internal/a;->i0:I
  .line 11
    iput-object p1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
  .line 12
    new-instance p1, Landroid/text/TextPaint;
    const/16 v0, 129
    invoke-direct { p1, v0 }, Landroid/text/TextPaint;-><init>(I)V
    iput-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
  .line 13
    new-instance p1, Landroid/text/TextPaint;
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-direct { p1, v0 }, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V
    iput-object p1, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;
  .line 14
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
  .line 15
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
  .line 16
    new-instance p1, Landroid/graphics/RectF;
    invoke-direct { p1 }, Landroid/graphics/RectF;-><init>()V
    iput-object p1, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/RectF;
  .line 17
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->f()F
    move-result p1
    iput p1, p0, Lcom/google/android/material/internal/a;->f:F
    return-void
.end method

.method private A(Landroid/text/TextPaint;)V
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->m:F
    invoke-virtual { p1, v0 }, Landroid/text/TextPaint;->setTextSize(F)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;
    invoke-virtual { p1, v0 }, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 4
    iget v0, p0, Lcom/google/android/material/internal/a;->Z:F
    invoke-virtual { p1, v0 }, Landroid/text/TextPaint;->setLetterSpacing(F)V
  :L0
    return-void
.end method

.method private B(F)V
  .registers 6
  .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->d:Z
    if-eqz v0, :L2
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/RectF;
    iget v1, p0, Lcom/google/android/material/internal/a;->f:F
    cmpg-float p1, p1, v1
    if-gez p1, :L0
    iget-object p1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    goto :L1
  :L0
    iget-object p1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
  :L1
    invoke-virtual { v0, p1 }, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
    goto :L3
  :L2
  .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    iget v1, v1, Landroid/graphics/Rect;->left:I
    int-to-float v1, v1
    iget-object v2, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget v2, v2, Landroid/graphics/Rect;->left:I
    int-to-float v2, v2
    iget-object v3, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;
  .line 4
    invoke-static { v1, v2, p1, v3 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v1
    iput v1, v0, Landroid/graphics/RectF;->left:F
  .line 5
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/RectF;
    iget v1, p0, Lcom/google/android/material/internal/a;->q:F
    iget v2, p0, Lcom/google/android/material/internal/a;->r:F
    iget-object v3, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;
    invoke-static { v1, v2, p1, v3 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v1
    iput v1, v0, Landroid/graphics/RectF;->top:F
  .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    iget v1, v1, Landroid/graphics/Rect;->right:I
    int-to-float v1, v1
    iget-object v2, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget v2, v2, Landroid/graphics/Rect;->right:I
    int-to-float v2, v2
    iget-object v3, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;
  .line 7
    invoke-static { v1, v2, p1, v3 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v1
    iput v1, v0, Landroid/graphics/RectF;->right:F
  .line 8
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    iget v1, v1, Landroid/graphics/Rect;->bottom:I
    int-to-float v1, v1
    iget-object v2, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget v2, v2, Landroid/graphics/Rect;->bottom:I
    int-to-float v2, v2
    iget-object v3, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;
  .line 9
    invoke-static { v1, v2, p1, v3 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result p1
    iput p1, v0, Landroid/graphics/RectF;->bottom:F
  :L3
    return-void
.end method

.method private static C(FF)Z
  .registers 2
    sub-float/2addr p0, p1
  .line 1
    invoke-static { p0 }, Ljava/lang/Math;->abs(F)F
    move-result p0
    const p1, 981668463
    cmpg-float p0, p0, p1
    if-gez p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method private D()Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
    invoke-static { v0 }, Landroidx/core/view/v;->C(Landroid/view/View;)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method private F(Ljava/lang/CharSequence;Z)Z
  .registers 5
    if-eqz p2, :L0
  .line 1
    sget-object p2, Lc/g/i/e;->d:Lc/g/i/d;
    goto :L1
  :L0
    sget-object p2, Lc/g/i/e;->c:Lc/g/i/d;
  :L1
    const/4 v0, 0
  .line 2
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result v1
    invoke-interface { p2, p1, v0, v1 }, Lc/g/i/d;->a(Ljava/lang/CharSequence;II)Z
    move-result p1
    return p1
.end method

.method private static G(FFFLandroid/animation/TimeInterpolator;)F
  .registers 4
    if-eqz p3, :L0
  .line 1
    invoke-interface { p3, p2 }, Landroid/animation/TimeInterpolator;->getInterpolation(F)F
    move-result p2
  :L0
  .line 2
    invoke-static { p0, p1, p2 }, Ld/c/a/a/l/a;->a(FFF)F
    move-result p0
    return p0
.end method

.method private static K(Landroid/graphics/Rect;IIII)Z
  .registers 6
  .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I
    if-ne v0, p1, :L0
    iget p1, p0, Landroid/graphics/Rect;->top:I
    if-ne p1, p2, :L0
    iget p1, p0, Landroid/graphics/Rect;->right:I
    if-ne p1, p3, :L0
    iget p0, p0, Landroid/graphics/Rect;->bottom:I
    if-ne p0, p4, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method private O(F)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/internal/a;->b0:F
  .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
    invoke-static { p1 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
    return-void
.end method

.method private S(Landroid/graphics/Typeface;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->A:Ld/c/a/a/x/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ld/c/a/a/x/a;->c()V
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;
    if-eq v0, p1, :L1
  .line 4
    iput-object p1, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;
    const/4 p1, 1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method private V(F)V
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/internal/a;->c0:F
  .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
    invoke-static { p1 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
    return-void
.end method

.method private Z(Landroid/graphics/Typeface;)Z
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->z:Ld/c/a/a/x/a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Ld/c/a/a/x/a;->c()V
  :L0
  .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;
    if-eq v0, p1, :L1
  .line 4
    iput-object p1, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;
    const/4 p1, 1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method private static a(IIF)I
  .registers 8
    const/high16 v0, 16256
    sub-float/2addr v0, p2
  .line 1
    invoke-static { p0 }, Landroid/graphics/Color;->alpha(I)I
    move-result v1
    int-to-float v1, v1
    mul-float v1, v1, v0
    invoke-static { p1 }, Landroid/graphics/Color;->alpha(I)I
    move-result v2
    int-to-float v2, v2
    mul-float v2, v2, p2
    add-float/2addr v1, v2
  .line 2
    invoke-static { p0 }, Landroid/graphics/Color;->red(I)I
    move-result v2
    int-to-float v2, v2
    mul-float v2, v2, v0
    invoke-static { p1 }, Landroid/graphics/Color;->red(I)I
    move-result v3
    int-to-float v3, v3
    mul-float v3, v3, p2
    add-float/2addr v2, v3
  .line 3
    invoke-static { p0 }, Landroid/graphics/Color;->green(I)I
    move-result v3
    int-to-float v3, v3
    mul-float v3, v3, v0
    invoke-static { p1 }, Landroid/graphics/Color;->green(I)I
    move-result v4
    int-to-float v4, v4
    mul-float v4, v4, p2
    add-float/2addr v3, v4
  .line 4
    invoke-static { p0 }, Landroid/graphics/Color;->blue(I)I
    move-result p0
    int-to-float p0, p0
    mul-float p0, p0, v0
    invoke-static { p1 }, Landroid/graphics/Color;->blue(I)I
    move-result p1
    int-to-float p1, p1
    mul-float p1, p1, p2
    add-float/2addr p0, p1
    float-to-int p1, v1
    float-to-int p2, v2
    float-to-int v0, v3
    float-to-int p0, p0
  .line 5
    invoke-static { p1, p2, v0, p0 }, Landroid/graphics/Color;->argb(IIII)I
    move-result p0
    return p0
.end method

.method private b(Z)V
  .registers 14
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->J:F
  .line 2
    iget v1, p0, Lcom/google/android/material/internal/a;->n:F
    invoke-direct { p0, v1, p1 }, Lcom/google/android/material/internal/a;->j(FZ)V
  .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;
    if-eqz v1, :L0
    iget-object v2, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    if-eqz v2, :L0
  .line 4
    iget-object v3, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
  .line 5
    invoke-virtual { v2 }, Landroid/text/StaticLayout;->getWidth()I
    move-result v2
    int-to-float v2, v2
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-static { v1, v3, v2, v4 }, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v1
    iput-object v1, p0, Lcom/google/android/material/internal/a;->e0:Ljava/lang/CharSequence;
  :L0
  .line 6
    iget-object v1, p0, Lcom/google/android/material/internal/a;->e0:Ljava/lang/CharSequence;
    const/4 v2, 0
    const/4 v3, 0
    if-eqz v1, :L1
    iget-object v4, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
  .line 7
    invoke-interface { v1 }, Ljava/lang/CharSequence;->length()I
    move-result v5
    invoke-virtual { v4, v1, v2, v5 }, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
  .line 8
    iget v4, p0, Lcom/google/android/material/internal/a;->l:I
    iget-boolean v5, p0, Lcom/google/android/material/internal/a;->D:Z
  .line 9
    invoke-static { v4, v5 }, Landroidx/core/view/e;->b(II)I
    move-result v4
    and-int/lit8 v5, v4, 112
    const/16 v6, 80
    const/16 v7, 48
    const/high16 v8, 16384
    if-eq v5, v7, :L4
    if-eq v5, v6, :L3
  .line 10
    iget-object v5, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-virtual { v5 }, Landroid/text/TextPaint;->descent()F
    move-result v5
    iget-object v9, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-virtual { v9 }, Landroid/text/TextPaint;->ascent()F
    move-result v9
    sub-float/2addr v5, v9
    div-float/2addr v5, v8
  .line 11
    iget-object v9, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    invoke-virtual { v9 }, Landroid/graphics/Rect;->centerY()I
    move-result v9
    int-to-float v9, v9
    sub-float/2addr v9, v5
    iput v9, p0, Lcom/google/android/material/internal/a;->r:F
    goto :L5
  :L3
  .line 12
    iget-object v5, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget v5, v5, Landroid/graphics/Rect;->bottom:I
    int-to-float v5, v5
    iget-object v9, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-virtual { v9 }, Landroid/text/TextPaint;->ascent()F
    move-result v9
    add-float/2addr v5, v9
    iput v5, p0, Lcom/google/android/material/internal/a;->r:F
    goto :L5
  :L4
  .line 13
    iget-object v5, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget v5, v5, Landroid/graphics/Rect;->top:I
    int-to-float v5, v5
    iput v5, p0, Lcom/google/android/material/internal/a;->r:F
  :L5
    const v5, 8388615
    and-int/2addr v4, v5
    const/4 v9, 5
    const/4 v10, 1
    if-eq v4, v10, :L7
    if-eq v4, v9, :L6
  .line 14
    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget v1, v1, Landroid/graphics/Rect;->left:I
    int-to-float v1, v1
    iput v1, p0, Lcom/google/android/material/internal/a;->t:F
    goto :L8
  :L6
  .line 15
    iget-object v4, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget v4, v4, Landroid/graphics/Rect;->right:I
    int-to-float v4, v4
    sub-float/2addr v4, v1
    iput v4, p0, Lcom/google/android/material/internal/a;->t:F
    goto :L8
  :L7
  .line 16
    iget-object v4, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    invoke-virtual { v4 }, Landroid/graphics/Rect;->centerX()I
    move-result v4
    int-to-float v4, v4
    div-float/2addr v1, v8
    sub-float/2addr v4, v1
    iput v4, p0, Lcom/google/android/material/internal/a;->t:F
  :L8
  .line 17
    iget v1, p0, Lcom/google/android/material/internal/a;->m:F
    invoke-direct { p0, v1, p1 }, Lcom/google/android/material/internal/a;->j(FZ)V
  .line 18
    iget-object p1, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    if-eqz p1, :L9
    invoke-virtual { p1 }, Landroid/text/StaticLayout;->getHeight()I
    move-result p1
    int-to-float p1, p1
    goto :L10
  :L9
    const/4 p1, 0
  :L10
  .line 19
    iget-object v1, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;
    if-eqz v1, :L11
    iget-object v4, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
  .line 20
    invoke-interface { v1 }, Ljava/lang/CharSequence;->length()I
    move-result v11
    invoke-virtual { v4, v1, v2, v11 }, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v1
    goto :L12
  :L11
    const/4 v1, 0
  :L12
  .line 21
    iget-object v4, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    if-eqz v4, :L13
    iget v11, p0, Lcom/google/android/material/internal/a;->f0:I
    if-le v11, v10, :L13
  .line 22
    invoke-virtual { v4 }, Landroid/text/StaticLayout;->getWidth()I
    move-result v1
    int-to-float v1, v1
  :L13
  .line 23
    iget-object v4, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    if-eqz v4, :L15
    iget v3, p0, Lcom/google/android/material/internal/a;->f0:I
    if-le v3, v10, :L14
  .line 24
    invoke-virtual { v4, v2 }, Landroid/text/StaticLayout;->getLineStart(I)I
    move-result v2
    int-to-float v3, v2
    goto :L15
  :L14
    invoke-virtual { v4, v2 }, Landroid/text/StaticLayout;->getLineLeft(I)F
    move-result v3
  :L15
    iput v3, p0, Lcom/google/android/material/internal/a;->d0:F
  .line 25
    iget v2, p0, Lcom/google/android/material/internal/a;->k:I
    iget-boolean v3, p0, Lcom/google/android/material/internal/a;->D:Z
  .line 26
    invoke-static { v2, v3 }, Landroidx/core/view/e;->b(II)I
    move-result v2
    and-int/lit8 v3, v2, 112
    if-eq v3, v7, :L17
    if-eq v3, v6, :L16
    div-float/2addr p1, v8
  .line 27
    iget-object v3, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    invoke-virtual { v3 }, Landroid/graphics/Rect;->centerY()I
    move-result v3
    int-to-float v3, v3
    sub-float/2addr v3, p1
    iput v3, p0, Lcom/google/android/material/internal/a;->q:F
    goto :L18
  :L16
  .line 28
    iget-object v3, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    iget v3, v3, Landroid/graphics/Rect;->bottom:I
    int-to-float v3, v3
    sub-float/2addr v3, p1
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-virtual { p1 }, Landroid/text/TextPaint;->descent()F
    move-result p1
    add-float/2addr v3, p1
    iput v3, p0, Lcom/google/android/material/internal/a;->q:F
    goto :L18
  :L17
  .line 29
    iget-object p1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->top:I
    int-to-float p1, p1
    iput p1, p0, Lcom/google/android/material/internal/a;->q:F
  :L18
    and-int p1, v2, v5
    if-eq p1, v10, :L20
    if-eq p1, v9, :L19
  .line 30
    iget-object p1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->left:I
    int-to-float p1, p1
    iput p1, p0, Lcom/google/android/material/internal/a;->s:F
    goto :L21
  :L19
  .line 31
    iget-object p1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->right:I
    int-to-float p1, p1
    sub-float/2addr p1, v1
    iput p1, p0, Lcom/google/android/material/internal/a;->s:F
    goto :L21
  :L20
  .line 32
    iget-object p1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    invoke-virtual { p1 }, Landroid/graphics/Rect;->centerX()I
    move-result p1
    int-to-float p1, p1
    div-float/2addr v1, v8
    sub-float/2addr p1, v1
    iput p1, p0, Lcom/google/android/material/internal/a;->s:F
  :L21
  .line 33
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->k()V
  .line 34
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->b0(F)V
    return-void
.end method

.method private b0(F)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/internal/a;->i(F)V
  .line 2
    sget-boolean p1, Lcom/google/android/material/internal/a;->j0:Z
    if-eqz p1, :L0
    iget p1, p0, Lcom/google/android/material/internal/a;->I:F
    const/high16 v0, 16256
    cmpl-float p1, p1, v0
    if-eqz p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->F:Z
    if-eqz p1, :L2
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->o()V
  :L2
  .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
    invoke-static { p1 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
    return-void
.end method

.method private d()V
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->c:F
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->h(F)V
    return-void
.end method

.method private e(F)F
  .registers 6
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->f:F
    const/4 v1, 0
    const/high16 v2, 16256
    cmpg-float v3, p1, v0
    if-gtz v3, :L0
  .line 2
    iget v3, p0, Lcom/google/android/material/internal/a;->e:F
    invoke-static { v2, v1, v3, v0, p1 }, Ld/c/a/a/l/a;->b(FFFFF)F
    move-result p1
    return p1
  :L0
  .line 3
    invoke-static { v1, v2, v0, v2, p1 }, Ld/c/a/a/l/a;->b(FFFFF)F
    move-result p1
    return p1
.end method

.method private f()F
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->e:F
    const/high16 v1, 16256
    sub-float/2addr v1, v0
    const/high16 v2, 16128
    mul-float v1, v1, v2
    add-float/2addr v0, v1
    return v0
.end method

.method private g(Ljava/lang/CharSequence;)Z
  .registers 4
  .line 1
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->D()Z
    move-result v0
  .line 2
    iget-boolean v1, p0, Lcom/google/android/material/internal/a;->E:Z
    if-eqz v1, :L0
  .line 3
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/internal/a;->F(Ljava/lang/CharSequence;Z)Z
    move-result v0
  :L0
    return v0
.end method

.method private h(F)V
  .registers 8
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/internal/a;->B(F)V
  .line 2
    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->d:Z
    const/4 v1, 0
    const/high16 v2, 16256
    if-eqz v0, :L1
  .line 3
    iget v0, p0, Lcom/google/android/material/internal/a;->f:F
    cmpg-float v0, p1, v0
    if-gez v0, :L0
  .line 4
    iget v0, p0, Lcom/google/android/material/internal/a;->s:F
    iput v0, p0, Lcom/google/android/material/internal/a;->u:F
  .line 5
    iget v0, p0, Lcom/google/android/material/internal/a;->q:F
    iput v0, p0, Lcom/google/android/material/internal/a;->v:F
  .line 6
    iget v0, p0, Lcom/google/android/material/internal/a;->m:F
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->b0(F)V
    const/4 v0, 0
    goto :L2
  :L0
  .line 7
    iget v0, p0, Lcom/google/android/material/internal/a;->t:F
    iput v0, p0, Lcom/google/android/material/internal/a;->u:F
  .line 8
    iget v0, p0, Lcom/google/android/material/internal/a;->r:F
    const/4 v3, 0
    iget v4, p0, Lcom/google/android/material/internal/a;->g:I
    invoke-static { v3, v4 }, Ljava/lang/Math;->max(II)I
    move-result v3
    int-to-float v3, v3
    sub-float/2addr v0, v3
    iput v0, p0, Lcom/google/android/material/internal/a;->v:F
  .line 9
    iget v0, p0, Lcom/google/android/material/internal/a;->n:F
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->b0(F)V
    const/high16 v0, 16256
    goto :L2
  :L1
  .line 10
    iget v0, p0, Lcom/google/android/material/internal/a;->s:F
    iget v3, p0, Lcom/google/android/material/internal/a;->t:F
    iget-object v4, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;
    invoke-static { v0, v3, p1, v4 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v0
    iput v0, p0, Lcom/google/android/material/internal/a;->u:F
  .line 11
    iget v0, p0, Lcom/google/android/material/internal/a;->q:F
    iget v3, p0, Lcom/google/android/material/internal/a;->r:F
    iget-object v4, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;
    invoke-static { v0, v3, p1, v4 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v0
    iput v0, p0, Lcom/google/android/material/internal/a;->v:F
  .line 12
    iget v0, p0, Lcom/google/android/material/internal/a;->m:F
    iget v3, p0, Lcom/google/android/material/internal/a;->n:F
    iget-object v4, p0, Lcom/google/android/material/internal/a;->P:Landroid/animation/TimeInterpolator;
  .line 13
    invoke-static { v0, v3, p1, v4 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v0
  .line 14
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->b0(F)V
    move v0, p1
  :L2
    sub-float v3, v2, p1
  .line 15
    sget-object v4, Ld/c/a/a/l/a;->b:Landroid/animation/TimeInterpolator;
  .line 16
    invoke-static { v1, v2, v3, v4 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v3
    sub-float v3, v2, v3
  .line 17
    invoke-direct { p0, v3 }, Lcom/google/android/material/internal/a;->O(F)V
  .line 18
    sget-object v3, Ld/c/a/a/l/a;->b:Landroid/animation/TimeInterpolator;
    invoke-static { v2, v1, p1, v3 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v1
    invoke-direct { p0, v1 }, Lcom/google/android/material/internal/a;->V(F)V
  .line 19
    iget-object v1, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;
    if-eq v1, v2, :L3
  .line 20
    iget-object v1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
  .line 21
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->w()I
    move-result v2
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->u()I
    move-result v3
  .line 22
    invoke-static { v2, v3, v0 }, Lcom/google/android/material/internal/a;->a(IIF)I
    move-result v0
  .line 23
    invoke-virtual { v1, v0 }, Landroid/text/TextPaint;->setColor(I)V
    goto :L4
  :L3
  .line 24
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->u()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/text/TextPaint;->setColor(I)V
  :L4
  .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L6
  .line 26
    iget v0, p0, Lcom/google/android/material/internal/a;->Y:F
    iget v1, p0, Lcom/google/android/material/internal/a;->Z:F
    cmpl-float v2, v0, v1
    if-eqz v2, :L5
  .line 27
    iget-object v2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    sget-object v3, Ld/c/a/a/l/a;->b:Landroid/animation/TimeInterpolator;
  .line 28
    invoke-static { v1, v0, p1, v3 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v0
  .line 29
    invoke-virtual { v2, v0 }, Landroid/text/TextPaint;->setLetterSpacing(F)V
    goto :L6
  :L5
  .line 30
    iget-object v1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-virtual { v1, v0 }, Landroid/text/TextPaint;->setLetterSpacing(F)V
  :L6
  .line 31
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    iget v1, p0, Lcom/google/android/material/internal/a;->U:F
    iget v2, p0, Lcom/google/android/material/internal/a;->Q:F
    const/4 v3, 0
  .line 32
    invoke-static { v1, v2, p1, v3 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v1
    iget v2, p0, Lcom/google/android/material/internal/a;->V:F
    iget v4, p0, Lcom/google/android/material/internal/a;->R:F
  .line 33
    invoke-static { v2, v4, p1, v3 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v2
    iget v4, p0, Lcom/google/android/material/internal/a;->W:F
    iget v5, p0, Lcom/google/android/material/internal/a;->S:F
  .line 34
    invoke-static { v4, v5, p1, v3 }, Lcom/google/android/material/internal/a;->G(FFFLandroid/animation/TimeInterpolator;)F
    move-result v3
    iget-object v4, p0, Lcom/google/android/material/internal/a;->X:Landroid/content/res/ColorStateList;
  .line 35
    invoke-direct { p0, v4 }, Lcom/google/android/material/internal/a;->v(Landroid/content/res/ColorStateList;)I
    move-result v4
    iget-object v5, p0, Lcom/google/android/material/internal/a;->T:Landroid/content/res/ColorStateList;
    invoke-direct { p0, v5 }, Lcom/google/android/material/internal/a;->v(Landroid/content/res/ColorStateList;)I
    move-result v5
  .line 36
    invoke-static { v4, v5, p1 }, Lcom/google/android/material/internal/a;->a(IIF)I
    move-result v4
  .line 37
    invoke-virtual { v0, v1, v2, v3, v4 }, Landroid/text/TextPaint;->setShadowLayer(FFFI)V
  .line 38
    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->d:Z
    if-eqz v0, :L7
  .line 39
    invoke-direct { p0, p1 }, Lcom/google/android/material/internal/a;->e(F)F
    move-result p1
    const/high16 v0, 17279
    mul-float p1, p1, v0
    float-to-int p1, p1
  .line 40
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-virtual { v0, p1 }, Landroid/text/TextPaint;->setAlpha(I)V
  :L7
  .line 41
    iget-object p1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
    invoke-static { p1 }, Landroidx/core/view/v;->f0(Landroid/view/View;)V
    return-void
.end method

.method private h0()Z
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->f0:I
    const/4 v1, 1
    if-le v0, v1, :L1
    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->D:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->d:Z
    if-eqz v0, :L1
  :L0
    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->F:Z
    if-nez v0, :L1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
    return v1
.end method

.method private i(F)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Lcom/google/android/material/internal/a;->j(FZ)V
    return-void
.end method

.method private j(FZ)V
  .registers 11
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Ljava/lang/CharSequence;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    invoke-virtual { v0 }, Landroid/graphics/Rect;->width()I
    move-result v0
    int-to-float v0, v0
  .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    invoke-virtual { v1 }, Landroid/graphics/Rect;->width()I
    move-result v1
    int-to-float v1, v1
  .line 4
    iget v2, p0, Lcom/google/android/material/internal/a;->n:F
    invoke-static { p1, v2 }, Lcom/google/android/material/internal/a;->C(FF)Z
    move-result v2
    const/high16 v3, 16256
    const/4 v4, 0
    const/4 v5, 1
    if-eqz v2, :L2
  .line 5
    iget p1, p0, Lcom/google/android/material/internal/a;->n:F
  .line 6
    iput v3, p0, Lcom/google/android/material/internal/a;->I:F
  .line 7
    iget-object p2, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;
    if-eq p2, v1, :L1
  .line 8
    iput-object v1, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;
    const/4 p2, 1
    goto :L10
  :L1
    const/4 p2, 0
    goto :L10
  :L2
  .line 9
    iget v2, p0, Lcom/google/android/material/internal/a;->m:F
  .line 10
    iget-object v6, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;
    iget-object v7, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;
    if-eq v6, v7, :L3
  .line 11
    iput-object v7, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;
    const/4 v6, 1
    goto :L4
  :L3
    const/4 v6, 0
  :L4
  .line 12
    iget v7, p0, Lcom/google/android/material/internal/a;->m:F
    invoke-static { p1, v7 }, Lcom/google/android/material/internal/a;->C(FF)Z
    move-result v7
    if-eqz v7, :L5
  .line 13
    iput v3, p0, Lcom/google/android/material/internal/a;->I:F
    goto :L6
  :L5
  .line 14
    iget v7, p0, Lcom/google/android/material/internal/a;->m:F
    div-float/2addr p1, v7
    iput p1, p0, Lcom/google/android/material/internal/a;->I:F
  :L6
  .line 15
    iget p1, p0, Lcom/google/android/material/internal/a;->n:F
    iget v7, p0, Lcom/google/android/material/internal/a;->m:F
    div-float/2addr p1, v7
    mul-float v7, v1, p1
    if-eqz p2, :L9
  :L7
    move v0, v1
  :L8
    move p1, v2
    move p2, v6
    goto :L10
  :L9
    cmpl-float p2, v7, v0
    if-lez p2, :L7
    div-float/2addr v0, p1
  .line 16
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(FF)F
    move-result p1
    move v0, p1
    goto :L8
  :L10
    const/4 v1, 0
    cmpl-float v1, v0, v1
    if-lez v1, :L14
  .line 17
    iget v1, p0, Lcom/google/android/material/internal/a;->J:F
    cmpl-float v1, v1, p1
    if-nez v1, :L12
    iget-boolean v1, p0, Lcom/google/android/material/internal/a;->L:Z
    if-nez v1, :L12
    if-eqz p2, :L11
    goto :L12
  :L11
    const/4 p2, 0
    goto :L13
  :L12
    const/4 p2, 1
  :L13
  .line 18
    iput p1, p0, Lcom/google/android/material/internal/a;->J:F
  .line 19
    iput-boolean v4, p0, Lcom/google/android/material/internal/a;->L:Z
  :L14
  .line 20
    iget-object p1, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;
    if-eqz p1, :L15
    if-eqz p2, :L18
  :L15
  .line 21
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    iget p2, p0, Lcom/google/android/material/internal/a;->J:F
    invoke-virtual { p1, p2 }, Landroid/text/TextPaint;->setTextSize(F)V
  .line 22
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    iget-object p2, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;
    invoke-virtual { p1, p2 }, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 23
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    iget p2, p0, Lcom/google/android/material/internal/a;->I:F
    cmpl-float p2, p2, v3
    if-eqz p2, :L16
    const/4 v4, 1
  :L16
    invoke-virtual { p1, v4 }, Landroid/text/TextPaint;->setLinearText(Z)V
  .line 24
    iget-object p1, p0, Lcom/google/android/material/internal/a;->B:Ljava/lang/CharSequence;
    invoke-direct { p0, p1 }, Lcom/google/android/material/internal/a;->g(Ljava/lang/CharSequence;)Z
    move-result p1
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->D:Z
  .line 25
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->h0()Z
    move-result p1
    if-eqz p1, :L17
    iget v5, p0, Lcom/google/android/material/internal/a;->f0:I
  :L17
    iget-boolean p1, p0, Lcom/google/android/material/internal/a;->D:Z
    invoke-direct { p0, v5, v0, p1 }, Lcom/google/android/material/internal/a;->l(IFZ)Landroid/text/StaticLayout;
    move-result-object p1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
  .line 26
    invoke-virtual { p1 }, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;
    move-result-object p1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;
  :L18
    return-void
.end method

.method private k()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->recycle()V
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;
  :L0
    return-void
.end method

.method private l(IFZ)Landroid/text/StaticLayout;
  .catch Lcom/google/android/material/internal/g$a; { :L0 .. :L1 } :L2
  .registers 6
  :L0
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    float-to-int p2, p2
  .line 2
    invoke-static { v0, v1, p2 }, Lcom/google/android/material/internal/g;->c(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/g;
    move-result-object p2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
  .line 3
    invoke-virtual { p2, v0 }, Lcom/google/android/material/internal/g;->e(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/g;
  .line 4
    invoke-virtual { p2, p3 }, Lcom/google/android/material/internal/g;->h(Z)Lcom/google/android/material/internal/g;
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
  .line 5
    invoke-virtual { p2, p3 }, Lcom/google/android/material/internal/g;->d(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/g;
    const/4 p3, 0
  .line 6
    invoke-virtual { p2, p3 }, Lcom/google/android/material/internal/g;->g(Z)Lcom/google/android/material/internal/g;
  .line 7
    invoke-virtual { p2, p1 }, Lcom/google/android/material/internal/g;->j(I)Lcom/google/android/material/internal/g;
    iget p1, p0, Lcom/google/android/material/internal/a;->g0:F
    iget p3, p0, Lcom/google/android/material/internal/a;->h0:F
  .line 8
    invoke-virtual { p2, p1, p3 }, Lcom/google/android/material/internal/g;->i(FF)Lcom/google/android/material/internal/g;
    iget p1, p0, Lcom/google/android/material/internal/a;->i0:I
  .line 9
    invoke-virtual { p2, p1 }, Lcom/google/android/material/internal/g;->f(I)Lcom/google/android/material/internal/g;
  .line 10
    invoke-virtual { p2 }, Lcom/google/android/material/internal/g;->a()Landroid/text/StaticLayout;
    move-result-object p1
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 11
    invoke-virtual { p1 }, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    const/4 p1, 0
  :L3
  .line 12
    invoke-static { p1 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast p1, Landroid/text/StaticLayout;
    return-object p1
.end method

.method private n(Landroid/graphics/Canvas;FF)V
  .registers 16
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->getAlpha()I
    move-result v0
  .line 2
    invoke-virtual { p1, p2, p3 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 3
    iget-object p2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    iget p3, p0, Lcom/google/android/material/internal/a;->c0:F
    int-to-float v1, v0
    mul-float p3, p3, v1
    float-to-int p3, p3
    invoke-virtual { p2, p3 }, Landroid/text/TextPaint;->setAlpha(I)V
  .line 4
    iget-object p2, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    invoke-virtual { p2, p1 }, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
  .line 5
    iget-object p2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    iget p3, p0, Lcom/google/android/material/internal/a;->b0:F
    mul-float p3, p3, v1
    float-to-int p3, p3
    invoke-virtual { p2, p3 }, Landroid/text/TextPaint;->setAlpha(I)V
  .line 6
    iget-object p2, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    const/4 p3, 0
    invoke-virtual { p2, p3 }, Landroid/text/StaticLayout;->getLineBaseline(I)I
    move-result p2
  .line 7
    iget-object v2, p0, Lcom/google/android/material/internal/a;->e0:Ljava/lang/CharSequence;
  .line 8
    invoke-interface { v2 }, Ljava/lang/CharSequence;->length()I
    move-result v4
    int-to-float v10, p2
    iget-object v7, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    const/4 v3, 0
    const/4 v5, 0
    move-object v1, p1
    move v6, v10
  .line 9
    invoke-virtual/range { v1 .. v7 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
  .line 10
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->d:Z
    if-nez p2, :L1
  .line 11
    iget-object p2, p0, Lcom/google/android/material/internal/a;->e0:Ljava/lang/CharSequence;
    invoke-interface { p2 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p2 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object p2
    const-string v1, "\u2026"
  .line 12
    invoke-virtual { p2, v1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L0
  .line 13
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result v1
    add-int/lit8 v1, v1, -1
    invoke-virtual { p2, p3, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p2
  :L0
    move-object v6, p2
  .line 14
    iget-object p2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    invoke-virtual { p2, v0 }, Landroid/text/TextPaint;->setAlpha(I)V
    const/4 v7, 0
  .line 15
    iget-object p2, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
  .line 16
    invoke-virtual { p2, p3 }, Landroid/text/StaticLayout;->getLineEnd(I)I
    move-result p2
    invoke-virtual { v6 }, Ljava/lang/String;->length()I
    move-result p3
    invoke-static { p2, p3 }, Ljava/lang/Math;->min(II)I
    move-result v8
    const/4 v9, 0
    iget-object v11, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    move-object v5, p1
  .line 17
    invoke-virtual/range { v5 .. v11 }, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
  :L1
    return-void
.end method

.method private o()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;
    if-nez v0, :L2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    invoke-virtual { v0 }, Landroid/graphics/Rect;->isEmpty()Z
    move-result v0
    if-nez v0, :L2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L2
  :L0
    const/4 v0, 0
  .line 2
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->h(F)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    invoke-virtual { v0 }, Landroid/text/StaticLayout;->getWidth()I
    move-result v0
  .line 4
    iget-object v1, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    invoke-virtual { v1 }, Landroid/text/StaticLayout;->getHeight()I
    move-result v1
    if-lez v0, :L2
    if-gtz v1, :L1
    goto :L2
  :L1
  .line 5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static { v0, v1, v2 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v0
    iput-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;
  .line 6
    new-instance v0, Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;
    invoke-direct { v0, v1 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 7
    iget-object v1, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    invoke-virtual { v1, v0 }, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
  .line 8
    iget-object v0, p0, Lcom/google/android/material/internal/a;->H:Landroid/graphics/Paint;
    if-nez v0, :L2
  .line 9
    new-instance v0, Landroid/graphics/Paint;
    const/4 v1, 3
    invoke-direct { v0, v1 }, Landroid/graphics/Paint;-><init>(I)V
    iput-object v0, p0, Lcom/google/android/material/internal/a;->H:Landroid/graphics/Paint;
  :L2
    return-void
.end method

.method private s(II)F
  .registers 5
    const/16 v0, 17
    if-eq p2, v0, :L7
    and-int/lit8 v0, p2, 7
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L7
  :L0
    const p1, 8388613
    and-int v0, p2, p1
    if-eq v0, p1, :L4
    const/4 p1, 5
    and-int/2addr p2, p1
    if-ne p2, p1, :L1
    goto :L4
  :L1
  .line 1
    iget-boolean p1, p0, Lcom/google/android/material/internal/a;->D:Z
    if-eqz p1, :L2
    iget-object p1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->right:I
    int-to-float p1, p1
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->c()F
    move-result p2
    sub-float/2addr p1, p2
    goto :L3
  :L2
    iget-object p1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->left:I
    int-to-float p1, p1
  :L3
    return p1
  :L4
  .line 2
    iget-boolean p1, p0, Lcom/google/android/material/internal/a;->D:Z
    if-eqz p1, :L5
    iget-object p1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->left:I
    int-to-float p1, p1
    goto :L6
  :L5
    iget-object p1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->right:I
    int-to-float p1, p1
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->c()F
    move-result p2
    sub-float/2addr p1, p2
  :L6
    return p1
  :L7
    int-to-float p1, p1
    const/high16 p2, 16384
    div-float/2addr p1, p2
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->c()F
    move-result v0
    div-float/2addr v0, p2
    sub-float/2addr p1, v0
    return p1
.end method

.method private t(Landroid/graphics/RectF;II)F
  .registers 6
    const/16 v0, 17
    if-eq p3, v0, :L7
    and-int/lit8 v0, p3, 7
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L7
  :L0
    const p2, 8388613
    and-int v0, p3, p2
    if-eq v0, p2, :L4
    const/4 p2, 5
    and-int/2addr p3, p2
    if-ne p3, p2, :L1
    goto :L4
  :L1
  .line 1
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->D:Z
    if-eqz p2, :L2
    iget-object p1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->right:I
    int-to-float p1, p1
    goto :L3
  :L2
    iget p1, p1, Landroid/graphics/RectF;->left:F
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->c()F
    move-result p2
    add-float/2addr p1, p2
  :L3
    return p1
  :L4
  .line 2
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->D:Z
    if-eqz p2, :L5
    iget p1, p1, Landroid/graphics/RectF;->left:F
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->c()F
    move-result p2
    add-float/2addr p1, p2
    goto :L6
  :L5
    iget-object p1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget p1, p1, Landroid/graphics/Rect;->right:I
    int-to-float p1, p1
  :L6
    return p1
  :L7
    int-to-float p1, p2
    const/high16 p2, 16384
    div-float/2addr p1, p2
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->c()F
    move-result p3
    div-float/2addr p3, p2
    add-float/2addr p1, p3
    return p1
.end method

.method private v(Landroid/content/res/ColorStateList;)I
  .registers 4
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
  .line 1
    iget-object v1, p0, Lcom/google/android/material/internal/a;->K:[I
    if-eqz v1, :L1
  .line 2
    invoke-virtual { p1, v1, v0 }, Landroid/content/res/ColorStateList;->getColorForState([II)I
    move-result p1
    return p1
  :L1
  .line 3
    invoke-virtual { p1 }, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result p1
    return p1
.end method

.method private w()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->v(Landroid/content/res/ColorStateList;)I
    move-result v0
    return v0
.end method

.method private z(Landroid/text/TextPaint;)V
  .registers 4
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->n:F
    invoke-virtual { p1, v0 }, Landroid/text/TextPaint;->setTextSize(F)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->w:Landroid/graphics/Typeface;
    invoke-virtual { p1, v0 }, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 4
    iget v0, p0, Lcom/google/android/material/internal/a;->Y:F
    invoke-virtual { p1, v0 }, Landroid/text/TextPaint;->setLetterSpacing(F)V
  :L0
    return-void
.end method

.method public final E()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;
    if-eqz v0, :L0
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v0
    if-nez v0, :L1
  :L0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;
    if-eqz v0, :L2
  .line 2
    invoke-virtual { v0 }, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v0
    if-eqz v0, :L2
  :L1
    const/4 v0, 1
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method H()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
  .line 2
    invoke-virtual { v0 }, Landroid/graphics/Rect;->width()I
    move-result v0
    if-lez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
  .line 3
    invoke-virtual { v0 }, Landroid/graphics/Rect;->height()I
    move-result v0
    if-lez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
  .line 4
    invoke-virtual { v0 }, Landroid/graphics/Rect;->width()I
    move-result v0
    if-lez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
  .line 5
    invoke-virtual { v0 }, Landroid/graphics/Rect;->height()I
    move-result v0
    if-lez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->b:Z
    return-void
.end method

.method public I()V
  .registers 2
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Lcom/google/android/material/internal/a;->J(Z)V
    return-void
.end method

.method public J(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getHeight()I
    move-result v0
    if-lez v0, :L0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getWidth()I
    move-result v0
    if-gtz v0, :L1
  :L0
    if-eqz p1, :L2
  :L1
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/internal/a;->b(Z)V
  .line 3
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->d()V
  :L2
    return-void
.end method

.method public L(IIII)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    invoke-static { v0, p1, p2, p3, p4 }, Lcom/google/android/material/internal/a;->K(Landroid/graphics/Rect;IIII)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroid/graphics/Rect;->set(IIII)V
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->L:Z
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->H()V
  :L0
    return-void
.end method

.method public M(Landroid/graphics/Rect;)V
  .registers 5
  .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I
    iget v1, p1, Landroid/graphics/Rect;->top:I
    iget v2, p1, Landroid/graphics/Rect;->right:I
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    invoke-virtual { p0, v0, v1, v2, p1 }, Lcom/google/android/material/internal/a;->L(IIII)V
    return-void
.end method

.method public N(I)V
  .registers 5
  .line 1
    new-instance v0, Ld/c/a/a/x/d;
    iget-object v1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Ld/c/a/a/x/d;-><init>(Landroid/content/Context;I)V
  .line 2
    iget-object p1, v0, Ld/c/a/a/x/d;->a:Landroid/content/res/ColorStateList;
    if-eqz p1, :L0
  .line 3
    iput-object p1, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;
  :L0
  .line 4
    iget p1, v0, Ld/c/a/a/x/d;->k:F
    const/4 v1, 0
    cmpl-float v1, p1, v1
    if-eqz v1, :L1
  .line 5
    iput p1, p0, Lcom/google/android/material/internal/a;->n:F
  :L1
  .line 6
    iget-object p1, v0, Ld/c/a/a/x/d;->b:Landroid/content/res/ColorStateList;
    if-eqz p1, :L2
  .line 7
    iput-object p1, p0, Lcom/google/android/material/internal/a;->T:Landroid/content/res/ColorStateList;
  :L2
  .line 8
    iget p1, v0, Ld/c/a/a/x/d;->f:F
    iput p1, p0, Lcom/google/android/material/internal/a;->R:F
  .line 9
    iget p1, v0, Ld/c/a/a/x/d;->g:F
    iput p1, p0, Lcom/google/android/material/internal/a;->S:F
  .line 10
    iget p1, v0, Ld/c/a/a/x/d;->h:F
    iput p1, p0, Lcom/google/android/material/internal/a;->Q:F
  .line 11
    iget p1, v0, Ld/c/a/a/x/d;->j:F
    iput p1, p0, Lcom/google/android/material/internal/a;->Y:F
  .line 12
    iget-object p1, p0, Lcom/google/android/material/internal/a;->A:Ld/c/a/a/x/a;
    if-eqz p1, :L3
  .line 13
    invoke-virtual { p1 }, Ld/c/a/a/x/a;->c()V
  :L3
  .line 14
    new-instance p1, Ld/c/a/a/x/a;
    new-instance v1, Lcom/google/android/material/internal/a$a;
    invoke-direct { v1, p0 }, Lcom/google/android/material/internal/a$a;-><init>(Lcom/google/android/material/internal/a;)V
  .line 15
    invoke-virtual { v0 }, Ld/c/a/a/x/d;->e()Landroid/graphics/Typeface;
    move-result-object v2
    invoke-direct { p1, v1, v2 }, Ld/c/a/a/x/a;-><init>(Ld/c/a/a/x/a$a;Landroid/graphics/Typeface;)V
    iput-object p1, p0, Lcom/google/android/material/internal/a;->A:Ld/c/a/a/x/a;
  .line 16
    iget-object p1, p0, Lcom/google/android/material/internal/a;->a:Landroid/view/View;
    invoke-virtual { p1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object p1
    iget-object v1, p0, Lcom/google/android/material/internal/a;->A:Ld/c/a/a/x/a;
    invoke-virtual { v0, p1, v1 }, Ld/c/a/a/x/d;->h(Landroid/content/Context;Ld/c/a/a/x/f;)V
  .line 17
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
    return-void
.end method

.method public P(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
  :L0
    return-void
.end method

.method public Q(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->l:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/internal/a;->l:I
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
  :L0
    return-void
.end method

.method public R(Landroid/graphics/Typeface;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/internal/a;->S(Landroid/graphics/Typeface;)Z
    move-result p1
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
  :L0
    return-void
.end method

.method public T(IIII)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    invoke-static { v0, p1, p2, p3, p4 }, Lcom/google/android/material/internal/a;->K(Landroid/graphics/Rect;IIII)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->h:Landroid/graphics/Rect;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroid/graphics/Rect;->set(IIII)V
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->L:Z
  .line 4
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->H()V
  :L0
    return-void
.end method

.method public U(Landroid/graphics/Rect;)V
  .registers 5
  .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I
    iget v1, p1, Landroid/graphics/Rect;->top:I
    iget v2, p1, Landroid/graphics/Rect;->right:I
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    invoke-virtual { p0, v0, v1, v2, p1 }, Lcom/google/android/material/internal/a;->T(IIII)V
    return-void
.end method

.method public W(Landroid/content/res/ColorStateList;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;
    if-eq v0, p1, :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/a;->o:Landroid/content/res/ColorStateList;
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
  :L0
    return-void
.end method

.method public X(I)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->k:I
    if-eq v0, p1, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/internal/a;->k:I
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
  :L0
    return-void
.end method

.method public Y(F)V
  .registers 3
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->m:F
    cmpl-float v0, v0, p1
    if-eqz v0, :L0
  .line 2
    iput p1, p0, Lcom/google/android/material/internal/a;->m:F
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
  :L0
    return-void
.end method

.method public a0(F)V
  .registers 4
    const/4 v0, 0
    const/high16 v1, 16256
  .line 1
    invoke-static { p1, v0, v1 }, Lc/g/f/a;->a(FFF)F
    move-result p1
  .line 2
    iget v0, p0, Lcom/google/android/material/internal/a;->c:F
    cmpl-float v0, p1, v0
    if-eqz v0, :L0
  .line 3
    iput p1, p0, Lcom/google/android/material/internal/a;->c:F
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->d()V
  :L0
    return-void
.end method

.method public c()F
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Ljava/lang/CharSequence;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->z(Landroid/text/TextPaint;)V
  .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;
    iget-object v1, p0, Lcom/google/android/material/internal/a;->B:Ljava/lang/CharSequence;
    const/4 v2, 0
    invoke-interface { v1 }, Ljava/lang/CharSequence;->length()I
    move-result v3
    invoke-virtual { v0, v1, v2, v3 }, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F
    move-result v0
    return v0
.end method

.method public c0(Landroid/animation/TimeInterpolator;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
    return-void
.end method

.method public final d0([I)Z
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->K:[I
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->E()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public e0(Ljava/lang/CharSequence;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Ljava/lang/CharSequence;
    invoke-static { v0, p1 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/a;->B:Ljava/lang/CharSequence;
    const/4 p1, 0
  .line 3
    iput-object p1, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;
  .line 4
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->k()V
  .line 5
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
  :L1
    return-void
.end method

.method public f0(Landroid/animation/TimeInterpolator;)V
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/a;->P:Landroid/animation/TimeInterpolator;
  .line 2
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
    return-void
.end method

.method public g0(Landroid/graphics/Typeface;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1 }, Lcom/google/android/material/internal/a;->S(Landroid/graphics/Typeface;)Z
    move-result v0
  .line 2
    invoke-direct { p0, p1 }, Lcom/google/android/material/internal/a;->Z(Landroid/graphics/Typeface;)Z
    move-result p1
    if-nez v0, :L0
    if-eqz p1, :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->I()V
  :L1
    return-void
.end method

.method public m(Landroid/graphics/Canvas;)V
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroid/graphics/Canvas;->save()I
    move-result v0
  .line 2
    iget-object v1, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;
    if-eqz v1, :L9
    iget-boolean v1, p0, Lcom/google/android/material/internal/a;->b:Z
    if-eqz v1, :L9
  .line 3
    iget v1, p0, Lcom/google/android/material/internal/a;->f0:I
    const/4 v2, 1
    const/4 v3, 0
    if-le v1, v2, :L0
    iget-object v1, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    invoke-virtual { v1, v3 }, Landroid/text/StaticLayout;->getLineStart(I)I
    move-result v1
    int-to-float v1, v1
    goto :L1
  :L0
    iget-object v1, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    invoke-virtual { v1, v3 }, Landroid/text/StaticLayout;->getLineLeft(I)F
    move-result v1
  :L1
  .line 4
    iget v4, p0, Lcom/google/android/material/internal/a;->u:F
    add-float/2addr v4, v1
    iget v1, p0, Lcom/google/android/material/internal/a;->d0:F
    const/high16 v5, 16384
    mul-float v1, v1, v5
    sub-float/2addr v4, v1
  .line 5
    iget-object v1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;
    iget v5, p0, Lcom/google/android/material/internal/a;->J:F
    invoke-virtual { v1, v5 }, Landroid/text/TextPaint;->setTextSize(F)V
  .line 6
    iget v1, p0, Lcom/google/android/material/internal/a;->u:F
  .line 7
    iget v5, p0, Lcom/google/android/material/internal/a;->v:F
  .line 8
    iget-boolean v6, p0, Lcom/google/android/material/internal/a;->F:Z
    if-eqz v6, :L2
    iget-object v6, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;
    if-eqz v6, :L2
    goto :L3
  :L2
    const/4 v2, 0
  :L3
  .line 9
    iget v3, p0, Lcom/google/android/material/internal/a;->I:F
    const/high16 v6, 16256
    cmpl-float v6, v3, v6
    if-eqz v6, :L4
    iget-boolean v6, p0, Lcom/google/android/material/internal/a;->d:Z
    if-nez v6, :L4
  .line 10
    invoke-virtual { p1, v3, v3, v1, v5 }, Landroid/graphics/Canvas;->scale(FFFF)V
  :L4
    if-eqz v2, :L5
  .line 11
    iget-object v2, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/android/material/internal/a;->H:Landroid/graphics/Paint;
    invoke-virtual { p1, v2, v1, v5, v3 }, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
  .line 12
    invoke-virtual { p1, v0 }, Landroid/graphics/Canvas;->restoreToCount(I)V
    return-void
  :L5
  .line 13
    invoke-direct { p0 }, Lcom/google/android/material/internal/a;->h0()Z
    move-result v2
    if-eqz v2, :L7
    iget-boolean v2, p0, Lcom/google/android/material/internal/a;->d:Z
    if-eqz v2, :L6
    iget v2, p0, Lcom/google/android/material/internal/a;->c:F
    iget v3, p0, Lcom/google/android/material/internal/a;->f:F
    cmpl-float v2, v2, v3
    if-lez v2, :L7
  :L6
  .line 14
    invoke-direct { p0, p1, v4, v5 }, Lcom/google/android/material/internal/a;->n(Landroid/graphics/Canvas;FF)V
    goto :L8
  :L7
  .line 15
    invoke-virtual { p1, v1, v5 }, Landroid/graphics/Canvas;->translate(FF)V
  .line 16
    iget-object v1, p0, Lcom/google/android/material/internal/a;->a0:Landroid/text/StaticLayout;
    invoke-virtual { v1, p1 }, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
  :L8
  .line 17
    invoke-virtual { p1, v0 }, Landroid/graphics/Canvas;->restoreToCount(I)V
  :L9
    return-void
.end method

.method public p(Landroid/graphics/RectF;II)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Ljava/lang/CharSequence;
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->g(Ljava/lang/CharSequence;)Z
    move-result v0
    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->D:Z
  .line 2
    invoke-direct { p0, p2, p3 }, Lcom/google/android/material/internal/a;->s(II)F
    move-result v0
    iput v0, p1, Landroid/graphics/RectF;->left:F
  .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget v0, v0, Landroid/graphics/Rect;->top:I
    int-to-float v0, v0
    iput v0, p1, Landroid/graphics/RectF;->top:F
  .line 4
    invoke-direct { p0, p1, p2, p3 }, Lcom/google/android/material/internal/a;->t(Landroid/graphics/RectF;II)F
    move-result p2
    iput p2, p1, Landroid/graphics/RectF;->right:F
  .line 5
    iget-object p2, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;
    iget p2, p2, Landroid/graphics/Rect;->top:I
    int-to-float p2, p2
    invoke-virtual { p0 }, Lcom/google/android/material/internal/a;->r()F
    move-result p3
    add-float/2addr p2, p3
    iput p2, p1, Landroid/graphics/RectF;->bottom:F
    return-void
.end method

.method public q()Landroid/content/res/ColorStateList;
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;
    return-object v0
.end method

.method public r()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->z(Landroid/text/TextPaint;)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->ascent()F
    move-result v0
    neg-float v0, v0
    return v0
.end method

.method public u()I
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->v(Landroid/content/res/ColorStateList;)I
    move-result v0
    return v0
.end method

.method public x()F
  .registers 2
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;
    invoke-direct { p0, v0 }, Lcom/google/android/material/internal/a;->A(Landroid/text/TextPaint;)V
  .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;
    invoke-virtual { v0 }, Landroid/text/TextPaint;->ascent()F
    move-result v0
    neg-float v0, v0
    return v0
.end method

.method public y()F
  .registers 2
  .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->c:F
    return v0
.end method
