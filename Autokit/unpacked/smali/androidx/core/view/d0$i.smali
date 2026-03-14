.class Landroidx/core/view/d0$i;
.super Landroidx/core/view/d0$h;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "i"
.end annotation

.method constructor <init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroidx/core/view/d0$h;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;Landroidx/core/view/d0$i;)V
  .registers 3
  .line 2
    invoke-direct { p0, p1, p2 }, Landroidx/core/view/d0$h;-><init>(Landroidx/core/view/d0;Landroidx/core/view/d0$h;)V
    return-void
.end method

.method a()Landroidx/core/view/d0;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    invoke-virtual { v0 }, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;
    move-result-object v0
    invoke-static { v0 }, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;
    move-result-object v0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
  .line 1
    instance-of v1, p1, Landroidx/core/view/d0$i;
    const/4 v2, 0
    if-nez v1, :L1
    return v2
  :L1
  .line 2
    check-cast p1, Landroidx/core/view/d0$i;
  .line 3
    iget-object v1, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    iget-object v3, p1, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    invoke-static { v1, v3 }, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L2
    iget-object v1, p0, Landroidx/core/view/d0$g;->f:Lc/g/d/b;
    iget-object p1, p1, Landroidx/core/view/d0$g;->f:Lc/g/d/b;
  .line 4
    invoke-static { v1, p1 }, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
    goto :L3
  :L2
    const/4 v0, 0
  :L3
    return v0
.end method

.method f()Landroidx/core/view/d;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    invoke-virtual { v0 }, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;
    move-result-object v0
    invoke-static { v0 }, Landroidx/core/view/d;->a(Ljava/lang/Object;)Landroidx/core/view/d;
    move-result-object v0
    return-object v0
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;
    invoke-virtual { v0 }, Landroid/view/WindowInsets;->hashCode()I
    move-result v0
    return v0
.end method
