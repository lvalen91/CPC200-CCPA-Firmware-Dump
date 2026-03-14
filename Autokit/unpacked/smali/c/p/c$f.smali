.class final Lc/p/c$f;
.super Landroid/util/Property;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/p/c;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Landroid/util/Property<",
    "Landroid/view/View;",
    "Landroid/graphics/PointF;",
    ">;"
  }
.end annotation

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
    return-void
.end method

.method public a(Landroid/view/View;)Landroid/graphics/PointF;
  .registers 2
    const/4 p1, 0
    return-object p1
.end method

.method public b(Landroid/view/View;Landroid/graphics/PointF;)V
  .registers 6
  .line 1
    iget v0, p2, Landroid/graphics/PointF;->x:F
    invoke-static { v0 }, Ljava/lang/Math;->round(F)I
    move-result v0
  .line 2
    iget p2, p2, Landroid/graphics/PointF;->y:F
    invoke-static { p2 }, Ljava/lang/Math;->round(F)I
    move-result p2
  .line 3
    invoke-virtual { p1 }, Landroid/view/View;->getRight()I
    move-result v1
  .line 4
    invoke-virtual { p1 }, Landroid/view/View;->getBottom()I
    move-result v2
  .line 5
    invoke-static { p1, v0, p2, v1, v2 }, Lc/p/c0;->f(Landroid/view/View;IIII)V
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
  .line 1
    check-cast p1, Landroid/view/View;
    invoke-virtual { p0, p1 }, Lc/p/c$f;->a(Landroid/view/View;)Landroid/graphics/PointF;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
  .registers 3
  .line 1
    check-cast p1, Landroid/view/View;
    check-cast p2, Landroid/graphics/PointF;
    invoke-virtual { p0, p1, p2 }, Lc/p/c$f;->b(Landroid/view/View;Landroid/graphics/PointF;)V
    return-void
.end method
