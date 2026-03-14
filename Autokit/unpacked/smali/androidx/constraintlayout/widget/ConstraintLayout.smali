.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/constraintlayout/widget/ConstraintLayout$b;,
    Landroidx/constraintlayout/widget/ConstraintLayout$c;
  }
.end annotation

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

.method public constructor <init>(Landroid/content/Context;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
  .line 2
    new-instance p1, Landroid/util/SparseArray;
    invoke-direct { p1 }, Landroid/util/SparseArray;-><init>()V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
  .line 3
    new-instance p1, Ljava/util/ArrayList;
    const/4 v0, 4
    invoke-direct { p1, v0 }, Ljava/util/ArrayList;-><init>(I)V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
  .line 4
    new-instance p1, Lc/e/b/k/f;
    invoke-direct { p1 }, Lc/e/b/k/f;-><init>()V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    const/4 p1, 0
  .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
  .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
    const v0, 2147483647
  .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
  .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
    const/4 v0, 1
  .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    const/16 v0, 257
  .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I
    const/4 v0, 0
  .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;
  .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;
    const/4 v1, -1
  .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I
  .line 14
    new-instance v2, Ljava/util/HashMap;
    invoke-direct { v2 }, Ljava/util/HashMap;-><init>()V
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;
  .line 15
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I
  .line 16
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I
  .line 17
    new-instance v1, Landroid/util/SparseArray;
    invoke-direct { v1 }, Landroid/util/SparseArray;-><init>()V
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;
  .line 18
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$c;
    invoke-direct { v1, p0, p0 }, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;
  .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I
  .line 20
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I
  .line 21
    invoke-direct { p0, v0, p1, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Landroid/util/AttributeSet;II)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 5
  .line 22
    invoke-direct { p0, p1, p2 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 23
    new-instance p1, Landroid/util/SparseArray;
    invoke-direct { p1 }, Landroid/util/SparseArray;-><init>()V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
  .line 24
    new-instance p1, Ljava/util/ArrayList;
    const/4 v0, 4
    invoke-direct { p1, v0 }, Ljava/util/ArrayList;-><init>(I)V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
  .line 25
    new-instance p1, Lc/e/b/k/f;
    invoke-direct { p1 }, Lc/e/b/k/f;-><init>()V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    const/4 p1, 0
  .line 26
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
  .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
    const v0, 2147483647
  .line 28
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
  .line 29
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
    const/4 v0, 1
  .line 30
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    const/16 v0, 257
  .line 31
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I
    const/4 v0, 0
  .line 32
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;
  .line 33
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;
    const/4 v0, -1
  .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I
  .line 35
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;
  .line 36
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I
  .line 37
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I
  .line 38
    new-instance v0, Landroid/util/SparseArray;
    invoke-direct { v0 }, Landroid/util/SparseArray;-><init>()V
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;
  .line 39
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;
    invoke-direct { v0, p0, p0 }, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;
  .line 40
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I
  .line 41
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I
  .line 42
    invoke-direct { p0, p2, p1, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Landroid/util/AttributeSet;II)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 6
  .line 43
    invoke-direct { p0, p1, p2, p3 }, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 44
    new-instance p1, Landroid/util/SparseArray;
    invoke-direct { p1 }, Landroid/util/SparseArray;-><init>()V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
  .line 45
    new-instance p1, Ljava/util/ArrayList;
    const/4 v0, 4
    invoke-direct { p1, v0 }, Ljava/util/ArrayList;-><init>(I)V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
  .line 46
    new-instance p1, Lc/e/b/k/f;
    invoke-direct { p1 }, Lc/e/b/k/f;-><init>()V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    const/4 p1, 0
  .line 47
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
  .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
    const v0, 2147483647
  .line 49
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
  .line 50
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
    const/4 v0, 1
  .line 51
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    const/16 v0, 257
  .line 52
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I
    const/4 v0, 0
  .line 53
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;
  .line 54
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;
    const/4 v0, -1
  .line 55
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I
  .line 56
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;
  .line 57
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I
  .line 58
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I
  .line 59
    new-instance v0, Landroid/util/SparseArray;
    invoke-direct { v0 }, Landroid/util/SparseArray;-><init>()V
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;
  .line 60
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$c;
    invoke-direct { v0, p0, p0 }, Landroidx/constraintlayout/widget/ConstraintLayout$c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;
  .line 61
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I
  .line 62
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I
  .line 63
    invoke-direct { p0, p2, p3, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Landroid/util/AttributeSet;II)V
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
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v0
    const/4 v1, 0
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingRight()I
    move-result v2
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v2
    add-int/2addr v0, v2
  .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 17
    if-lt v2, v3, :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingStart()I
    move-result v2
    invoke-static { v1, v2 }, Ljava/lang/Math;->max(II)I
    move-result v2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getPaddingEnd()I
    move-result v3
    invoke-static { v1, v3 }, Ljava/lang/Math;->max(II)I
    move-result v1
    add-int/2addr v1, v2
  :L0
    if-lez v1, :L1
    move v0, v1
  :L1
    return v0
.end method

.method private final h(I)Lc/e/b/k/e;
  .registers 3
    if-nez p1, :L0
  .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    return-object p1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
    invoke-virtual { v0, p1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-nez v0, :L1
  .line 3
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L1
    if-eq v0, p0, :L1
  .line 4
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    if-ne p1, p0, :L1
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V
  :L1
    if-ne v0, p0, :L2
  .line 6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    return-object p1
  :L2
    if-nez v0, :L3
    const/4 p1, 0
    goto :L4
  :L3
  .line 7
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
  :L4
    return-object p1
.end method

.method private k(Landroid/util/AttributeSet;II)V
  .catch Landroid/content/res/Resources$NotFoundException; { :L6 .. :L7 } :L8
  .catch Landroid/content/res/Resources$NotFoundException; { :L10 .. :L11 } :L12
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0, p0 }, Lc/e/b/k/e;->l0(Ljava/lang/Object;)V
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;
    invoke-virtual { v0, v1 }, Lc/e/b/k/f;->D1(Lc/e/b/k/m/b$b;)V
  .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getId()I
    move-result v1
    invoke-virtual { v0, v1, p0 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;
    if-eqz p1, :L16
  .line 5
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    sget-object v2, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout:[I
    invoke-virtual { v1, p1, v2, p2, p3 }, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    move-result-object p1
  .line 6
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->getIndexCount()I
    move-result p2
    const/4 p3, 0
    const/4 v1, 0
  :L0
    if-ge v1, p2, :L15
  .line 7
    invoke-virtual { p1, v1 }, Landroid/content/res/TypedArray;->getIndex(I)I
    move-result v2
  .line 8
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_android_minWidth:I
    if-ne v2, v3, :L1
  .line 9
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
    goto :L14
  :L1
  .line 10
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_android_minHeight:I
    if-ne v2, v3, :L2
  .line 11
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
    goto :L14
  :L2
  .line 12
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_android_maxWidth:I
    if-ne v2, v3, :L3
  .line 13
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
    goto :L14
  :L3
  .line 14
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_android_maxHeight:I
    if-ne v2, v3, :L4
  .line 15
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
    goto :L14
  :L4
  .line 16
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layout_optimizationLevel:I
    if-ne v2, v3, :L5
  .line 17
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I
    invoke-virtual { p1, v2, v3 }, Landroid/content/res/TypedArray;->getInt(II)I
    move-result v2
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I
    goto :L14
  :L5
  .line 18
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_layoutDescription:I
    if-ne v2, v3, :L9
  .line 19
    invoke-virtual { p1, v2, p3 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v2
    if-eqz v2, :L14
  :L6
  .line 20
    invoke-virtual { p0, v2 }, Landroidx/constraintlayout/widget/ConstraintLayout;->n(I)V
  :L7
    goto :L14
  :L8
  .line 21
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;
    goto :L14
  :L9
  .line 22
    sget v3, Landroidx/constraintlayout/widget/i;->ConstraintLayout_Layout_constraintSet:I
    if-ne v2, v3, :L14
  .line 23
    invoke-virtual { p1, v2, p3 }, Landroid/content/res/TypedArray;->getResourceId(II)I
    move-result v2
  :L10
  .line 24
    new-instance v3, Landroidx/constraintlayout/widget/d;
    invoke-direct { v3 }, Landroidx/constraintlayout/widget/d;-><init>()V
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;
  .line 25
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v4
    invoke-virtual { v3, v4, v2 }, Landroidx/constraintlayout/widget/d;->m(Landroid/content/Context;I)V
  :L11
    goto :L13
  :L12
  .line 26
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;
  :L13
  .line 27
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I
  :L14
    add-int/lit8 v1, v1, 1
    goto :L0
  :L15
  .line 28
    invoke-virtual { p1 }, Landroid/content/res/TypedArray;->recycle()V
  :L16
  .line 29
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I
    invoke-virtual { p1, p2 }, Lc/e/b/k/f;->E1(I)V
    return-void
.end method

.method private m()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I
  .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I
    return-void
.end method

.method private q()V
  .catch Landroid/content/res/Resources$NotFoundException; { :L5 .. :L7 } :L7
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->isInEditMode()Z
    move-result v6
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v7
    const/4 v0, 0
    const/4 v1, 0
  :L0
    if-ge v1, v7, :L3
  .line 3
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 4
    invoke-virtual { p0, v2 }, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;
    move-result-object v2
    if-nez v2, :L1
    goto :L2
  :L1
  .line 5
    invoke-virtual { v2 }, Lc/e/b/k/e;->h0()V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L0
  :L3
    const/4 v1, -1
    if-eqz v6, :L8
    const/4 v2, 0
  :L4
    if-ge v2, v7, :L8
  .line 6
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  :L5
  .line 7
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object v4
    invoke-virtual { v3 }, Landroid/view/View;->getId()I
    move-result v5
    invoke-virtual { v4, v5 }, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    move-result-object v4
  .line 8
    invoke-virtual { v3 }, Landroid/view/View;->getId()I
    move-result v5
    invoke-static { v5 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v5
    invoke-virtual { p0, v0, v4, v5 }, Landroidx/constraintlayout/widget/ConstraintLayout;->r(ILjava/lang/Object;Ljava/lang/Object;)V
    const/16 v5, 47
  .line 9
    invoke-virtual { v4, v5 }, Ljava/lang/String;->indexOf(I)I
    move-result v5
    if-eq v5, v1, :L6
    add-int/lit8 v5, v5, 1
  .line 10
    invoke-virtual { v4, v5 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v4
  :L6
  .line 11
    invoke-virtual { v3 }, Landroid/view/View;->getId()I
    move-result v3
    invoke-direct { p0, v3 }, Landroidx/constraintlayout/widget/ConstraintLayout;->h(I)Lc/e/b/k/e;
    move-result-object v3
    invoke-virtual { v3, v4 }, Lc/e/b/k/e;->m0(Ljava/lang/String;)V
  :L7
    add-int/lit8 v2, v2, 1
    goto :L4
  :L8
  .line 12
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I
    if-eq v2, v1, :L11
    const/4 v1, 0
  :L9
    if-ge v1, v7, :L11
  .line 13
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 14
    invoke-virtual { v2 }, Landroid/view/View;->getId()I
    move-result v3
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I
    if-ne v3, v4, :L10
    instance-of v3, v2, Landroidx/constraintlayout/widget/e;
    if-eqz v3, :L10
  .line 15
    check-cast v2, Landroidx/constraintlayout/widget/e;
    invoke-virtual { v2 }, Landroidx/constraintlayout/widget/e;->getConstraintSet()Landroidx/constraintlayout/widget/d;
    move-result-object v2
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;
  :L10
    add-int/lit8 v1, v1, 1
    goto :L9
  :L11
  .line 16
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Landroidx/constraintlayout/widget/d;
    if-eqz v1, :L12
    const/4 v2, 1
  .line 17
    invoke-virtual { v1, p0, v2 }, Landroidx/constraintlayout/widget/d;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
  :L12
  .line 18
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v1 }, Lc/e/b/k/l;->d1()V
  .line 19
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-lez v1, :L14
    const/4 v2, 0
  :L13
    if-ge v2, v1, :L14
  .line 20
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
    invoke-virtual { v3, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/constraintlayout/widget/b;
  .line 21
    invoke-virtual { v3, p0 }, Landroidx/constraintlayout/widget/b;->m(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    add-int/lit8 v2, v2, 1
    goto :L13
  :L14
    const/4 v1, 0
  :L15
    if-ge v1, v7, :L17
  .line 22
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 23
    instance-of v3, v2, Landroidx/constraintlayout/widget/g;
    if-eqz v3, :L16
  .line 24
    check-cast v2, Landroidx/constraintlayout/widget/g;
    invoke-virtual { v2, p0 }, Landroidx/constraintlayout/widget/g;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
  :L16
    add-int/lit8 v1, v1, 1
    goto :L15
  :L17
  .line 25
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;
    invoke-virtual { v1 }, Landroid/util/SparseArray;->clear()V
  .line 26
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v1, v0, v2 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
  .line 27
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getId()I
    move-result v2
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v1, v2, v3 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    const/4 v1, 0
  :L18
    if-ge v1, v7, :L19
  .line 28
    invoke-virtual { p0, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 29
    invoke-virtual { p0, v2 }, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;
    move-result-object v3
  .line 30
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;
    invoke-virtual { v2 }, Landroid/view/View;->getId()I
    move-result v2
    invoke-virtual { v4, v2, v3 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    add-int/lit8 v1, v1, 1
    goto :L18
  :L19
    const/4 v8, 0
  :L20
    if-ge v8, v7, :L23
  .line 31
    invoke-virtual { p0, v8 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 32
    invoke-virtual { p0, v2 }, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;
    move-result-object v3
    if-nez v3, :L21
    goto :L22
  :L21
  .line 33
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    move-object v4, v0
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 34
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0, v3 }, Lc/e/b/k/l;->a(Lc/e/b/k/e;)V
  .line 35
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;
    move-object v0, p0
    move v1, v6
    invoke-virtual/range { v0 .. v5 }, Landroidx/constraintlayout/widget/ConstraintLayout;->d(ZLandroid/view/View;Lc/e/b/k/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;)V
  :L22
    add-int/lit8 v8, v8, 1
    goto :L20
  :L23
    return-void
.end method

.method private t()Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 3
    invoke-virtual { v3 }, Landroid/view/View;->isLayoutRequested()Z
    move-result v3
    if-eqz v3, :L1
    const/4 v1, 1
    goto :L2
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    if-eqz v1, :L3
  .line 4
    invoke-direct { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->q()V
  :L3
    return v1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
  .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 p3, 14
    if-ge p2, p3, :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V
  :L0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    return p1
.end method

.method protected d(ZLandroid/view/View;Lc/e/b/k/e;Landroidx/constraintlayout/widget/ConstraintLayout$b;Landroid/util/SparseArray;)V
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
  .registers 25
    move-object/from16 v0, p0
    move-object/from16 v1, p2
    move-object/from16 v7, p3
    move-object/from16 v8, p4
    move-object/from16 v9, p5
  .line 1
    invoke-virtual/range { p4 .. p4 }, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a()V
    const/4 v10, 0
  .line 2
    iput-boolean v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n0:Z
  .line 3
    invoke-virtual/range { p2 .. p2 }, Landroid/view/View;->getVisibility()I
    move-result v2
    invoke-virtual { v7, v2 }, Lc/e/b/k/e;->T0(I)V
  .line 4
    iget-boolean v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z
    const/4 v11, 1
    if-eqz v2, :L0
  .line 5
    invoke-virtual { v7, v11 }, Lc/e/b/k/e;->D0(Z)V
    const/16 v2, 8
  .line 6
    invoke-virtual { v7, v2 }, Lc/e/b/k/e;->T0(I)V
  :L0
  .line 7
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->l0(Ljava/lang/Object;)V
  .line 8
    instance-of v2, v1, Landroidx/constraintlayout/widget/b;
    if-eqz v2, :L1
  .line 9
    check-cast v1, Landroidx/constraintlayout/widget/b;
  .line 10
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v2 }, Lc/e/b/k/f;->x1()Z
    move-result v2
    invoke-virtual { v1, v7, v2 }, Landroidx/constraintlayout/widget/b;->i(Lc/e/b/k/e;Z)V
  :L1
  .line 11
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Z
    const/16 v2, 17
    const/4 v12, -1
    if-eqz v1, :L5
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
    if-ge v6, v2, :L2
  .line 17
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:I
  .line 18
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I
  .line 19
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:F
  :L2
    const/high16 v2, -16512
    cmpl-float v2, v5, v2
    if-eqz v2, :L3
  .line 20
    invoke-virtual { v1, v5 }, Lc/e/b/k/g;->i1(F)V
    goto/16 :L39
  :L3
    if-eq v3, v12, :L4
  .line 21
    invoke-virtual { v1, v3 }, Lc/e/b/k/g;->g1(I)V
    goto/16 :L39
  :L4
    if-eq v4, v12, :L39
  .line 22
    invoke-virtual { v1, v4 }, Lc/e/b/k/g;->h1(I)V
    goto/16 :L39
  :L5
  .line 23
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
    if-ge v15, v2, :L11
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
    if-ne v1, v12, :L7
    if-ne v2, v12, :L7
  .line 38
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->q:I
    if-eq v13, v12, :L6
    move v1, v13
    goto :L7
  :L6
  .line 39
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->p:I
    if-eq v13, v12, :L7
    move v2, v13
  :L7
    if-ne v4, v12, :L9
    if-ne v5, v12, :L9
  .line 40
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->r:I
    if-eq v13, v12, :L8
    goto :L10
  :L8
  .line 41
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->s:I
    if-eq v13, v12, :L9
    move v15, v6
    move v5, v14
    move v6, v3
    move v14, v13
    move v3, v2
    move v13, v4
    goto :L13
  :L9
    move v13, v4
  :L10
    move v15, v6
    move v6, v3
    move v3, v2
    goto :L12
  :L11
    move v15, v13
    move v13, v4
  :L12
    move/from16 v18, v14
    move v14, v5
    move/from16 v5, v18
  :L13
  .line 42
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m:I
    if-eq v2, v12, :L14
  .line 43
    invoke-virtual { v9, v2 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lc/e/b/k/e;
    if-eqz v1, :L26
  .line 44
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->o:F
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->n:I
    invoke-virtual { v7, v1, v2, v3 }, Lc/e/b/k/e;->j(Lc/e/b/k/e;FI)V
    goto/16 :L26
  :L14
    if-eq v1, v12, :L16
  .line 45
    invoke-virtual { v9, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v3, v1
    check-cast v3, Lc/e/b/k/e;
    if-eqz v3, :L15
  .line 46
    sget-object v4, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    move-object/from16 v1, p3
    move/from16 v16, v2
    move-object v2, v4
    move/from16 v17, v5
    move/from16 v5, v16
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
    goto :L17
  :L15
    move/from16 v17, v5
    goto :L17
  :L16
    move/from16 v17, v5
    if-eq v3, v12, :L17
  .line 47
    invoke-virtual { v9, v3 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v3, v1
    check-cast v3, Lc/e/b/k/e;
    if-eqz v3, :L17
  .line 48
    sget-object v2, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    move-object/from16 v1, p3
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
  :L17
    if-eq v13, v12, :L18
  .line 49
    invoke-virtual { v9, v13 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v3, v1
    check-cast v3, Lc/e/b/k/e;
    if-eqz v3, :L19
  .line 50
    sget-object v2, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    sget-object v4, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    move-object/from16 v1, p3
    move v6, v15
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
    goto :L19
  :L18
    if-eq v14, v12, :L19
  .line 51
    invoke-virtual { v9, v14 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v3, v1
    check-cast v3, Lc/e/b/k/e;
    if-eqz v3, :L19
  .line 52
    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    move-object/from16 v1, p3
    move-object v2, v4
    move v6, v15
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
  :L19
  .line 53
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:I
    if-eq v1, v12, :L20
  .line 54
    invoke-virtual { v9, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v3, v1
    check-cast v3, Lc/e/b/k/e;
    if-eqz v3, :L21
  .line 55
    sget-object v4, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I
    move-object/from16 v1, p3
    move-object v2, v4
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
    goto :L21
  :L20
  .line 56
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I
    if-eq v1, v12, :L21
  .line 57
    invoke-virtual { v9, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v3, v1
    check-cast v3, Lc/e/b/k/e;
    if-eqz v3, :L21
  .line 58
    sget-object v2, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I
    move-object/from16 v1, p3
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
  :L21
  .line 59
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->j:I
    if-eq v1, v12, :L22
  .line 60
    invoke-virtual { v9, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v3, v1
    check-cast v3, Lc/e/b/k/e;
    if-eqz v3, :L23
  .line 61
    sget-object v2, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    sget-object v4, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I
    move-object/from16 v1, p3
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
    goto :L23
  :L22
  .line 62
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I
    if-eq v1, v12, :L23
  .line 63
    invoke-virtual { v9, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    move-object v3, v1
    check-cast v3, Lc/e/b/k/e;
    if-eqz v3, :L23
  .line 64
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->w:I
    move-object/from16 v1, p3
    move-object v2, v4
    invoke-virtual/range { v1 .. v6 }, Lc/e/b/k/e;->X(Lc/e/b/k/d$b;Lc/e/b/k/e;Lc/e/b/k/d$b;II)V
  :L23
  .line 65
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I
    if-eq v1, v12, :L24
  .line 66
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
    invoke-virtual { v2, v1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
  .line 67
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I
    invoke-virtual { v9, v2 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/e/b/k/e;
    if-eqz v2, :L24
    if-eqz v1, :L24
  .line 68
    invoke-virtual { v1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    instance-of v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    if-eqz v3, :L24
  .line 69
    invoke-virtual { v1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 70
    iput-boolean v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z
  .line 71
    iput-boolean v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->X:Z
  .line 72
    sget-object v3, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;
    invoke-virtual { v7, v3 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v3
  .line 73
    sget-object v4, Lc/e/b/k/d$b;->g:Lc/e/b/k/d$b;
  .line 74
    invoke-virtual { v2, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v2
  .line 75
    invoke-virtual { v3, v2, v10, v12, v11 }, Lc/e/b/k/d;->a(Lc/e/b/k/d;IIZ)Z
  .line 76
    invoke-virtual { v7, v11 }, Lc/e/b/k/e;->u0(Z)V
  .line 77
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
    invoke-virtual { v1, v11 }, Lc/e/b/k/e;->u0(Z)V
  .line 78
    sget-object v1, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
    invoke-virtual { v1 }, Lc/e/b/k/d;->p()V
  .line 79
    sget-object v1, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
    invoke-virtual { v1 }, Lc/e/b/k/d;->p()V
  :L24
    const/4 v1, 0
    move/from16 v14, v17
    cmpl-float v2, v14, v1
    if-ltz v2, :L25
  .line 80
    invoke-virtual { v7, v14 }, Lc/e/b/k/e;->w0(F)V
  :L25
  .line 81
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->A:F
    cmpl-float v1, v2, v1
    if-ltz v1, :L26
  .line 82
    invoke-virtual { v7, v2 }, Lc/e/b/k/e;->N0(F)V
  :L26
    if-eqz p1, :L28
  .line 83
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I
    if-ne v1, v12, :L27
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I
    if-eq v1, v12, :L28
  :L27
  .line 84
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->P:I
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Q:I
    invoke-virtual { v7, v1, v2 }, Lc/e/b/k/e;->L0(II)V
  :L28
  .line 85
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->V:Z
    const/4 v2, -2
    if-nez v1, :L32
  .line 86
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
    if-ne v1, v12, :L31
  .line 87
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->S:Z
    if-eqz v1, :L29
  .line 88
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
    goto :L30
  :L29
  .line 89
    sget-object v1, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  :L30
  .line 90
    sget-object v1, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    iput v3, v1, Lc/e/b/k/d;->g:I
  .line 91
    sget-object v1, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    iput v3, v1, Lc/e/b/k/d;->g:I
    goto :L33
  :L31
  .line 92
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  .line 93
    invoke-virtual { v7, v10 }, Lc/e/b/k/e;->U0(I)V
    goto :L33
  :L32
  .line 94
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  .line 95
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->U0(I)V
  .line 96
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
    if-ne v1, v2, :L33
  .line 97
    sget-object v1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  :L33
  .line 98
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->W:Z
    if-nez v1, :L37
  .line 99
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    if-ne v1, v12, :L36
  .line 100
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->T:Z
    if-eqz v1, :L34
  .line 101
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
    goto :L35
  :L34
  .line 102
    sget-object v1, Lc/e/b/k/e$b;->e:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
  :L35
  .line 103
    sget-object v1, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    iput v2, v1, Lc/e/b/k/d;->g:I
  .line 104
    sget-object v1, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    iput v2, v1, Lc/e/b/k/d;->g:I
    goto :L38
  :L36
  .line 105
    sget-object v1, Lc/e/b/k/e$b;->d:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
  .line 106
    invoke-virtual { v7, v10 }, Lc/e/b/k/e;->v0(I)V
    goto :L38
  :L37
  .line 107
    sget-object v1, Lc/e/b/k/e$b;->b:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
  .line 108
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->v0(I)V
  .line 109
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    if-ne v1, v2, :L38
  .line 110
    sget-object v1, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
  :L38
  .line 111
    iget-object v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->B:Ljava/lang/String;
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->n0(Ljava/lang/String;)V
  .line 112
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->D:F
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->B0(F)V
  .line 113
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->E:F
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->S0(F)V
  .line 114
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->F:I
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->x0(I)V
  .line 115
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:I
    invoke-virtual { v7, v1 }, Lc/e/b/k/e;->O0(I)V
  .line 116
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:I
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->J:I
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->L:I
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->N:F
    invoke-virtual { v7, v1, v2, v3, v4 }, Lc/e/b/k/e;->A0(IIIF)V
  .line 117
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:I
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->K:I
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->M:I
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->O:F
    invoke-virtual { v7, v1, v2, v3, v4 }, Lc/e/b/k/e;->R0(IIIF)V
  :L39
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
  .registers 22
    move-object/from16 v0, p0
  .line 1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
    const/4 v2, 0
    if-eqz v1, :L1
  .line 2
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v1
    if-lez v1, :L1
    const/4 v3, 0
  :L0
    if-ge v3, v1, :L1
  .line 3
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
    invoke-virtual { v4, v3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/constraintlayout/widget/b;
  .line 4
    invoke-virtual { v4, v0 }, Landroidx/constraintlayout/widget/b;->l(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
  .line 5
    invoke-super/range { p0 .. p1 }, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
  .line 6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->isInEditMode()Z
    move-result v1
    if-eqz v1, :L5
  .line 7
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v1
  .line 8
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getWidth()I
    move-result v3
    int-to-float v3, v3
  .line 9
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getHeight()I
    move-result v4
    int-to-float v4, v4
    const/high16 v5, 17543
    const/high16 v6, 17648
    const/4 v7, 0
  :L2
    if-ge v7, v1, :L5
  .line 10
    invoke-virtual { v0, v7 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v8
  .line 11
    invoke-virtual { v8 }, Landroid/view/View;->getVisibility()I
    move-result v9
    const/16 v10, 8
    if-ne v9, v10, :L3
    goto/16 :L4
  :L3
  .line 12
    invoke-virtual { v8 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v8
    if-eqz v8, :L4
  .line 13
    instance-of v9, v8, Ljava/lang/String;
    if-eqz v9, :L4
  .line 14
    check-cast v8, Ljava/lang/String;
    const-string v9, ","
  .line 15
    invoke-virtual { v8, v9 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v8
  .line 16
    array-length v9, v8
    const/4 v10, 4
    if-ne v9, v10, :L4
  .line 17
    aget-object v9, v8, v2
    invoke-static { v9 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v9
    const/4 v10, 1
  .line 18
    aget-object v10, v8, v10
    invoke-static { v10 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v10
    const/4 v11, 2
  .line 19
    aget-object v11, v8, v11
    invoke-static { v11 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v11
    const/4 v12, 3
  .line 20
    aget-object v8, v8, v12
    invoke-static { v8 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
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
    invoke-direct { v15 }, Landroid/graphics/Paint;-><init>()V
    const/high16 v12, -1
  .line 22
    invoke-virtual { v15, v12 }, Landroid/graphics/Paint;->setColor(I)V
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
    invoke-virtual/range { v12 .. v17 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    add-int/2addr v10, v8
    int-to-float v8, v10
    move v13, v9
    move/from16 v16, v8
  .line 24
    invoke-virtual/range { v12 .. v17 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    move v14, v8
    move/from16 v15, v18
  .line 25
    invoke-virtual/range { v12 .. v17 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    move/from16 v13, v18
    move/from16 v16, v11
  .line 26
    invoke-virtual/range { v12 .. v17 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    const v10, -16711936
    move-object/from16 v15, v19
  .line 27
    invoke-virtual { v15, v10 }, Landroid/graphics/Paint;->setColor(I)V
    move v14, v11
    move-object v10, v15
    move v15, v9
    move/from16 v16, v8
    move-object/from16 v17, v10
  .line 28
    invoke-virtual/range { v12 .. v17 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    move v14, v8
    move/from16 v16, v11
  .line 29
    invoke-virtual/range { v12 .. v17 }, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
  :L4
    add-int/lit8 v7, v7, 1
    goto/16 :L2
  :L5
    return-void
.end method

.method protected e()Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .registers 3
  .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    const/4 v1, -2
    invoke-direct { v0, v1, v1 }, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V
    return-object v0
.end method

.method public f(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .registers 4
  .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method public forceLayout()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->m()V
  .line 2
    invoke-super { p0 }, Landroid/view/ViewGroup;->forceLayout()V
    return-void
.end method

.method public g(ILjava/lang/Object;)Ljava/lang/Object;
  .registers 3
    if-nez p1, :L0
  .line 1
    instance-of p1, p2, Ljava/lang/String;
    if-eqz p1, :L0
  .line 2
    check-cast p2, Ljava/lang/String;
  .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;
    if-eqz p1, :L0
    invoke-virtual { p1, p2 }, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
  .line 4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;
    invoke-virtual { p1, p2 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Landroidx/constraintlayout/widget/ConstraintLayout$b;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$b;
    move-result-object p1
    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
  .registers 3
  .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    invoke-direct { v0, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
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
    invoke-virtual { v0 }, Lc/e/b/k/f;->s1()I
    move-result v0
    return v0
.end method

.method public i(I)Landroid/view/View;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
    invoke-virtual { v0, p1 }, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/view/View;
    return-object p1
.end method

.method public final j(Landroid/view/View;)Lc/e/b/k/e;
  .registers 2
    if-ne p1, p0, :L0
  .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    return-object p1
  :L0
    if-nez p1, :L1
    const/4 p1, 0
    goto :L2
  :L1
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
  :L2
    return-object p1
.end method

.method protected l()Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 0
    const/16 v2, 17
    if-lt v0, v2, :L2
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    const/high16 v2, 64
    and-int/2addr v0, v2
    const/4 v2, 1
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v0, :L2
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getLayoutDirection()I
    move-result v0
    if-ne v2, v0, :L2
    const/4 v1, 1
  :L2
    return v1
.end method

.method protected n(I)V
  .registers 4
  .line 1
    new-instance v0, Landroidx/constraintlayout/widget/c;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1, p0, p1 }, Landroidx/constraintlayout/widget/c;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
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
    const/16 v1, 11
    if-lt v0, v1, :L2
    const/4 v0, 0
  .line 4
    invoke-static { p3, p1, v0 }, Landroid/view/ViewGroup;->resolveSizeAndState(III)I
    move-result p1
  .line 5
    invoke-static { p4, p2, v0 }, Landroid/view/ViewGroup;->resolveSizeAndState(III)I
    move-result p2
    const p3, 16777215
    and-int/2addr p1, p3
    and-int/2addr p2, p3
  .line 6
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
    invoke-static { p3, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
  .line 7
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
    invoke-static { p3, p2 }, Ljava/lang/Math;->min(II)I
    move-result p2
    const/high16 p3, 256
    if-eqz p5, :L0
    or-int/2addr p1, p3
  :L0
    if-eqz p6, :L1
    or-int/2addr p2, p3
  :L1
  .line 8
    invoke-virtual { p0, p1, p2 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
  .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I
  .line 10
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I
    goto :L3
  :L2
  .line 11
    invoke-virtual { p0, p3, p4 }, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
  .line 12
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I
  .line 13
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I
  :L3
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 11
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result p1
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->isInEditMode()Z
    move-result p2
    const/4 p3, 0
    const/4 p4, 0
  :L0
    if-ge p4, p1, :L4
  .line 3
    invoke-virtual { p0, p4 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object p5
  .line 4
    invoke-virtual { p5 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
  .line 6
    invoke-virtual { p5 }, Landroid/view/View;->getVisibility()I
    move-result v2
    const/16 v3, 8
    if-ne v2, v3, :L1
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Z
    if-nez v2, :L1
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:Z
    if-nez v2, :L1
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b0:Z
    if-nez v2, :L1
    if-nez p2, :L1
    goto :L3
  :L1
  .line 7
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a0:Z
    if-eqz v0, :L2
    goto :L3
  :L2
  .line 8
    invoke-virtual { v1 }, Lc/e/b/k/e;->S()I
    move-result v0
  .line 9
    invoke-virtual { v1 }, Lc/e/b/k/e;->T()I
    move-result v2
  .line 10
    invoke-virtual { v1 }, Lc/e/b/k/e;->R()I
    move-result v3
    add-int/2addr v3, v0
  .line 11
    invoke-virtual { v1 }, Lc/e/b/k/e;->v()I
    move-result v1
    add-int/2addr v1, v2
  .line 12
    invoke-virtual { p5, v0, v2, v3, v1 }, Landroid/view/View;->layout(IIII)V
  .line 13
    instance-of v4, p5, Landroidx/constraintlayout/widget/g;
    if-eqz v4, :L3
  .line 14
    check-cast p5, Landroidx/constraintlayout/widget/g;
  .line 15
    invoke-virtual { p5 }, Landroidx/constraintlayout/widget/g;->getContent()Landroid/view/View;
    move-result-object p5
    if-eqz p5, :L3
  .line 16
    invoke-virtual { p5, p3 }, Landroid/view/View;->setVisibility(I)V
  .line 17
    invoke-virtual { p5, v0, v2, v3, v1 }, Landroid/view/View;->layout(IIII)V
  :L3
    add-int/lit8 p4, p4, 1
    goto :L0
  :L4
  .line 18
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
    invoke-virtual { p1 }, Ljava/util/ArrayList;->size()I
    move-result p1
    if-lez p1, :L6
  :L5
    if-ge p3, p1, :L6
  .line 19
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
    invoke-virtual { p2, p3 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroidx/constraintlayout/widget/b;
  .line 20
    invoke-virtual { p2, p0 }, Landroidx/constraintlayout/widget/b;->j(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    add-int/lit8 p3, p3, 1
    goto :L5
  :L6
    return-void
.end method

.method protected onMeasure(II)V
  .registers 11
  .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    const/4 v1, 0
    if-nez v0, :L2
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 3
    invoke-virtual { p0, v2 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v3
  .line 4
    invoke-virtual { v3 }, Landroid/view/View;->isLayoutRequested()Z
    move-result v3
    if-eqz v3, :L1
    const/4 v0, 1
  .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    goto :L2
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 6
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    if-nez v0, :L4
  .line 7
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I
    if-ne v0, p1, :L3
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I
    if-ne v0, p2, :L3
  .line 8
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/e;->R()I
    move-result v4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/e;->v()I
    move-result v5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
  .line 9
    invoke-virtual { v0 }, Lc/e/b/k/f;->y1()Z
    move-result v6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/f;->w1()Z
    move-result v7
    move-object v1, p0
    move v2, p1
    move v3, p2
  .line 10
    invoke-virtual/range { v1 .. v7 }, Landroidx/constraintlayout/widget/ConstraintLayout;->o(IIIIZZ)V
    return-void
  :L3
  .line 11
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I
    if-ne v0, p1, :L4
  .line 12
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
    const/high16 v2, 16384
    if-ne v0, v2, :L4
  .line 13
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
    const/high16 v2, -32768
    if-ne v0, v2, :L4
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I
  .line 14
    invoke-static { v0 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
    if-ne v0, v2, :L4
  .line 15
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v0
  .line 16
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v2 }, Lc/e/b/k/e;->v()I
    move-result v2
    if-lt v0, v2, :L4
  .line 17
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I
  .line 18
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I
  .line 19
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/e;->R()I
    move-result v4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/e;->v()I
    move-result v5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
  .line 20
    invoke-virtual { v0 }, Lc/e/b/k/f;->y1()Z
    move-result v6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/f;->w1()Z
    move-result v7
    move-object v1, p0
    move v2, p1
    move v3, p2
  .line 21
    invoke-virtual/range { v1 .. v7 }, Landroidx/constraintlayout/widget/ConstraintLayout;->o(IIIIZZ)V
    return-void
  :L4
  .line 22
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I
  .line 23
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I
  .line 24
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->l()Z
    move-result v2
    invoke-virtual { v0, v2 }, Lc/e/b/k/f;->F1(Z)V
  .line 25
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    if-eqz v0, :L5
  .line 26
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
  .line 27
    invoke-direct { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->t()Z
    move-result v0
    if-eqz v0, :L5
  .line 28
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/f;->H1()V
  :L5
  .line 29
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I
    invoke-virtual { p0, v0, v1, p1, p2 }, Landroidx/constraintlayout/widget/ConstraintLayout;->p(Lc/e/b/k/f;III)V
  .line 30
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/e;->R()I
    move-result v4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/e;->v()I
    move-result v5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
  .line 31
    invoke-virtual { v0 }, Lc/e/b/k/f;->y1()Z
    move-result v6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0 }, Lc/e/b/k/f;->w1()Z
    move-result v7
    move-object v1, p0
    move v2, p1
    move v3, p2
  .line 32
    invoke-virtual/range { v1 .. v7 }, Landroidx/constraintlayout/widget/ConstraintLayout;->o(IIIIZZ)V
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 14
    if-lt v0, v1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;
    move-result-object v0
  .line 4
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;
    const/4 v2, 1
    if-eqz v1, :L1
  .line 5
    instance-of v0, v0, Lc/e/b/k/g;
    if-nez v0, :L1
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 7
    new-instance v1, Lc/e/b/k/g;
    invoke-direct { v1 }, Lc/e/b/k/g;-><init>()V
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->m0:Lc/e/b/k/e;
  .line 8
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Z
  .line 9
    check-cast v1, Lc/e/b/k/g;
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->R:I
    invoke-virtual { v1, v0 }, Lc/e/b/k/g;->j1(I)V
  :L1
  .line 10
    instance-of v0, p1, Landroidx/constraintlayout/widget/b;
    if-eqz v0, :L2
  .line 11
    move-object v0, p1
    check-cast v0, Landroidx/constraintlayout/widget/b;
  .line 12
    invoke-virtual { v0 }, Landroidx/constraintlayout/widget/b;->n()V
  .line 13
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;
  .line 14
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Z:Z
  .line 15
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L2
  .line 16
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L2
  .line 17
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result v1
    invoke-virtual { v0, v1, p1 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
  .line 18
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 14
    if-lt v0, v1, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V
  :L0
  .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/util/SparseArray;->remove(I)V
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Landroid/view/View;)Lc/e/b/k/e;
    move-result-object v0
  .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v1, v0 }, Lc/e/b/k/l;->c1(Lc/e/b/k/e;)V
  .line 6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    const/4 p1, 1
  .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z
    return-void
.end method

.method protected p(Lc/e/b/k/f;III)V
  .registers 25
    move-object/from16 v6, p0
  .line 1
    invoke-static/range { p3 .. p3 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v9
  .line 2
    invoke-static/range { p3 .. p3 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v0
  .line 3
    invoke-static/range { p4 .. p4 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v11
  .line 4
    invoke-static/range { p4 .. p4 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result v1
  .line 5
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingTop()I
    move-result v2
    const/4 v3, 0
    invoke-static { v3, v2 }, Ljava/lang/Math;->max(II)I
    move-result v19
  .line 6
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingBottom()I
    move-result v2
    invoke-static { v3, v2 }, Ljava/lang/Math;->max(II)I
    move-result v16
    add-int v2, v19, v16
  .line 7
    invoke-direct/range { p0 .. p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I
    move-result v4
  .line 8
    iget-object v12, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$c;
    move/from16 v13, p3
    move/from16 v14, p4
    move/from16 v15, v19
    move/from16 v17, v4
    move/from16 v18, v2
    invoke-virtual/range { v12 .. v18 }, Landroidx/constraintlayout/widget/ConstraintLayout$c;->c(IIIIII)V
  .line 9
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v7, 17
    if-lt v5, v7, :L3
  .line 10
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingStart()I
    move-result v5
    invoke-static { v3, v5 }, Ljava/lang/Math;->max(II)I
    move-result v5
  .line 11
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingEnd()I
    move-result v7
    invoke-static { v3, v7 }, Ljava/lang/Math;->max(II)I
    move-result v7
    if-gtz v5, :L1
    if-lez v7, :L0
    goto :L1
  :L0
  .line 12
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v5
    invoke-static { v3, v5 }, Ljava/lang/Math;->max(II)I
    move-result v5
    goto :L2
  :L1
  .line 13
    invoke-virtual/range { p0 .. p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->l()Z
    move-result v3
    if-eqz v3, :L2
    move v5, v7
  :L2
    move v15, v5
    goto :L4
  :L3
  .line 14
    invoke-virtual/range { p0 .. p0 }, Landroid/view/ViewGroup;->getPaddingLeft()I
    move-result v5
    invoke-static { v3, v5 }, Ljava/lang/Math;->max(II)I
    move-result v3
    move v15, v3
  :L4
    sub-int v10, v0, v4
    sub-int v12, v1, v2
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move v2, v9
    move v3, v10
    move v4, v11
    move v5, v12
  .line 15
    invoke-virtual/range { v0 .. v5 }, Landroidx/constraintlayout/widget/ConstraintLayout;->s(Lc/e/b/k/f;IIII)V
  .line 16
    iget v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I
    iget v14, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I
    move-object/from16 v7, p1
    move/from16 v8, p2
    move/from16 v16, v19
    invoke-virtual/range { v7 .. v16 }, Lc/e/b/k/f;->z1(IIIIIIIII)J
    return-void
.end method

.method public r(ILjava/lang/Object;Ljava/lang/Object;)V
  .registers 5
    if-nez p1, :L2
  .line 1
    instance-of p1, p2, Ljava/lang/String;
    if-eqz p1, :L2
    instance-of p1, p3, Ljava/lang/Integer;
    if-eqz p1, :L2
  .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;
    if-nez p1, :L0
  .line 3
    new-instance p1, Ljava/util/HashMap;
    invoke-direct { p1 }, Ljava/util/HashMap;-><init>()V
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;
  :L0
  .line 4
    check-cast p2, Ljava/lang/String;
    const-string p1, "/"
  .line 5
    invoke-virtual { p2, p1 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result p1
    const/4 v0, -1
    if-eq p1, v0, :L1
    add-int/lit8 p1, p1, 1
  .line 6
    invoke-virtual { p2, p1 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object p2
  :L1
  .line 7
    check-cast p3, Ljava/lang/Integer;
    invoke-virtual { p3 }, Ljava/lang/Integer;->intValue()I
    move-result p1
  .line 8
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-virtual { p3, p2, p1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 14
    if-ge v0, v1, :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V
  :L0
    return-void
.end method

.method public requestLayout()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->m()V
  .line 2
    invoke-super { p0 }, Landroid/view/ViewGroup;->requestLayout()V
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
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v3
    const/high16 v4, 16384
    const/high16 v5, -32768
    const/4 v6, 0
    if-eq p2, v5, :L3
    if-eqz p2, :L2
    if-eq p2, v4, :L1
    move-object p2, v2
  :L0
    const/4 p3, 0
    goto :L4
  :L1
  .line 5
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
    sub-int/2addr p2, v0
    invoke-static { p2, p3 }, Ljava/lang/Math;->min(II)I
    move-result p3
    move-object p2, v2
    goto :L4
  :L2
  .line 6
    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-nez v3, :L0
  .line 7
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
    invoke-static { v6, p3 }, Ljava/lang/Math;->max(II)I
    move-result p3
    goto :L4
  :L3
  .line 8
    sget-object p2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-nez v3, :L4
  .line 9
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
    invoke-static { v6, p3 }, Ljava/lang/Math;->max(II)I
    move-result p3
  :L4
    if-eq p4, v5, :L8
    if-eqz p4, :L7
    if-eq p4, v4, :L6
  :L5
    const/4 p5, 0
    goto :L9
  :L6
  .line 10
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
    sub-int/2addr p4, v1
    invoke-static { p4, p5 }, Ljava/lang/Math;->min(II)I
    move-result p5
    goto :L9
  :L7
  .line 11
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-nez v3, :L5
  .line 12
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
    invoke-static { v6, p4 }, Ljava/lang/Math;->max(II)I
    move-result p5
    goto :L9
  :L8
  .line 13
    sget-object v2, Lc/e/b/k/e$b;->c:Lc/e/b/k/e$b;
    if-nez v3, :L9
  .line 14
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
    invoke-static { v6, p4 }, Ljava/lang/Math;->max(II)I
    move-result p5
  :L9
  .line 15
    invoke-virtual { p1 }, Lc/e/b/k/e;->R()I
    move-result p4
    if-ne p3, p4, :L10
    invoke-virtual { p1 }, Lc/e/b/k/e;->v()I
    move-result p4
    if-eq p5, p4, :L11
  :L10
  .line 16
    invoke-virtual { p1 }, Lc/e/b/k/f;->v1()V
  :L11
  .line 17
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->V0(I)V
  .line 18
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->W0(I)V
  .line 19
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
    sub-int/2addr p4, v0
    invoke-virtual { p1, p4 }, Lc/e/b/k/e;->H0(I)V
  .line 20
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
    sub-int/2addr p4, v1
    invoke-virtual { p1, p4 }, Lc/e/b/k/e;->G0(I)V
  .line 21
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->K0(I)V
  .line 22
    invoke-virtual { p1, v6 }, Lc/e/b/k/e;->J0(I)V
  .line 23
    invoke-virtual { p1, p2 }, Lc/e/b/k/e;->z0(Lc/e/b/k/e$b;)V
  .line 24
    invoke-virtual { p1, p3 }, Lc/e/b/k/e;->U0(I)V
  .line 25
    invoke-virtual { p1, v2 }, Lc/e/b/k/e;->Q0(Lc/e/b/k/e$b;)V
  .line 26
    invoke-virtual { p1, p5 }, Lc/e/b/k/e;->v0(I)V
  .line 27
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
    sub-int/2addr p2, v0
    invoke-virtual { p1, p2 }, Lc/e/b/k/e;->K0(I)V
  .line 28
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
    sub-int/2addr p2, v1
    invoke-virtual { p1, p2 }, Lc/e/b/k/e;->J0(I)V
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
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getId()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/util/SparseArray;->remove(I)V
  .line 2
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->setId(I)V
  .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getId()I
    move-result v0
    invoke-virtual { p1, v0, p0 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    return-void
.end method

.method public setMaxHeight(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I
  .line 3
    invoke-virtual { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V
    return-void
.end method

.method public setMaxWidth(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I
  .line 3
    invoke-virtual { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V
    return-void
.end method

.method public setMinHeight(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I
  .line 3
    invoke-virtual { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V
    return-void
.end method

.method public setMinWidth(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
    if-ne p1, v0, :L0
    return-void
  :L0
  .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I
  .line 3
    invoke-virtual { p0 }, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V
    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/f;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/c;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/constraintlayout/widget/c;->c(Landroidx/constraintlayout/widget/f;)V
  :L0
    return-void
.end method

.method public setOptimizationLevel(I)V
  .registers 3
  .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I
  .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lc/e/b/k/f;
    invoke-virtual { v0, p1 }, Lc/e/b/k/f;->E1(I)V
    return-void
.end method

.method public shouldDelayChildPressedState()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method
