.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1033
  name = "c"
.end annotation

.field final a:Landroid/util/SparseIntArray;

.field final b:Landroid/util/SparseIntArray;

.field private c:Z

.field private d:Z

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;
  .line 3
    new-instance v0, Landroid/util/SparseIntArray;
    invoke-direct { v0 }, Landroid/util/SparseIntArray;-><init>()V
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->c:Z
  .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->d:Z
    return-void
.end method

.method static a(Landroid/util/SparseIntArray;I)I
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/util/SparseIntArray;->size()I
    move-result v0
    add-int/lit8 v0, v0, -1
    const/4 v1, 0
  :L0
    if-gt v1, v0, :L2
    add-int v2, v1, v0
    ushr-int/lit8 v2, v2, 1
  .line 2
    invoke-virtual { p0, v2 }, Landroid/util/SparseIntArray;->keyAt(I)I
    move-result v3
    if-ge v3, p1, :L1
    add-int/lit8 v2, v2, 1
    move v1, v2
    goto :L0
  :L1
    add-int/lit8 v2, v2, -1
    move v0, v2
    goto :L0
  :L2
    add-int/lit8 v1, v1, -1
    if-ltz v1, :L3
  .line 3
    invoke-virtual { p0 }, Landroid/util/SparseIntArray;->size()I
    move-result p1
    if-ge v1, p1, :L3
  .line 4
    invoke-virtual { p0, v1 }, Landroid/util/SparseIntArray;->keyAt(I)I
    move-result p0
    return p0
  :L3
    const/4 p0, -1
    return p0
.end method

.method b(II)I
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->d:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->d(II)I
    move-result p1
    return p1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;
    const/4 v1, -1
    invoke-virtual { v0, p1, v1 }, Landroid/util/SparseIntArray;->get(II)I
    move-result v0
    if-eq v0, v1, :L1
    return v0
  :L1
  .line 4
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->d(II)I
    move-result p2
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;
    invoke-virtual { v0, p1, p2 }, Landroid/util/SparseIntArray;->put(II)V
    return p2
.end method

.method c(II)I
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->c:Z
    if-nez v0, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->e(II)I
    move-result p1
    return p1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;
    const/4 v1, -1
    invoke-virtual { v0, p1, v1 }, Landroid/util/SparseIntArray;->get(II)I
    move-result v0
    if-eq v0, v1, :L1
    return v0
  :L1
  .line 4
    invoke-virtual { p0, p1, p2 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->e(II)I
    move-result p2
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;
    invoke-virtual { v0, p1, p2 }, Landroid/util/SparseIntArray;->put(II)V
    return p2
.end method

.method public d(II)I
  .registers 9
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->d:Z
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;
    invoke-static { v0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->a(Landroid/util/SparseIntArray;I)I
    move-result v0
    const/4 v2, -1
    if-eq v0, v2, :L0
  .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;
    invoke-virtual { v2, v0 }, Landroid/util/SparseIntArray;->get(I)I
    move-result v2
    add-int/lit8 v3, v0, 1
  .line 4
    invoke-virtual { p0, v0, p2 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I
    move-result v4
    invoke-virtual { p0, v0 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I
    move-result v0
    add-int/2addr v4, v0
    if-ne v4, p2, :L2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L0
    const/4 v2, 0
    const/4 v3, 0
  :L1
    const/4 v4, 0
  :L2
  .line 5
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I
    move-result v0
  :L3
    if-ge v3, p1, :L6
  .line 6
    invoke-virtual { p0, v3 }, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I
    move-result v5
    add-int/2addr v4, v5
    if-ne v4, p2, :L4
    add-int/lit8 v2, v2, 1
    const/4 v4, 0
    goto :L5
  :L4
    if-le v4, p2, :L5
    add-int/lit8 v2, v2, 1
    move v4, v5
  :L5
    add-int/lit8 v3, v3, 1
    goto :L3
  :L6
    add-int/2addr v4, v0
    if-le v4, p2, :L7
    add-int/lit8 v2, v2, 1
  :L7
    return v2
.end method

.method public abstract e(II)I
.end method

.method public abstract f(I)I
.end method

.method public g()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->b:Landroid/util/SparseIntArray;
    invoke-virtual { v0 }, Landroid/util/SparseIntArray;->clear()V
    return-void
.end method

.method public h()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$c;->a:Landroid/util/SparseIntArray;
    invoke-virtual { v0 }, Landroid/util/SparseIntArray;->clear()V
    return-void
.end method
