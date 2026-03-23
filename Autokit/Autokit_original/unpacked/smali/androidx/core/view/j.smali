.class public final Landroidx/core/view/j;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/view/MotionEvent;I)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/view/MotionEvent;->getSource()I
    move-result p0
    and-int/2addr p0, p1
    if-ne p0, p1, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method
