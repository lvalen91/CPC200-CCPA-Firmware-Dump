.class public Landroidx/recyclerview/widget/RecyclerView$k$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView$k;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "c"
.end annotation

.field public a:I

.field public b:I

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/RecyclerView$k$c;
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$k$c;->b(Landroidx/recyclerview/widget/RecyclerView$c0;I)Landroidx/recyclerview/widget/RecyclerView$k$c;
    return-object p0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;I)Landroidx/recyclerview/widget/RecyclerView$k$c;
  .registers 3
  .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getLeft()I
    move-result p2
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$k$c;->a:I
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p2
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$k$c;->b:I
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getRight()I
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getBottom()I
    return-object p0
.end method
