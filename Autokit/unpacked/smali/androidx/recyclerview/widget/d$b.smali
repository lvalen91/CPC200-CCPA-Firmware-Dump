.class Landroidx/recyclerview/widget/d$b;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/d;

.method constructor <init>(Landroidx/recyclerview/widget/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/d$b;->a:Landroidx/recyclerview/widget/d;
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
  .registers 4
  .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/d$b;->a:Landroidx/recyclerview/widget/d;
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I
    move-result p3
  .line 2
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I
    move-result p1
  .line 3
    invoke-virtual { p2, p3, p1 }, Landroidx/recyclerview/widget/d;->B(II)V
    return-void
.end method
