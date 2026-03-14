.class final Lc/p/c$d;
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
    "Lc/p/c$k;",
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

.method public a(Lc/p/c$k;)Landroid/graphics/PointF;
  .registers 2
    const/4 p1, 0
    return-object p1
.end method

.method public b(Lc/p/c$k;Landroid/graphics/PointF;)V
  .registers 3
  .line 1
    invoke-virtual { p1, p2 }, Lc/p/c$k;->a(Landroid/graphics/PointF;)V
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
  .line 1
    check-cast p1, Lc/p/c$k;
    invoke-virtual { p0, p1 }, Lc/p/c$d;->a(Lc/p/c$k;)Landroid/graphics/PointF;
    move-result-object p1
    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
  .registers 3
  .line 1
    check-cast p1, Lc/p/c$k;
    check-cast p2, Landroid/graphics/PointF;
    invoke-virtual { p0, p1, p2 }, Lc/p/c$d;->b(Lc/p/c$k;Landroid/graphics/PointF;)V
    return-void
.end method
