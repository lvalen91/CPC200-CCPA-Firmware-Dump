.class Landroidx/appcompat/view/menu/d$c;
.super Ljava/lang/Object;
.implements Landroidx/appcompat/widget/i0;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/view/menu/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Landroidx/appcompat/view/menu/d;

.method constructor <init>(Landroidx/appcompat/view/menu/d;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
  .registers 8
  .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->h:Landroid/os/Handler;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    const/4 v2, 0
  :L0
    const/4 v3, -1
    if-ge v2, v0, :L2
  .line 3
    iget-object v4, p0, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    iget-object v4, v4, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v4, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/appcompat/view/menu/d$d;
    iget-object v4, v4, Landroidx/appcompat/view/menu/d$d;->b:Landroidx/appcompat/view/menu/g;
    if-ne p1, v4, :L1
    goto :L3
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    const/4 v2, -1
  :L3
    if-ne v2, v3, :L4
    return-void
  :L4
    add-int/lit8 v2, v2, 1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    if-ge v2, v0, :L5
  .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->j:Ljava/util/List;
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    move-object v1, v0
    check-cast v1, Landroidx/appcompat/view/menu/d$d;
  :L5
  .line 6
    new-instance v0, Landroidx/appcompat/view/menu/d$c$a;
    invoke-direct { v0, p0, v1, p2, p1 }, Landroidx/appcompat/view/menu/d$c$a;-><init>(Landroidx/appcompat/view/menu/d$c;Landroidx/appcompat/view/menu/d$d;Landroid/view/MenuItem;Landroidx/appcompat/view/menu/g;)V
  .line 7
    invoke-static { }, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v1
    const-wide/16 v3, 200
    add-long/2addr v1, v3
  .line 8
    iget-object p2, p0, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    iget-object p2, p2, Landroidx/appcompat/view/menu/d;->h:Landroid/os/Handler;
    invoke-virtual { p2, v0, p1, v1, v2 }, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    return-void
.end method

.method public i(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
  .registers 3
  .line 1
    iget-object p2, p0, Landroidx/appcompat/view/menu/d$c;->b:Landroidx/appcompat/view/menu/d;
    iget-object p2, p2, Landroidx/appcompat/view/menu/d;->h:Landroid/os/Handler;
    invoke-virtual { p2, p1 }, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    return-void
.end method
