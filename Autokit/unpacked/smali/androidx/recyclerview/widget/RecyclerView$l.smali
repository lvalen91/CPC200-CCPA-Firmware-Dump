.class Landroidx/recyclerview/widget/RecyclerView$l;
.super Ljava/lang/Object;
.implements Landroidx/recyclerview/widget/RecyclerView$k$b;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "l"
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
  .registers 4
    const/4 v0, 1
  .line 1
    invoke-virtual { p1, v0 }, Landroidx/recyclerview/widget/RecyclerView$c0;->G(Z)V
  .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->h:Landroidx/recyclerview/widget/RecyclerView$c0;
    const/4 v1, 0
    if-eqz v0, :L0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->i:Landroidx/recyclerview/widget/RecyclerView$c0;
    if-nez v0, :L0
  .line 3
    iput-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->h:Landroidx/recyclerview/widget/RecyclerView$c0;
  :L0
  .line 4
    iput-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->i:Landroidx/recyclerview/widget/RecyclerView$c0;
  .line 5
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->I()Z
    move-result v0
    if-nez v0, :L1
  .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->U0(Landroid/view/View;)Z
    move-result v0
    if-nez v0, :L1
    invoke-virtual { p1 }, Landroidx/recyclerview/widget/RecyclerView$c0;->x()Z
    move-result v0
    if-eqz v0, :L1
  .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    const/4 v1, 0
    invoke-virtual { v0, p1, v1 }, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V
  :L1
    return-void
.end method
