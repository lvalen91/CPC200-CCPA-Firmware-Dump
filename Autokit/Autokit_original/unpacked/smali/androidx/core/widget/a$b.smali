.class Landroidx/core/widget/a$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/widget/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "b"
.end annotation

.field final synthetic b:Landroidx/core/widget/a;

.method constructor <init>(Landroidx/core/widget/a;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;
    iget-boolean v1, v0, Landroidx/core/widget/a;->p:Z
    if-nez v1, :L0
    return-void
  :L0
  .line 2
    iget-boolean v1, v0, Landroidx/core/widget/a;->n:Z
    const/4 v2, 0
    if-eqz v1, :L1
  .line 3
    iput-boolean v2, v0, Landroidx/core/widget/a;->n:Z
  .line 4
    iget-object v0, v0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;
    invoke-virtual { v0 }, Landroidx/core/widget/a$a;->m()V
  :L1
  .line 5
    iget-object v0, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;
    iget-object v0, v0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;
  .line 6
    invoke-virtual { v0 }, Landroidx/core/widget/a$a;->h()Z
    move-result v1
    if-nez v1, :L4
    iget-object v1, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;
    invoke-virtual { v1 }, Landroidx/core/widget/a;->u()Z
    move-result v1
    if-nez v1, :L2
    goto :L4
  :L2
  .line 7
    iget-object v1, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;
    iget-boolean v3, v1, Landroidx/core/widget/a;->o:Z
    if-eqz v3, :L3
  .line 8
    iput-boolean v2, v1, Landroidx/core/widget/a;->o:Z
  .line 9
    invoke-virtual { v1 }, Landroidx/core/widget/a;->c()V
  :L3
  .line 10
    invoke-virtual { v0 }, Landroidx/core/widget/a$a;->a()V
  .line 11
    invoke-virtual { v0 }, Landroidx/core/widget/a$a;->b()I
    move-result v1
  .line 12
    invoke-virtual { v0 }, Landroidx/core/widget/a$a;->c()I
    move-result v0
  .line 13
    iget-object v2, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;
    invoke-virtual { v2, v1, v0 }, Landroidx/core/widget/a;->j(II)V
  .line 14
    iget-object v0, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;
    iget-object v0, v0, Landroidx/core/widget/a;->d:Landroid/view/View;
    invoke-static { v0, p0 }, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V
    return-void
  :L4
  .line 15
    iget-object v0, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;
    iput-boolean v2, v0, Landroidx/core/widget/a;->p:Z
    return-void
.end method
