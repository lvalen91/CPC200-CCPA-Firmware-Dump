.class Landroidx/core/view/d0$h;
.super Landroidx/core/view/d0$g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "h"
.end annotation

.field private m:Lc/g/d/b;

.method constructor <init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/core/view/d0$g;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Landroidx/core/view/d0$h;->m:Lc/g/d/b;
    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;Landroidx/core/view/d0$h;)V
  .registers 3
  .line 3
    invoke-direct { p0, p1, p2 }, Landroidx/core/view/d0$g;-><init>(Landroidx/core/view/d0;Landroidx/core/view/d0$g;)V
    const/4 p1, 0
  .line 4
    iput-object p1, p0, Landroidx/core/view/d0$h;->m:Lc/g/d/b;
  .line 5
    iget-object p1, p2, Landroidx/core/view/d0$h;->m:Lc/g/d/b;
    iput-object p1, p0, Landroidx/core/view/d0$h;->m:Lc/g/d/b;
    return-void
.end method

.method b()Landroidx/core/view/d0;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    invoke-virtual { v0 }, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;
    move-result-object v0
    invoke-static { v0 }, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;
    move-result-object v0
    return-object v0
.end method

.method c()Landroidx/core/view/d0;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    invoke-virtual { v0 }, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;
    move-result-object v0
    invoke-static { v0 }, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;
    move-result-object v0
    return-object v0
.end method

.method final h()Lc/g/d/b;
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$h;->m:Lc/g/d/b;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
  .line 3
    invoke-virtual { v0 }, Landroid/view/WindowInsets;->getStableInsetLeft()I
    move-result v0
    iget-object v1, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
  .line 4
    invoke-virtual { v1 }, Landroid/view/WindowInsets;->getStableInsetTop()I
    move-result v1
    iget-object v2, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
  .line 5
    invoke-virtual { v2 }, Landroid/view/WindowInsets;->getStableInsetRight()I
    move-result v2
    iget-object v3, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
  .line 6
    invoke-virtual { v3 }, Landroid/view/WindowInsets;->getStableInsetBottom()I
    move-result v3
  .line 7
    invoke-static { v0, v1, v2, v3 }, Lc/g/d/b;->b(IIII)Lc/g/d/b;
    move-result-object v0
    iput-object v0, p0, Landroidx/core/view/d0$h;->m:Lc/g/d/b;
  :L0
  .line 8
    iget-object v0, p0, Landroidx/core/view/d0$h;->m:Lc/g/d/b;
    return-object v0
.end method

.method k()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    invoke-virtual { v0 }, Landroid/view/WindowInsets;->isConsumed()Z
    move-result v0
    return v0
.end method

.method public p(Lc/g/d/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/core/view/d0$h;->m:Lc/g/d/b;
    return-void
.end method
