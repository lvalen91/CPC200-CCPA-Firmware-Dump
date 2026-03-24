.class public Ld/c/a/a/a0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/c/a/a/a0/k$c;,
        Ld/c/a/a/a0/k$b;
    }
.end annotation


# instance fields
.field a:Ld/c/a/a/a0/d;

.field b:Ld/c/a/a/a0/d;

.field c:Ld/c/a/a/a0/d;

.field d:Ld/c/a/a/a0/d;

.field e:Ld/c/a/a/a0/c;

.field f:Ld/c/a/a/a0/c;

.field g:Ld/c/a/a/a0/c;

.field h:Ld/c/a/a/a0/c;

.field i:Ld/c/a/a/a0/f;

.field j:Ld/c/a/a/a0/f;

.field k:Ld/c/a/a/a0/f;

.field l:Ld/c/a/a/a0/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ld/c/a/a/a0/h;->b()Ld/c/a/a/a0/d;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->a:Ld/c/a/a/a0/d;

    .line 17
    invoke-static {}, Ld/c/a/a/a0/h;->b()Ld/c/a/a/a0/d;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->b:Ld/c/a/a/a0/d;

    .line 18
    invoke-static {}, Ld/c/a/a/a0/h;->b()Ld/c/a/a/a0/d;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->c:Ld/c/a/a/a0/d;

    .line 19
    invoke-static {}, Ld/c/a/a/a0/h;->b()Ld/c/a/a/a0/d;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->d:Ld/c/a/a/a0/d;

    .line 20
    new-instance v0, Ld/c/a/a/a0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/c/a/a/a0/a;-><init>(F)V

    iput-object v0, p0, Ld/c/a/a/a0/k;->e:Ld/c/a/a/a0/c;

    .line 21
    new-instance v0, Ld/c/a/a/a0/a;

    invoke-direct {v0, v1}, Ld/c/a/a/a0/a;-><init>(F)V

    iput-object v0, p0, Ld/c/a/a/a0/k;->f:Ld/c/a/a/a0/c;

    .line 22
    new-instance v0, Ld/c/a/a/a0/a;

    invoke-direct {v0, v1}, Ld/c/a/a/a0/a;-><init>(F)V

    iput-object v0, p0, Ld/c/a/a/a0/k;->g:Ld/c/a/a/a0/c;

    .line 23
    new-instance v0, Ld/c/a/a/a0/a;

    invoke-direct {v0, v1}, Ld/c/a/a/a0/a;-><init>(F)V

    iput-object v0, p0, Ld/c/a/a/a0/k;->h:Ld/c/a/a/a0/c;

    .line 24
    invoke-static {}, Ld/c/a/a/a0/h;->c()Ld/c/a/a/a0/f;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->i:Ld/c/a/a/a0/f;

    .line 25
    invoke-static {}, Ld/c/a/a/a0/h;->c()Ld/c/a/a/a0/f;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->j:Ld/c/a/a/a0/f;

    .line 26
    invoke-static {}, Ld/c/a/a/a0/h;->c()Ld/c/a/a/a0/f;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->k:Ld/c/a/a/a0/f;

    .line 27
    invoke-static {}, Ld/c/a/a/a0/h;->c()Ld/c/a/a/a0/f;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->l:Ld/c/a/a/a0/f;

    return-void
.end method

