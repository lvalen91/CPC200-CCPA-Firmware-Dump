.class public final Landroidx/core/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I
    move-result p0
    return p0
  :L0
  .line 3
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    return p0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I
    move-result p0
    return p0
  :L0
  .line 3
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
    return p0
.end method

.method public static c(Landroid/view/ViewGroup$MarginLayoutParams;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V
    goto :L1
  :L0
  .line 3
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
  :L1
    return-void
.end method

.method public static d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V
    goto :L1
  :L0
  .line 3
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
  :L1
    return-void
.end method
