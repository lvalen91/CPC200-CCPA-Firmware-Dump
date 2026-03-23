.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;
.super Landroidx/recyclerview/widget/RecyclerView$o;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "c"
.end annotation

.field e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;

.field f:Z

.method public constructor <init>(II)V
  .registers 3
  .line 2
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(II)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
  .registers 2
  .line 4
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
  .registers 2
  .line 3
    invoke-direct { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    return-void
.end method

.method public final e()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;
    if-nez v0, :L0
    const/4 v0, -1
    return v0
  :L0
  .line 2
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$f;->e:I
    return v0
.end method

.method public f()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Z
    return v0
.end method
