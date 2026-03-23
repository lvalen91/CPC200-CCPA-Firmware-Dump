.class Landroidx/fragment/app/n$q;
.super Ljava/lang/Object;
.implements Landroidx/fragment/app/Fragment$k;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/fragment/app/n;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "q"
.end annotation

.field final a:Z

.field final b:Landroidx/fragment/app/a;

.field private c:I

.method constructor <init>(Landroidx/fragment/app/a;Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-boolean p2, p0, Landroidx/fragment/app/n$q;->a:Z
  .line 3
    iput-object p1, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;
    return-void
.end method

.method public a()V
  .registers 2
  .line 1
    iget v0, p0, Landroidx/fragment/app/n$q;->c:I
    add-int/lit8 v0, v0, -1
    iput v0, p0, Landroidx/fragment/app/n$q;->c:I
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;
    iget-object v0, v0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->g1()V
    return-void
.end method

.method public b()V
  .registers 2
  .line 1
    iget v0, p0, Landroidx/fragment/app/n$q;->c:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Landroidx/fragment/app/n$q;->c:I
    return-void
.end method

.method c()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;
    iget-object v1, v0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    iget-boolean v2, p0, Landroidx/fragment/app/n$q;->a:Z
    const/4 v3, 0
    invoke-virtual { v1, v0, v2, v3, v3 }, Landroidx/fragment/app/n;->t(Landroidx/fragment/app/a;ZZZ)V
    return-void
.end method

.method d()V
  .registers 6
  .line 1
    iget v0, p0, Landroidx/fragment/app/n$q;->c:I
    const/4 v1, 1
    if-lez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 2
    iget-object v2, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;
    iget-object v2, v2, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
  .line 3
    invoke-virtual { v2 }, Landroidx/fragment/app/n;->r0()Ljava/util/List;
    move-result-object v2
    invoke-interface { v2 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L2
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L3
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/Fragment;
    const/4 v4, 0
  .line 4
    invoke-virtual { v3, v4 }, Landroidx/fragment/app/Fragment;->W1(Landroidx/fragment/app/Fragment$k;)V
    if-eqz v0, :L2
  .line 5
    invoke-virtual { v3 }, Landroidx/fragment/app/Fragment;->v0()Z
    move-result v4
    if-eqz v4, :L2
  .line 6
    invoke-virtual { v3 }, Landroidx/fragment/app/Fragment;->f2()V
    goto :L2
  :L3
  .line 7
    iget-object v2, p0, Landroidx/fragment/app/n$q;->b:Landroidx/fragment/app/a;
    iget-object v3, v2, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/n;
    iget-boolean v4, p0, Landroidx/fragment/app/n$q;->a:Z
    xor-int/2addr v0, v1
    invoke-virtual { v3, v2, v4, v0, v1 }, Landroidx/fragment/app/n;->t(Landroidx/fragment/app/a;ZZZ)V
    return-void
.end method

.method public e()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/fragment/app/n$q;->c:I
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method
