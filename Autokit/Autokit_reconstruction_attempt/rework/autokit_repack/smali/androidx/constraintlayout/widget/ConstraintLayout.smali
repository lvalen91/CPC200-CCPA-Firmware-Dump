.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$b;,
        Landroidx/constraintlayout/widget/ConstraintLayout$c;
    }
.end annotation


# instance fields
.field b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/b;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lc/e/b/k/f;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field protected i:Z

.field private j:I

.field private k:Landroidx/constraintlayout/widget/d;

.field protected l:Landroidx/constraintlayout/widget/c;

.field private m:I

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/e/b/k/e;",
            ">;"
        }
    .end annotation
.end field

.field r:Landroidx/constraintlayout/widget/ConstraintLayout$c;

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lc/e/b/k/f;

    invoke-direct {p1}, Lc/e/b/k/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 15
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 16
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 17
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    .line 18
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 20
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 21
    invoke-direct {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Lc/e/b/k/f;

    invoke-direct {p1}, Lc/e/b/k/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const v0, 0x7fffffff

    .line 28
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 29
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/16 v0, 0x101

    .line 31
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;

    .line 33
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 36
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 37
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 40
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 41
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 42
    invoke-direct {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 46
    new-instance p1, Lc/e/b/k/f;

    invoke-direct {p1}, Lc/e/b/k/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const v0, 0x7fffffff

    .line 49
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/16 v0, 0x101

    .line 52
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;

    .line 54
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 57
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 58
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 61
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 62
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 63
    invoke-direct {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic b(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    return p0
.end method

.method static synthetic c(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getPaddingWidth()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_29

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    :cond_29
    if-lez v1, :cond_2c

    move v0, v1

    :cond_2c
    return v0
.end method

.method private final h(I)Lc/e/b/k/e;
    .registers 3

    if-nez p1, :cond_5

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    return-object p1

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_20

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eq v0, p0, :cond_20

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_20

    .line 5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_20
    if-ne v0, p0, :cond_25

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    return-object p1

    :cond_25
    if-nez v0, :cond_29

    const/4 p1, 0x0

    goto :goto_31

    .line 7
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;

    :goto_31
    return-object p1
.end method

.method private k(Landroid/util/AttributeSet;II)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0, p0}, Lc/e/b/k/e;->l0(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-virtual {v0, v1}, Lc/e/b/k/f;->D1(Lc/e/b/k/m/b$b;)V

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;

    if-eqz p1, :cond_a3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, p2, :cond_a0

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 8
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v2, v3, :cond_3d

    .line 9
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_9d

    .line 10
    :cond_3d
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v2, v3, :cond_4a

    .line 11
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_9d

    .line 12
    :cond_4a
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v2, v3, :cond_57

    .line 13
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_9d

    .line 14
    :cond_57
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v2, v3, :cond_64

    .line 15
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto :goto_9d

    .line 16
    :cond_64
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v2, v3, :cond_71

    .line 17
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    goto :goto_9d

    .line 18
    :cond_71
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layoutDescription:I

    if-ne v2, v3, :cond_82

    .line 19
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_9d

    .line 20
    :try_start_7b
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(I)V
    :try_end_7e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_9d

    .line 21
    :catch_7f
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;

    goto :goto_9d

    .line 22
    :cond_82
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_constraintSet:I

    if-ne v2, v3, :cond_9d

    .line 23
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 24
    :try_start_8a
    new-instance v3, Landroidx/constraintlayout/widget/d;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/d;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/constraintlayout/widget/d;->m(Landroid/content/Context;I)V
    :try_end_98
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8a .. :try_end_98} :catch_99

    goto :goto_9b

    .line 26
    :catch_99
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;

    .line 27
    :goto_9b
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 28
    :cond_a0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    :cond_a3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, p2}, Lc/e/b/k/f;->E1(I)V

    return-void
.end method

.method private m()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    return-void
.end method

.method private q()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v6

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v7, :cond_1d

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_1a

    .line 5
    :cond_17
    invoke-virtual {v2}, Lc/e/b/k/e;->h0()V

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1d
    const/4 v1, -0x1

    if-eqz v6, :cond_5a

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v7, :cond_5a

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    :try_start_27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->r(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x2f

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v1, :cond_4c

    add-int/lit8 v5, v5, 0x1

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 11
    :cond_4c
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(I)Lc/e/b/k/e;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc/e/b/k/e;->m0(Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_57} :catch_57

    :catch_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 12
    :cond_5a
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-eq v2, v1, :cond_7c

    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v7, :cond_7c

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-ne v3, v4, :cond_79

    instance-of v3, v2, Landroidx/constraintlayout/widget/e;

    if-eqz v3, :cond_79

    .line 15
    check-cast v2, Landroidx/constraintlayout/widget/e;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/e;->getConstraintSet()Landroidx/constraintlayout/widget/d;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 16
    :cond_7c
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;

    if-eqz v1, :cond_84

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, p0, v2}, Landroidx/constraintlayout/widget/d;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 18
    :cond_84
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v1}, Lc/e/b/k/l;->d1()V

    .line 19
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a2

    const/4 v2, 0x0

    :goto_92
    if-ge v2, v1, :cond_a2

    .line 20
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/b;

    .line 21
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/b;->m(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    :cond_a2
    const/4 v1, 0x0

    :goto_a3
    if-ge v1, v7, :cond_b5

    .line 22
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 23
    instance-of v3, v2, Landroidx/constraintlayout/widget/g;

    if-eqz v3, :cond_b2

    .line 24
    check-cast v2, Landroidx/constraintlayout/widget/g;

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/g;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 25
    :cond_b5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 26
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    :goto_cd
    if-ge v1, v7, :cond_e3

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 29
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;

    move-result-object v3

    .line 30
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    :cond_e3
    const/4 v8, 0x0

    :goto_e4
    if-ge v8, v7, :cond_107

    .line 31
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 32
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;

    move-result-object v3

    if-nez v3, :cond_f1

    goto :goto_104

    .line 33
    :cond_f1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0, v3}, Lc/e/b/k/l;->a(Lc/e/b/k/e;)V

    .line 35
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(ZLandroid/view/View;Lc/e/b/k/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;)V

    :goto_104
    add-int/lit8 v8, v8, 0x1

    goto :goto_e4

    :cond_107
    return-void
.end method

.method private t()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_17

    .line 2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v1, 0x1

    goto :goto_17

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    :goto_17
    if-eqz v1, :cond_1c

    .line 4
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->q()V

    :cond_1c
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_c

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    return p1
.end method

.method protected d(ZLandroid/view/View;Lc/e/b/k/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Lc/e/b/k/e;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$b;",
            "Landroid/util/SparseArray<",
            "Lc/e/b/k/e;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a()V

    const/4 v10, 0x0

    .line 2
    iput-boolean v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:Z

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v7, v2}, Lc/e/b/k/e;->T0(I)V

    .line 4
    iget-boolean v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    const/4 v11, 0x1

    if-eqz v2, :cond_24

    .line 5
    invoke-virtual {v7, v11}, Lc/e/b/k/e;->D0(Z)V

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v7, v2}, Lc/e/b/k/e;->T0(I)V

    .line 7
    :cond_24
    invoke-virtual {v7, v1}, Lc/e/b/k/e;->l0(Ljava/lang/Object;)V

    .line 8
    instance-of v2, v1, Landroidx/constraintlayout/widget/b;

    if-eqz v2, :cond_36

    .line 9
    check-cast v1, Landroidx/constraintlayout/widget/b;

    .line 10
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v2}, Lc/e/b/k/f;->x1()Z

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroidx/constraintlayout/widget/b;->i(Lc/e/b/k/e;Z)V

    .line 11
    :cond_36
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Z

    const/16 v2, 0x11

    const/4 v12, -0x1

    if-eqz v1, :cond_69

    .line 12
    move-object v1, v7

    check-cast v1, Lc/e/b/k/g;

    .line 13
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j0:I

    .line 14
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k0:I

    .line 15
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l0:F

    .line 16
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v2, :cond_50

    .line 17
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I

    .line 18
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 19
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F

    :cond_50
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_5b

    .line 20
    invoke-virtual {v1, v5}, Lc/e/b/k/g;->i1(F)V

    goto/16 :goto_2d1

    :cond_5b
    if-eq v3, v12, :cond_62

    .line 21
    invoke-virtual {v1, v3}, Lc/e/b/k/g;->g1(I)V

    goto/16 :goto_2d1

    :cond_62
    if-eq v4, v12, :cond_2d1

    .line 22
    invoke-virtual {v1, v4}, Lc/e/b/k/g;->h1(I)V

    goto/16 :goto_2d1

    .line 23
    :cond_69
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c0:I

    .line 24
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d0:I

    .line 25
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e0:I

    .line 26
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f0:I

    .line 27
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g0:I

    .line 28
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h0:I

    .line 29
    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i0:F

    .line 30
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v2, :cond_b1

    .line 31
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 32
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 33
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 34
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 35
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 36
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 37
    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->z:F

    if-ne v1, v12, :cond_98

    if-ne v2, v12, :cond_98

    .line 38
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I

    if-eq v13, v12, :cond_93

    move v1, v13

    goto :goto_98

    .line 39
    :cond_93
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I

    if-eq v13, v12, :cond_98

    move v2, v13

    :cond_98
    :goto_98
    if-ne v4, v12, :cond_ac

    if-ne v5, v12, :cond_ac

    .line 40
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:I

    if-eq v13, v12, :cond_a1

    goto :goto_ad

    .line 41
    :cond_a1
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I

    if-eq v13, v12, :cond_ac

    move v15, v6

    move v5, v14

    move v6, v3

    move v14, v13

    move v3, v2

    move v13, v4

    goto :goto_b8

    :cond_ac
    move v13, v4

    :goto_ad
    move v15, v6

    move v6, v3

    move v3, v2

    goto :goto_b3

    :cond_b1
    move v15, v13

    move v13, v4

    :goto_b3
    move/from16 v18, v14

    move v14, v5

    move/from16 v5, v18

    .line 42
    :goto_b8
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I

    if-eq v2, v12, :cond_cd

    .line 43
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/b/k/e;

    if-eqz v1, :cond_200

    .line 44
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:F

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I

    invoke-virtual {v7, v1, v2, v3}, Lc/e/b/k/e;->j(Lc/e/b/k/e;FI)V

    goto/16 :goto_200

    :cond_cd
    if-eq v1, v12, :cond_ec

    .line 45
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lc/e/b/k/e;

    if-eqz v3, :cond_e9

    .line 46
    sget-object v4, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v1, p3

    move/from16 v16, v2

    move-object v2, v4

    move/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V

    goto :goto_104

    :cond_e9
    move/from16 v17, v5

    goto :goto_104

    :cond_ec
    move/from16 v17, v5

    if-eq v3, v12, :cond_104

    .line 47
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lc/e/b/k/e;

    if-eqz v3, :cond_104

    .line 48
    sget-object v2, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V

    :cond_104
    :goto_104
    if-eq v13, v12, :cond_11c

    .line 49
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lc/e/b/k/e;

    if-eqz v3, :cond_132

    .line 50
    sget-object v2, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    sget-object v4, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v1, p3

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V

    goto :goto_132

    :cond_11c
    if-eq v14, v12, :cond_132

    .line 51
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lc/e/b/k/e;

    if-eqz v3, :cond_132

    .line 52
    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v1, p3

    move-object v2, v4

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V

    .line 53
    :cond_132
    :goto_132
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I

    if-eq v1, v12, :cond_14c

    .line 54
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lc/e/b/k/e;

    if-eqz v3, :cond_166

    .line 55
    sget-object v4, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V

    goto :goto_166

    .line 56
    :cond_14c
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    if-eq v1, v12, :cond_166

    .line 57
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lc/e/b/k/e;

    if-eqz v3, :cond_166

    .line 58
    sget-object v2, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V

    .line 59
    :cond_166
    :goto_166
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I

    if-eq v1, v12, :cond_181

    .line 60
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lc/e/b/k/e;

    if-eqz v3, :cond_19a

    .line 61
    sget-object v2, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    sget-object v4, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V

    goto :goto_19a

    .line 62
    :cond_181
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    if-eq v1, v12, :cond_19a

    .line 63
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lc/e/b/k/e;

    if-eqz v3, :cond_19a

    .line 64
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual/range {v1 .. v6}, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V

    .line 65
    :cond_19a
    :goto_19a
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    if-eq v1, v12, :cond_1ed

    .line 66
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 67
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/b/k/e;

    if-eqz v2, :cond_1ed

    if-eqz v1, :cond_1ed

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v3, :cond_1ed

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 70
    iput-boolean v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    .line 71
    iput-boolean v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z

    .line 72
    sget-object v3, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;

    invoke-virtual {v7, v3}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v3

    .line 73
    sget-object v4, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;

    .line 74
    invoke-virtual {v2, v4}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v2

    .line 75
    invoke-virtual {v3, v2, v10, v12, v11}, Lc/e/b/k/d;->a(Lc/e/b/k/d;IIZ)Z

    .line 76
    invoke-virtual {v7, v11}, Lc/e/b/k/e;->u0(Z)V

    .line 77
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;

    invoke-virtual {v1, v11}, Lc/e/b/k/e;->u0(Z)V

    .line 78
    sget-object v1, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/b/k/d;->p()V

    .line 79
    sget-object v1, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/b/k/d;->p()V

    :cond_1ed
    const/4 v1, 0x0

    move/from16 v14, v17

    cmpl-float v2, v14, v1

    if-ltz v2, :cond_1f7

    .line 80
    invoke-virtual {v7, v14}, Lc/e/b/k/e;->w0(F)V

    .line 81
    :cond_1f7
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_200

    .line 82
    invoke-virtual {v7, v2}, Lc/e/b/k/e;->N0(F)V

    :cond_200
    :goto_200
    if-eqz p1, :cond_211

    .line 83
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    if-ne v1, v12, :cond_20a

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    if-eq v1, v12, :cond_211

    .line 84
    :cond_20a
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I

    invoke-virtual {v7, v1, v2}, Lc/e/b/k/e;->L0(II)V

    .line 85
    :cond_211
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:Z

    const/4 v2, -0x2

    if-nez v1, :cond_247

    .line 86
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, v12, :cond_23e

    .line 87
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:Z

    if-eqz v1, :cond_224

    .line 88
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    goto :goto_229

    .line 89
    :cond_224
    sget-object v1, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 90
    :goto_229
    sget-object v1, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v1, Lc/e/b/k/d;->g:I

    .line 91
    sget-object v1, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v1, Lc/e/b/k/d;->g:I

    goto :goto_25a

    .line 92
    :cond_23e
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 93
    invoke-virtual {v7, v10}, Lc/e/b/k/e;->U0(I)V

    goto :goto_25a

    .line 94
    :cond_247
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 95
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->U0(I)V

    .line 96
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, v2, :cond_25a

    .line 97
    sget-object v1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 98
    :cond_25a
    :goto_25a
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:Z

    if-nez v1, :cond_28f

    .line 99
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v12, :cond_286

    .line 100
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:Z

    if-eqz v1, :cond_26c

    .line 101
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    goto :goto_271

    .line 102
    :cond_26c
    sget-object v1, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    .line 103
    :goto_271
    sget-object v1, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Lc/e/b/k/d;->g:I

    .line 104
    sget-object v1, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;

    move-result-object v1

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v1, Lc/e/b/k/d;->g:I

    goto :goto_2a2

    .line 105
    :cond_286
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    .line 106
    invoke-virtual {v7, v10}, Lc/e/b/k/e;->v0(I)V

    goto :goto_2a2

    .line 107
    :cond_28f
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    .line 108
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->v0(I)V

    .line 109
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v2, :cond_2a2

    .line 110
    sget-object v1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    .line 111
    :cond_2a2
    :goto_2a2
    iget-object v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->n0(Ljava/lang/String;)V

    .line 112
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:F

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->B0(F)V

    .line 113
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:F

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->S0(F)V

    .line 114
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:I

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->x0(I)V

    .line 115
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:I

    invoke-virtual {v7, v1}, Lc/e/b/k/e;->O0(I)V

    .line 116
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:I

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:I

    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:F

    invoke-virtual {v7, v1, v2, v3, v4}, Lc/e/b/k/e;->A0(IIIF)V

    .line 117
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:I

    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:F

    invoke-virtual {v7, v1, v2, v3, v4}, Lc/e/b/k/e;->R0(IIIF)V

    :cond_2d1
    :goto_2d1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1e

    .line 3
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/b;

    .line 4
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/b;->l(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 5
    :cond_1e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    const/high16 v6, 0x44f00000    # 1920.0f

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v1, :cond_df

    .line 10
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4a

    goto/16 :goto_db

    .line 12
    :cond_4a
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_db

    .line 13
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_db

    .line 14
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 15
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 16
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_db

    .line 17
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 18
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 19
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 20
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v5

    mul-float v9, v9, v3

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v6

    mul-float v10, v10, v4

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v5

    mul-float v11, v11, v3

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v6

    mul-float v8, v8, v4

    float-to-int v8, v8

    .line 21
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 22
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 23
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 24
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 25
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 26
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 27
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 28
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 29
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_db
    :goto_db
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3a

    :cond_df
    return-void
.end method

.method protected e()Landroidx/constraintlayout/widget/ConstraintLayout$b;
    .registers 3

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    return-object v0
.end method

.method public f(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$b;
    .registers 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public forceLayout()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->m()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public g(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_19

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_19

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-eqz p1, :cond_19

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return v0
.end method

.method public getOptimizationLevel()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/f;->s1()I

    move-result v0

    return v0
.end method

.method public i(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final j(Landroid/view/View;)Lc/e/b/k/e;
    .registers 2

    if-ne p1, p0, :cond_5

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    return-object p1

    :cond_5
    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_11

    .line 2
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;

    :goto_11
    return-object p1
.end method

.method protected l()Z
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_23

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_23

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v2, v0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method protected n(I)V
    .registers 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/c;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;

    return-void
.end method

.method protected o(IIIIZZ)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    .line 2
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_38

    const/4 v0, 0x0

    .line 4
    invoke-static {p3, p1, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    .line 5
    invoke-static {p4, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    .line 6
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_2d

    or-int/2addr p1, p3

    :cond_2d
    if-eqz p6, :cond_30

    or-int/2addr p2, p3

    .line 8
    :cond_30
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 10
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    goto :goto_3f

    .line 11
    :cond_38
    invoke-virtual {p0, p3, p4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 12
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 13
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    :goto_3f
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_a
    if-ge p4, p1, :cond_5e

    .line 3
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;

    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2f

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Z

    if-nez v2, :cond_2f

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:Z

    if-nez v2, :cond_2f

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z

    if-nez v2, :cond_2f

    if-nez p2, :cond_2f

    goto :goto_5b

    .line 7
    :cond_2f
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z

    if-eqz v0, :cond_34

    goto :goto_5b

    .line 8
    :cond_34
    invoke-virtual {v1}, Lc/e/b/k/e;->S()I

    move-result v0

    .line 9
    invoke-virtual {v1}, Lc/e/b/k/e;->T()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Lc/e/b/k/e;->R()I

    move-result v3

    add-int/2addr v3, v0

    .line 11
    invoke-virtual {v1}, Lc/e/b/k/e;->v()I

    move-result v1

    add-int/2addr v1, v2

    .line 12
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    instance-of v4, p5, Landroidx/constraintlayout/widget/g;

    if-eqz v4, :cond_5b

    .line 14
    check-cast p5, Landroidx/constraintlayout/widget/g;

    .line 15
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/g;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_5b

    .line 16
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_5b
    :goto_5b
    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    .line 18
    :cond_5e
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_76

    :goto_66
    if-ge p3, p1, :cond_76

    .line 19
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/b;

    .line 20
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/b;->j(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_66

    :cond_76
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1d

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 6
    :cond_1d
    :goto_1d
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    if-nez v0, :cond_93

    .line 7
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    if-ne v0, p1, :cond_48

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    if-ne v0, p2, :cond_48

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/e;->R()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/e;->v()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    .line 9
    invoke-virtual {v0}, Lc/e/b/k/f;->y1()Z

    move-result v6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/f;->w1()Z

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 10
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->o(IIIIZZ)V

    return-void

    .line 11
    :cond_48
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    if-ne v0, p1, :cond_93

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_93

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_93

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 14
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v2, :cond_93

    .line 15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 16
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v2}, Lc/e/b/k/e;->v()I

    move-result v2

    if-lt v0, v2, :cond_93

    .line 17
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 18
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 19
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/e;->R()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/e;->v()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    .line 20
    invoke-virtual {v0}, Lc/e/b/k/f;->y1()Z

    move-result v6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/f;->w1()Z

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 21
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->o(IIIIZZ)V

    return-void

    .line 22
    :cond_93
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 23
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Lc/e/b/k/f;->F1(Z)V

    .line 25
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    if-eqz v0, :cond_b1

    .line 26
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    .line 27
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->t()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 28
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/f;->H1()V

    .line 29
    :cond_b1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Lc/e/b/k/f;III)V

    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/e;->R()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/e;->v()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    .line 31
    invoke-virtual {v0}, Lc/e/b/k/f;->y1()Z

    move-result v6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0}, Lc/e/b/k/f;->w1()Z

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 32
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->o(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;

    move-result-object v0

    .line 4
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    .line 5
    instance-of v0, v0, Lc/e/b/k/g;

    if-nez v0, :cond_2c

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 7
    new-instance v1, Lc/e/b/k/g;

    invoke-direct {v1}, Lc/e/b/k/g;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;

    .line 8
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Z

    .line 9
    check-cast v1, Lc/e/b/k/g;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I

    invoke-virtual {v1, v0}, Lc/e/b/k/g;->j1(I)V

    .line 10
    :cond_2c
    instance-of v0, p1, Landroidx/constraintlayout/widget/b;

    if-eqz v0, :cond_4b

    .line 11
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/b;

    .line 12
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/b;->n()V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 14
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:Z

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v1, v0}, Lc/e/b/k/l;->c1(Lc/e/b/k/e;)V

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method protected p(Lc/e/b/k/f;III)V
    .registers 25

    move-object/from16 v6, p0

    .line 1
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 2
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 4
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v2, v19, v16

    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v4

    .line 8
    iget-object v12, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, v19

    move/from16 v17, v4

    move/from16 v18, v2

    invoke-virtual/range {v12 .. v18}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c(IIIIII)V

    .line 9
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v5, v7, :cond_65

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-gtz v5, :cond_5c

    if-lez v7, :cond_53

    goto :goto_5c

    .line 12
    :cond_53
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_63

    .line 13
    :cond_5c
    :goto_5c
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->l()Z

    move-result v3

    if-eqz v3, :cond_63

    move v5, v7

    :cond_63
    :goto_63
    move v15, v5

    goto :goto_6e

    .line 14
    :cond_65
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v15, v3

    :goto_6e
    sub-int v10, v0, v4

    sub-int v12, v1, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    .line 15
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->s(Lc/e/b/k/f;IIII)V

    .line 16
    iget v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iget v14, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v16, v19

    invoke-virtual/range {v7 .. v16}, Lc/e/b/k/f;->z1(IIIIIIIII)J

    return-void
.end method

.method public r(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_35

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_35

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_35

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-nez p1, :cond_15

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 4
    :cond_15
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_26
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public requestLayout()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->m()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected s(Lc/e/b/k/f;IIII)V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->e:I

    .line 2
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;->d:I

    .line 3
    sget-object v2, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    if-eq p2, v5, :cond_2e

    if-eqz p2, :cond_23

    if-eq p2, v4, :cond_1a

    move-object p2, v2

    :cond_18
    const/4 p3, 0x0

    goto :goto_38

    .line 5
    :cond_1a
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    move-object p2, v2

    goto :goto_38

    .line 6
    :cond_23
    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-nez v3, :cond_18

    .line 7
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v6, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_38

    .line 8
    :cond_2e
    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-nez v3, :cond_38

    .line 9
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v6, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_38
    :goto_38
    if-eq p4, v5, :cond_53

    if-eqz p4, :cond_48

    if-eq p4, v4, :cond_40

    :cond_3e
    const/4 p5, 0x0

    goto :goto_5d

    .line 10
    :cond_40
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr p4, v1

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto :goto_5d

    .line 11
    :cond_48
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-nez v3, :cond_3e

    .line 12
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {v6, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_5d

    .line 13
    :cond_53
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;

    if-nez v3, :cond_5d

    .line 14
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {v6, p4}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 15
    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Lc/e/b/k/e;->R()I

    move-result p4

    if-ne p3, p4, :cond_69

    invoke-virtual {p1}, Lc/e/b/k/e;->v()I

    move-result p4

    if-eq p5, p4, :cond_6c

    .line 16
    :cond_69
    invoke-virtual {p1}, Lc/e/b/k/f;->v1()V

    .line 17
    :cond_6c
    invoke-virtual {p1, v6}, Lc/e/b/k/e;->V0(I)V

    .line 18
    invoke-virtual {p1, v6}, Lc/e/b/k/e;->W0(I)V

    .line 19
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr p4, v0

    invoke-virtual {p1, p4}, Lc/e/b/k/e;->H0(I)V

    .line 20
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr p4, v1

    invoke-virtual {p1, p4}, Lc/e/b/k/e;->G0(I)V

    .line 21
    invoke-virtual {p1, v6}, Lc/e/b/k/e;->K0(I)V

    .line 22
    invoke-virtual {p1, v6}, Lc/e/b/k/e;->J0(I)V

    .line 23
    invoke-virtual {p1, p2}, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V

    .line 24
    invoke-virtual {p1, p3}, Lc/e/b/k/e;->U0(I)V

    .line 25
    invoke-virtual {p1, v2}, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V

    .line 26
    invoke-virtual {p1, p5}, Lc/e/b/k/e;->v0(I)V

    .line 27
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lc/e/b/k/e;->K0(I)V

    .line 28
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lc/e/b/k/e;->J0(I)V

    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;

    return-void
.end method

.method public setId(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/f;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/c;->c(Landroidx/constraintlayout/widget/f;)V

    :cond_7
    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;

    invoke-virtual {v0, p1}, Lc/e/b/k/f;->E1(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
