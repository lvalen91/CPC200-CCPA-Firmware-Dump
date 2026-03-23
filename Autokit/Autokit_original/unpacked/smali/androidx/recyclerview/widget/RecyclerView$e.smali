.class Landroidx/recyclerview/widget/RecyclerView$e;
.super Ljava/lang/Object;
.implements Landroidx/recyclerview/widget/a$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Landroidx/recyclerview/widget/RecyclerView;->n0()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(II)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView;->B0(II)V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    const/4 p2, 1
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->k0:Z
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/a$b;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$e;->i(Landroidx/recyclerview/widget/a$b;)V
    return-void
.end method

.method public c(I)Landroidx/recyclerview/widget/RecyclerView$c0;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 1
    invoke-virtual { v0, p1, v1 }, Landroidx/recyclerview/widget/RecyclerView;->Z(IZ)Landroidx/recyclerview/widget/RecyclerView$c0;
    move-result-object p1
    const/4 v0, 0
    if-nez p1, :L0
    return-object v0
  :L0
  .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/b;
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->a:Landroid/view/View;
    invoke-virtual { v1, v2 }, Landroidx/recyclerview/widget/b;->n(Landroid/view/View;)Z
    move-result v1
    if-eqz v1, :L1
    return-object v0
  :L1
    return-object p1
.end method

.method public d(II)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 1
    invoke-virtual { v0, p1, p2, v1 }, Landroidx/recyclerview/widget/RecyclerView;->C0(IIZ)V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->k0:Z
  .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->h0:Landroidx/recyclerview/widget/RecyclerView$z;
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$z;->d:I
    add-int/2addr v0, p2
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$z;->d:I
    return-void
.end method

.method public e(II)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    const/4 v1, 0
    invoke-virtual { v0, p1, p2, v1 }, Landroidx/recyclerview/widget/RecyclerView;->C0(IIZ)V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    const/4 p2, 1
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->k0:Z
    return-void
.end method

.method public f(Landroidx/recyclerview/widget/a$b;)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/recyclerview/widget/RecyclerView$e;->i(Landroidx/recyclerview/widget/a$b;)V
    return-void
.end method

.method public g(II)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1, p2 }, Landroidx/recyclerview/widget/RecyclerView;->A0(II)V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    const/4 p2, 1
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->k0:Z
    return-void
.end method

.method public h(IILjava/lang/Object;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual { v0, p1, p2, p3 }, Landroidx/recyclerview/widget/RecyclerView;->v1(IILjava/lang/Object;)V
  .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    const/4 p2, 1
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->l0:Z
    return-void
.end method

.method i(Landroidx/recyclerview/widget/a$b;)V
  .registers 6
  .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I
    const/4 v1, 1
    if-eq v0, v1, :L3
    const/4 v2, 2
    if-eq v0, v2, :L2
    const/4 v2, 4
    if-eq v0, v2, :L1
    const/16 v2, 8
    if-eq v0, v2, :L0
    goto :L4
  :L0
  .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->b:I
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-virtual { v2, v0, v3, p1, v1 }, Landroidx/recyclerview/widget/RecyclerView$n;->T0(Landroidx/recyclerview/widget/RecyclerView;III)V
    goto :L4
  :L1
  .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->d:I
    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;
    invoke-virtual { v1, v0, v2, v3, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->W0(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    goto :L4
  :L2
  .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-virtual { v1, v0, v2, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->U0(Landroidx/recyclerview/widget/RecyclerView;II)V
    goto :L4
  :L3
  .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView;
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$n;
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I
    invoke-virtual { v1, v0, v2, p1 }, Landroidx/recyclerview/widget/RecyclerView$n;->R0(Landroidx/recyclerview/widget/RecyclerView;II)V
  :L4
    return-void
.end method
