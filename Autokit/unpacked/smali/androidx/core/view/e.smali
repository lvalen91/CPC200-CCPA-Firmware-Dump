.class public final Landroidx/core/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
  .registers 8
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-static/range { p0 .. p5 }, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    goto :L1
  :L0
  .line 3
    invoke-static { p0, p1, p2, p3, p4 }, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
  :L1
    return-void
.end method

.method public static b(II)I
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0, p1 }, Landroid/view/Gravity;->getAbsoluteGravity(II)I
    move-result p0
    return p0
  :L0
    const p1, -8388609
    and-int/2addr p0, p1
    return p0
.end method
