.class Landroidx/appcompat/widget/d0$a;
.super Lc/a/l/a/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/appcompat/widget/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "a"
.end annotation

.field private c:Z

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lc/a/l/a/c;-><init>(Landroid/graphics/drawable/Drawable;)V
    const/4 p1, 1
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/d0$a;->c:Z
    return-void
.end method

.method c(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/d0$a;->c:Z
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1 }, Lc/a/l/a/c;->draw(Landroid/graphics/Canvas;)V
  :L0
    return-void
.end method

.method public setHotspot(FF)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Lc/a/l/a/c;->setHotspot(FF)V
  :L0
    return-void
.end method

.method public setHotspotBounds(IIII)V
  .registers 6
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2, p3, p4 }, Lc/a/l/a/c;->setHotspotBounds(IIII)V
  :L0
    return-void
.end method

.method public setState([I)Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1 }, Lc/a/l/a/c;->setState([I)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public setVisible(ZZ)Z
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Lc/a/l/a/c;->setVisible(ZZ)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method
