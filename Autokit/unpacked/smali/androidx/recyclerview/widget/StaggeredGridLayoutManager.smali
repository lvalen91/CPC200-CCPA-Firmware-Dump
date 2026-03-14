.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.implements Landroidx/recyclerview/widget/RecyclerView$y$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;,
    Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;,
    Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;,
    Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;,
    Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  }
.end annotation

.field A:Z

.field private B:Ljava/util/BitSet;

.field C:I

.field D:I

.field E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

.field private J:I

.field private final K:Landroid/graphics/Rect;

.field private final L:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

.field private M:Z

.field private N:Z

.field private O:[I

.field private final P:Ljava/lang/Runnable;

.field private s:I

.field t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;

.field u:Landroidx/recyclerview/widget/i;

.field v:Landroidx/recyclerview/widget/i;

.field private w:I

.field private x:I

.field private final y:Landroidx/recyclerview/widget/f;

.field z:Z

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
  .registers 7
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
  .line 4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
  .line 5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    const/high16 v0, -32768
  .line 6
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:I
  .line 7
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    const/4 v0, 2
  .line 8
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:I
  .line 9
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroid/graphics/Rect;
  .line 10
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    invoke-direct { v0, p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
  .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z
    const/4 v0, 1
  .line 12
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
  .line 13
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;
    invoke-direct { v0, p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Ljava/lang/Runnable;
  .line 14
    invoke-static { p1, p2, p3, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->i0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$n$d;
    move-result-object p1
  .line 15
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$n$d;->a:I
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H2(I)V
  .line 16
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$n$d;->b:I
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J2(I)V
  .line 17
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$n$d;->c:Z
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I2(Z)V
  .line 18
    new-instance p1, Landroidx/recyclerview/widget/f;
    invoke-direct { p1 }, Landroidx/recyclerview/widget/f;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
  .line 19
    invoke-direct { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a2()V
    return-void
.end method

.method private A2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;)V
  .registers 5
  .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/f;->a:Z
    if-eqz v0, :L8
    iget-boolean v0, p2, Landroidx/recyclerview/widget/f;->i:Z
    if-eqz v0, :L0
    goto :L8
  :L0
  .line 2
    iget v0, p2, Landroidx/recyclerview/widget/f;->b:I
    const/4 v1, -1
    if-nez v0, :L2
  .line 3
    iget v0, p2, Landroidx/recyclerview/widget/f;->e:I
    if-ne v0, v1, :L1
  .line 4
    iget p2, p2, Landroidx/recyclerview/widget/f;->g:I
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B2(Landroidx/recyclerview/widget/RecyclerView$u;I)V
    goto :L8
  :L1
  .line 5
    iget p2, p2, Landroidx/recyclerview/widget/f;->f:I
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C2(Landroidx/recyclerview/widget/RecyclerView$u;I)V
    goto :L8
  :L2
  .line 6
    iget v0, p2, Landroidx/recyclerview/widget/f;->e:I
    if-ne v0, v1, :L5
  .line 7
    iget v0, p2, Landroidx/recyclerview/widget/f;->f:I
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m2(I)I
    move-result v1
    sub-int/2addr v0, v1
    if-gez v0, :L3
  .line 8
    iget p2, p2, Landroidx/recyclerview/widget/f;->g:I
    goto :L4
  :L3
  .line 9
    iget v1, p2, Landroidx/recyclerview/widget/f;->g:I
    iget p2, p2, Landroidx/recyclerview/widget/f;->b:I
    invoke-static { v0, p2 }, Ljava/lang/Math;->min(II)I
    move-result p2
    sub-int p2, v1, p2
  :L4
  .line 10
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B2(Landroidx/recyclerview/widget/RecyclerView$u;I)V
    goto :L8
  :L5
  .line 11
    iget v0, p2, Landroidx/recyclerview/widget/f;->g:I
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n2(I)I
    move-result v0
    iget v1, p2, Landroidx/recyclerview/widget/f;->g:I
    sub-int/2addr v0, v1
    if-gez v0, :L6
  .line 12
    iget p2, p2, Landroidx/recyclerview/widget/f;->f:I
    goto :L7
  :L6
  .line 13
    iget v1, p2, Landroidx/recyclerview/widget/f;->f:I
    iget p2, p2, Landroidx/recyclerview/widget/f;->b:I
    invoke-static { v0, p2 }, Ljava/lang/Math;->min(II)I
    move-result p2
    add-int/2addr p2, v1
  :L7
  .line 14
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C2(Landroidx/recyclerview/widget/RecyclerView$u;I)V
  :L8
    return-void
.end method

.method private B2(Landroidx/recyclerview/widget/RecyclerView$u;I)V
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
  :L0
    if-ltz v0, :L7
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v2
  .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v3
    if-lt v3, p2, :L7
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 4
    invoke-virtual { v3, v2 }, Landroidx/recyclerview/widget/i;->q(Landroid/view/View;)I
    move-result v3
    if-lt v3, p2, :L7
  .line 5
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 6
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v4, :L4
    const/4 v3, 0
    const/4 v4, 0
  :L1
  .line 7
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v4, v5, :L3
  .line 8
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v5, v5, v4
    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v5 }, Ljava/util/ArrayList;->size()I
    move-result v5
    if-ne v5, v1, :L2
    return-void
  :L2
    add-int/lit8 v4, v4, 1
    goto :L1
  :L3
  .line 9
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v3, v4, :L6
  .line 10
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v4, v4, v3
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->s()V
    add-int/lit8 v3, v3, 1
    goto :L3
  :L4
  .line 11
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v4 }, Ljava/util/ArrayList;->size()I
    move-result v4
    if-ne v4, v1, :L5
    return-void
  :L5
  .line 12
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->s()V
  :L6
  .line 13
    invoke-virtual { p0, v2, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->m1(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L7
    return-void
.end method

.method private C2(Landroidx/recyclerview/widget/RecyclerView$u;I)V
  .registers 8
  :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-lez v0, :L7
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v1
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v2
    if-gt v2, p2, :L7
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 4
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/i;->p(Landroid/view/View;)I
    move-result v2
    if-gt v2, p2, :L7
  .line 5
    invoke-virtual { v1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 6
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    const/4 v4, 1
    if-eqz v3, :L4
    const/4 v2, 0
  :L1
  .line 7
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v2, v3, :L3
  .line 8
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v3, v3, v2
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v3 }, Ljava/util/ArrayList;->size()I
    move-result v3
    if-ne v3, v4, :L2
    return-void
  :L2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L3
  .line 9
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v0, v2, :L6
  .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v2, v2, v0
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->t()V
    add-int/lit8 v0, v0, 1
    goto :L3
  :L4
  .line 11
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-ne v0, v4, :L5
    return-void
  :L5
  .line 12
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->t()V
  :L6
  .line 13
    invoke-virtual { p0, v1, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->m1(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V
    goto :L0
  :L7
    return-void
.end method

.method private D2()V
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->k()I
    move-result v0
    const/high16 v1, 16384
    if-ne v0, v1, :L0
    return-void
  :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v1
    const/4 v2, 0
    const/4 v3, 0
  :L1
    if-ge v3, v1, :L5
  .line 3
    invoke-virtual { p0, v3 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v4
  .line 4
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    invoke-virtual { v5, v4 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v5
    int-to-float v5, v5
    cmpg-float v6, v5, v0
    if-gez v6, :L2
    goto :L4
  :L2
  .line 5
    invoke-virtual { v4 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 6
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f()Z
    move-result v4
    if-eqz v4, :L3
    const/high16 v4, 16256
    mul-float v5, v5, v4
  .line 7
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    int-to-float v4, v4
    div-float/2addr v5, v4
  :L3
  .line 8
    invoke-static { v0, v5 }, Ljava/lang/Math;->max(FF)F
    move-result v0
  :L4
    add-int/lit8 v3, v3, 1
    goto :L1
  :L5
  .line 9
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
  .line 10
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    int-to-float v4, v4
    mul-float v0, v0, v4
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
  .line 11
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/i;->k()I
    move-result v4
    const/high16 v5, -32768
    if-ne v4, v5, :L6
  .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    invoke-virtual { v4 }, Landroidx/recyclerview/widget/i;->n()I
    move-result v4
    invoke-static { v0, v4 }, Ljava/lang/Math;->min(II)I
    move-result v0
  :L6
  .line 13
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P2(I)V
  .line 14
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
    if-ne v0, v3, :L7
    return-void
  :L7
    if-ge v2, v1, :L12
  .line 15
    invoke-virtual { p0, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
  .line 16
    invoke-virtual { v0 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 17
    iget-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v5, :L8
    goto :L11
  :L8
  .line 18
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()Z
    move-result v5
    const/4 v6, 1
    if-eqz v5, :L9
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne v5, v6, :L9
  .line 19
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    add-int/lit8 v7, v5, -1
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    sub-int/2addr v7, v4
    neg-int v7, v7
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
    mul-int v7, v7, v8
    sub-int/2addr v5, v6
    sub-int/2addr v5, v4
    neg-int v4, v5
    mul-int v4, v4, v3
    sub-int/2addr v7, v4
  .line 20
    invoke-virtual { v0, v7 }, Landroid/view/View;->offsetLeftAndRight(I)V
    goto :L11
  :L9
  .line 21
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
    mul-int v5, v5, v4
    mul-int v4, v4, v3
  .line 22
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne v7, v6, :L10
    sub-int/2addr v5, v4
  .line 23
    invoke-virtual { v0, v5 }, Landroid/view/View;->offsetLeftAndRight(I)V
    goto :L11
  :L10
    sub-int/2addr v5, v4
  .line 24
    invoke-virtual { v0, v5 }, Landroid/view/View;->offsetTopAndBottom(I)V
  :L11
    add-int/lit8 v2, v2, 1
    goto :L7
  :L12
    return-void
.end method

.method private E2()V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 v1, 1
    if-eq v0, v1, :L1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()Z
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    xor-int/2addr v0, v1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    goto :L2
  :L1
  .line 3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
  :L2
    return-void
.end method

.method private G2(I)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iput p1, v0, Landroidx/recyclerview/widget/f;->e:I
  .line 2
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    const/4 v2, 1
    const/4 v3, -1
    if-ne p1, v3, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    if-ne v1, p1, :L2
    goto :L3
  :L2
    const/4 v2, -1
  :L3
    iput v2, v0, Landroidx/recyclerview/widget/f;->d:I
    return-void
.end method

.method private K2(II)V
  .registers 5
    const/4 v0, 0
  :L0
  .line 1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v0, v1, :L3
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v0
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-eqz v1, :L1
    goto :L2
  :L1
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v0
    invoke-direct { p0, v1, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q2(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;II)V
  :L2
    add-int/lit8 v0, v0, 1
    goto :L0
  :L3
    return-void
.end method

.method private L2(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)Z
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g2(I)I
    move-result p1
    goto :L1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c2(I)I
    move-result p1
  :L1
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I
    const/high16 p1, -32768
  .line 4
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    const/4 p1, 1
    return p1
.end method

.method private M1(Landroid/view/View;)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L1
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v0
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a(Landroid/view/View;)V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
    return-void
.end method

.method private N1(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
    if-lez v1, :L5
  .line 2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ne v1, v2, :L4
    const/4 v0, 0
  :L0
  .line 3
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v0, v1, :L5
  .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v0
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e()V
  .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    iget-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:[I
    aget v2, v2, v0
    const/high16 v3, -32768
    if-eq v2, v3, :L3
  .line 6
    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j:Z
    if-eqz v1, :L1
  .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
    goto :L2
  :L1
  .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v1
  :L2
    add-int/2addr v2, v1
  :L3
  .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v0
    invoke-virtual { v1, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->v(I)V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L4
  .line 10
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k()V
  .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
  :L5
  .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k:Z
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z
  .line 13
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->i:Z
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I2(Z)V
  .line 14
    invoke-direct { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E2()V
  .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
    const/4 v2, -1
    if-eq v1, v2, :L6
  .line 16
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
  .line 17
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j:Z
    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
    goto :L7
  :L6
  .line 18
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
  :L7
  .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I
    const/4 v1, 1
    if-le v0, v1, :L8
  .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    iget-object v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g:[I
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
  .line 21
    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->h:Ljava/util/List;
    iput-object p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
  :L8
    return-void
.end method

.method private O2(ILandroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    const/4 v1, 0
    iput v1, v0, Landroidx/recyclerview/widget/f;->b:I
  .line 2
    iput p1, v0, Landroidx/recyclerview/widget/f;->c:I
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->x0()Z
    move-result v0
    const/4 v2, 1
    if-eqz v0, :L3
  .line 4
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->c()I
    move-result p2
    const/4 v0, -1
    if-eq p2, v0, :L3
  .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-ge p2, p1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    if-ne v0, p1, :L2
  .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->n()I
    move-result p1
    goto :L4
  :L2
  .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->n()I
    move-result p1
    move p2, p1
    const/4 p1, 0
    goto :L5
  :L3
    const/4 p1, 0
  :L4
    const/4 p2, 0
  :L5
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->M()Z
    move-result v0
    if-eqz v0, :L6
  .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v3
    sub-int/2addr v3, p2
    iput v3, v0, Landroidx/recyclerview/widget/f;->f:I
  .line 10
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    add-int/2addr v0, p1
    iput v0, p2, Landroidx/recyclerview/widget/f;->g:I
    goto :L7
  :L6
  .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->h()I
    move-result v3
    add-int/2addr v3, p1
    iput v3, v0, Landroidx/recyclerview/widget/f;->g:I
  .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    neg-int p2, p2
    iput p2, p1, Landroidx/recyclerview/widget/f;->f:I
  :L7
  .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iput-boolean v1, p1, Landroidx/recyclerview/widget/f;->h:Z
  .line 14
    iput-boolean v2, p1, Landroidx/recyclerview/widget/f;->a:Z
  .line 15
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/i;->k()I
    move-result p2
    if-nez p2, :L8
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 16
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/i;->h()I
    move-result p2
    if-nez p2, :L8
    const/4 v1, 1
  :L8
    iput-boolean v1, p1, Landroidx/recyclerview/widget/f;->i:Z
    return-void
.end method

.method private Q1(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;Landroidx/recyclerview/widget/f;)V
  .registers 5
  .line 1
    iget p3, p3, Landroidx/recyclerview/widget/f;->e:I
    const/4 v0, 1
    if-ne p3, v0, :L1
  .line 2
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz p3, :L0
  .line 3
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M1(Landroid/view/View;)V
    goto :L3
  :L0
  .line 4
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a(Landroid/view/View;)V
    goto :L3
  :L1
  .line 5
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz p3, :L2
  .line 6
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z2(Landroid/view/View;)V
    goto :L3
  :L2
  .line 7
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->u(Landroid/view/View;)V
  :L3
    return-void
.end method

.method private Q2(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;II)V
  .registers 7
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->j()I
    move-result v0
    const/4 v1, 0
    const/4 v2, -1
    if-ne p2, v2, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->o()I
    move-result p2
    add-int/2addr p2, v0
    if-gt p2, p3, :L1
  .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Ljava/util/BitSet;
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    invoke-virtual { p2, p1, v1 }, Ljava/util/BitSet;->set(IZ)V
    goto :L1
  :L0
  .line 4
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->k()I
    move-result p2
    sub-int/2addr p2, v0
    if-lt p2, p3, :L1
  .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Ljava/util/BitSet;
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    invoke-virtual { p2, p1, v1 }, Ljava/util/BitSet;->set(IZ)V
  :L1
    return-void
.end method

.method private R1(I)I
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, -1
    const/4 v2, 1
    if-nez v0, :L1
  .line 2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eqz p1, :L0
    const/4 v1, 1
  :L0
    return v1
  :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2()I
    move-result v0
    if-ge p1, v0, :L2
    const/4 p1, 1
    goto :L3
  :L2
    const/4 p1, 0
  :L3
  .line 4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eq p1, v0, :L4
    goto :L5
  :L4
    const/4 v1, 1
  :L5
    return v1
.end method

.method private R2(III)I
  .registers 6
    if-nez p2, :L0
    if-nez p3, :L0
    return p1
  :L0
  .line 1
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
    const/high16 v1, -32768
    if-eq v0, v1, :L2
    const/high16 v1, 16384
    if-ne v0, v1, :L1
    goto :L2
  :L1
    return p1
  :L2
    const/4 v1, 0
  .line 2
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
    sub-int/2addr p1, p2
    sub-int/2addr p1, p3
    invoke-static { v1, p1 }, Ljava/lang/Math;->max(II)I
    move-result p1
  .line 3
    invoke-static { p1, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
    return p1
.end method

.method private T1(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;)Z
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->k()I
    move-result v0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v2
    if-ge v0, v2, :L1
  .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    add-int/lit8 v1, v1, -1
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
  .line 4
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->n(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    move-result-object p1
  .line 5
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    xor-int/lit8 p1, p1, 1
    return p1
  :L0
  .line 6
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->o()I
    move-result v0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v2
    if-le v0, v2, :L1
  .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
  .line 8
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->n(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    move-result-object p1
  .line 9
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    xor-int/lit8 p1, p1, 1
    return p1
  :L1
    return v1
.end method

.method private U1(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
    xor-int/lit8 v0, v0, 1
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e2(Z)Landroid/view/View;
    move-result-object v2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
    xor-int/lit8 v0, v0, 1
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d2(Z)Landroid/view/View;
    move-result-object v3
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
    move-object v0, p1
    move-object v4, p0
  .line 5
    invoke-static/range { v0 .. v5 }, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;Z)I
    move-result p1
    return p1
.end method

.method private V1(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 9
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
    xor-int/lit8 v0, v0, 1
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e2(Z)Landroid/view/View;
    move-result-object v2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
    xor-int/lit8 v0, v0, 1
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d2(Z)Landroid/view/View;
    move-result-object v3
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    move-object v0, p1
    move-object v4, p0
  .line 5
    invoke-static/range { v0 .. v6 }, Landroidx/recyclerview/widget/l;->b(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;ZZ)I
    move-result p1
    return p1
.end method

.method private W1(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
    xor-int/lit8 v0, v0, 1
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e2(Z)Landroid/view/View;
    move-result-object v2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
    xor-int/lit8 v0, v0, 1
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d2(Z)Landroid/view/View;
    move-result-object v3
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Z
    move-object v0, p1
    move-object v4, p0
  .line 5
    invoke-static/range { v0 .. v5 }, Landroidx/recyclerview/widget/l;->c(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/i;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$n;Z)I
    move-result p1
    return p1
.end method

.method private X1(I)I
  .registers 6
    const/4 v0, -1
    const/4 v1, 1
    if-eq p1, v1, :L15
    const/4 v2, 2
    if-eq p1, v2, :L12
    const/16 v2, 17
    const/high16 v3, -32768
    if-eq p1, v2, :L9
    const/16 v2, 33
    if-eq p1, v2, :L6
    const/16 v0, 66
    if-eq p1, v0, :L3
    const/16 v0, 130
    if-eq p1, v0, :L0
    return v3
  :L0
  .line 1
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne p1, v1, :L1
    goto :L2
  :L1
    const/high16 v1, -32768
  :L2
    return v1
  :L3
  .line 2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-nez p1, :L4
    goto :L5
  :L4
    const/high16 v1, -32768
  :L5
    return v1
  :L6
  .line 3
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne p1, v1, :L7
    goto :L8
  :L7
    const/high16 v0, -32768
  :L8
    return v0
  :L9
  .line 4
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-nez p1, :L10
    goto :L11
  :L10
    const/high16 v0, -32768
  :L11
    return v0
  :L12
  .line 5
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne p1, v1, :L13
    return v1
  :L13
  .line 6
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()Z
    move-result p1
    if-eqz p1, :L14
    return v0
  :L14
    return v1
  :L15
  .line 7
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne p1, v1, :L16
    return v0
  :L16
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()Z
    move-result p1
    if-eqz p1, :L17
    return v1
  :L17
    return v0
.end method

.method private Y1(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .registers 6
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;-><init>()V
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    new-array v1, v1, [I
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->d:[I
    const/4 v1, 0
  :L0
  .line 3
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v1, v2, :L1
  .line 4
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->d:[I
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v3, v3, v1
    invoke-virtual { v3, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v3
    sub-int v3, p1, v3
    aput v3, v2, v1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-object v0
.end method

.method private Z1(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
  .registers 6
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;-><init>()V
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    new-array v1, v1, [I
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->d:[I
    const/4 v1, 0
  :L0
  .line 3
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v1, v2, :L1
  .line 4
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->d:[I
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v3, v3, v1
    invoke-virtual { v3, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v3
    sub-int/2addr v3, p1
    aput v3, v2, v1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-object v0
.end method

.method private a2()V
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    invoke-static { p0, v0 }, Landroidx/recyclerview/widget/i;->b(Landroidx/recyclerview/widget/RecyclerView$n;I)Landroidx/recyclerview/widget/i;
    move-result-object v0
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    rsub-int/lit8 v0, v0, 1
  .line 3
    invoke-static { p0, v0 }, Landroidx/recyclerview/widget/i;->b(Landroidx/recyclerview/widget/RecyclerView$n;I)Landroidx/recyclerview/widget/i;
    move-result-object v0
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    return-void
.end method

.method private b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 20
    move-object/from16 v6, p0
    move-object/from16 v7, p1
    move-object/from16 v8, p2
  .line 1
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Ljava/util/BitSet;
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    const/4 v9, 0
    const/4 v10, 1
    invoke-virtual { v0, v9, v1, v10 }, Ljava/util/BitSet;->set(IIZ)V
  .line 2
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget-boolean v0, v0, Landroidx/recyclerview/widget/f;->i:Z
    if-eqz v0, :L1
  .line 3
    iget v0, v8, Landroidx/recyclerview/widget/f;->e:I
    if-ne v0, v10, :L0
    const v0, 2147483647
    const v11, 2147483647
    goto :L4
  :L0
    const/high16 v0, -32768
    const/high16 v11, -32768
    goto :L4
  :L1
  .line 4
    iget v0, v8, Landroidx/recyclerview/widget/f;->e:I
    if-ne v0, v10, :L2
  .line 5
    iget v0, v8, Landroidx/recyclerview/widget/f;->g:I
    iget v1, v8, Landroidx/recyclerview/widget/f;->b:I
    add-int/2addr v0, v1
    goto :L3
  :L2
  .line 6
    iget v0, v8, Landroidx/recyclerview/widget/f;->f:I
    iget v1, v8, Landroidx/recyclerview/widget/f;->b:I
    sub-int/2addr v0, v1
  :L3
    move v11, v0
  :L4
  .line 7
    iget v0, v8, Landroidx/recyclerview/widget/f;->e:I
    invoke-direct { v6, v0, v11 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K2(II)V
  .line 8
    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eqz v0, :L5
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 9
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    goto :L6
  :L5
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 10
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
  :L6
    move v12, v0
    const/4 v0, 0
  :L7
  .line 11
    invoke-virtual/range { p2 .. p3 }, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    move-result v1
    const/4 v2, -1
    if-eqz v1, :L43
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget-boolean v1, v1, Landroidx/recyclerview/widget/f;->i:Z
    if-nez v1, :L8
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Ljava/util/BitSet;
  .line 12
    invoke-virtual { v1 }, Ljava/util/BitSet;->isEmpty()Z
    move-result v1
    if-nez v1, :L43
  :L8
  .line 13
    invoke-virtual { v8, v7 }, Landroidx/recyclerview/widget/f;->b(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    move-result-object v13
  .line 14
    invoke-virtual { v13 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    move-object v14, v0
    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 15
    invoke-virtual { v14 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result v0
  .line 16
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g(I)I
    move-result v1
    if-ne v1, v2, :L9
    const/4 v3, 1
    goto :L10
  :L9
    const/4 v3, 0
  :L10
    if-eqz v3, :L13
  .line 17
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v1, :L11
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v9
    goto :L12
  :L11
    invoke-direct { v6, v8 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p2(Landroidx/recyclerview/widget/f;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    move-result-object v1
  :L12
  .line 18
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { v4, v0, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->n(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$f;)V
    goto :L14
  :L13
  .line 19
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v4, v1
  :L14
    move-object v15, v1
  .line 20
    iput-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
  .line 21
    iget v1, v8, Landroidx/recyclerview/widget/f;->e:I
    if-ne v1, v10, :L15
  .line 22
    invoke-virtual { v6, v13 }, Landroidx/recyclerview/widget/RecyclerView$n;->d(Landroid/view/View;)V
    goto :L16
  :L15
  .line 23
    invoke-virtual { v6, v13, v9 }, Landroidx/recyclerview/widget/RecyclerView$n;->e(Landroid/view/View;I)V
  :L16
  .line 24
    invoke-direct { v6, v13, v14, v9 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v2(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;Z)V
  .line 25
    iget v1, v8, Landroidx/recyclerview/widget/f;->e:I
    if-ne v1, v10, :L20
  .line 26
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v1, :L17
    invoke-direct { v6, v12 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l2(I)I
    move-result v1
    goto :L18
  :L17
  .line 27
    invoke-virtual { v15, v12 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v1
  :L18
  .line 28
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v4, v13 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v4
    add-int/2addr v4, v1
    if-eqz v3, :L19
  .line 29
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v5, :L19
  .line 30
    invoke-direct { v6, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y1(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    move-result-object v5
  .line 31
    iput v2, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->c:I
  .line 32
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
  .line 33
    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { v9, v5 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;)V
  :L19
    move v5, v4
    move v4, v1
    goto :L24
  :L20
  .line 34
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v1, :L21
    invoke-direct { v6, v12 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o2(I)I
    move-result v1
    goto :L22
  :L21
  .line 35
    invoke-virtual { v15, v12 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v1
  :L22
  .line 36
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v4, v13 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v4
    sub-int v4, v1, v4
    if-eqz v3, :L23
  .line 37
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v5, :L23
  .line 38
    invoke-direct { v6, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z1(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    move-result-object v5
  .line 39
    iput v10, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->c:I
  .line 40
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
  .line 41
    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { v9, v5 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;)V
  :L23
    move v5, v1
  :L24
  .line 42
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v1, :L29
    iget v1, v8, Landroidx/recyclerview/widget/f;->d:I
    if-ne v1, v2, :L29
    if-eqz v3, :L25
  .line 43
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z
    goto :L29
  :L25
  .line 44
    iget v1, v8, Landroidx/recyclerview/widget/f;->e:I
    if-ne v1, v10, :L26
  .line 45
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O1()Z
    move-result v1
    goto :L27
  :L26
  .line 46
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P1()Z
    move-result v1
  :L27
    xor-int/2addr v1, v10
    if-eqz v1, :L29
  .line 47
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
  .line 48
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    move-result-object v0
    if-eqz v0, :L28
  .line 49
    iput-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->e:Z
  :L28
  .line 50
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z
  :L29
  .line 51
    invoke-direct { v6, v13, v14, v8 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q1(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;Landroidx/recyclerview/widget/f;)V
  .line 52
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()Z
    move-result v0
    if-eqz v0, :L32
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne v0, v10, :L32
  .line 53
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v0, :L30
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    goto :L31
  :L30
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
  .line 54
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    sub-int/2addr v1, v10
    iget v2, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    sub-int/2addr v1, v2
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
    mul-int v1, v1, v2
    sub-int/2addr v0, v1
  :L31
  .line 55
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1, v13 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v1
    sub-int v1, v0, v1
    move v9, v0
    move v3, v1
    goto :L35
  :L32
  .line 56
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v0, :L33
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
    goto :L34
  :L33
    iget v0, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
    mul-int v0, v0, v1
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
  .line 57
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v1
    add-int/2addr v0, v1
  :L34
  .line 58
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1, v13 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v1
    add-int/2addr v1, v0
    move v3, v0
    move v9, v1
  :L35
  .line 59
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne v0, v10, :L36
    move-object/from16 v0, p0
    move-object v1, v13
    move v2, v3
    move v3, v4
    move v4, v9
  .line 60
    invoke-virtual/range { v0 .. v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->z0(Landroid/view/View;IIII)V
    goto :L37
  :L36
    move-object/from16 v0, p0
    move-object v1, v13
    move v2, v4
    move v4, v5
    move v5, v9
  .line 61
    invoke-virtual/range { v0 .. v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->z0(Landroid/view/View;IIII)V
  :L37
  .line 62
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v0, :L38
  .line 63
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v0, v0, Landroidx/recyclerview/widget/f;->e:I
    invoke-direct { v6, v0, v11 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K2(II)V
    goto :L39
  :L38
  .line 64
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v0, v0, Landroidx/recyclerview/widget/f;->e:I
    invoke-direct { v6, v15, v0, v11 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q2(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;II)V
  :L39
  .line 65
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    invoke-direct { v6, v7, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;)V
  .line 66
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget-boolean v0, v0, Landroidx/recyclerview/widget/f;->h:Z
    if-eqz v0, :L41
    invoke-virtual { v13 }, Landroid/view/View;->hasFocusable()Z
    move-result v0
    if-eqz v0, :L41
  .line 67
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v0, :L40
  .line 68
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Ljava/util/BitSet;
    invoke-virtual { v0 }, Ljava/util/BitSet;->clear()V
    goto :L41
  :L40
  .line 69
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Ljava/util/BitSet;
    iget v1, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    const/4 v3, 0
    invoke-virtual { v0, v1, v3 }, Ljava/util/BitSet;->set(IZ)V
    goto :L42
  :L41
    const/4 v3, 0
  :L42
    const/4 v0, 1
    const/4 v9, 0
    goto/16 :L7
  :L43
    const/4 v3, 0
    if-nez v0, :L44
  .line 70
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    invoke-direct { v6, v7, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;)V
  :L44
  .line 71
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v0, v0, Landroidx/recyclerview/widget/f;->e:I
    if-ne v0, v2, :L45
  .line 72
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
    invoke-direct { v6, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o2(I)I
    move-result v0
  .line 73
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v1
    sub-int/2addr v1, v0
    goto :L46
  :L45
  .line 74
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    invoke-direct { v6, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l2(I)I
    move-result v0
  .line 75
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
    sub-int v1, v0, v1
  :L46
    if-lez v1, :L47
  .line 76
    iget v0, v8, Landroidx/recyclerview/widget/f;->b:I
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(II)I
    move-result v9
    goto :L48
  :L47
    const/4 v9, 0
  :L48
    return v9
.end method

.method private c2(I)I
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    invoke-virtual { p0, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v3
  .line 3
    invoke-virtual { p0, v3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v3
    if-ltz v3, :L1
    if-ge v3, p1, :L1
    return v3
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return v1
.end method

.method private g2(I)I
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L2
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v1
  .line 3
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v1
    if-ltz v1, :L1
    if-ge v1, p1, :L1
    return v1
  :L1
    add-int/lit8 v0, v0, -1
    goto :L0
  :L2
    const/4 p1, 0
    return p1
.end method

.method private h2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)V
  .registers 6
    const/high16 v0, -32768
  .line 1
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l2(I)I
    move-result v1
    if-ne v1, v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v0
    sub-int/2addr v0, v1
    if-lez v0, :L1
    neg-int v1, v0
  .line 3
    invoke-virtual { p0, v1, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    neg-int p1, p1
    sub-int/2addr v0, p1
    if-eqz p3, :L1
    if-lez v0, :L1
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/i;->r(I)V
  :L1
    return-void
.end method

.method private i2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)V
  .registers 6
    const v0, 2147483647
  .line 1
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o2(I)I
    move-result v1
    if-ne v1, v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
    sub-int/2addr v1, v0
    if-lez v1, :L1
  .line 3
    invoke-virtual { p0, v1, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    sub-int/2addr v1, p1
    if-eqz p3, :L1
    if-lez v1, :L1
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    neg-int p2, v1
    invoke-virtual { p1, p2 }, Landroidx/recyclerview/widget/i;->r(I)V
  :L1
    return-void
.end method

.method private l2(I)I
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    const/4 v1, 0
    aget-object v0, v0, v1
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v0
    const/4 v1, 1
  :L0
  .line 2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v1, v2, :L2
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v2, v2, v1
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v2
    if-le v2, v0, :L1
    move v0, v2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v0
.end method

.method private m2(I)I
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    const/4 v1, 0
    aget-object v0, v0, v1
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v0
    const/4 v1, 1
  :L0
  .line 2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v1, v2, :L2
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v2, v2, v1
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v2
    if-le v2, v0, :L1
    move v0, v2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v0
.end method

.method private n2(I)I
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    const/4 v1, 0
    aget-object v0, v0, v1
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v0
    const/4 v1, 1
  :L0
  .line 2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v1, v2, :L2
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v2, v2, v1
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v2
    if-ge v2, v0, :L1
    move v0, v2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v0
.end method

.method private o2(I)I
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    const/4 v1, 0
    aget-object v0, v0, v1
    invoke-virtual { v0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v0
    const/4 v1, 1
  :L0
  .line 2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v1, v2, :L2
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v2, v2, v1
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v2
    if-ge v2, v0, :L1
    move v0, v2
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    return v0
.end method

.method private p2(Landroidx/recyclerview/widget/f;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
  .registers 9
  .line 1
    iget v0, p1, Landroidx/recyclerview/widget/f;->e:I
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x2(I)Z
    move-result v0
    const/4 v1, -1
    const/4 v2, 1
    if-eqz v0, :L0
  .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    sub-int/2addr v0, v2
    const/4 v3, -1
    goto :L1
  :L0
    const/4 v0, 0
  .line 3
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    const/4 v3, 1
  :L1
  .line 4
    iget p1, p1, Landroidx/recyclerview/widget/f;->e:I
    const/4 v4, 0
    if-ne p1, v2, :L5
    const p1, 2147483647
  .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v2
  :L2
    if-eq v0, v1, :L4
  .line 6
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v5, v5, v0
  .line 7
    invoke-virtual { v5, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v6
    if-ge v6, p1, :L3
    move-object v4, v5
    move p1, v6
  :L3
    add-int/2addr v0, v3
    goto :L2
  :L4
    return-object v4
  :L5
    const/high16 p1, -32768
  .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v2
  :L6
    if-eq v0, v1, :L8
  .line 9
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v5, v5, v0
  .line 10
    invoke-virtual { v5, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v6
    if-le v6, p1, :L7
    move-object v4, v5
    move p1, v6
  :L7
    add-int/2addr v0, v3
    goto :L6
  :L8
    return-object v4
.end method

.method private q2(III)V
  .registers 10
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k2()I
    move-result v0
    goto :L1
  :L0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2()I
    move-result v0
  :L1
    const/16 v1, 8
    if-ne p3, v1, :L3
    if-ge p1, p2, :L2
    add-int/lit8 v2, p2, 1
    goto :L4
  :L2
    add-int/lit8 v2, p1, 1
    move v3, p2
    goto :L5
  :L3
    add-int v2, p1, p2
  :L4
    move v3, p1
  :L5
  .line 2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { v4, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h(I)I
    const/4 v4, 1
    if-eq p3, v4, :L8
    const/4 v5, 2
    if-eq p3, v5, :L7
    if-eq p3, v1, :L6
    goto :L9
  :L6
  .line 3
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { p3, p1, v4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(II)V
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { p1, p2, v4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(II)V
    goto :L9
  :L7
  .line 5
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { p3, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->k(II)V
    goto :L9
  :L8
  .line 6
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { p3, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j(II)V
  :L9
    if-gt v2, v0, :L10
    return-void
  :L10
  .line 7
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eqz p1, :L11
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2()I
    move-result p1
    goto :L12
  :L11
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k2()I
    move-result p1
  :L12
    if-gt v3, p1, :L13
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
  :L13
    return-void
.end method

.method private u2(Landroid/view/View;IIZ)V
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroid/graphics/Rect;
    invoke-virtual { p0, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->j(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I
    add-int/2addr v1, v3
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    iget v2, v2, Landroid/graphics/Rect;->right:I
    add-int/2addr v3, v2
    invoke-direct { p0, p2, v1, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R2(III)I
    move-result p2
  .line 4
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I
    add-int/2addr v1, v3
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    iget v2, v2, Landroid/graphics/Rect;->bottom:I
    add-int/2addr v3, v2
    invoke-direct { p0, p3, v1, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R2(III)I
    move-result p3
    if-eqz p4, :L0
  .line 5
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->H1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
    move-result p4
    goto :L1
  :L0
  .line 6
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->F1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
    move-result p4
  :L1
    if-eqz p4, :L2
  .line 7
    invoke-virtual { p1, p2, p3 }, Landroid/view/View;->measure(II)V
  :L2
    return-void
.end method

.method private v2(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;Z)V
  .registers 10
  .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    const/4 v1, 1
    if-eqz v0, :L1
  .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne v0, v1, :L0
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:I
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->W()I
    move-result v2
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->X()I
    move-result v3
  .line 6
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result v5
    add-int/2addr v4, v5
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
  .line 7
    invoke-static { v2, v3, v4, p2, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result p2
  .line 8
    invoke-direct { p0, p1, v0, p2, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u2(Landroid/view/View;IIZ)V
    goto :L3
  :L0
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I
    move-result v0
  .line 10
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->p0()I
    move-result v2
  .line 11
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v4
    add-int/2addr v3, v4
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
  .line 12
    invoke-static { v0, v2, v3, p2, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result p2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:I
  .line 13
    invoke-direct { p0, p1, p2, v0, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u2(Landroid/view/View;IIZ)V
    goto :L3
  :L1
  .line 14
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 v2, 0
    if-ne v0, v1, :L2
  .line 15
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
  .line 16
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->p0()I
    move-result v3
    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
  .line 17
    invoke-static { v0, v3, v2, v4, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result v0
  .line 18
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->W()I
    move-result v2
  .line 19
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->X()I
    move-result v3
  .line 20
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result v5
    add-int/2addr v4, v5
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
  .line 21
    invoke-static { v2, v3, v4, p2, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result p2
  .line 22
    invoke-direct { p0, p1, v0, p2, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u2(Landroid/view/View;IIZ)V
    goto :L3
  :L2
  .line 23
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I
    move-result v0
  .line 24
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->p0()I
    move-result v3
  .line 25
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v5
    add-int/2addr v4, v5
    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
  .line 26
    invoke-static { v0, v3, v4, v5, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result v0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
  .line 27
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->X()I
    move-result v3
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
  .line 28
    invoke-static { v1, v3, v2, p2, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result p2
  .line 29
    invoke-direct { p0, p1, v0, p2, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u2(Landroid/view/View;IIZ)V
  :L3
    return-void
.end method

.method private w2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)V
  .registers 12
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    const/4 v2, -1
    if-nez v1, :L0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    if-eq v1, v2, :L1
  :L0
  .line 3
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v1
    if-nez v1, :L1
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->k1(Landroidx/recyclerview/widget/RecyclerView$u;)V
  .line 5
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V
    return-void
  :L1
  .line 6
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:Z
    const/4 v3, 0
    const/4 v4, 1
    if-eqz v1, :L3
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    if-ne v1, v2, :L3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-eqz v1, :L2
    goto :L3
  :L2
    const/4 v1, 0
    goto :L4
  :L3
    const/4 v1, 1
  :L4
    if-eqz v1, :L7
  .line 7
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V
  .line 8
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-eqz v5, :L5
  .line 9
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N1(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)V
    goto :L6
  :L5
  .line 10
    invoke-direct { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E2()V
  .line 11
    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    iput-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
  :L6
  .line 12
    invoke-virtual { p0, p2, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N2(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)V
  .line 13
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:Z
  :L7
  .line 14
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-nez v5, :L9
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    if-ne v5, v2, :L9
  .line 15
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z
    if-ne v5, v6, :L8
  .line 16
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()Z
    move-result v5
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z
    if-eq v5, v6, :L9
  :L8
  .line 17
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b()V
  .line 18
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z
  :L9
  .line 19
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v5
    if-lez v5, :L19
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-eqz v5, :L10
    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
    if-ge v5, v4, :L19
  :L10
  .line 20
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z
    if-eqz v5, :L13
    const/4 v1, 0
  :L11
  .line 21
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v1, v5, :L19
  .line 22
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v5, v5, v1
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e()V
  .line 23
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    const/high16 v6, -32768
    if-eq v5, v6, :L12
  .line 24
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v6, v6, v1
    invoke-virtual { v6, v5 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->v(I)V
  :L12
    add-int/lit8 v1, v1, 1
    goto :L11
  :L13
    if-nez v1, :L16
  .line 25
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I
    if-nez v1, :L14
    goto :L16
  :L14
    const/4 v1, 0
  :L15
  .line 26
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v1, v5, :L19
  .line 27
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v5, v5, v1
  .line 28
    invoke-virtual { v5 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e()V
  .line 29
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I
    aget v6, v6, v1
    invoke-virtual { v5, v6 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->v(I)V
    add-int/lit8 v1, v1, 1
    goto :L15
  :L16
    const/4 v1, 0
  :L17
  .line 30
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v1, v5, :L18
  .line 31
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v5, v5, v1
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    iget v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    invoke-virtual { v5, v6, v7 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->b(ZI)V
    add-int/lit8 v1, v1, 1
    goto :L17
  :L18
  .line 32
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    invoke-virtual { v1, v5 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;)V
  :L19
  .line 33
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->w(Landroidx/recyclerview/widget/RecyclerView$u;)V
  .line 34
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iput-boolean v3, v1, Landroidx/recyclerview/widget/f;->a:Z
  .line 35
    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z
  .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->n()I
    move-result v1
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P2(I)V
  .line 37
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I
    invoke-direct { p0, v1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O2(ILandroidx/recyclerview/widget/RecyclerView$z;)V
  .line 38
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
    if-eqz v1, :L20
  .line 39
    invoke-direct { p0, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G2(I)V
  .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    invoke-direct { p0, p1, v1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .line 41
    invoke-direct { p0, v4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G2(I)V
  .line 42
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I
    iget v5, v1, Landroidx/recyclerview/widget/f;->d:I
    add-int/2addr v2, v5
    iput v2, v1, Landroidx/recyclerview/widget/f;->c:I
  .line 43
    invoke-direct { p0, p1, v1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$z;)I
    goto :L21
  :L20
  .line 44
    invoke-direct { p0, v4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G2(I)V
  .line 45
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    invoke-direct { p0, p1, v1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .line 46
    invoke-direct { p0, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G2(I)V
  .line 47
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I
    iget v5, v1, Landroidx/recyclerview/widget/f;->d:I
    add-int/2addr v2, v5
    iput v2, v1, Landroidx/recyclerview/widget/f;->c:I
  .line 48
    invoke-direct { p0, p1, v1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$z;)I
  :L21
  .line 49
    invoke-direct { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D2()V
  .line 50
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v1
    if-lez v1, :L23
  .line 51
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eqz v1, :L22
  .line 52
    invoke-direct { p0, p1, p2, v4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)V
  .line 53
    invoke-direct { p0, p1, p2, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)V
    goto :L23
  :L22
  .line 54
    invoke-direct { p0, p1, p2, v4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)V
  .line 55
    invoke-direct { p0, p1, p2, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)V
  :L23
    if-eqz p3, :L27
  .line 56
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p3
    if-nez p3, :L27
  .line 57
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:I
    if-eqz p3, :L25
  .line 58
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result p3
    if-lez p3, :L25
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z
    if-nez p3, :L24
  .line 59
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r2()Landroid/view/View;
    move-result-object p3
    if-eqz p3, :L25
  :L24
    const/4 p3, 1
    goto :L26
  :L25
    const/4 p3, 0
  :L26
    if-eqz p3, :L27
  .line 60
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Ljava/lang/Runnable;
    invoke-virtual { p0, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->o1(Ljava/lang/Runnable;)Z
  .line 61
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S1()Z
    move-result p3
    if-eqz p3, :L27
    goto :L28
  :L27
    const/4 v4, 0
  :L28
  .line 62
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p3
    if-eqz p3, :L29
  .line 63
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    invoke-virtual { p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V
  :L29
  .line 64
    iget-boolean p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z
  .line 65
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()Z
    move-result p3
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z
    if-eqz v4, :L30
  .line 66
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    invoke-virtual { p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V
  .line 67
    invoke-direct { p0, p1, p2, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)V
  :L30
    return-void
.end method

.method private x2(I)Z
  .registers 6
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 v1, -1
    const/4 v2, 1
    const/4 v3, 0
    if-nez v0, :L4
    if-ne p1, v1, :L0
    const/4 p1, 1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
  .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eq p1, v0, :L2
    goto :L3
  :L2
    const/4 v2, 0
  :L3
    return v2
  :L4
    if-ne p1, v1, :L5
    const/4 p1, 1
    goto :L6
  :L5
    const/4 p1, 0
  :L6
  .line 3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-ne p1, v0, :L7
    const/4 p1, 1
    goto :L8
  :L7
    const/4 p1, 0
  :L8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()Z
    move-result v0
    if-ne p1, v0, :L9
    goto :L10
  :L9
    const/4 v2, 0
  :L10
    return v2
.end method

.method private z2(Landroid/view/View;)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    add-int/lit8 v0, v0, -1
  :L0
    if-ltz v0, :L1
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v0
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->u(Landroid/view/View;)V
    add-int/lit8 v0, v0, -1
    goto :L0
  :L1
    return-void
.end method

.method public C0(I)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->C0(I)V
    const/4 v0, 0
  :L0
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v0, v1, :L1
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v0
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->r(I)V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method public C1(Landroid/graphics/Rect;II)V
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v1
    add-int/2addr v0, v1
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result v2
    add-int/2addr v1, v2
  .line 3
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 v3, 1
    if-ne v2, v3, :L0
  .line 4
    invoke-virtual { p1 }, Landroid/graphics/Rect;->height()I
    move-result p1
    add-int/2addr p1, v1
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->b0()I
    move-result v1
    invoke-static { p3, p1, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p1
  .line 6
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    mul-int p3, p3, v1
    add-int/2addr p3, v0
  .line 7
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->c0()I
    move-result v0
  .line 8
    invoke-static { p2, p3, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p2
    goto :L1
  :L0
  .line 9
    invoke-virtual { p1 }, Landroid/graphics/Rect;->width()I
    move-result p1
    add-int/2addr p1, v0
  .line 10
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->c0()I
    move-result v0
    invoke-static { p2, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p2
  .line 11
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    mul-int p1, p1, v0
    add-int/2addr p1, v1
  .line 12
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->b0()I
    move-result v0
  .line 13
    invoke-static { p3, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p1
  :L1
  .line 14
    invoke-virtual { p0, p2, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->B1(II)V
    return-void
.end method

.method public D()Landroidx/recyclerview/widget/RecyclerView$o;
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 v1, -2
    const/4 v2, -1
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    invoke-direct { v0, v1, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V
    return-object v0
  :L0
  .line 3
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    invoke-direct { v0, v2, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(II)V
    return-object v0
.end method

.method public D0(I)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->D0(I)V
    const/4 v0, 0
  :L0
  .line 2
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v0, v1, :L1
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v0
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->r(I)V
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method public E(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;
  .registers 4
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    invoke-direct { v0, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method public F(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$o;
  .registers 3
  .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct { v0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    return-object v0
  :L0
  .line 3
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    invoke-direct { v0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-object v0
.end method

.method F2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L4
    if-nez p1, :L0
    goto :L4
  :L0
  .line 2
    invoke-virtual { p0, p1, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y2(ILandroidx/recyclerview/widget/RecyclerView$z;)V
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    invoke-direct { p0, p2, v0, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p3
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v0, v0, Landroidx/recyclerview/widget/f;->b:I
    if-ge v0, p3, :L1
    goto :L3
  :L1
    if-gez p1, :L2
    neg-int p1, p3
    goto :L3
  :L2
    move p1, p3
  :L3
  .line 5
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    neg-int v0, p1
    invoke-virtual { p3, v0 }, Landroidx/recyclerview/widget/i;->r(I)V
  .line 6
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z
  .line 7
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iput v1, p3, Landroidx/recyclerview/widget/f;->b:I
  .line 8
    invoke-direct { p0, p2, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;)V
    return p1
  :L4
    return v1
.end method

.method public H2(I)V
  .registers 3
    if-eqz p1, :L1
    const/4 v0, 1
    if-ne p1, v0, :L0
    goto :L1
  :L0
  .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string v0, "invalid orientation."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
    const/4 v0, 0
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Ljava/lang/String;)V
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-ne p1, v0, :L2
    return-void
  :L2
  .line 4
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return-void
.end method

.method public I0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
  .registers 4
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->I0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
  .line 2
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Ljava/lang/Runnable;
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->o1(Ljava/lang/Runnable;)Z
    const/4 p2, 0
  :L0
  .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge p2, v0, :L1
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v0, v0, p2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e()V
    add-int/lit8 p2, p2, 1
    goto :L0
  :L1
  .line 5
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V
    return-void
.end method

.method public I1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;I)V
  .registers 4
  .line 1
    new-instance p2, Landroidx/recyclerview/widget/g;
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-direct { p2, p1 }, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V
  .line 2
    invoke-virtual { p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$y;->p(I)V
  .line 3
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->J1(Landroidx/recyclerview/widget/RecyclerView$y;)V
    return-void
.end method

.method public I2(Z)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-eqz v0, :L0
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->i:Z
    if-eq v1, p1, :L0
  .line 3
    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->i:Z
  :L0
  .line 4
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return-void
.end method

.method public J0(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
  .registers 13
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return-object v1
  :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->B(Landroid/view/View;)Landroid/view/View;
    move-result-object p1
    if-nez p1, :L1
    return-object v1
  :L1
  .line 3
    invoke-direct { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E2()V
  .line 4
    invoke-direct { p0, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X1(I)I
    move-result p2
    const/high16 v0, -32768
    if-ne p2, v0, :L2
    return-object v1
  :L2
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 6
    iget-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
  .line 7
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    const/4 v3, 1
    if-ne p2, v3, :L3
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k2()I
    move-result v4
    goto :L4
  :L3
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2()I
    move-result v4
  :L4
  .line 10
    invoke-direct { p0, v4, p4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O2(ILandroidx/recyclerview/widget/RecyclerView$z;)V
  .line 11
    invoke-direct { p0, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G2(I)V
  .line 12
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v6, v5, Landroidx/recyclerview/widget/f;->d:I
    add-int/2addr v6, v4
    iput v6, v5, Landroidx/recyclerview/widget/f;->c:I
    const v6, 1051372203
  .line 13
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v7 }, Landroidx/recyclerview/widget/i;->n()I
    move-result v7
    int-to-float v7, v7
    mul-float v7, v7, v6
    float-to-int v6, v7
    iput v6, v5, Landroidx/recyclerview/widget/f;->b:I
  .line 14
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iput-boolean v3, v5, Landroidx/recyclerview/widget/f;->h:Z
    const/4 v6, 0
  .line 15
    iput-boolean v6, v5, Landroidx/recyclerview/widget/f;->a:Z
  .line 16
    invoke-direct { p0, p3, v5, p4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/f;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .line 17
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z
    if-nez v2, :L5
  .line 18
    invoke-virtual { v0, v4, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->m(II)Landroid/view/View;
    move-result-object p3
    if-eqz p3, :L5
    if-eq p3, p1, :L5
    return-object p3
  :L5
  .line 19
    invoke-direct { p0, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x2(I)Z
    move-result p3
    if-eqz p3, :L8
  .line 20
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    sub-int/2addr p3, v3
  :L6
    if-ltz p3, :L11
  .line 21
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object p4, p4, p3
    invoke-virtual { p4, v4, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->m(II)Landroid/view/View;
    move-result-object p4
    if-eqz p4, :L7
    if-eq p4, p1, :L7
    return-object p4
  :L7
    add-int/lit8 p3, p3, -1
    goto :L6
  :L8
    const/4 p3, 0
  :L9
  .line 22
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge p3, p4, :L11
  .line 23
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object p4, p4, p3
    invoke-virtual { p4, v4, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->m(II)Landroid/view/View;
    move-result-object p4
    if-eqz p4, :L10
    if-eq p4, p1, :L10
    return-object p4
  :L10
    add-int/lit8 p3, p3, 1
    goto :L9
  :L11
  .line 24
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    xor-int/2addr p3, v3
    const/4 p4, -1
    if-ne p2, p4, :L12
    const/4 p4, 1
    goto :L13
  :L12
    const/4 p4, 0
  :L13
    if-ne p3, p4, :L14
    const/4 p3, 1
    goto :L15
  :L14
    const/4 p3, 0
  :L15
    if-nez v2, :L18
    if-eqz p3, :L16
  .line 25
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f()I
    move-result p4
    goto :L17
  :L16
  .line 26
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->g()I
    move-result p4
  :L17
  .line 27
    invoke-virtual { p0, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->C(I)Landroid/view/View;
    move-result-object p4
    if-eqz p4, :L18
    if-eq p4, p1, :L18
    return-object p4
  :L18
  .line 28
    invoke-direct { p0, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x2(I)Z
    move-result p2
    if-eqz p2, :L24
  .line 29
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    sub-int/2addr p2, v3
  :L19
    if-ltz p2, :L28
  .line 30
    iget p4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    if-ne p2, p4, :L20
    goto :L23
  :L20
    if-eqz p3, :L21
  .line 31
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object p4, p4, p2
  .line 32
    invoke-virtual { p4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f()I
    move-result p4
    goto :L22
  :L21
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object p4, p4, p2
  .line 33
    invoke-virtual { p4 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->g()I
    move-result p4
  :L22
  .line 34
    invoke-virtual { p0, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->C(I)Landroid/view/View;
    move-result-object p4
    if-eqz p4, :L23
    if-eq p4, p1, :L23
    return-object p4
  :L23
    add-int/lit8 p2, p2, -1
    goto :L19
  :L24
  .line 35
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v6, p2, :L28
    if-eqz p3, :L25
  .line 36
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object p2, p2, v6
  .line 37
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->f()I
    move-result p2
    goto :L26
  :L25
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object p2, p2, v6
  .line 38
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->g()I
    move-result p2
  :L26
  .line 39
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->C(I)Landroid/view/View;
    move-result-object p2
    if-eqz p2, :L27
    if-eq p2, p1, :L27
    return-object p2
  :L27
    add-int/lit8 v6, v6, 1
    goto :L24
  :L28
    return-object v1
.end method

.method public J2(I)V
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Ljava/lang/String;)V
  .line 2
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-eq p1, v0, :L2
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s2()V
  .line 4
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
  .line 5
    new-instance p1, Ljava/util/BitSet;
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    invoke-direct { p1, v0 }, Ljava/util/BitSet;-><init>(I)V
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:Ljava/util/BitSet;
  .line 6
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    new-array p1, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    const/4 p1, 0
  :L0
  .line 7
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge p1, v0, :L1
  .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    invoke-direct { v1, p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    aput-object v1, v0, p1
    add-int/lit8 p1, p1, 1
    goto :L0
  :L1
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
  :L2
    return-void
.end method

.method public K0(Landroid/view/accessibility/AccessibilityEvent;)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->K0(Landroid/view/accessibility/AccessibilityEvent;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-lez v0, :L2
    const/4 v0, 0
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e2(Z)Landroid/view/View;
    move-result-object v1
  .line 4
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d2(Z)Landroid/view/View;
    move-result-object v0
    if-eqz v1, :L2
    if-nez v0, :L0
    goto :L2
  :L0
  .line 5
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v1
  .line 6
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v0
    if-ge v1, v0, :L1
  .line 7
    invoke-virtual { p1, v1 }, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V
  .line 8
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V
    goto :L2
  :L1
  .line 9
    invoke-virtual { p1, v0 }, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V
  .line 10
    invoke-virtual { p1, v1 }, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V
    nop
  :L2
    return-void
.end method

.method public L1()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method M2(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)Z
  .registers 8
  .line 1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L20
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    const/4 v2, -1
    if-ne v0, v2, :L0
    goto/16 :L20
  :L0
    const/high16 v3, -32768
    if-ltz v0, :L19
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    if-lt v0, p1, :L1
    goto/16 :L19
  :L1
  .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    const/4 v0, 1
    if-eqz p1, :L3
    iget v4, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
    if-eq v4, v2, :L3
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
    if-ge p1, v0, :L2
    goto :L3
  :L2
  .line 4
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
  .line 5
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I
    goto/16 :L18
  :L3
  .line 6
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->C(I)Landroid/view/View;
    move-result-object p1
    if-eqz p1, :L14
  .line 7
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eqz v1, :L4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k2()I
    move-result v1
    goto :L5
  :L4
  .line 8
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2()I
    move-result v1
  :L5
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I
  .line 9
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:I
    if-eq v1, v3, :L8
  .line 10
    iget-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
    if-eqz v1, :L6
  .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:I
    sub-int/2addr v1, v2
  .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p1
    sub-int/2addr v1, p1
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    goto :L7
  :L6
  .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v1
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:I
    add-int/2addr v1, v2
  .line 14
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result p1
    sub-int/2addr v1, p1
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
  :L7
    return v0
  :L8
  .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v1
  .line 16
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->n()I
    move-result v2
    if-le v1, v2, :L11
  .line 17
    iget-boolean p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
    if-eqz p1, :L9
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 18
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result p1
    goto :L10
  :L9
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 19
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/i;->m()I
    move-result p1
  :L10
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    return v0
  :L11
  .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1, p1 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 21
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v2
    sub-int/2addr v1, v2
    if-gez v1, :L12
    neg-int p1, v1
  .line 22
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    return v0
  :L12
  .line 23
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 24
    invoke-virtual { v2, p1 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result p1
    sub-int/2addr v1, p1
    if-gez v1, :L13
  .line 25
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    return v0
  :L13
  .line 26
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I
    goto :L18
  :L14
  .line 27
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I
  .line 28
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:I
    if-ne v2, v3, :L16
  .line 29
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R1(I)I
    move-result p1
    if-ne p1, v0, :L15
    const/4 v1, 1
  :L15
  .line 30
    iput-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z
  .line 31
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()V
    goto :L17
  :L16
  .line 32
    invoke-virtual { p2, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b(I)V
  :L17
  .line 33
    iput-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z
  :L18
    return v0
  :L19
  .line 34
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
  .line 35
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:I
  :L20
    return v1
.end method

.method public N(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 5
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    return p1
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->N(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method N2(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)V
  .registers 4
  .line 1
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M2(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L2(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;)Z
    move-result p1
    if-eqz p1, :L1
    return-void
  :L1
  .line 3
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()V
    const/4 p1, 0
  .line 4
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I
    return-void
.end method

.method O1()Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    const/4 v1, 0
    aget-object v0, v0, v1
    const/high16 v2, -32768
    invoke-virtual { v0, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v0
    const/4 v3, 1
    const/4 v4, 1
  :L0
  .line 2
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v4, v5, :L2
  .line 3
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v5, v5, v4
    invoke-virtual { v5, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v5
    if-eq v5, v0, :L1
    return v1
  :L1
    add-int/lit8 v4, v4, 1
    goto :L0
  :L2
    return v3
.end method

.method public P0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 11
  .line 1
    invoke-virtual { p3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
  .line 2
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    if-nez p2, :L0
  .line 3
    invoke-super { p0, p3, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->O0(Landroid/view/View;Landroidx/core/view/e0/c;)V
    return-void
  :L0
  .line 4
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 p3, 1
    if-nez p2, :L3
  .line 6
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()I
    move-result v0
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz p1, :L1
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    move v1, p3
    goto :L2
  :L1
    const/4 v1, 1
  :L2
    const/4 v2, -1
    const/4 v3, -1
    const/4 v4, 0
    const/4 v5, 0
  .line 7
    invoke-static/range { v0 .. v5 }, Landroidx/core/view/e0/c$c;->a(IIIIZZ)Landroidx/core/view/e0/c$c;
    move-result-object p1
    invoke-virtual { p4, p1 }, Landroidx/core/view/e0/c;->Z(Ljava/lang/Object;)V
    goto :L6
  :L3
    const/4 v0, -1
    const/4 v1, -1
  .line 8
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()I
    move-result v2
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz p1, :L4
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    move v3, p3
    goto :L5
  :L4
    const/4 v3, 1
  :L5
    const/4 v4, 0
    const/4 v5, 0
  .line 9
    invoke-static/range { v0 .. v5 }, Landroidx/core/view/e0/c$c;->a(IIIIZZ)Landroidx/core/view/e0/c$c;
    move-result-object p1
    invoke-virtual { p4, p1 }, Landroidx/core/view/e0/c;->Z(Ljava/lang/Object;)V
  :L6
    return-void
.end method

.method P1()Z
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    const/4 v1, 0
    aget-object v0, v0, v1
    const/high16 v2, -32768
    invoke-virtual { v0, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v0
    const/4 v3, 1
    const/4 v4, 1
  :L0
  .line 2
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v4, v5, :L2
  .line 3
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v5, v5, v4
    invoke-virtual { v5, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v5
    if-eq v5, v0, :L1
    return v1
  :L1
    add-int/lit8 v4, v4, 1
    goto :L0
  :L2
    return v3
.end method

.method P2(I)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    div-int v0, p1, v0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:I
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:Landroidx/recyclerview/widget/i;
  .line 3
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->k()I
    move-result v0
  .line 4
    invoke-static { p1, v0 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:I
    return-void
.end method

.method public R0(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 4
    const/4 p1, 1
  .line 1
    invoke-direct { p0, p2, p3, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q2(III)V
    return-void
.end method

.method public S0(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b()V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return-void
.end method

.method S1()Z
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L10
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:I
    if-eqz v0, :L10
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->r0()Z
    move-result v0
    if-nez v0, :L0
    goto :L10
  :L0
  .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eqz v0, :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k2()I
    move-result v0
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2()I
    move-result v2
    goto :L2
  :L1
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2()I
    move-result v0
  .line 6
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k2()I
    move-result v2
  :L2
    const/4 v3, 1
    if-nez v0, :L3
  .line 7
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r2()Landroid/view/View;
    move-result-object v4
    if-eqz v4, :L3
  .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b()V
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->u1()V
  .line 10
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return v3
  :L3
  .line 11
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z
    if-nez v4, :L4
    return v1
  :L4
  .line 12
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    const/4 v5, -1
    if-eqz v4, :L5
    const/4 v4, -1
    goto :L6
  :L5
    const/4 v4, 1
  :L6
  .line 13
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    add-int/2addr v2, v3
  .line 14
    invoke-virtual { v6, v0, v2, v4, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    move-result-object v6
    if-nez v6, :L7
  .line 15
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z
  .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { v0, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d(I)I
    return v1
  :L7
  .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    mul-int/lit8 v4, v4, -1
  .line 18
    invoke-virtual { v1, v0, v2, v4, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;
    move-result-object v0
    if-nez v0, :L8
  .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d(I)I
    goto :L9
  :L8
  .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$a;->b:I
    add-int/2addr v0, v3
    invoke-virtual { v1, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d(I)I
  :L9
  .line 21
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->u1()V
  .line 22
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return v3
  :L10
    return v1
.end method

.method public T0(Landroidx/recyclerview/widget/RecyclerView;III)V
  .registers 5
    const/16 p1, 8
  .line 1
    invoke-direct { p0, p2, p3, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q2(III)V
    return-void
.end method

.method public U0(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 4
    const/4 p1, 2
  .line 1
    invoke-direct { p0, p2, p3, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q2(III)V
    return-void
.end method

.method public W0(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
  .registers 5
    const/4 p1, 4
  .line 1
    invoke-direct { p0, p2, p3, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q2(III)V
    return-void
.end method

.method public X0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 4
    const/4 v0, 1
  .line 1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Z)V
    return-void
.end method

.method public Y0(Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->Y0(Landroidx/recyclerview/widget/RecyclerView$z;)V
    const/4 p1, -1
  .line 2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    const/high16 p1, -32768
  .line 3
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:I
    const/4 p1, 0
  .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
  .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c()V
    return-void
.end method

.method public a(I)Landroid/graphics/PointF;
  .registers 5
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R1(I)I
    move-result p1
  .line 2
    new-instance v0, Landroid/graphics/PointF;
    invoke-direct { v0 }, Landroid/graphics/PointF;-><init>()V
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 3
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 v2, 0
    if-nez v1, :L1
    int-to-float p1, p1
  .line 4
    iput p1, v0, Landroid/graphics/PointF;->x:F
  .line 5
    iput v2, v0, Landroid/graphics/PointF;->y:F
    goto :L2
  :L1
  .line 6
    iput v2, v0, Landroid/graphics/PointF;->x:F
    int-to-float p1, p1
  .line 7
    iput p1, v0, Landroid/graphics/PointF;->y:F
  :L2
    return-object v0
.end method

.method public c1(Landroid/os/Parcelable;)V
  .registers 3
  .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-eqz v0, :L0
  .line 2
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
  :L0
    return-void
.end method

.method public d1()Landroid/os/Parcelable;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    invoke-direct { v0, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;)V
    return-object v0
  :L0
  .line 3
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;-><init>()V
  .line 4
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->i:Z
  .line 5
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j:Z
  .line 6
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Z
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->k:Z
  .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    const/4 v2, 0
    if-eqz v1, :L1
    iget-object v3, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:[I
    if-eqz v3, :L1
  .line 8
    iput-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g:[I
  .line 9
    array-length v3, v3
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I
  .line 10
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:Ljava/util/List;
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->h:Ljava/util/List;
    goto :L2
  :L1
  .line 11
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I
  :L2
  .line 12
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v1
    if-lez v1, :L9
  .line 13
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z
    if-eqz v1, :L3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k2()I
    move-result v1
    goto :L4
  :L3
  .line 14
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2()I
    move-result v1
  :L4
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
  .line 15
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f2()I
    move-result v1
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I
  .line 16
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
  .line 17
    new-array v1, v1, [I
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:[I
  :L5
  .line 18
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge v2, v1, :L10
  .line 19
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z
    const/high16 v3, -32768
    if-eqz v1, :L6
  .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v2
    invoke-virtual { v1, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v1
    if-eq v1, v3, :L8
  .line 21
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v3
    goto :L7
  :L6
  .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v1, v1, v2
    invoke-virtual { v1, v3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v1
    if-eq v1, v3, :L8
  .line 23
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v3
  :L7
    sub-int/2addr v1, v3
  :L8
  .line 24
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:[I
    aput v1, v3, v2
    add-int/lit8 v2, v2, 1
    goto :L5
  :L9
    const/4 v1, -1
  .line 25
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
  .line 26
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I
  .line 27
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I
  :L10
    return-object v0
.end method

.method d2(Z)Landroid/view/View;
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v2
    add-int/lit8 v2, v2, -1
    const/4 v3, 0
  :L0
    if-ltz v2, :L5
  .line 4
    invoke-virtual { p0, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v4
  .line 5
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v5, v4 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v5
  .line 6
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v6, v4 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v6
    if-le v6, v0, :L4
    if-lt v5, v1, :L1
    goto :L4
  :L1
    if-le v6, v1, :L3
    if-nez p1, :L2
    goto :L3
  :L2
    if-nez v3, :L4
    move-object v3, v4
    goto :L4
  :L3
    return-object v4
  :L4
    add-int/lit8 v2, v2, -1
    goto :L0
  :L5
    return-object v3
.end method

.method public e1(I)V
  .registers 2
    if-nez p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S1()Z
  :L0
    return-void
.end method

.method e2(Z)Landroid/view/View;
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v2
    const/4 v3, 0
    const/4 v4, 0
  :L0
    if-ge v4, v2, :L5
  .line 4
    invoke-virtual { p0, v4 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v5
  .line 5
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v6, v5 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v6
  .line 6
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v7, v5 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v7
    if-le v7, v0, :L4
    if-lt v6, v1, :L1
    goto :L4
  :L1
    if-ge v6, v0, :L3
    if-nez p1, :L2
    goto :L3
  :L2
    if-nez v3, :L4
    move-object v3, v5
    goto :L4
  :L3
    return-object v5
  :L4
    add-int/lit8 v4, v4, 1
    goto :L0
  :L5
    return-object v3
.end method

.method f2()I
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    const/4 v1, 1
    if-eqz v0, :L0
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d2(Z)Landroid/view/View;
    move-result-object v0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e2(Z)Landroid/view/View;
    move-result-object v0
  :L1
    if-nez v0, :L2
    const/4 v0, -1
    goto :L3
  :L2
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v0
  :L3
    return v0
.end method

.method public g(Ljava/lang/String;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->g(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method j2()I
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v1
  :L1
    return v1
.end method

.method public k()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public k0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-nez v0, :L0
  .line 2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    return p1
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$n;->k0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method k2()I
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    add-int/lit8 v0, v0, -1
  .line 2
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v0
  :L1
    return v0
.end method

.method public l()Z
  .registers 3
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public m(Landroidx/recyclerview/widget/RecyclerView$o;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
    return p1
.end method

.method public o(IILandroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$n$c;)V
  .registers 9
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    if-nez v0, :L0
    goto :L1
  :L0
    move p1, p2
  :L1
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result p2
    if-eqz p2, :L11
    if-nez p1, :L2
    goto :L11
  :L2
  .line 3
    invoke-virtual { p0, p1, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y2(ILandroidx/recyclerview/widget/RecyclerView$z;)V
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:[I
    if-eqz p1, :L3
    array-length p1, p1
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge p1, p2, :L4
  :L3
  .line 5
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    new-array p1, p1, [I
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:[I
  :L4
    const/4 p1, 0
    const/4 p2, 0
    const/4 v0, 0
  :L5
  .line 6
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    if-ge p2, v1, :L9
  .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v2, v1, Landroidx/recyclerview/widget/f;->d:I
    const/4 v3, -1
    if-ne v2, v3, :L6
    iget v1, v1, Landroidx/recyclerview/widget/f;->f:I
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v2, v2, p2
  .line 8
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->p(I)I
    move-result v2
    goto :L7
  :L6
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    aget-object v2, v2, p2
    iget v1, v1, Landroidx/recyclerview/widget/f;->g:I
  .line 9
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->l(I)I
    move-result v1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v2, v2, Landroidx/recyclerview/widget/f;->g:I
  :L7
    sub-int/2addr v1, v2
    if-ltz v1, :L8
  .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:[I
    aput v1, v2, v0
    add-int/lit8 v0, v0, 1
  :L8
    add-int/lit8 p2, p2, 1
    goto :L5
  :L9
  .line 11
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:[I
    invoke-static { p2, p1, v0 }, Ljava/util/Arrays;->sort([III)V
  :L10
    if-ge p1, v0, :L11
  .line 12
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    invoke-virtual { p2, p3 }, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    move-result p2
    if-eqz p2, :L11
  .line 13
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget p2, p2, Landroidx/recyclerview/widget/f;->c:I
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:[I
    aget v1, v1, p1
    invoke-interface { p4, p2, v1 }, Landroidx/recyclerview/widget/RecyclerView$n$c;->a(II)V
  .line 14
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v1, p2, Landroidx/recyclerview/widget/f;->c:I
    iget v2, p2, Landroidx/recyclerview/widget/f;->d:I
    add-int/2addr v1, v2
    iput v1, p2, Landroidx/recyclerview/widget/f;->c:I
    add-int/lit8 p1, p1, 1
    goto :L10
  :L11
    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method r2()Landroid/view/View;
  .registers 13
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
  .line 2
    new-instance v2, Ljava/util/BitSet;
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    invoke-direct { v2, v3 }, Ljava/util/BitSet;-><init>(I)V
  .line 3
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:I
    const/4 v4, 0
    invoke-virtual { v2, v4, v3, v1 }, Ljava/util/BitSet;->set(IIZ)V
  .line 4
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I
    const/4 v5, -1
    if-ne v3, v1, :L0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()Z
    move-result v3
    if-eqz v3, :L0
    const/4 v3, 1
    goto :L1
  :L0
    const/4 v3, -1
  :L1
  .line 5
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eqz v6, :L2
    const/4 v6, -1
    goto :L3
  :L2
    add-int/lit8 v0, v0, 1
    move v6, v0
    const/4 v0, 0
  :L3
    if-ge v0, v6, :L4
    const/4 v5, 1
  :L4
    if-eq v0, v6, :L19
  .line 6
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v7
  .line 7
    invoke-virtual { v7 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v8
    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 8
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    invoke-virtual { v2, v9 }, Ljava/util/BitSet;->get(I)Z
    move-result v9
    if-eqz v9, :L6
  .line 9
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    invoke-direct { p0, v9 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T1(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;)Z
    move-result v9
    if-eqz v9, :L5
    return-object v7
  :L5
  .line 10
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    invoke-virtual { v2, v9 }, Ljava/util/BitSet;->clear(I)V
  :L6
  .line 11
    iget-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    if-eqz v9, :L7
    goto :L18
  :L7
    add-int v9, v0, v5
    if-eq v9, v6, :L18
  .line 12
    invoke-virtual { p0, v9 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v9
  .line 13
    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Z
    if-eqz v10, :L9
  .line 14
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v10, v7 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v10
  .line 15
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v11, v9 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v11
    if-ge v10, v11, :L8
    return-object v7
  :L8
    if-ne v10, v11, :L12
    goto :L11
  :L9
  .line 16
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v10, v7 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v10
  .line 17
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v11, v9 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v11
    if-le v10, v11, :L10
    return-object v7
  :L10
    if-ne v10, v11, :L12
  :L11
    const/4 v10, 1
    goto :L13
  :L12
    const/4 v10, 0
  :L13
    if-eqz v10, :L18
  .line 18
    invoke-virtual { v9 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v9
    check-cast v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
  .line 19
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    sub-int/2addr v8, v9
    if-gez v8, :L14
    const/4 v8, 1
    goto :L15
  :L14
    const/4 v8, 0
  :L15
    if-gez v3, :L16
    const/4 v9, 1
    goto :L17
  :L16
    const/4 v9, 0
  :L17
    if-eq v8, v9, :L18
    return-object v7
  :L18
    add-int/2addr v0, v5
    goto :L4
  :L19
    const/4 v0, 0
    return-object v0
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public s0()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:I
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public s2()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b()V
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return-void
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method t2()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->Z()I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
    return v1
.end method

.method public u(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W1(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public w1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 4
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public x1(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
    if-eqz v0, :L0
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I
    if-eq v1, p1, :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->j()V
  :L0
  .line 3
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I
    const/high16 p1, -32768
  .line 4
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:I
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return-void
.end method

.method public y1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 4
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F2(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method y2(ILandroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 7
    const/4 v0, 1
    if-lez p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k2()I
    move-result v1
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v1, -1
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2()I
    move-result v2
    move v1, v2
    const/4 v2, -1
  :L1
  .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iput-boolean v0, v3, Landroidx/recyclerview/widget/f;->a:Z
  .line 4
    invoke-direct { p0, v1, p2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O2(ILandroidx/recyclerview/widget/RecyclerView$z;)V
  .line 5
    invoke-direct { p0, v2 }, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G2(I)V
  .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Landroidx/recyclerview/widget/f;
    iget v0, p2, Landroidx/recyclerview/widget/f;->d:I
    add-int/2addr v1, v0
    iput v1, p2, Landroidx/recyclerview/widget/f;->c:I
  .line 7
    invoke-static { p1 }, Ljava/lang/Math;->abs(I)I
    move-result p1
    iput p1, p2, Landroidx/recyclerview/widget/f;->b:I
    return-void
.end method
