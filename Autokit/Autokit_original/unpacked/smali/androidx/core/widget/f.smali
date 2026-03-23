.class public Landroidx/core/widget/f;
.super Landroidx/core/widget/a;
.source "SourceFile"

.field private final t:Landroid/widget/ListView;

.method public constructor <init>(Landroid/widget/ListView;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/core/widget/a;-><init>(Landroid/view/View;)V
  .line 2
    iput-object p1, p0, Landroidx/core/widget/f;->t:Landroid/widget/ListView;
    return-void
.end method

.method public a(I)Z
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method public b(I)Z
  .registers 9
  .line 1
    iget-object v0, p0, Landroidx/core/widget/f;->t:Landroid/widget/ListView;
  .line 2
    invoke-virtual { v0 }, Landroid/widget/ListView;->getCount()I
    move-result v1
    const/4 v2, 0
    if-nez v1, :L0
    return v2
  :L0
  .line 3
    invoke-virtual { v0 }, Landroid/widget/ListView;->getChildCount()I
    move-result v3
  .line 4
    invoke-virtual { v0 }, Landroid/widget/ListView;->getFirstVisiblePosition()I
    move-result v4
    add-int v5, v4, v3
    const/4 v6, 1
    if-lez p1, :L1
    if-lt v5, v1, :L2
    sub-int/2addr v3, v6
  .line 5
    invoke-virtual { v0, v3 }, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    move-result-object p1
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getBottom()I
    move-result p1
    invoke-virtual { v0 }, Landroid/widget/ListView;->getHeight()I
    move-result v0
    if-gt p1, v0, :L2
    return v2
  :L1
    if-gez p1, :L3
    if-gtz v4, :L2
  .line 7
    invoke-virtual { v0, v2 }, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
    move-result-object p1
  .line 8
    invoke-virtual { p1 }, Landroid/view/View;->getTop()I
    move-result p1
    if-ltz p1, :L2
    return v2
  :L2
    return v6
  :L3
    return v2
.end method

.method public j(II)V
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/core/widget/f;->t:Landroid/widget/ListView;
    invoke-static { p1, p2 }, Landroidx/core/widget/g;->a(Landroid/widget/ListView;I)V
    return-void
.end method
