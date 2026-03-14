.class Landroidx/core/view/d0$j;
.super Landroidx/core/view/d0$i;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "j"
.end annotation

.field private n:Lc/g/d/b;

.method constructor <init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/core/view/d0$i;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Landroidx/core/view/d0$j;->n:Lc/g/d/b;
    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;Landroidx/core/view/d0$j;)V
  .registers 3
  .line 3
    invoke-direct { p0, p1, p2 }, Landroidx/core/view/d0$i;-><init>(Landroidx/core/view/d0;Landroidx/core/view/d0$i;)V
    const/4 p1, 0
  .line 4
    iput-object p1, p0, Landroidx/core/view/d0$j;->n:Lc/g/d/b;
    return-void
.end method

.method g()Lc/g/d/b;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$j;->n:Lc/g/d/b;
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
  .line 3
    invoke-virtual { v0 }, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;
    move-result-object v0
    invoke-static { v0 }, Lc/g/d/b;->d(Landroid/graphics/Insets;)Lc/g/d/b;
    move-result-object v0
    iput-object v0, p0, Landroidx/core/view/d0$j;->n:Lc/g/d/b;
  :L0
  .line 4
    iget-object v0, p0, Landroidx/core/view/d0$j;->n:Lc/g/d/b;
    return-object v0
.end method

.method j(IIII)Landroidx/core/view/d0;
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;
    move-result-object p1
    invoke-static { p1 }, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;
    move-result-object p1
    return-object p1
.end method

.method public p(Lc/g/d/b;)V
  .registers 2
    return-void
.end method
