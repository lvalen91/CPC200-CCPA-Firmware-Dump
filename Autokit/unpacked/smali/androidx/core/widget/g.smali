.class public final Landroidx/core/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Landroid/widget/ListView;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/widget/ListView;->scrollListBy(I)V
    goto :L3
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/widget/ListView;->getFirstVisiblePosition()I
    move-result v0
    const/4 v1, -1
    if-ne v0, v1, :L1
    return-void
  :L1
    const/4 v1, 0
  .line 4
    invoke-virtual { p0, v1 }, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    move-result-object v1
    if-nez v1, :L2
    return-void
  :L2
  .line 5
    invoke-virtual { v1 }, Landroid/view/View;->getTop()I
    move-result v1
    sub-int/2addr v1, p1
  .line 6
    invoke-virtual { p0, v0, v1 }, Landroid/widget/ListView;->setSelectionFromTop(II)V
  :L3
    return-void
.end method