.method private constructor <init>(Ld/c/a/a/a0/k$b;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->a(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/d;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->a:Ld/c/a/a/a0/d;

    .line 4
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->e(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/d;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->b:Ld/c/a/a/a0/d;

    .line 5
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->f(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/d;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->c:Ld/c/a/a/a0/d;

    .line 6
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->g(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/d;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->d:Ld/c/a/a/a0/d;

    .line 7
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->h(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/c;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->e:Ld/c/a/a/a0/c;

    .line 8
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->i(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/c;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->f:Ld/c/a/a/a0/c;

    .line 9
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->j(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/c;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->g:Ld/c/a/a/a0/c;

    .line 10
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->k(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/c;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->h:Ld/c/a/a/a0/c;

    .line 11
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->l(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/f;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->i:Ld/c/a/a/a0/f;

    .line 12
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->b(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/f;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->j:Ld/c/a/a/a0/f;

    .line 13
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->c(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/f;

    move-result-object v0

    iput-object v0, p0, Ld/c/a/a/a0/k;->k:Ld/c/a/a/a0/f;

    .line 14
    invoke-static {p1}, Ld/c/a/a/a0/k$b;->d(Ld/c/a/a/a0/k$b;)Ld/c/a/a/a0/f;

    move-result-object p1

    iput-object p1, p0, Ld/c/a/a/a0/k;->l:Ld/c/a/a/a0/f;

    return-void
.end method

.method synthetic constructor <init>(Ld/c/a/a/a0/k$b;Ld/c/a/a/a0/k$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ld/c/a/a/a0/k;-><init>(Ld/c/a/a/a0/k$b;)V

    return-void
.end method

.method public static a()Ld/c/a/a/a0/k$b;
    .registers 3

    .line 1
    new-instance v0, Ld/c/a/a/a0/k$b;

    invoke-direct {v0}, Ld/c/a/a/a0/k$b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Ld/c/a/a/a0/k$b;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Ld/c/a/a/a0/k;->c(Landroid/content/Context;III)Ld/c/a/a/a0/k$b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;III)Ld/c/a/a/a0/k$b;
    .registers 5

    .line 1
    new-instance v0, Ld/c/a/a/a0/a;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Ld/c/a/a/a0/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Ld/c/a/a/a0/k;->d(Landroid/content/Context;IILd/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;IILd/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;
    .registers 10

    if-eqz p2, :cond_9

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 2
    :cond_9
    sget-object p2, Ld/c/a/a/k;->ShapeAppearance:[I

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 4
    :try_start_f
    sget p1, Ld/c/a/a/k;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 5
    sget p2, Ld/c/a/a/k;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 7
    sget v0, Ld/c/a/a/k;->ShapeAppearance_cornerFamilyTopRight:I

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 9
    sget v1, Ld/c/a/a/k;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 10
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 11
    sget v2, Ld/c/a/a/k;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 12
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 13
    sget v2, Ld/c/a/a/k;->ShapeAppearance_cornerSize:I

    .line 14
    invoke-static {p0, v2, p3}, Ld/c/a/a/a0/k;->m(Landroid/content/res/TypedArray;ILd/c/a/a/a0/c;)Ld/c/a/a/a0/c;

    move-result-object p3

    .line 15
    sget v2, Ld/c/a/a/k;->ShapeAppearance_cornerSizeTopLeft:I

    .line 16
    invoke-static {p0, v2, p3}, Ld/c/a/a/a0/k;->m(Landroid/content/res/TypedArray;ILd/c/a/a/a0/c;)Ld/c/a/a/a0/c;

    move-result-object v2

    .line 17
    sget v3, Ld/c/a/a/k;->ShapeAppearance_cornerSizeTopRight:I

    .line 18
    invoke-static {p0, v3, p3}, Ld/c/a/a/a0/k;->m(Landroid/content/res/TypedArray;ILd/c/a/a/a0/c;)Ld/c/a/a/a0/c;

    move-result-object v3

    .line 19
    sget v4, Ld/c/a/a/k;->ShapeAppearance_cornerSizeBottomRight:I

    .line 20
    invoke-static {p0, v4, p3}, Ld/c/a/a/a0/k;->m(Landroid/content/res/TypedArray;ILd/c/a/a/a0/c;)Ld/c/a/a/a0/c;

    move-result-object v4

    .line 21
    sget v5, Ld/c/a/a/k;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 22
    invoke-static {p0, v5, p3}, Ld/c/a/a/a0/k;->m(Landroid/content/res/TypedArray;ILd/c/a/a/a0/c;)Ld/c/a/a/a0/c;

    move-result-object p3

    .line 23
    new-instance v5, Ld/c/a/a/a0/k$b;

    invoke-direct {v5}, Ld/c/a/a/a0/k$b;-><init>()V

    .line 24
    invoke-virtual {v5, p2, v2}, Ld/c/a/a/a0/k$b;->y(ILd/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    .line 25
    invoke-virtual {v5, v0, v3}, Ld/c/a/a/a0/k$b;->C(ILd/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    .line 26
    invoke-virtual {v5, v1, v4}, Ld/c/a/a/a0/k$b;->u(ILd/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    .line 27
    invoke-virtual {v5, p1, p3}, Ld/c/a/a/a0/k$b;->q(ILd/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;
    :try_end_5d
    .catchall {:try_start_f .. :try_end_5d} :catchall_61

    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_61
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    throw p1
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Ld/c/a/a/a0/k$b;
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Ld/c/a/a/a0/k;->f(Landroid/content/Context;Landroid/util/AttributeSet;III)Ld/c/a/a/a0/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/util/AttributeSet;III)Ld/c/a/a/a0/k$b;
    .registers 6

    .line 1
    new-instance v0, Ld/c/a/a/a0/a;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Ld/c/a/a/a0/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Ld/c/a/a/a0/k;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILd/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Landroid/util/AttributeSet;IILd/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;
    .registers 6

    .line 1
    sget-object v0, Ld/c/a/a/k;->MaterialShape:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Ld/c/a/a/k;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4
    sget v0, Ld/c/a/a/k;->MaterialShape_shapeAppearanceOverlay:I

    .line 5
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-static {p0, p2, p3, p4}, Ld/c/a/a/a0/k;->d(Landroid/content/Context;IILd/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    move-result-object p0

    return-object p0
.end method

.method private static m(Landroid/content/res/TypedArray;ILd/c/a/a/a0/c;)Ld/c/a/a/a0/c;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_7

    return-object p2

    .line 2
    :cond_7
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    .line 3
    new-instance p2, Ld/c/a/a/a0/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Ld/c/a/a/a0/a;-><init>(F)V

    return-object p2

    :cond_21
    const/4 p0, 0x6

    if-ne v0, p0, :cond_30

    .line 5
    new-instance p0, Ld/c/a/a/a0/i;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Ld/c/a/a/a0/i;-><init>(F)V

    return-object p0

    :cond_30
    return-object p2
.end method


# virtual methods
.method public h()Ld/c/a/a/a0/f;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->k:Ld/c/a/a/a0/f;

    return-object v0
.end method

.method public i()Ld/c/a/a/a0/d;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->d:Ld/c/a/a/a0/d;

    return-object v0
.end method

.method public j()Ld/c/a/a/a0/c;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->h:Ld/c/a/a/a0/c;

    return-object v0
.end method

.method public k()Ld/c/a/a/a0/d;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->c:Ld/c/a/a/a0/d;

    return-object v0
.end method

.method public l()Ld/c/a/a/a0/c;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->g:Ld/c/a/a/a0/c;

    return-object v0
.end method

.method public n()Ld/c/a/a/a0/f;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->l:Ld/c/a/a/a0/f;

    return-object v0
.end method

.method public o()Ld/c/a/a/a0/f;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->j:Ld/c/a/a/a0/f;

    return-object v0
.end method

.method public p()Ld/c/a/a/a0/f;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->i:Ld/c/a/a/a0/f;

    return-object v0
.end method

.method public q()Ld/c/a/a/a0/d;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->a:Ld/c/a/a/a0/d;

    return-object v0
.end method

.method public r()Ld/c/a/a/a0/c;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->e:Ld/c/a/a/a0/c;

    return-object v0
.end method

.method public s()Ld/c/a/a/a0/d;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->b:Ld/c/a/a/a0/d;

    return-object v0
.end method

.method public t()Ld/c/a/a/a0/c;
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/a0/k;->f:Ld/c/a/a/a0/c;

    return-object v0
.end method

.method public u(Landroid/graphics/RectF;)Z
    .registers 7

    .line 1
    const-class v0, Ld/c/a/a/a0/f;

    iget-object v1, p0, Ld/c/a/a/a0/k;->l:Ld/c/a/a/a0/f;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Ld/c/a/a/a0/k;->j:Ld/c/a/a/a0/f;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Ld/c/a/a/a0/k;->i:Ld/c/a/a/a0/f;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Ld/c/a/a/a0/k;->k:Ld/c/a/a/a0/f;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 6
    :goto_37
    iget-object v1, p0, Ld/c/a/a/a0/k;->e:Ld/c/a/a/a0/c;

    invoke-interface {v1, p1}, Ld/c/a/a/a0/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 7
    iget-object v4, p0, Ld/c/a/a/a0/k;->f:Ld/c/a/a/a0/c;

    .line 8
    invoke-interface {v4, p1}, Ld/c/a/a/a0/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_5d

    iget-object v4, p0, Ld/c/a/a/a0/k;->h:Ld/c/a/a/a0/c;

    .line 9
    invoke-interface {v4, p1}, Ld/c/a/a/a0/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_5d

    iget-object v4, p0, Ld/c/a/a/a0/k;->g:Ld/c/a/a/a0/c;

    .line 10
    invoke-interface {v4, p1}, Ld/c/a/a/a0/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_5d

    const/4 p1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x0

    .line 11
    :goto_5e
    iget-object v1, p0, Ld/c/a/a/a0/k;->b:Ld/c/a/a/a0/d;

    instance-of v1, v1, Ld/c/a/a/a0/j;

    if-eqz v1, :cond_78

    iget-object v1, p0, Ld/c/a/a/a0/k;->a:Ld/c/a/a/a0/d;

    instance-of v1, v1, Ld/c/a/a/a0/j;

    if-eqz v1, :cond_78

    iget-object v1, p0, Ld/c/a/a/a0/k;->c:Ld/c/a/a/a0/d;

    instance-of v1, v1, Ld/c/a/a/a0/j;

    if-eqz v1, :cond_78

    iget-object v1, p0, Ld/c/a/a/a0/k;->d:Ld/c/a/a/a0/d;

    instance-of v1, v1, Ld/c/a/a/a0/j;

    if-eqz v1, :cond_78

    const/4 v1, 0x1

    goto :goto_79

    :cond_78
    const/4 v1, 0x0

    :goto_79
    if-eqz v0, :cond_80

    if-eqz p1, :cond_80

    if-eqz v1, :cond_80

    goto :goto_81

    :cond_80
    const/4 v2, 0x0

    :goto_81
    return v2
.end method

.method public v()Ld/c/a/a/a0/k$b;
    .registers 2

    .line 1
    new-instance v0, Ld/c/a/a/a0/k$b;

    invoke-direct {v0, p0}, Ld/c/a/a/a0/k$b;-><init>(Ld/c/a/a/a0/k;)V

    return-object v0
.end method

.method public w(F)Ld/c/a/a/a0/k;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ld/c/a/a/a0/k;->v()Ld/c/a/a/a0/k$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/c/a/a/a0/k$b;->o(F)Ld/c/a/a/a0/k$b;

    invoke-virtual {v0}, Ld/c/a/a/a0/k$b;->m()Ld/c/a/a/a0/k;

    move-result-object p1

    return-object p1
.end method

.method public x(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ld/c/a/a/a0/k;->v()Ld/c/a/a/a0/k$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/c/a/a/a0/k$b;->p(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    invoke-virtual {v0}, Ld/c/a/a/a0/k$b;->m()Ld/c/a/a/a0/k;

    move-result-object p1

    return-object p1
.end method

.method public y(Ld/c/a/a/a0/k$c;)Ld/c/a/a/a0/k;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ld/c/a/a/a0/k;->v()Ld/c/a/a/a0/k$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ld/c/a/a/a0/k;->r()Ld/c/a/a/a0/c;

    move-result-object v1

    invoke-interface {p1, v1}, Ld/c/a/a/a0/k$c;->a(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/c/a/a/a0/k$b;->B(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    .line 3
    invoke-virtual {p0}, Ld/c/a/a/a0/k;->t()Ld/c/a/a/a0/c;

    move-result-object v1

    invoke-interface {p1, v1}, Ld/c/a/a/a0/k$c;->a(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/c/a/a/a0/k$b;->F(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    .line 4
    invoke-virtual {p0}, Ld/c/a/a/a0/k;->j()Ld/c/a/a/a0/c;

    move-result-object v1

    invoke-interface {p1, v1}, Ld/c/a/a/a0/k$c;->a(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/c/a/a/a0/k$b;->t(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    .line 5
    invoke-virtual {p0}, Ld/c/a/a/a0/k;->l()Ld/c/a/a/a0/c;

    move-result-object v1

    invoke-interface {p1, v1}, Ld/c/a/a/a0/k$c;->a(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/c/a/a/a0/k$b;->x(Ld/c/a/a/a0/c;)Ld/c/a/a/a0/k$b;

    .line 6
    invoke-virtual {v0}, Ld/c/a/a/a0/k$b;->m()Ld/c/a/a/a0/k;

    move-result-object p1

    return-object p1
.end method
