.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/recyclerview/widget/GridLayoutManager$b;,
    Landroidx/recyclerview/widget/GridLayoutManager$a;,
    Landroidx/recyclerview/widget/GridLayoutManager$c;
  }
.end annotation

.field I:Z

.field J:I

.field K:[I

.field L:[Landroid/view/View;

.field final M:Landroid/util/SparseIntArray;

.field final N:Landroid/util/SparseIntArray;

.field O:Landroidx/recyclerview/widget/GridLayoutManager$c;

.field final P:Landroid/graphics/Rect;

.field private Q:Z

.method public constructor <init>(Landroid/content/Context;IIZ)V
  .registers 5
  .line 10
    invoke-direct { p0, p1, p3, p4 }, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V
    const/4 p1, 0
  .line 11
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Z
    const/4 p1, -1
  .line 12
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
  .line 13
    new-instance p1, Landroid/util/SparseIntArray;
    invoke-direct { p1 }, Landroid/util/SparseIntArray;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;
  .line 14
    new-instance p1, Landroid/util/SparseIntArray;
    invoke-direct { p1 }, Landroid/util/SparseIntArray;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroid/util/SparseIntArray;
  .line 15
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager$a;
    invoke-direct { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
  .line 16
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->P:Landroid/graphics/Rect;
  .line 17
    invoke-virtual { p0, p2 }, Landroidx/recyclerview/widget/GridLayoutManager;->e3(I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
  .registers 6
  .line 1
    invoke-direct { p0, p1, p2, p3, p4 }, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Z
    const/4 v0, -1
  .line 3
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
  .line 4
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;
  .line 5
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroid/util/SparseIntArray;
  .line 6
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$a;
    invoke-direct { v0 }, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
  .line 7
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->P:Landroid/graphics/Rect;
  .line 8
    invoke-static { p1, p2, p3, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->i0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$n$d;
    move-result-object p1
  .line 9
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$n$d;->b:I
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager;->e3(I)V
    return-void
.end method

.method private N2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;IZ)V
  .registers 9
    const/4 v0, 0
    const/4 v1, -1
    if-eqz p4, :L0
    const/4 v1, 1
    move v1, p3
    const/4 p3, 0
    const/4 p4, 1
    goto :L1
  :L0
    add-int/lit8 p3, p3, -1
    const/4 p4, -1
  :L1
    if-eq p3, v1, :L2
  .line 1
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;
    aget-object v2, v2, p3
  .line 2
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$b;
  .line 3
    invoke-virtual { p0, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v2
    invoke-direct { p0, p1, p2, v2 }, Landroidx/recyclerview/widget/GridLayoutManager;->a3(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v2
    iput v2, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I
  .line 4
    iput v0, v3, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
    add-int/2addr v0, v2
    add-int/2addr p3, p4
    goto :L1
  :L2
    return-void
.end method

.method private O2()V
  .registers 7
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v2
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$b;
  .line 3
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result v3
  .line 4
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I
    move-result v5
    invoke-virtual { v4, v3, v5 }, Landroid/util/SparseIntArray;->put(II)V
  .line 5
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroid/util/SparseIntArray;
    invoke-virtual { v2 }, Landroidx/recyclerview/widget/GridLayoutManager$b;->e()I
    move-result v2
    invoke-virtual { v4, v3, v2 }, Landroid/util/SparseIntArray;->put(II)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method

.method private P2(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-static { v0, v1, p1 }, Landroidx/recyclerview/widget/GridLayoutManager;->Q2([III)[I
    move-result-object p1
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    return-void
.end method

.method static Q2([III)[I
  .registers 8
    const/4 v0, 1
    if-eqz p0, :L0
  .line 1
    array-length v1, p0
    add-int/lit8 v2, p1, 1
    if-ne v1, v2, :L0
    array-length v1, p0
    sub-int/2addr v1, v0
    aget v1, p0, v1
    if-eq v1, p2, :L1
  :L0
    add-int/lit8 p0, p1, 1
  .line 2
    new-array p0, p0, [I
  :L1
    const/4 v1, 0
  .line 3
    aput v1, p0, v1
  .line 4
    div-int v2, p2, p1
  .line 5
    rem-int/2addr p2, p1
    const/4 v3, 0
  :L2
    if-gt v0, p1, :L5
    add-int/2addr v1, p2
    if-lez v1, :L3
    sub-int v4, p1, v1
    if-ge v4, p2, :L3
    add-int/lit8 v4, v2, 1
    sub-int/2addr v1, p1
    goto :L4
  :L3
    move v4, v2
  :L4
    add-int/2addr v3, v4
  .line 6
    aput v3, p0, v0
    add-int/lit8 v0, v0, 1
    goto :L2
  :L5
    return-object p0
.end method

.method private R2()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;
    invoke-virtual { v0 }, Landroid/util/SparseIntArray;->clear()V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroid/util/SparseIntArray;
    invoke-virtual { v0 }, Landroid/util/SparseIntArray;->clear()V
    return-void
.end method

.method private S2(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 11
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L5
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    if-nez v0, :L0
    goto/16 :L5
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->r2()Z
    move-result v0
    xor-int/lit8 v2, v0, 1
    const/4 v3, 1
  .line 4
    invoke-virtual { p0, v2, v3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Y1(ZZ)Landroid/view/View;
    move-result-object v2
    xor-int/lit8 v4, v0, 1
  .line 5
    invoke-virtual { p0, v4, v3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->X1(ZZ)Landroid/view/View;
    move-result-object v4
    if-eqz v2, :L5
    if-nez v4, :L1
    goto/16 :L5
  :L1
  .line 6
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p0, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v6
    iget v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { v5, v6, v7 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result v5
  .line 7
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p0, v4 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v7
    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { v6, v7, v8 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result v6
  .line 8
    invoke-static { v5, v6 }, Ljava/lang/Math;->min(II)I
    move-result v7
  .line 9
    invoke-static { v5, v6 }, Ljava/lang/Math;->max(II)I
    move-result v5
  .line 10
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    sub-int/2addr p1, v3
    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { v6, p1, v8 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result p1
    add-int/2addr p1, v3
  .line 11
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eqz v6, :L2
    sub-int/2addr p1, v5
    sub-int/2addr p1, v3
  .line 12
    invoke-static { v1, p1 }, Ljava/lang/Math;->max(II)I
    move-result p1
    goto :L3
  :L2
  .line 13
    invoke-static { v1, v7 }, Ljava/lang/Math;->max(II)I
    move-result p1
  :L3
    if-nez v0, :L4
    return p1
  :L4
  .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0, v4 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v0
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 15
    invoke-virtual { v1, v2 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v1
    sub-int/2addr v0, v1
  .line 16
    invoke-static { v0 }, Ljava/lang/Math;->abs(I)I
    move-result v0
  .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
  .line 18
    invoke-virtual { p0, v2 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v5
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { v1, v5, v6 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result v1
  .line 19
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p0, v4 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v4
    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { v5, v4, v6 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result v4
    sub-int/2addr v4, v1
    add-int/2addr v4, v3
    int-to-float v0, v0
    int-to-float v1, v4
    div-float/2addr v0, v1
    int-to-float p1, p1
    mul-float p1, p1, v0
  .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 21
    invoke-virtual { v1, v2 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v1
    sub-int/2addr v0, v1
    int-to-float v0, v0
    add-float/2addr p1, v0
  .line 22
    invoke-static { p1 }, Ljava/lang/Math;->round(F)I
    move-result p1
    return p1
  :L5
    return v1
.end method

.method private T2(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v0
    const/4 v1, 0
    if-eqz v0, :L3
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    if-nez v0, :L0
    goto :L3
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->r2()Z
    move-result v0
    const/4 v2, 1
    xor-int/2addr v0, v2
    invoke-virtual { p0, v0, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Y1(ZZ)Landroid/view/View;
    move-result-object v0
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->r2()Z
    move-result v3
    xor-int/2addr v3, v2
    invoke-virtual { p0, v3, v2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->X1(ZZ)Landroid/view/View;
    move-result-object v3
    if-eqz v0, :L3
    if-nez v3, :L1
    goto :L3
  :L1
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->r2()Z
    move-result v1
    if-nez v1, :L2
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
  .line 7
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    sub-int/2addr p1, v2
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
  .line 8
    invoke-virtual { v0, p1, v1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result p1
    add-int/2addr p1, v2
    return p1
  :L2
  .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1, v3 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 10
    invoke-virtual { v4, v0 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v4
    sub-int/2addr v1, v4
  .line 11
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
  .line 12
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v0
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { v4, v0, v5 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result v0
  .line 13
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p0, v3 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v3
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { v4, v3, v5 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result v3
  .line 14
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p1
    sub-int/2addr p1, v2
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { v4, p1, v5 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result p1
    add-int/2addr p1, v2
    sub-int/2addr v3, v0
    add-int/2addr v3, v2
    int-to-float v0, v1
    int-to-float v1, v3
    div-float/2addr v0, v1
    int-to-float p1, p1
    mul-float v0, v0, p1
    float-to-int p1, v0
    return p1
  :L3
    return v1
.end method

.method private U2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
  .registers 9
    const/4 v0, 1
    if-ne p4, v0, :L0
    const/4 p4, 1
    goto :L1
  :L0
    const/4 p4, 0
  :L1
  .line 1
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
    invoke-direct { p0, p1, p2, v1 }, Landroidx/recyclerview/widget/GridLayoutManager;->Z2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v1
    if-eqz p4, :L3
  :L2
    if-lez v1, :L6
  .line 2
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
    if-lez p4, :L6
    add-int/lit8 p4, p4, -1
  .line 3
    iput p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
  .line 4
    invoke-direct { p0, p1, p2, p4 }, Landroidx/recyclerview/widget/GridLayoutManager;->Z2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v1
    goto :L2
  :L3
  .line 5
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result p4
    sub-int/2addr p4, v0
  .line 6
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
  :L4
    if-ge v0, p4, :L5
    add-int/lit8 v2, v0, 1
  .line 7
    invoke-direct { p0, p1, p2, v2 }, Landroidx/recyclerview/widget/GridLayoutManager;->Z2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v3
    if-le v3, v1, :L5
    move v0, v2
    move v1, v3
    goto :L4
  :L5
  .line 8
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I
  :L6
    return-void
.end method

.method private V2()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;
    if-eqz v0, :L0
    array-length v0, v0
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    if-eq v0, v1, :L1
  :L0
  .line 2
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    new-array v0, v0, [Landroid/view/View;
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;
  :L1
    return-void
.end method

.method private Y2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
  .registers 4
  .line 1
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p2
    if-nez p2, :L0
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { p1, p3, p2 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result p1
    return p1
  :L0
  .line 3
    invoke-virtual { p1, p3 }, Landroidx/recyclerview/widget/RecyclerView$u;->f(I)I
    move-result p1
    const/4 p2, -1
    if-ne p1, p2, :L1
  .line 4
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "Cannot find span size for pre layout position. "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 p1, 0
    return p1
  :L1
  .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { p2, p1, p3 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I
    move-result p1
    return p1
.end method

.method private Z2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
  .registers 5
  .line 1
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p2
    if-nez p2, :L0
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { p1, p3, p2 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I
    move-result p1
    return p1
  :L0
  .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroid/util/SparseIntArray;
    const/4 v0, -1
    invoke-virtual { p2, p3, v0 }, Landroid/util/SparseIntArray;->get(II)I
    move-result p2
    if-eq p2, v0, :L1
    return p2
  :L1
  .line 4
    invoke-virtual { p1, p3 }, Landroidx/recyclerview/widget/RecyclerView$u;->f(I)I
    move-result p1
    if-ne p1, v0, :L2
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 p1, 0
    return p1
  :L2
  .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { p2, p1, p3 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I
    move-result p1
    return p1
.end method

.method private a3(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
  .registers 5
  .line 1
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result p2
    if-nez p2, :L0
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1, p3 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I
    move-result p1
    return p1
  :L0
  .line 3
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;
    const/4 v0, -1
    invoke-virtual { p2, p3, v0 }, Landroid/util/SparseIntArray;->get(II)I
    move-result p2
    if-eq p2, v0, :L1
    return p2
  :L1
  .line 4
    invoke-virtual { p1, p3 }, Landroidx/recyclerview/widget/RecyclerView$u;->f(I)I
    move-result p1
    if-ne p1, v0, :L2
  .line 5
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    const/4 p1, 1
    return p1
  :L2
  .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I
    move-result p1
    return p1
.end method

.method private b3(FI)V
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    int-to-float v0, v0
    mul-float p1, p1, v0
    invoke-static { p1 }, Ljava/lang/Math;->round(F)I
    move-result p1
  .line 2
    invoke-static { p1, p2 }, Ljava/lang/Math;->max(II)I
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager;->P2(I)V
    return-void
.end method

.method private c3(Landroid/view/View;IZ)V
  .registers 12
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;
  .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
  .line 3
    iget v2, v1, Landroid/graphics/Rect;->top:I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I
    add-int/2addr v2, v3
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v2, v3
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v2, v3
  .line 4
    iget v3, v1, Landroid/graphics/Rect;->left:I
    iget v1, v1, Landroid/graphics/Rect;->right:I
    add-int/2addr v3, v1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v3, v1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/2addr v3, v1
  .line 5
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I
    invoke-virtual { p0, v1, v4 }, Landroidx/recyclerview/widget/GridLayoutManager;->W2(II)I
    move-result v1
  .line 6
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v5, 0
    const/4 v6, 1
    if-ne v4, v6, :L0
  .line 7
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
    invoke-static { v1, p2, v3, v4, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result p2
  .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->n()I
    move-result v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->X()I
    move-result v3
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    invoke-static { v1, v3, v2, v0, v6 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result v0
    goto :L1
  :L0
  .line 9
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    invoke-static { v1, p2, v2, v4, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result p2
  .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->n()I
    move-result v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->p0()I
    move-result v2
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
    invoke-static { v1, v2, v3, v0, v6 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result v0
    move v7, v0
    move v0, p2
    move p2, v7
  :L1
  .line 11
    invoke-direct { p0, p1, p2, v0, p3 }, Landroidx/recyclerview/widget/GridLayoutManager;->d3(Landroid/view/View;IIZ)V
    return-void
.end method

.method private d3(Landroid/view/View;IIZ)V
  .registers 6
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$o;
    if-eqz p4, :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->H1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
    move-result p4
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->F1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$o;)Z
    move-result p4
  :L1
    if-eqz p4, :L2
  .line 4
    invoke-virtual { p1, p2, p3 }, Landroid/view/View;->measure(II)V
  :L2
    return-void
.end method

.method private f3()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->p2()I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->o0()I
    move-result v0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v1
    sub-int/2addr v0, v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v1
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->W()I
    move-result v0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result v1
    sub-int/2addr v0, v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v1
  :L1
    sub-int/2addr v0, v1
  .line 4
    invoke-direct { p0, v0 }, Landroidx/recyclerview/widget/GridLayoutManager;->P2(I)V
    return-void
.end method

.method public C1(Landroid/graphics/Rect;II)V
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->C1(Landroid/graphics/Rect;II)V
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->f0()I
    move-result v1
    add-int/2addr v0, v1
  .line 4
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->d0()I
    move-result v2
    add-int/2addr v1, v2
  .line 5
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v3, 1
    if-ne v2, v3, :L1
  .line 6
    invoke-virtual { p1 }, Landroid/graphics/Rect;->height()I
    move-result p1
    add-int/2addr p1, v1
  .line 7
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->b0()I
    move-result v1
    invoke-static { p3, p1, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p1
  .line 8
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    array-length v1, p3
    sub-int/2addr v1, v3
    aget p3, p3, v1
    add-int/2addr p3, v0
  .line 9
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->c0()I
    move-result v0
  .line 10
    invoke-static { p2, p3, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p2
    goto :L2
  :L1
  .line 11
    invoke-virtual { p1 }, Landroid/graphics/Rect;->width()I
    move-result p1
    add-int/2addr p1, v0
  .line 12
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->c0()I
    move-result v0
    invoke-static { p2, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p2
  .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    array-length v0, p1
    sub-int/2addr v0, v3
    aget p1, p1, v0
    add-int/2addr p1, v1
  .line 14
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->b0()I
    move-result v0
  .line 15
    invoke-static { p3, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$n;->n(III)I
    move-result p1
  :L2
  .line 16
    invoke-virtual { p0, p2, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->B1(II)V
    return-void
.end method

.method public D()Landroidx/recyclerview/widget/RecyclerView$o;
  .registers 4
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v1, -2
    const/4 v2, -1
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;
    invoke-direct { v0, v1, v2 }, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V
    return-object v0
  :L0
  .line 3
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;
    invoke-direct { v0, v2, v1 }, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(II)V
    return-object v0
.end method

.method public E(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;
  .registers 4
  .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;
    invoke-direct { v0, p1, p2 }, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-object v0
.end method

.method public E2(Z)V
  .registers 3
    if-nez p1, :L0
    const/4 p1, 0
  .line 1
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->E2(Z)V
    return-void
  :L0
  .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;
    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"
    invoke-direct { p1, v0 }, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public F(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$o;
  .registers 3
  .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :L0
  .line 2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct { v0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    return-object v0
  :L0
  .line 3
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$b;
    invoke-direct { v0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-object v0
.end method

.method public J0(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
  .registers 28
    move-object/from16 v0, p0
    move-object/from16 v1, p3
    move-object/from16 v2, p4
  .line 1
    invoke-virtual/range { p0 .. p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->B(Landroid/view/View;)Landroid/view/View;
    move-result-object v3
    const/4 v4, 0
    if-nez v3, :L0
    return-object v4
  :L0
  .line 2
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v5
    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$b;
  .line 3
    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
  .line 4
    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I
    add-int/2addr v5, v6
  .line 5
    invoke-super/range { p0 .. p4 }, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)Landroid/view/View;
    move-result-object v7
    if-nez v7, :L1
    return-object v4
  :L1
    move/from16 v7, p2
  .line 6
    invoke-virtual { v0, v7 }, Landroidx/recyclerview/widget/LinearLayoutManager;->R1(I)I
    move-result v7
    const/4 v9, 1
    if-ne v7, v9, :L2
    const/4 v7, 1
    goto :L3
  :L2
    const/4 v7, 0
  :L3
  .line 7
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z
    if-eq v7, v10, :L4
    const/4 v7, 1
    goto :L5
  :L4
    const/4 v7, 0
  :L5
    const/4 v10, -1
    if-eqz v7, :L6
  .line 8
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v7
    sub-int/2addr v7, v9
    const/4 v11, -1
    const/4 v12, -1
    goto :L7
  :L6
  .line 9
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v7
    move v11, v7
    const/4 v7, 0
    const/4 v12, 1
  :L7
  .line 10
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-ne v13, v9, :L8
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->q2()Z
    move-result v13
    if-eqz v13, :L8
    const/4 v13, 1
    goto :L9
  :L8
    const/4 v13, 0
  :L9
  .line 11
    invoke-direct { v0, v1, v2, v7 }, Landroidx/recyclerview/widget/GridLayoutManager;->Y2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v14
    move v10, v7
    const/4 v8, 0
    const/4 v15, -1
    const/16 v16, -1
    const/16 v17, 0
    move-object v7, v4
  :L10
    if-eq v10, v11, :L36
  .line 12
    invoke-direct { v0, v1, v2, v10 }, Landroidx/recyclerview/widget/GridLayoutManager;->Y2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v9
  .line 13
    invoke-virtual { v0, v10 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v1
    if-ne v1, v3, :L11
    goto/16 :L36
  :L11
  .line 14
    invoke-virtual { v1 }, Landroid/view/View;->hasFocusable()Z
    move-result v18
    if-eqz v18, :L13
    if-eq v9, v14, :L13
    if-eqz v4, :L12
    goto/16 :L36
  :L12
    move-object/from16 v18, v3
    move-object/from16 v21, v7
    move/from16 v19, v8
    move/from16 v20, v11
    move/from16 v7, v16
    move/from16 v8, v17
    goto/16 :L34
  :L13
  .line 15
    invoke-virtual { v1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v9
    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$b;
  .line 16
    iget v2, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
    move-object/from16 v18, v3
  .line 17
    iget v3, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I
    add-int/2addr v3, v2
  .line 18
    invoke-virtual { v1 }, Landroid/view/View;->hasFocusable()Z
    move-result v19
    if-eqz v19, :L14
    if-ne v2, v6, :L14
    if-ne v3, v5, :L14
    return-object v1
  :L14
  .line 19
    invoke-virtual { v1 }, Landroid/view/View;->hasFocusable()Z
    move-result v19
    if-eqz v19, :L15
    if-eqz v4, :L16
  :L15
  .line 20
    invoke-virtual { v1 }, Landroid/view/View;->hasFocusable()Z
    move-result v19
    if-nez v19, :L19
    if-nez v7, :L19
  :L16
    move-object/from16 v21, v7
  :L17
    move/from16 v19, v8
    move/from16 v20, v11
    move/from16 v7, v16
    move/from16 v8, v17
  :L18
    const/4 v11, 1
    goto :L32
  :L19
  .line 21
    invoke-static { v2, v6 }, Ljava/lang/Math;->max(II)I
    move-result v19
  .line 22
    invoke-static { v3, v5 }, Ljava/lang/Math;->min(II)I
    move-result v20
    move-object/from16 v21, v7
    sub-int v7, v20, v19
  .line 23
    invoke-virtual { v1 }, Landroid/view/View;->hasFocusable()Z
    move-result v19
    if-eqz v19, :L24
    if-le v7, v8, :L21
  :L20
    goto :L17
  :L21
    if-ne v7, v8, :L29
    if-le v2, v15, :L22
    const/4 v7, 1
    goto :L23
  :L22
    const/4 v7, 0
  :L23
    if-ne v13, v7, :L29
    goto :L20
  :L24
    if-nez v4, :L29
    move/from16 v19, v8
    move/from16 v20, v11
    const/4 v8, 0
    const/4 v11, 1
  .line 24
    invoke-virtual { v0, v1, v8, v11 }, Landroidx/recyclerview/widget/RecyclerView$n;->y0(Landroid/view/View;ZZ)Z
    move-result v22
    if-eqz v22, :L30
    move/from16 v8, v17
    if-le v7, v8, :L25
    move/from16 v7, v16
    goto :L32
  :L25
    if-ne v7, v8, :L28
    move/from16 v7, v16
    if-le v2, v7, :L26
    goto :L27
  :L26
    const/4 v11, 0
  :L27
    if-ne v13, v11, :L31
    goto :L18
  :L28
    move/from16 v7, v16
    goto :L31
  :L29
    move/from16 v19, v8
    move/from16 v20, v11
  :L30
    move/from16 v7, v16
    move/from16 v8, v17
  :L31
    const/4 v11, 0
  :L32
    if-eqz v11, :L34
  .line 25
    invoke-virtual { v1 }, Landroid/view/View;->hasFocusable()Z
    move-result v11
    if-eqz v11, :L33
  .line 26
    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
  .line 27
    invoke-static { v3, v5 }, Ljava/lang/Math;->min(II)I
    move-result v3
  .line 28
    invoke-static { v2, v6 }, Ljava/lang/Math;->max(II)I
    move-result v2
    sub-int v2, v3, v2
    move v15, v4
    move/from16 v16, v7
    move/from16 v17, v8
    move-object/from16 v7, v21
    move-object v4, v1
    move v8, v2
    goto :L35
  :L33
  .line 29
    iget v7, v9, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
  .line 30
    invoke-static { v3, v5 }, Ljava/lang/Math;->min(II)I
    move-result v3
  .line 31
    invoke-static { v2, v6 }, Ljava/lang/Math;->max(II)I
    move-result v2
    sub-int v17, v3, v2
    move/from16 v16, v7
    move/from16 v8, v19
    move-object v7, v1
    goto :L35
  :L34
    move/from16 v16, v7
    move/from16 v17, v8
    move/from16 v8, v19
    move-object/from16 v7, v21
  :L35
    add-int/2addr v10, v12
    move-object/from16 v1, p3
    move-object/from16 v2, p4
    move-object/from16 v3, v18
    move/from16 v11, v20
    const/4 v9, 1
    goto/16 :L10
  :L36
    move-object/from16 v21, v7
    if-eqz v4, :L37
    goto :L38
  :L37
    move-object/from16 v4, v21
  :L38
    return-object v4
.end method

.method public L1()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$d;
    if-nez v0, :L0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Z
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public N(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 5
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v1, 1
    if-ne v0, v1, :L0
  .line 2
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    return p1
  :L0
  .line 3
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    if-ge v0, v1, :L1
    const/4 p1, 0
    return p1
  :L1
  .line 4
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    sub-int/2addr v0, v1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/recyclerview/widget/GridLayoutManager;->Y2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result p1
    add-int/2addr p1, v1
    return p1
.end method

.method N1(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$n$c;)V
  .registers 9
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 2
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    if-ge v2, v3, :L1
    invoke-virtual { p2, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    move-result v3
    if-eqz v3, :L1
    if-lez v0, :L1
  .line 3
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 4
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I
    invoke-static { v1, v4 }, Ljava/lang/Math;->max(II)I
    move-result v4
    invoke-interface { p3, v3, v4 }, Landroidx/recyclerview/widget/RecyclerView$n$c;->a(II)V
  .line 5
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { v4, v3 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I
    move-result v3
    sub-int/2addr v0, v3
  .line 6
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
    add-int/2addr v3, v4
    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
    return-void
.end method

.method public P0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 12
  .line 1
    invoke-virtual { p3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
  .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$b;
    if-nez v1, :L0
  .line 3
    invoke-super { p0, p3, p4 }, Landroidx/recyclerview/widget/RecyclerView$n;->O0(Landroid/view/View;Landroidx/core/view/e0/c;)V
    return-void
  :L0
  .line 4
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$b;
  .line 5
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView$o;->a()I
    move-result p3
    invoke-direct { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/GridLayoutManager;->Y2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result p1
  .line 6
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-nez p2, :L1
  .line 7
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/GridLayoutManager$b;->e()I
    move-result v1
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I
    move-result v2
    const/4 v4, 1
    const/4 v5, 0
    const/4 v6, 0
    move v3, p1
  .line 8
    invoke-static/range { v1 .. v6 }, Landroidx/core/view/e0/c$c;->a(IIIIZZ)Landroidx/core/view/e0/c$c;
    move-result-object p1
    invoke-virtual { p4, p1 }, Landroidx/core/view/e0/c;->Z(Ljava/lang/Object;)V
    goto :L2
  :L1
    const/4 v2, 1
  .line 9
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/GridLayoutManager$b;->e()I
    move-result v3
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/GridLayoutManager$b;->f()I
    move-result v4
    const/4 v5, 0
    const/4 v6, 0
    move v1, p1
  .line 10
    invoke-static/range { v1 .. v6 }, Landroidx/core/view/e0/c$c;->a(IIIIZZ)Landroidx/core/view/e0/c$c;
    move-result-object p1
    invoke-virtual { p4, p1 }, Landroidx/core/view/e0/c;->Z(Ljava/lang/Object;)V
  :L2
    return-void
.end method

.method public R0(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->h()V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->g()V
    return-void
.end method

.method public S0(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->h()V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->g()V
    return-void
.end method

.method public T0(Landroidx/recyclerview/widget/RecyclerView;III)V
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->h()V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->g()V
    return-void
.end method

.method public U0(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 4
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->h()V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->g()V
    return-void
.end method

.method public W0(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->h()V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->g()V
    return-void
.end method

.method W2(II)I
  .registers 6
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v1, 1
    if-ne v0, v1, :L0
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->q2()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    sub-int v2, v1, p1
    aget v2, v0, v2
    sub-int/2addr v1, p1
    sub-int/2addr v1, p2
    aget p1, v0, v1
    sub-int/2addr v2, p1
    return v2
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    add-int/2addr p2, p1
    aget p2, v0, p2
    aget p1, v0, p1
    sub-int/2addr p2, p1
    return p2
.end method

.method public X0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 4
  .line 1
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/GridLayoutManager;->O2()V
  :L0
  .line 3
    invoke-super { p0, p1, p2 }, Landroidx/recyclerview/widget/LinearLayoutManager;->X0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
  .line 4
    invoke-direct { p0 }, Landroidx/recyclerview/widget/GridLayoutManager;->R2()V
    return-void
.end method

.method public X2()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    return v0
.end method

.method public Y0(Landroidx/recyclerview/widget/RecyclerView$z;)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(Landroidx/recyclerview/widget/RecyclerView$z;)V
    const/4 p1, 0
  .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Z
    return-void
.end method

.method public e3(I)V
  .registers 5
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    if-ne p1, v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Z
    if-lt p1, v0, :L1
  .line 3
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
  .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$c;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->h()V
  .line 5
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->t1()V
    return-void
  :L1
  .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Span count should be at least 1. Provided "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method h2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;III)Landroid/view/View;
  .registers 13
  .line 1
    invoke-virtual { p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->T1()V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/i;->m()I
    move-result v0
  .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v1 }, Landroidx/recyclerview/widget/i;->i()I
    move-result v1
    if-le p4, p3, :L0
    const/4 v2, 1
    goto :L1
  :L0
    const/4 v2, -1
  :L1
    const/4 v3, 0
    move-object v4, v3
  :L2
    if-eq p3, p4, :L8
  .line 4
    invoke-virtual { p0, p3 }, Landroidx/recyclerview/widget/RecyclerView$n;->I(I)Landroid/view/View;
    move-result-object v5
  .line 5
    invoke-virtual { p0, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->h0(Landroid/view/View;)I
    move-result v6
    if-ltz v6, :L7
    if-ge v6, p5, :L7
  .line 6
    invoke-direct { p0, p1, p2, v6 }, Landroidx/recyclerview/widget/GridLayoutManager;->Z2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v6
    if-eqz v6, :L3
    goto :L7
  :L3
  .line 7
    invoke-virtual { v5 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v6
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$o;
    invoke-virtual { v6 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v6
    if-eqz v6, :L4
    if-nez v4, :L7
    move-object v4, v5
    goto :L7
  :L4
  .line 8
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v6, v5 }, Landroidx/recyclerview/widget/i;->g(Landroid/view/View;)I
    move-result v6
    if-ge v6, v1, :L6
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
  .line 9
    invoke-virtual { v6, v5 }, Landroidx/recyclerview/widget/i;->d(Landroid/view/View;)I
    move-result v6
    if-ge v6, v0, :L5
    goto :L6
  :L5
    return-object v5
  :L6
    if-nez v3, :L7
    move-object v3, v5
  :L7
    add-int/2addr p3, v2
    goto :L2
  :L8
    if-eqz v3, :L9
    goto :L10
  :L9
    move-object v3, v4
  :L10
    return-object v3
.end method

.method public k0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 5
  .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-nez v0, :L0
  .line 2
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    return p1
  :L0
  .line 3
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    const/4 v1, 1
    if-ge v0, v1, :L1
    const/4 p1, 0
    return p1
  :L1
  .line 4
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    sub-int/2addr v0, v1
    invoke-direct { p0, p1, p2, v0 }, Landroidx/recyclerview/widget/GridLayoutManager;->Y2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result p1
    add-int/2addr p1, v1
    return p1
.end method

.method public m(Landroidx/recyclerview/widget/RecyclerView$o;)Z
  .registers 2
  .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager$b;
    return p1
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->Q:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager;->S2(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->r(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->Q:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager;->T2(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->s(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method s2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
  .registers 22
    move-object/from16 v6, p0
    move-object/from16 v0, p1
    move-object/from16 v1, p2
    move-object/from16 v2, p3
    move-object/from16 v7, p4
  .line 1
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3 }, Landroidx/recyclerview/widget/i;->l()I
    move-result v3
    const/high16 v4, 16384
    const/4 v8, 1
    const/4 v5, 0
    if-eq v3, v4, :L0
    const/4 v9, 1
    goto :L1
  :L0
    const/4 v9, 0
  :L1
  .line 2
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->J()I
    move-result v10
    if-lez v10, :L2
    iget-object v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    aget v10, v10, v11
    goto :L3
  :L2
    const/4 v10, 0
  :L3
    if-eqz v9, :L4
  .line 3
    invoke-direct/range { p0 .. p0 }, Landroidx/recyclerview/widget/GridLayoutManager;->f3()V
  :L4
  .line 4
    iget v11, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I
    if-ne v11, v8, :L5
    const/4 v11, 1
    goto :L6
  :L5
    const/4 v11, 0
  :L6
  .line 5
    iget v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    if-nez v11, :L7
  .line 6
    iget v12, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    invoke-direct { v6, v0, v1, v12 }, Landroidx/recyclerview/widget/GridLayoutManager;->Z2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v12
  .line 7
    iget v13, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
    invoke-direct { v6, v0, v1, v13 }, Landroidx/recyclerview/widget/GridLayoutManager;->a3(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v13
    add-int/2addr v12, v13
  :L7
    const/4 v13, 0
  :L8
  .line 8
    iget v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    if-ge v13, v14, :L12
    invoke-virtual { v2, v1 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    move-result v14
    if-eqz v14, :L12
    if-lez v12, :L12
  .line 9
    iget v14, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I
  .line 10
    invoke-direct { v6, v0, v1, v14 }, Landroidx/recyclerview/widget/GridLayoutManager;->a3(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;I)I
    move-result v15
  .line 11
    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    if-gt v15, v4, :L11
    sub-int/2addr v12, v15
    if-gez v12, :L9
    goto :L12
  :L9
  .line 12
    invoke-virtual { v2, v0 }, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    move-result-object v4
    if-nez v4, :L10
    goto :L12
  :L10
  .line 13
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;
    aput-object v4, v14, v13
    add-int/lit8 v13, v13, 1
    const/high16 v4, 16384
    goto :L8
  :L11
  .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Item at position "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v14 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " requires "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v15 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " spans but GridLayoutManager has only "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " spans."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L12
    if-nez v13, :L13
  .line 15
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z
    return-void
  :L13
    const/4 v4, 0
  .line 16
    invoke-direct { v6, v0, v1, v13, v11 }, Landroidx/recyclerview/widget/GridLayoutManager;->N2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;IZ)V
    const/4 v0, 0
    const/4 v1, 0
  :L14
    if-ge v0, v13, :L21
  .line 17
    iget-object v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;
    aget-object v12, v12, v0
  .line 18
    iget-object v14, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;
    if-nez v14, :L16
    if-eqz v11, :L15
  .line 19
    invoke-virtual { v6, v12 }, Landroidx/recyclerview/widget/RecyclerView$n;->d(Landroid/view/View;)V
    goto :L18
  :L15
  .line 20
    invoke-virtual { v6, v12, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->e(Landroid/view/View;I)V
    goto :L18
  :L16
    if-eqz v11, :L17
  .line 21
    invoke-virtual { v6, v12 }, Landroidx/recyclerview/widget/RecyclerView$n;->b(Landroid/view/View;)V
    goto :L18
  :L17
  .line 22
    invoke-virtual { v6, v12, v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->c(Landroid/view/View;I)V
  :L18
  .line 23
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->P:Landroid/graphics/Rect;
    invoke-virtual { v6, v12, v14 }, Landroidx/recyclerview/widget/RecyclerView$n;->j(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 24
    invoke-direct { v6, v12, v3, v5 }, Landroidx/recyclerview/widget/GridLayoutManager;->c3(Landroid/view/View;IZ)V
  .line 25
    iget-object v14, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v14, v12 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v14
    if-le v14, v1, :L19
    move v1, v14
  :L19
  .line 26
    invoke-virtual { v12 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v14
    check-cast v14, Landroidx/recyclerview/widget/GridLayoutManager$b;
    const/high16 v15, 16256
  .line 27
    iget-object v5, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v5, v12 }, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I
    move-result v5
    int-to-float v5, v5
    mul-float v5, v5, v15
    iget v12, v14, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I
    int-to-float v12, v12
    div-float/2addr v5, v12
    cmpl-float v12, v5, v4
    if-lez v12, :L20
    move v4, v5
  :L20
    add-int/lit8 v0, v0, 1
    const/4 v5, 0
    goto :L14
  :L21
    if-eqz v9, :L24
  .line 28
    invoke-direct { v6, v4, v10 }, Landroidx/recyclerview/widget/GridLayoutManager;->b3(FI)V
    const/4 v0, 0
    const/4 v1, 0
  :L22
    if-ge v0, v13, :L24
  .line 29
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;
    aget-object v3, v3, v0
    const/high16 v4, 16384
  .line 30
    invoke-direct { v6, v3, v4, v8 }, Landroidx/recyclerview/widget/GridLayoutManager;->c3(Landroid/view/View;IZ)V
  .line 31
    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v4, v3 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v3
    if-le v3, v1, :L23
    move v1, v3
  :L23
    add-int/lit8 v0, v0, 1
    goto :L22
  :L24
    const/4 v0, 0
  :L25
    if-ge v0, v13, :L30
  .line 32
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;
    aget-object v3, v3, v0
  .line 33
    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v4, v3 }, Landroidx/recyclerview/widget/i;->e(Landroid/view/View;)I
    move-result v4
    if-eq v4, v1, :L28
  .line 34
    invoke-virtual { v3 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$b;
  .line 35
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroid/graphics/Rect;
  .line 36
    iget v9, v5, Landroid/graphics/Rect;->top:I
    iget v10, v5, Landroid/graphics/Rect;->bottom:I
    add-int/2addr v9, v10
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    add-int/2addr v9, v10
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    add-int/2addr v9, v10
  .line 37
    iget v10, v5, Landroid/graphics/Rect;->left:I
    iget v5, v5, Landroid/graphics/Rect;->right:I
    add-int/2addr v10, v5
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    add-int/2addr v10, v5
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    add-int/2addr v10, v5
  .line 38
    iget v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
    iget v11, v4, Landroidx/recyclerview/widget/GridLayoutManager$b;->f:I
    invoke-virtual { v6, v5, v11 }, Landroidx/recyclerview/widget/GridLayoutManager;->W2(II)I
    move-result v5
  .line 39
    iget v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-ne v11, v8, :L26
  .line 40
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
    const/high16 v11, 16384
    const/4 v12, 0
    invoke-static { v5, v11, v10, v4, v12 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result v4
    sub-int v5, v1, v9
  .line 41
    invoke-static { v5, v11 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v5
    goto :L27
  :L26
    const/high16 v11, 16384
    const/4 v12, 0
    sub-int v10, v1, v10
  .line 42
    invoke-static { v10, v11 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result v10
  .line 43
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    invoke-static { v5, v11, v9, v4, v12 }, Landroidx/recyclerview/widget/RecyclerView$n;->K(IIIIZ)I
    move-result v5
    move v4, v10
  :L27
  .line 44
    invoke-direct { v6, v3, v4, v5, v8 }, Landroidx/recyclerview/widget/GridLayoutManager;->d3(Landroid/view/View;IIZ)V
    goto :L29
  :L28
    const/high16 v11, 16384
    const/4 v12, 0
  :L29
    add-int/lit8 v0, v0, 1
    goto :L25
  :L30
    const/4 v12, 0
  .line 45
    iput v1, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I
  .line 46
    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    const/4 v3, -1
    if-ne v0, v8, :L33
  .line 47
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
    if-ne v0, v3, :L31
  .line 48
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
    sub-int v1, v0, v1
    move v2, v1
    goto :L32
  :L31
  .line 49
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
    add-int/2addr v1, v0
    move v2, v0
    move v0, v1
  :L32
    const/4 v1, 0
    const/4 v3, 0
    goto :L35
  :L33
  .line 50
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I
    if-ne v0, v3, :L34
  .line 51
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
    sub-int v1, v0, v1
    move v3, v1
    const/4 v2, 0
    move v1, v0
    const/4 v0, 0
    goto :L35
  :L34
  .line 52
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I
    add-int/2addr v1, v0
    move v3, v0
    const/4 v0, 0
    const/4 v2, 0
  :L35
    if-ge v12, v13, :L42
  .line 53
    iget-object v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;
    aget-object v9, v4, v12
  .line 54
    invoke-virtual { v9 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v4
    move-object v10, v4
    check-cast v10, Landroidx/recyclerview/widget/GridLayoutManager$b;
  .line 55
    iget v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I
    if-ne v4, v8, :L37
  .line 56
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/LinearLayoutManager;->q2()Z
    move-result v1
    if-eqz v1, :L36
  .line 57
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v1
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I
    iget v5, v10, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
    sub-int/2addr v4, v5
    aget v3, v3, v4
    add-int/2addr v1, v3
  .line 58
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3, v9 }, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I
    move-result v3
    sub-int v3, v1, v3
    move v11, v0
    move v14, v1
    move v15, v2
    goto :L38
  :L36
  .line 59
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->e0()I
    move-result v1
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    iget v4, v10, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
    aget v3, v3, v4
    add-int/2addr v1, v3
  .line 60
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v3, v9 }, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I
    move-result v3
    add-int/2addr v3, v1
    move v11, v0
    move/from16 v16, v1
    move v15, v2
    move v14, v3
    goto :L39
  :L37
  .line 61
    invoke-virtual/range { p0 .. p0 }, Landroidx/recyclerview/widget/RecyclerView$n;->g0()I
    move-result v0
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I
    iget v4, v10, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I
    aget v2, v2, v4
    add-int/2addr v0, v2
  .line 62
    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Landroidx/recyclerview/widget/i;
    invoke-virtual { v2, v9 }, Landroidx/recyclerview/widget/i;->f(Landroid/view/View;)I
    move-result v2
    add-int/2addr v2, v0
    move v15, v0
    move v14, v1
    move v11, v2
  :L38
    move/from16 v16, v3
  :L39
    move-object/from16 v0, p0
    move-object v1, v9
    move/from16 v2, v16
    move v3, v15
    move v4, v14
    move v5, v11
  .line 63
    invoke-virtual/range { v0 .. v5 }, Landroidx/recyclerview/widget/RecyclerView$n;->z0(Landroid/view/View;IIII)V
  .line 64
    invoke-virtual { v10 }, Landroidx/recyclerview/widget/RecyclerView$o;->c()Z
    move-result v0
    if-nez v0, :L40
    invoke-virtual { v10 }, Landroidx/recyclerview/widget/RecyclerView$o;->b()Z
    move-result v0
    if-eqz v0, :L41
  :L40
  .line 65
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z
  :L41
  .line 66
    iget-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z
    invoke-virtual { v9 }, Landroid/view/View;->hasFocusable()Z
    move-result v1
    or-int/2addr v0, v1
    iput-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z
    add-int/lit8 v12, v12, 1
    move v0, v11
    move v1, v14
    move v2, v15
    move/from16 v3, v16
    goto/16 :L35
  :L42
  .line 67
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;
    const/4 v1, 0
    invoke-static { v0, v1 }, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    return-void
.end method

.method public u(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->Q:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager;->S2(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->u(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method u2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
  .registers 6
  .line 1
    invoke-super { p0, p1, p2, p3, p4 }, Landroidx/recyclerview/widget/LinearLayoutManager;->u2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/GridLayoutManager;->f3()V
  .line 3
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->b()I
    move-result v0
    if-lez v0, :L0
    invoke-virtual { p2 }, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z
    move-result v0
    if-nez v0, :L0
  .line 4
    invoke-direct { p0, p1, p2, p3, p4 }, Landroidx/recyclerview/widget/GridLayoutManager;->U2(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
  :L0
  .line 5
    invoke-direct { p0 }, Landroidx/recyclerview/widget/GridLayoutManager;->V2()V
    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->Q:Z
    if-eqz v0, :L0
  .line 2
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager;->T2(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
  :L0
  .line 3
    invoke-super { p0, p1 }, Landroidx/recyclerview/widget/LinearLayoutManager;->v(Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public w1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/GridLayoutManager;->f3()V
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/GridLayoutManager;->V2()V
  .line 3
    invoke-super { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->w1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method

.method public y1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/recyclerview/widget/GridLayoutManager;->f3()V
  .line 2
    invoke-direct { p0 }, Landroidx/recyclerview/widget/GridLayoutManager;->V2()V
  .line 3
    invoke-super { p0, p1, p2, p3 }, Landroidx/recyclerview/widget/LinearLayoutManager;->y1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    move-result p1
    return p1
.end method
