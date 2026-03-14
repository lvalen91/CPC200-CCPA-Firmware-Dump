.class Landroidx/recyclerview/widget/RecyclerView$w;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "w"
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-direct { p0 }, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V
    return-void
.end method

.method public a()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/RecyclerView;->o(Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    const/4 v2, 1
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$z;->g:Z
  .line 3
    invoke-virtual { v0, v2 }, Landroidx/recyclerview/widget/RecyclerView;->O0(Z)V
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/a;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/a;->p()Z
    move-result v0
    if-nez v0, :L0
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0 }, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V
  :L0
    return-void
.end method
