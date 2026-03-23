.class final Lc/p/m$a;
.super Lc/p/g;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/p/m;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lc/p/g;-><init>()V
    return-void
.end method

.method public a(FFFF)Landroid/graphics/Path;
  .registers 6
  .line 1
    new-instance v0, Landroid/graphics/Path;
    invoke-direct { v0 }, Landroid/graphics/Path;-><init>()V
  .line 2
    invoke-virtual { v0, p1, p2 }, Landroid/graphics/Path;->moveTo(FF)V
  .line 3
    invoke-virtual { v0, p3, p4 }, Landroid/graphics/Path;->lineTo(FF)V
    return-object v0
.end method
